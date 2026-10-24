# Complete source: GRWTSK.Algebra.LinearAlgebra.CatalanJacobiTest.Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39da14536f6413ab19e984562b75a9212cd679d5` · SHA-256 `306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.LinearAlgebra.Finsupp.Defs
import Mathlib.RingTheory.PowerSeries.Catalan
import Mathlib.Tactic

namespace FormalResearch.RiemannHypothesis.CatalanJacobi
open DyckStep

def consEmbedding (s : DyckStep) : List DyckStep ↪ List DyckStep :=
  ⟨List.cons s, fun _ _ H => List.cons.inj H |>.2⟩

@[simp] lemma consEmbedding_apply (s : DyckStep) (l : List DyckStep) :
    consEmbedding s l = s :: l := rfl

def paths : ℕ → ℕ → Finset (List DyckStep)
  | 0, h => if h = 0 then {[]} else ∅
  | n + 1, 0 => (paths n 1).map (consEmbedding U)
  | n + 1, h + 1 => (paths n (h + 2)).map (consEmbedding U) ∪
      (paths n h).map (consEmbedding D)

def Nonnegative (h : ℕ) (l : List DyckStep) : Prop :=
  ∀ i, (l.take i).count D ≤ h + (l.take i).count U

lemma nonnegative_cons_U (h : ℕ) (l : List DyckStep) :
    Nonnegative h (U :: l) ↔ Nonnegative (h + 1) l := by
  constructor
  · intro H i
    simpa [Nonnegative, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using H (i+1)
  · intro H i
    cases i with
    | zero => simp
    | succ i => simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using H i

lemma nonnegative_cons_D (h : ℕ) (l : List DyckStep) :
    Nonnegative (h + 1) (D :: l) ↔ Nonnegative h l := by
  constructor
  · intro H i
    have := H (i+1)
    simp at this
    omega
  · intro H i
    cases i with
    | zero => simp
    | succ i => have := H i; simp; omega

lemma not_nonnegative_cons_D_zero (l : List DyckStep) :
    ¬ Nonnegative 0 (D :: l) := by
  intro h
  have := h 1
  simp at this

lemma mem_paths (n h : ℕ) (l : List DyckStep) :
    l ∈ paths n h ↔ l.length = n ∧ l.count D = h + l.count U ∧ Nonnegative h l := by
  induction n generalizing h l with
  | zero =>
    cases l with
    | nil => by_cases H : h = 0 <;> simp [paths, Nonnegative, H, eq_comm]
    | cons s l => by_cases H : h = 0 <;> simp [paths, H]
  | succ n ih =>
    cases h with
    | zero =>
      cases l with
      | nil => simp [paths]
      | cons s l =>
        cases s with
        | U => simpa [paths,  nonnegative_cons_U, Nat.add_comm] using ih 1 l
        | D => simp [paths,  not_nonnegative_cons_D_zero]
    | succ h =>
      cases l with
      | nil => simp [paths]
      | cons s l =>
        cases s with
        | U =>
          simp [paths,  ih, nonnegative_cons_U, Nat.add_comm, Nat.add_left_comm]
        | D =>
          simp [paths, ih, nonnegative_cons_D, Nat.add_comm, Nat.add_left_comm]
          omega

lemma paths_union_disjoint (n h : ℕ) :
    Disjoint ((paths n (h + 2)).map (consEmbedding U))
      ((paths n h).map (consEmbedding D)) := by
  simp [Finset.disjoint_left]

lemma card_paths_succ_zero (n : ℕ) : (paths (n+1) 0).card = (paths n 1).card := by
  simp [paths]

lemma card_paths_succ_succ (n h : ℕ) :
    (paths (n+1) (h+1)).card = (paths n h).card + (paths n (h+2)).card := by
  rw [paths, Finset.card_union_of_disjoint (paths_union_disjoint n h)]
  simp [Nat.add_comm]


lemma length_eq_counts (l : List DyckStep) : l.length = l.count U + l.count D := by
  induction l with
  | nil => simp
  | cons s l ih => cases s <;> simp [ih, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

/-- Returning nearest-neighbor half-line paths of length `2n` are exactly Dyck
words of semilength `n`. -/
def returningPathsEquivDyck (n : ℕ) :
    {l // l ∈ paths (2*n) 0} ≃ {p : DyckWord // p.semilength = n} where
  toFun l := by
    have H := (mem_paths (2*n) 0 l.1).mp l.2
    refine ⟨⟨l.1, by simpa using H.2.1.symm, by simpa [Nonnegative] using H.2.2⟩, ?_⟩
    change l.1.count U = n
    have L := length_eq_counts l.1
    simp at H
    omega
  invFun p := ⟨p.1.toList, by
    rw [mem_paths]
    refine ⟨?_, ?_, ?_⟩
    · rw [← p.1.two_mul_semilength_eq_length, p.2]
    · simpa using p.1.count_U_eq_count_D.symm
    · simpa [Nonnegative] using p.1.count_D_le_count_U⟩
  left_inv _ := rfl
  right_inv _ := rfl

lemma card_paths_even (n : ℕ) : (paths (2*n) 0).card = catalan n := by
  rw [← Fintype.card_coe, Fintype.card_congr (returningPathsEquivDyck n),
    DyckWord.card_dyckWord_semilength_eq_catalan]

lemma paths_odd_eq_empty (n : ℕ) : paths (2*n+1) 0 = ∅ := by
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro l H
  obtain ⟨hl, hc, _⟩ := (mem_paths (2*n+1) 0 l).mp H
  have L := length_eq_counts l
  simp at hc
  omega

lemma paths_eq_empty_of_length_lt_height (n h : ℕ) (H : n < h) : paths n h = ∅ := by
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro l Hl
  obtain ⟨hl, hc, _⟩ := (mem_paths n h l).mp Hl
  have L := length_eq_counts l
  omega

section Operator
variable {R : Type*} [Semiring R]

/-- The free half-line Jacobi operator on finitely supported sequences. -/
noncomputable def Jfree : Module.End R (ℕ →₀ R) :=
  Finsupp.lmapDomain R R Nat.succ +
    Finsupp.lcomapDomain Nat.succ Nat.succ_injective

@[simp] lemma Jfree_apply_zero (v : ℕ →₀ R) : Jfree v 0 = v 1 := by
  have H : 0 ∉ Set.range Nat.succ := by simp
  simp [Jfree, Finsupp.mapDomain_of_notMem_range v 0 H]

@[simp] lemma Jfree_apply_succ (v : ℕ →₀ R) (h : ℕ) :
    Jfree v (h+1) = v h + v (h+2) := by
  simp [Jfree, Finsupp.mapDomain_apply Nat.succ_injective, Nat.succ_eq_add_one]

/-- The standard finitely supported vector at height `h`. -/
noncomputable def basisVector (h : ℕ) : ℕ →₀ R := Finsupp.single h 1

lemma Jfree_basis_zero : Jfree (basisVector (R := R) 0) = basisVector 1 := by
  ext h
  cases h with
  | zero => simp [basisVector]
  | succ h =>
    rw [Jfree_apply_succ]
    simp [basisVector, Finsupp.single_apply]
    split_ifs <;> simp_all

lemma Jfree_basis_succ (h : ℕ) :
    Jfree (basisVector (R := R) (h+1)) = basisVector h + basisVector (h+2) := by
  ext k
  cases k with
  | zero => simp [basisVector, Finsupp.single_apply]
  | succ k =>
    rw [Jfree_apply_succ]
    simp [basisVector, Finsupp.single_apply]
    split_ifs <;> simp_all

/-- The cyclic matrix coefficient at `e₀`; it is the ordinary finitely supported
standard-basis pairing, not an asserted analytic resolvent. -/
noncomputable def cyclicCoefficient (n : ℕ) : R :=
  ((Jfree (R := R)) ^ n) (basisVector 0) 0

lemma power_basis_eq_card_paths (n h : ℕ) :
    ((Jfree (R := R)) ^ n) (basisVector 0) h = ((paths n h).card : R) := by
  induction n generalizing h with
  | zero => by_cases H : h = 0 <;> simp [basisVector, paths, H]
  | succ n ih =>
    rw [pow_succ']
    change Jfree ((Jfree ^ n) (basisVector 0)) h = _
    cases h with
    | zero => rw [Jfree_apply_zero, ih, card_paths_succ_zero]
    | succ h => rw [Jfree_apply_succ, ih, ih, card_paths_succ_succ, Nat.cast_add]

/-- Exact all-scale even cyclic moments of the free half-line Jacobi operator. -/
lemma cyclicCoefficient_even (n : ℕ) : cyclicCoefficient (R := R) (2*n) = (catalan n : R) := by
  rw [cyclicCoefficient, power_basis_eq_card_paths, card_paths_even]

/-- Exact all-scale odd cyclic moments of the free half-line Jacobi operator. -/
lemma cyclicCoefficient_odd (n : ℕ) : cyclicCoefficient (R := R) (2*n+1) = 0 := by
  rw [cyclicCoefficient, power_basis_eq_card_paths, paths_odd_eq_empty]
  simp

@[simp] lemma cyclicCoefficient_one : cyclicCoefficient (R := R) 1 = 0 :=
  cyclicCoefficient_odd 0

lemma power_basis_support_bound (n h : ℕ) (H : n < h) :
    ((Jfree (R := R)) ^ n) (basisVector 0) h = 0 := by
  rw [power_basis_eq_card_paths, paths_eq_empty_of_length_lt_height n h H]
  simp


/-- The canonical bilinear standard-basis pairing on finitely supported sequences. -/
noncomputable def pairing (u v : ℕ →₀ R) : R := u.sum (fun k x => x * v k)

@[simp] lemma pairing_basis_zero (v : ℕ →₀ R) : pairing (basisVector 0) v = v 0 := by
  simp [pairing, basisVector]

lemma free_even_moment (n : ℕ) :
    pairing (basisVector 0) (((Jfree (R := R)) ^ (2*n)) (basisVector 0)) = (catalan n : R) := by
  rw [pairing_basis_zero]
  exact cyclicCoefficient_even n

lemma free_odd_moment (n : ℕ) :
    pairing (basisVector 0) (((Jfree (R := R)) ^ (2*n+1)) (basisVector 0)) = 0 := by
  rw [pairing_basis_zero]
  exact cyclicCoefficient_odd n

end Operator

/-- The even-moment generating series of the genuine free Jacobi operator,
with the Catalan normalization `C₀ = 1`. -/
noncomputable def evenMomentSeries : PowerSeries ℕ :=
  PowerSeries.mk (fun n => cyclicCoefficient (R := ℕ) (2*n))

lemma evenMomentSeries_eq_catalanSeries : evenMomentSeries = PowerSeries.catalanSeries := by
  ext n
  simp [evenMomentSeries, cyclicCoefficient_even]

lemma evenMomentSeries_fixed_point :
    evenMomentSeries = 1 + PowerSeries.X * evenMomentSeries ^ 2 := by
  rw [evenMomentSeries_eq_catalanSeries]
  simpa [add_comm, mul_comm] using PowerSeries.catalanSeries_sq_mul_X_add_one.symm

lemma cyclicCoefficient_even_normalization (n : ℕ) :
    cyclicCoefficient (R := ℕ) (2*n) = n.centralBinom / (n+1) := by
  simpa [cyclicCoefficient_even] using catalan_eq_centralBinom_div n

end FormalResearch.RiemannHypothesis.CatalanJacobi
```
