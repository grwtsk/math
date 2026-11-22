/-
Copyright (c) 2026 grwtsk contributors. MIT.
Upstream Mathlib declarations retain their authors and licenses.
SOURCE_PROOF_CANDIDATE. Lean elaboration: NOT_RUN.
Fresh kernel replay: NOT_RUN. Transitive axiom audit: NOT_RUN.
Independent mathematical review: NOT_RUN.
-/
import Mathlib.Data.Nat.Squarefree
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Fintype.Card
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Rat.BigOperators

/-!
# Finite prime-concept addresses and source partitions

Consumer: grwtsk/sofic PR #1, finite mathematical-AI concept registry.

The proof input is an injective family of actual prime labels. The
numeric address of each selected concept subset has precisely those
prime factors. This gives a binary carrier with exactly 2^n distinct
numeric addresses. The two-symbol port type does not reduce graph
degree to two. An exact finite partition of unity preserves retained
source summands without supplying omitted analytic data.

Existing independent suppliers: Combinatorics.FiniteDependencyClosure,
GeneralLogic.RevisionCertificates, GeneralLogic.ProofCoverage, and
GraphTheory.RootHeatState. No Lean checker status of those imports is
implied by the present source.

The complete divisor-surjectivity argument below is a source-level Lean
proof candidate, not a verified claim until kernel checking and review.

Not proved: arbitrary semantic correctness of selected concepts,
signed Weil correspondence,
zeta-zero to graph-spectrum return, global heat approximation,
complete dependency extraction, or automatic code regeneration.
-/
set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FinitePrimeConceptAddress

universe u v w

/-- An admissible prime coordinate family. A natural-language label or
an unchecked isPrime Boolean is insufficient to construct this. -/
structure PrimeBasis (Concept : Type u) where
  label : Concept → ℕ
  isPrime : ∀ c, Nat.Prime (label c)
  injective : Function.Injective label

section Address
variable {Concept : Type u} [Fintype Concept] [DecidableEq Concept]

/-- A fundamental binary vertex is a subset of selected concepts. -/
def vertices : Finset (Finset Concept) :=
  (Finset.univ : Finset Concept).powerset

theorem vertices_card :
    (vertices (Concept := Concept)).card = 2 ^ Fintype.card Concept := by
  simp [vertices]

namespace PrimeBasis

def primeSupport (B : PrimeBasis Concept) (s : Finset Concept) : Finset ℕ :=
  s.image B.label

/-- The product of the distinct prime labels in the subset. -/
def numericAddress (B : PrimeBasis Concept) (s : Finset Concept) : ℕ :=
  ∏ p ∈ B.primeSupport s, p

def selectedPrimorial (B : PrimeBasis Concept) : ℕ :=
  B.numericAddress Finset.univ

theorem primeFactors_numericAddress (B : PrimeBasis Concept) (s : Finset Concept) :
    (B.numericAddress s).primeFactors = B.primeSupport s := by
  unfold numericAddress
  apply Nat.primeFactors_prod
  intro p hp
  change p ∈ s.image B.label at hp
  rcases Finset.mem_image.mp hp with ⟨c, _hc, rfl⟩
  exact B.isPrime c

theorem numericAddress_injective (B : PrimeBasis Concept) :
    Function.Injective B.numericAddress := by
  intro s t h
  apply (Finset.image_inj B.injective).mp
  calc
    s.image B.label = (B.numericAddress s).primeFactors := by
      simpa [primeSupport] using (B.primeFactors_numericAddress s).symm
    _ = (B.numericAddress t).primeFactors := congrArg Nat.primeFactors h
    _ = t.image B.label := by
      simpa [primeSupport] using B.primeFactors_numericAddress t

/-- The materialized numeric coordinates are a finite injective image.
The further identification with every divisor is a separate bridge. -/
def fundamentalAddresses (B : PrimeBasis Concept) : Finset ℕ :=
  (vertices (Concept := Concept)).image B.numericAddress

theorem fundamentalAddresses_card (B : PrimeBasis Concept) :
    B.fundamentalAddresses.card = 2 ^ Fintype.card Concept := by
  calc
    B.fundamentalAddresses.card = (vertices (Concept := Concept)).card := by
      exact Finset.card_image_of_injective _ B.numericAddress_injective
    _ = 2 ^ Fintype.card Concept := vertices_card


/-- The selected product is square-free because the concept labels are
distinct primes. This is *not* the cutoff-based primorial. -/
theorem selectedPrimorial_squarefree (B : PrimeBasis Concept) :
    Squarefree B.selectedPrimorial := by
  classical
  have hprime : ∀ p ∈ B.primeSupport Finset.univ, Nat.Prime p := by
    intro p hp
    change p ∈ (Finset.univ : Finset Concept).image B.label at hp
    rcases Finset.mem_image.mp hp with ⟨c, _hc, rfl⟩
    exact B.isPrime c
  change Squarefree (∏ p ∈ B.primeSupport Finset.univ, p)
  refine Finset.squarefree_prod_of_pairwise_isCoprime
    (fun p hp q hq hpq => ?_) (fun p hp => (hprime p hp).squarefree)
  simpa only [← Nat.coprime_iff_isRelPrime] using
    ((Nat.coprime_primes (hprime p hp) (hprime q hq)).mpr hpq)

/-- Every subset address divides the product of all selected prime labels. -/
theorem numericAddress_dvd_selectedPrimorial (B : PrimeBasis Concept)
    (s : Finset Concept) : B.numericAddress s ∣ B.selectedPrimorial := by
  unfold numericAddress selectedPrimorial
  refine Finset.prod_dvd_prod_of_subset _ _ _ ?_
  change s.image B.label ⊆ (Finset.univ : Finset Concept).image B.label
  exact Finset.image_subset_image (Finset.subset_univ s)

/-- Exact numeric-coordinate image: all and only the positive divisors
of the selected square-free product. No semantic theorem is inferred. -/
theorem fundamentalAddresses_eq_divisors (B : PrimeBasis Concept) :
    B.fundamentalAddresses = B.selectedPrimorial.divisors := by
  classical
  apply Finset.ext
  intro d
  change d ∈ (vertices (Concept := Concept)).image B.numericAddress ↔
    d ∈ B.selectedPrimorial.divisors
  constructor
  · intro hd
    rcases Finset.mem_image.mp hd with ⟨s, _hs, rfl⟩
    exact Nat.mem_divisors.mpr
      ⟨B.numericAddress_dvd_selectedPrimorial s, B.selectedPrimorial_squarefree.ne_zero⟩
  · intro hd
    have hdvd : d ∣ B.selectedPrimorial := (Nat.mem_divisors.mp hd).1
    have hsq : Squarefree d := B.selectedPrimorial_squarefree.squarefree_of_dvd hdvd
    have hsubset : d.primeFactors ⊆ B.primeSupport Finset.univ := by
      simpa only [selectedPrimorial, primeFactors_numericAddress] using
        (Nat.primeFactors_mono hdvd B.selectedPrimorial_squarefree.ne_zero)
    let s : Finset Concept := Finset.univ.filter (fun c => B.label c ∈ d.primeFactors)
    have hsupport : B.primeSupport s = d.primeFactors := by
      apply Finset.ext
      intro p
      constructor
      · intro hp
        change p ∈ s.image B.label at hp
        rcases Finset.mem_image.mp hp with ⟨c, hc, hcp⟩
        have hc' : B.label c ∈ d.primeFactors := (Finset.mem_filter.mp hc).2
        simpa only [hcp] using hc'
      · intro hp
        have hp' := hsubset hp
        change p ∈ (Finset.univ : Finset Concept).image B.label at hp'
        rcases Finset.mem_image.mp hp' with ⟨c, _hc, hcp⟩
        change p ∈ s.image B.label
        apply Finset.mem_image.mpr
        refine ⟨c, Finset.mem_filter.mpr ⟨Finset.mem_univ c, ?_⟩, hcp⟩
        simpa only [hcp] using hp
    have haddress : B.numericAddress s = d := by
      change (∏ p ∈ B.primeSupport s, p) = d
      rw [hsupport]
      exact Nat.prod_primeFactors_of_squarefree hsq
    apply Finset.mem_image.mpr
    refine ⟨s, ?_, haddress⟩
    change s ∈ (Finset.univ : Finset Concept).powerset
    exact Finset.mem_powerset.mpr (Finset.subset_univ s)

end PrimeBasis
end Address

/-- Label and concept coordinate are distinct; ports retain orientation. -/
structure BinaryPort (Vertex : Type v) (Coordinate : Type w) where
  source : Vertex
  target : Vertex
  coordinate : Coordinate
  symbol : Bool

def splitMass (alpha mass : ℚ) : ℚ × ℚ :=
  (alpha * mass, (1 - alpha) * mass)

theorem splitMass_total (alpha mass : ℚ) :
    (splitMass alpha mass).1 + (splitMass alpha mass).2 = mass := by
  dsimp [splitMass]
  ring

section Partition
variable {Band : Type v} {Zero : Type w}
variable [Fintype Band] [Fintype Zero]

/-- Finite double-counting prevention. No omitted zero is recovered. -/
theorem source_sum_of_partition
    (weights : Band → Zero → ℚ) (signal : Zero → ℚ)
    (hcover : ∀ z, ∑ b, weights b z = 1) :
    (∑ b, ∑ z, weights b z * signal z) = ∑ z, signal z := by
  classical
  calc
    (∑ b, ∑ z, weights b z * signal z) =
        ∑ z, ∑ b, weights b z * signal z := by rw [Finset.sum_comm]
    _ = ∑ z, (∑ b, weights b z) * signal z := by
      apply Finset.sum_congr rfl
      intro z _hz
      rw [Finset.sum_mul]
    _ = ∑ z, signal z := by simp [hcover]
end Partition

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FinitePrimeConceptAddress
