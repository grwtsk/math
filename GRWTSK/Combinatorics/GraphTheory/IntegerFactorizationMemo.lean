/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.FactorMemoCore
import GRWTSK.NumberTheory.CompleteIntegerFactorization

/-!
# Replay of an already certified prime list into a verified memo

The existing consumer at commit `1f0dd586be640ebe72642977bba7acd0e1aeb7c3`
(blob `ba51828c57e38d059a771470880c2aa111ddcd5f`) is `PrimeKnotFactorMemo.FactorCursor.step` followed by
`finish`. Each residual is the product of the unconsumed suffix and the
completed cursor returns the certified list in the original order. The initial
prime leaves must have been obtained and certified separately; cold factoring,
preprocessing, index traversal and historical reuse have distinct costs. A replay
step divides the current residual by the known prime. Its product equality is
proof data. The existing cursor appends to a linked list, copying the current
spine at each step. A direct hit returns the stored certificate, whereas a miss
delegates to the original lookup; the original lookup cost remains a premise. The
functional memo accepts any earlier verified memo. It has no finite-SPF
coverage premise and contains no inference from a failed lookup.
-/
namespace GRWTSK.IntegerFactorization.Memo

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotFactorMemo

/-- Replay known leaves, maintaining their actual residual at each cursor step. -/
def replay {n : ℕ} : (ps : List ℕ) → (c : FactorCursor n) →
    (∀ p ∈ ps, Nat.Prime p) → ps.prod = c.residual → FactorCertificate n
  | [], c, _, he => c.finish (by simpa using he.symm)
  | p :: ps, c, hp, he =>
    have hq : c.residual / p = ps.prod := by
      rw [← he, List.prod_cons, Nat.mul_div_cancel_left _ (hp p (.head _)).pos]
    replay ps (c.step p (c.residual / p) (hp p (.head _)) (by rw [hq]; exact he))
      (fun q hm => hp q (.tail _ hm)) hq.symm

theorem replay_factors {n : ℕ} (ps : List ℕ) (c : FactorCursor n)
    (hp : ∀ p ∈ ps, Nat.Prime p) (he : ps.prod = c.residual) :
    (replay ps c hp he).factors = c.factors ++ ps := by
  induction ps generalizing c with
  | nil => simp [replay, FactorCursor.finish]
  | cons p ps ih =>
    simp only [replay]
    erw [ih]
    simp [FactorCursor.step, List.append_assoc]

def ofComplete {n xs} (h : CompleteFactorization n xs) : FactorCertificate n :=
  replay (expand xs) (FactorCursor.start n)
    (fun _ hp => Nat.prime_of_mem_primeFactorsList (h.expand_eq ▸ hp)) h.product

theorem ofComplete_factors {n xs} (h : CompleteFactorization n xs) :
    (ofComplete h).factors = n.primeFactorsList := by
  simpa [ofComplete, replay_factors, FactorCursor.start] using h.expand_eq

/-- A pre-existing certificate may list primes in any order. Return multiplicity
via a permutation, without assuming its stored order is canonical. -/
theorem certificate_permutation {n : ℕ} (c : FactorCertificate n) :
    c.factors.Perm n.primeFactorsList :=
  Nat.primeFactorsList_unique c.factors_product c.factors_prime

/-- Install one certified answer without changing lookup on any distinct key. -/
def install (old : VerifiedFactorMemo) {n : ℕ} (c : FactorCertificate n) :
    VerifiedFactorMemo where
  lookup := fun m => if h : n = m then some (h ▸ c) else old.lookup m

theorem install_hit (old : VerifiedFactorMemo) {n : ℕ} (c : FactorCertificate n) :
    (install old c).lookup n = some c := by simp [install]

theorem install_miss (old : VerifiedFactorMemo) {n m : ℕ} (c : FactorCertificate n)
    (h : m ≠ n) : (install old c).lookup m = old.lookup m := by
  simp [install, Ne.symm h]

theorem complete_hit (old : VerifiedFactorMemo) {n xs} (h : CompleteFactorization n xs) :
    ((install old (ofComplete h)).lookup n).map FactorCertificate.factors =
      some n.primeFactorsList := by simp [install_hit, ofComplete_factors]

/-- A caller supplies measured or separately bounded costs for its index and
cold factorization. Setup is charged once outside the sequence of accesses. -/
structure Access (n : ℕ) where
  answer : Option (FactorCertificate n)
  nextMemo : VerifiedFactorMemo
  charge : ℕ

def access (m : VerifiedFactorMemo)
    (cold : (n : ℕ) → Option (FactorCertificate n) × ℕ)
    (readCost writeCost : ℕ → ℕ) (n : ℕ) : Access n :=
  match m.lookup n with
  | some c => ⟨some c, m, readCost n⟩
  | none =>
    match cold n with
    | (none, work) => ⟨none, m, readCost n + work⟩
    | (some c, work) => ⟨some c, install m c, readCost n + work + writeCost n⟩

theorem access_hit (m : VerifiedFactorMemo)
    (cold : (k : ℕ) → Option (FactorCertificate k) × ℕ) (readCost writeCost : ℕ → ℕ) {n : ℕ}
    {c : FactorCertificate n} (hit : m.lookup n = some c) :
    (access m cold readCost writeCost n).answer = some c ∧
    (access m cold readCost writeCost n).charge = readCost n := by simp [access, hit]

theorem access_cold_success (m : VerifiedFactorMemo)
    (cold : (k : ℕ) → Option (FactorCertificate k) × ℕ) (readCost writeCost : ℕ → ℕ) {n : ℕ}
    {c : FactorCertificate n} {w : ℕ} (miss : m.lookup n = none) (result : cold n = (some c, w)) :
    (access m cold readCost writeCost n).nextMemo.lookup n = some c ∧
    (access m cold readCost writeCost n).charge = readCost n + w + writeCost n := by
  simp [access, miss, result, install_hit]

theorem access_cold_failure (m : VerifiedFactorMemo)
    (cold : (k : ℕ) → Option (FactorCertificate k) × ℕ) (readCost writeCost : ℕ → ℕ) {n w : ℕ}
    (miss : m.lookup n = none) (result : cold n = (none, w)) :
    (access m cold readCost writeCost n).answer = none ∧
    (access m cold readCost writeCost n).charge = readCost n + w := by
  simp [access, miss, result]

/-- The uneven factorization passes through a cursor and an installed memo entry. -/
example :
    ((install VerifiedFactorMemo.empty (ofComplete (canonical_complete (n := 202) (by decide)))).lookup 202).map
      FactorCertificate.factors = some [2,101] := by
  have h : CompleteFactorization 202 [(2,1),(101,1)] :=
    ⟨by decide, by decide, by decide, by decide⟩
  rw [complete_hit, ← h.expand_eq]
  rfl

end GRWTSK.IntegerFactorization.Memo
