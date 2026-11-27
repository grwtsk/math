import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Finset.Sort

/-!
# Complete integer factorization in prime-power and repeated-prime form

Authors: grwtsk contributors

The public problem starts at two. Internally the empty product represents one.
The arithmetic source is Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`,
in particular `Nat.primeFactorsList_unique`, `Nat.primeFactorsList_count_eq`, and
`Nat.prod_primeFactors_pow_factorization`. Expansion preserves multiplicity.
Uniqueness follows by sorting, then reading the exact valuation of each prime.
These arithmetic functions specify outputs for machine, certificate, and memo consumers.
-/

namespace GRWTSK.IntegerFactorization

/-- Expand a prime-power sequence without losing multiplicities. -/
def expand (xs : List (ℕ × ℕ)) : List ℕ :=
  xs.flatMap fun t => List.replicate t.2 t.1

theorem prod_expand (xs : List (ℕ × ℕ)) :
    (expand xs).prod = (xs.map fun t => t.1 ^ t.2).prod := by
  induction xs with
  | nil => rfl
  | cons a xs ih => simpa [expand, List.prod_replicate] using congrArg (a.1 ^ a.2 * ·) ih

theorem length_expand (xs : List (ℕ × ℕ)) :
    (expand xs).length = (xs.map Prod.snd).sum := by
  induction xs with
  | nil => rfl
  | cons a xs ih => simp [expand] at ih ⊢

/-- The exact arithmetic contract for an external, decoded answer. -/
structure CompleteFactorization (n : ℕ) (xs : List (ℕ × ℕ)) : Prop where
  domain : 2 ≤ n
  ordered : xs.Pairwise (fun a b => a.1 < b.1)
  valid : ∀ t ∈ xs, Nat.Prime t.1 ∧ 0 < t.2
  product : (expand xs).prod = n

/-- Join equal primes by counting their occurrences among the sorted distinct keys.
This also defines the conversion on arbitrary lists. -/
def compress (l : List ℕ) : List (ℕ × ℕ) :=
  l.toFinset.sort.map fun p => (p, l.count p)

/-- Canonical output, specified directly by Mathlib's finite valuation map. -/
def canonical (n : ℕ) : List (ℕ × ℕ) :=
  n.primeFactors.sort.map fun p => (p, n.factorization p)

@[simp] theorem canonical_one : canonical 1 = [] := by simp [canonical]

theorem compress_primeFactorsList (n : ℕ) : compress n.primeFactorsList = canonical n := by
  simp only [compress, canonical, Nat.toFinset_factors, Nat.primeFactorsList_count_eq]

theorem canonical_complete {n : ℕ} (hn : 2 ≤ n) : CompleteFactorization n (canonical n) := by
  have hn0 : n ≠ 0 := by omega
  refine ⟨hn, ?_, ?_, ?_⟩
  · simpa [canonical, List.pairwise_map] using n.primeFactors.sortedLT_sort.pairwise
  · intro t ht
    obtain ⟨p, hp, rfl⟩ := List.mem_map.mp ht
    have hpf : p ∈ n.primeFactors := (n.primeFactors.mem_sort (· ≤ ·)).mp hp
    obtain ⟨hprime, hdvd, _⟩ := Nat.mem_primeFactors.mp hpf
    exact ⟨hprime, hprime.factorization_pos_of_dvd hn0 hdvd⟩
  · rw [prod_expand]
    simp only [canonical, List.map_map, Function.comp_def]
    rw [← List.prod_toFinset _ (n.primeFactors.sort_nodup (· ≤ ·)), Finset.sort_toFinset]
    exact (Nat.prod_primeFactors_pow_factorization hn0).symm

private theorem mem_expand_iff {p : ℕ} {xs : List (ℕ × ℕ)} :
    p ∈ expand xs ↔ ∃ t ∈ xs, t.2 ≠ 0 ∧ p = t.1 := by
  simp [expand, List.mem_flatMap, List.mem_replicate]

private theorem expand_sorted {xs : List (ℕ × ℕ)}
    (h : xs.Pairwise (fun a b => a.1 < b.1)) : (expand xs).SortedLE := by
  apply List.Pairwise.sortedLE
  apply List.pairwise_flatMap.mpr
  refine ⟨fun a _ => List.pairwise_replicate.mpr (Or.inr le_rfl), h.imp ?_⟩
  intro a b hab p hp q hq
  exact (List.eq_of_mem_replicate hp) ▸ (List.eq_of_mem_replicate hq) ▸ hab.le

theorem CompleteFactorization.expand_eq {n xs} (h : CompleteFactorization n xs) :
    expand xs = n.primeFactorsList := by
  apply List.Perm.eq_of_sortedLE (expand_sorted h.ordered) (Nat.primeFactorsList_sorted n)
  apply Nat.primeFactorsList_unique h.product
  intro p hp
  obtain ⟨t, ht, _, rfl⟩ := mem_expand_iff.mp hp
  exact (h.valid t ht).1

theorem expand_canonical {n : ℕ} (hn : 2 ≤ n) :
    expand (canonical n) = n.primeFactorsList := (canonical_complete hn).expand_eq

private theorem count_expand_of_mem {xs : List (ℕ × ℕ)}
    (h : xs.Pairwise (fun a b => a.1 < b.1)) {t : ℕ × ℕ} (ht : t ∈ xs) :
    (expand xs).count t.1 = t.2 := by
  induction xs with
  | nil => simp at ht
  | cons a xs ih =>
    obtain ⟨hlt, htail⟩ := List.pairwise_cons.mp h
    rcases List.mem_cons.mp ht with rfl | hmem
    · have ha : t.1 ∉ expand xs := by
        intro hm
        obtain ⟨u, hu, _, he⟩ := mem_expand_iff.mp hm
        exact (hlt u hu).ne he
      change (List.replicate t.2 t.1 ++ expand xs).count t.1 = t.2
      simp [List.count_eq_zero.mpr ha]
    · have hne := (hlt t hmem).ne
      simpa [expand, List.count_replicate, hne] using ih htail hmem

theorem CompleteFactorization.exponent_eq {n xs} (h : CompleteFactorization n xs)
    {t} (ht : t ∈ xs) : t.2 = n.factorization t.1 := by
  rw [← Nat.primeFactorsList_count_eq, ← h.expand_eq]
  exact (count_expand_of_mem h.ordered ht).symm

/-- Compression is a left inverse on every valid output, including its multiplicities. -/
theorem CompleteFactorization.compress_expand {n xs} (h : CompleteFactorization n xs) :
    compress (expand xs) = xs := by
  have hkeys : (expand xs).toFinset.sort = xs.map Prod.fst := by
    apply List.Pairwise.eq_of_mem_iff (r := (· < ·))
      (Finset.sortedLT_sort _).pairwise (List.pairwise_map.mpr h.ordered)
    intro p
    simp only [Finset.mem_sort, List.mem_toFinset, List.mem_map]
    constructor
    · intro hp
      obtain ⟨t, ht, _, rfl⟩ := mem_expand_iff.mp hp
      exact ⟨t, ht, rfl⟩
    · rintro ⟨t, ht, rfl⟩
      exact mem_expand_iff.mpr ⟨t, ht, (h.valid t ht).2.ne', rfl⟩
  unfold compress
  rw [hkeys, List.map_map]
  conv_rhs => rw [← List.map_id xs]
  apply List.map_congr_left
  intro t ht
  exact Prod.ext rfl (count_expand_of_mem h.ordered ht)

theorem complete_iff_eq_canonical {n xs} (hn : 2 ≤ n) :
    CompleteFactorization n xs ↔ xs = canonical n := by
  constructor
  · intro h
    rw [← h.compress_expand, h.expand_eq, compress_primeFactorsList]
  · rintro rfl
    exact canonical_complete hn

private theorem pow_length_le_prod (l : List ℕ) (h : ∀ p ∈ l, 2 ≤ p) :
    2 ^ l.length ≤ l.prod := by
  induction l with
  | nil => simp
  | cons p l ih =>
    simp only [List.length_cons, pow_succ', List.prod_cons]
    exact Nat.mul_le_mul (h p (.head _)) (ih fun q hq => h q (.tail _ hq))

theorem CompleteFactorization.sum_exponents_le {n xs} (h : CompleteFactorization n xs) :
    (xs.map Prod.snd).sum ≤ n.log2 := by
  rw [← length_expand, Nat.le_log2 (by have := h.domain; omega), ← h.product]
  apply pow_length_le_prod
  intro p hp
  obtain ⟨t, ht, _, rfl⟩ := mem_expand_iff.mp hp
  exact (h.valid t ht).1.two_le

theorem CompleteFactorization.prime_le {n xs} (h : CompleteFactorization n xs)
    {t} (ht : t ∈ xs) : t.1 ≤ n := by
  apply Nat.le_of_mem_primeFactorsList
  rw [← h.expand_eq]
  exact mem_expand_iff.mpr ⟨t, ht, (h.valid t ht).2.ne', rfl⟩

theorem CompleteFactorization.exponent_le {n xs} (h : CompleteFactorization n xs)
    {t} (ht : t ∈ xs) : t.2 ≤ n.log2 := by
  exact (List.single_le_sum (fun _ _ => Nat.zero_le _) _ (List.mem_map_of_mem ht)).trans
    h.sum_exponents_le

private theorem length_le_sum_exponents (xs : List (ℕ × ℕ))
    (h : ∀ t ∈ xs, 0 < t.2) : xs.length ≤ (xs.map Prod.snd).sum := by
  induction xs with
  | nil => rfl
  | cons a xs ih =>
    have := h a (.head _)
    have := ih fun t ht => h t (.tail _ ht)
    simp only [List.length_cons, List.map_cons, List.sum_cons]
    omega

theorem CompleteFactorization.length_le {n xs} (h : CompleteFactorization n xs) :
    xs.length ≤ n.log2 :=
  (length_le_sum_exponents xs fun t ht => (h.valid t ht).2).trans h.sum_exponents_le


/-- Counted backward pass over a repeated-prime list. Each input prime inspects
one output head, starts a new run, or increments an existing exponent. Adjacent
equal primes coalesce. On already sorted input no sorting or division is used. -/
private def prependRun (p : ℕ) : List (ℕ × ℕ) → List (ℕ × ℕ)
  | [] => [(p, 1)]
  | (q, e) :: xs => if p = q then (p, e+1) :: xs else (p, 1) :: (q, e) :: xs

def compressRuns : List ℕ → List (ℕ × ℕ) × ℕ
  | [] => ([], 0)
  | p :: rest =>
    let (xs, calls) := compressRuns rest
    (prependRun p xs, calls + 1)

theorem compressRuns_calls (l : List ℕ) : (compressRuns l).2 = l.length := by
  induction l with
  | nil => rfl
  | cons a l ih => simp only [compressRuns, List.length_cons, ih]

private theorem compressRuns_block (p e : ℕ) (l : List ℕ)
    (h : ∀ t ∈ (compressRuns l).1, p < t.1) :
    (compressRuns (List.replicate (e + 1) p ++ l)).1 = (p, e + 1) :: (compressRuns l).1 := by
  induction e with
  | zero =>
    change prependRun p (compressRuns l).1 = (p, 1) :: (compressRuns l).1
    generalize hx : (compressRuns l).1 = xs at h ⊢
    cases xs with
    | nil => rfl
    | cons t xs =>
      have hne := (h t (.head _)).ne
      rcases t with ⟨q, a⟩
      simp [prependRun, hne]
  | succ e ih =>
    rw [List.replicate_succ, List.cons_append]
    simp [compressRuns, ih, prependRun]

private theorem compressRuns_expand_aux {xs : List (ℕ × ℕ)}
    (h : xs.Pairwise (fun a b => a.1 < b.1)) (hpos : ∀ t ∈ xs, 0 < t.2) :
    (compressRuns (expand xs)).1 = xs := by
  induction xs with
  | nil => rfl
  | cons a xs ih =>
    obtain ⟨hlt, htail⟩ := List.pairwise_cons.mp h
    have hback := ih htail (fun t ht => hpos t (.tail _ ht))
    rcases a with ⟨p, e⟩
    obtain ⟨k, he⟩ := Nat.exists_eq_succ_of_ne_zero (hpos (p, e) (.head _)).ne'
    change (compressRuns (List.replicate e p ++ expand xs)).1 = (p, e) :: xs
    change e = k + 1 at he
    rw [he, compressRuns_block, hback]
    simpa [hback] using hlt

/-- The counted conversion recovers the same valuation pairs as Mathlib. -/
theorem compressRuns_primeFactorsList {n : ℕ} (hn : 2 ≤ n) :
    (compressRuns n.primeFactorsList).1 = canonical n := by
  rw [← expand_canonical hn]
  exact compressRuns_expand_aux (canonical_complete hn).ordered
    (fun t ht => ((canonical_complete hn).valid t ht).2)

/-- Conversion work in the decoded-list model. Reading a repeated list performs
one head update per prime. Expanding does one block dispatch per pair, one
replicate cell and one append-copy per occurrence. If each such event is
implemented within a common bit cost `cost`, this charges all three passes.
Serialization, tape layout and a bound for the implementation's `cost` are
separate machine obligations. -/
theorem CompleteFactorization.conversion_cost_le {n xs} (h : CompleteFactorization n xs)
    (cost : ℕ) :
    ((compressRuns n.primeFactorsList).2 + xs.length + 2 * (expand xs).length) * cost ≤
      (4 * n.log2) * cost := by
  apply Nat.mul_le_mul_right
  rw [compressRuns_calls, ← h.expand_eq, length_expand]
  have := h.length_le
  have := h.sum_exponents_le
  omega

end GRWTSK.IntegerFactorization
