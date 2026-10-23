/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Module quotients, exact submodule kernels/ranges, and linear equivalences:
Mathlib authors, with their existing attribution retained.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#803. Exact parent draft PR #797 head:
1115b50e2c207e1a9b8498b2af03567401ffc3f9.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonFreeAbelianCoordinates
import Mathlib.LinearAlgebra.Quotient.Basic
import Mathlib.Algebra.Module.Submodule.Ker

/-!
# Actual quotient of candidate one-cycles by candidate one-boundaries

The finite source-indexed cellular candidate model from #758 has:
  C₂ := ℤ,
  C₁ := GenusLetter k → ℤ,
  C₀ := ℤ,
  d₂ := the REAL sourced signed-incidence Z-linear map of #758,
  d₁ := the Z-linear zero map for the chosen one-vertex model.

This module constructs the ACTUAL kernel submodule Z₁=ker(d₁), the
ACTUAL range submodule B₁=range(d₂), and a proved B₁≤Z₁ using the
previous genuine chain condition d₁∘d₂=0.

The quotient is really formed INSIDE cycles:
  H₁_candidate := Z₁ / (B₁ pulled back along Z₁.subtype).

Then #758's independently proved d₁=0 and d₂=0 yield a Z-linear
equivalence of this quotient with the identical C₁ source module.
Composing with #795 identifies that ACTUAL algebraic quotient with
the free abelian group on the very same original generator IDs.

A further group equivalence carries the canonical FreeGroup
abelianization into this algebraic H₁ quotient, with a commuting
source-level word-incidence theorem. Negative fixtures ensure that
a deleted inverse edge remains NONZERO in the quotient, while the
full first handle is NONTRIVIAL in the original FreeGroup but zero
in the quotient.

No topological CW surface or its cellular/singular homology is
constructed. This is not a categorical HomologicalComplex.homology
instantiation, van Kampen, Hurewicz, hyperbolic geometry, GUE or RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCandidateH1

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPresentationSeam
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCellularBoundary
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAbelianizationComparison
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonFreeAbelianCoordinates

/-- Genuine source-indexed one-cycle submodule: kernel of the ACTUAL
Z-linear map d₁, not a custom Set of cycles declared to be all chains. -/
def OneCycleSubmodule (k : ℕ) : Submodule ℤ (OneCellChains k) :=
  (differentialOne k).ker

/-- Genuine source-indexed one-boundary submodule: range of the ACTUAL
Z-linear signed-incidence map d₂. It is not declared zero a priori. -/
def OneBoundarySubmodule (k : ℕ) : Submodule ℤ (OneCellChains k) :=
  (differentialTwo k).range

/-- Boundaries really are cycles, by the exact sourced chain condition
d₁∘d₂=0 already proved by the parent #758, not a new chain axiom. -/
theorem oneBoundary_le_oneCycle (k : ℕ) :
    OneBoundarySubmodule k ≤ OneCycleSubmodule k := by
  intro v hv
  rcases hv with ⟨n, rfl⟩
  change differentialOne k (differentialTwo k n) = 0
  have hc :=
    congrArg (fun f : ℤ →ₗ[ℤ] ℤ => f n)
      (differentials_comp_eq_zero k)
  simpa only [LinearMap.comp_apply, LinearMap.zero_apply] using hc

/-- As a submodule INSIDE cycles, the one-boundaries are the pullback
of the true range along the canonical inclusion of cycles into C₁.
Using comap avoids pretending a general chain complex's range lives
in the domain ker without a proof of the chain condition. -/
def OneBoundariesInCycles (k : ℕ) :
    Submodule ℤ (OneCycleSubmodule k) :=
  (OneBoundarySubmodule k).comap (OneCycleSubmodule k).subtype

/-- The actual cycle quotient by the sourced boundaries. The carrier
is NOT simply renamed from OneCellChains k: this is a real Mathlib
module quotient of a true kernel by a true pulled-back range. -/
def CandidateFirstHomology (k : ℕ) : Type :=
  (OneCycleSubmodule k) ⧸ (OneBoundariesInCycles k)

/-- d₁=0 FOR THIS ONE-VERTEX FINITE SOURCE MODEL, hence the cycle
submodule is top. This does not apply to arbitrary CW complexes. -/
theorem oneCycleSubmodule_eq_top (k : ℕ) :
    OneCycleSubmodule k = ⊤ := by
  change (differentialOne k).ker = ⊤
  simp [differentialOne]

/-- d₂=0 only because the full inherited polygon signed incidence
vector was already shown to vanish on EVERY source generator. -/
theorem oneBoundarySubmodule_eq_bot (k : ℕ) :
    OneBoundarySubmodule k = ⊥ := by
  change (differentialTwo k).range = ⊥
  rw [differentialTwo_eq_zero]
  exact LinearMap.range_zero

/-- The actual boundaries, regarded as a submodule of the actual
cycles, are also zero. This consumes the computed d₂ range. -/
theorem oneBoundariesInCycles_eq_bot (k : ℕ) :
    OneBoundariesInCycles k = ⊥ := by
  apply eq_bot_iff.mpr
  intro z hz
  have hb : (z : OneCellChains k) ∈ OneBoundarySubmodule k := by
    exact hz
  rw [oneBoundarySubmodule_eq_bot k] at hb
  have hzero : (z : OneCellChains k) = 0 := by
    simpa using hb
  have hz : z = 0 := Subtype.ext hzero
  simpa [hz]

/-- Every original one-chain has exactly one counterpart in the
actual ker(d₁) submodule, because d₁=0; this is a real linear
equivalence, not an identification by unchecked type equality. -/
def oneCyclesEquivOneChains (k : ℕ) :
    OneCycleSubmodule k ≃ₗ[ℤ] OneCellChains k :=
  LinearEquiv.ofBijective (OneCycleSubmodule k).subtype (by
    constructor
    · intro a b hab
      exact Subtype.ext hab
    · intro a
      refine ⟨⟨a, ?_⟩, rfl⟩
      change differentialOne k a = 0
      simp [differentialOne])

/-- Actual quotient by the proved ZERO cycle-boundary submodule,
using Mathlib's existing linear equivalence of quotient by bottom. -/
def candidateH1EquivCycles (k : ℕ) :
    CandidateFirstHomology k ≃ₗ[ℤ] OneCycleSubmodule k :=
  (OneBoundariesInCycles k).quotEquivOfEqBot
    (oneBoundariesInCycles_eq_bot k)

/-- Main sourced mathematical result: the actual cycle/boundary
quotient is Z-linearly equivalent to the exact original one-chains,
for every k≥0 (genus g=k+2). -/
def candidateH1EquivOneChains (k : ℕ) :
    CandidateFirstHomology k ≃ₗ[ℤ] OneCellChains k :=
  (candidateH1EquivCycles k).trans (oneCyclesEquivOneChains k)

/-- Canonical quotient projection of actual cycles onto their quotient
by actual boundaries. This map is a genuine linear quotient map. -/
def cycleClass (k : ℕ) :
    OneCycleSubmodule k →ₗ[ℤ] CandidateFirstHomology k :=
  (OneBoundariesInCycles k).mkQ

/-- The cycle class at a genuine cycle is transported back to the
same one-cell chain by the canonical quotient linear equivalence. -/
theorem candidateH1EquivOneChains_cycleClass (k : ℕ)
    (z : OneCycleSubmodule k) :
    candidateH1EquivOneChains k (cycleClass k z) =
      (z : OneCellChains k) := by
  simp [candidateH1EquivOneChains, candidateH1EquivCycles,
    cycleClass, Submodule.quotEquivOfEqBot_apply_mk,
    oneCyclesEquivOneChains]

/-- The quotient really has every candidate cycle class, since
Submodule.mkQ is a surjective linear quotient map. -/
theorem cycleClass_surjective (k : ℕ) :
    Function.Surjective (cycleClass k) :=
  (OneBoundariesInCycles k).mkQ_surjective

/-- Compose the new actual candidate H₁ quotient with the PREEXISTING
full integer free-abelian equivalence of #795. This is an AddEquiv
with the exact same generator IDs as the original cellular source. -/
def candidateH1EquivFreeAbelian (k : ℕ) :
    CandidateFirstHomology k ≃+ FreeAbelianGroup (GenusLetter k) :=
  (candidateH1EquivOneChains k).toAddEquiv.trans
    (freeAbelianCoordinates k).symm

/-- A genuine multiplicative group equivalence between the canonical
FreeGroup abelianization and the new algebraic candidate H₁ quotient:
the two go through the SAME integer coordinate module. -/
def abelianizationEquivCandidateH1 (k : ℕ) :
    Abelianization (FreeGroup (GenusLetter k)) ≃*
      Multiplicative (CandidateFirstHomology k) :=
  (canonicalAbelianizationCoordinates k).trans
    (AddEquiv.toMultiplicative
      ((candidateH1EquivOneChains k).symm.toAddEquiv))

/-- The new cycle-boundary quotient class of a literal source edge
list, defined through the ACTUAL quotient equivalence. -/
def signedWordH1Class (k : ℕ) (sides : List (SignedSide k)) :
    CandidateFirstHomology k :=
  (candidateH1EquivOneChains k).symm
    (fun x => signedWordCoefficient k x sides)

/-- The complete source-identified commuting comparison:
every signed original polygon edge word's candidate H₁ class is the
image of the SAME canonical FreeGroup abelianization element under
the genuine group equivalence, not merely a matching numerical rank. -/
theorem abelianizationEquivCandidateH1_signedWord (k : ℕ)
    (sides : List (SignedSide k)) :
    (abelianizationEquivCandidateH1 k
      (Abelianization.of (polygonBoundaryEval k sides))).toAdd =
      signedWordH1Class k sides := by
  change (candidateH1EquivOneChains k).symm
      ((canonicalAbelianizationCoordinates k
        (Abelianization.of (polygonBoundaryEval k sides))).toAdd) =
          signedWordH1Class k sides
  rw [canonicalCoordinates_signedWord]
  rfl

/-- The one literal two-cell polygon attaching word has zero class
in the sourced candidate H₁ quotient, because the actual signed
incidence calculation from #758 gives zero. -/
theorem polygonBoundaryH1Class_zero (k : ℕ) :
    signedWordH1Class k (polygonBoundaryWord k) = 0 := by
  unfold signedWordH1Class
  have hzero : (fun x => signedWordCoefficient k x
      (polygonBoundaryWord k)) = (0 : OneCellChains k) := by
    funext x
    exact signedWordCoefficient_polygon_zero k x
  rw [hzero]
  simp

/-- A missing inverse b side is still NONZERO in the actual quotient
of cycles by boundaries, not just in a freely assigned incidence Set.
This rejects an always-zero or entire-C₁-boundaries quotient. -/
theorem missingInverseEdgeH1Class_ne_zero (k : ℕ) :
    signedWordH1Class k (missingInverseEdge k) ≠ 0 := by
  intro hzero
  have hv := congrArg (candidateH1EquivOneChains k) hzero
  have hvec : (fun x => signedWordCoefficient k x
      (missingInverseEdge k)) = (0 : OneCellChains k) := by
    simpa [signedWordH1Class] using hv
  have hcoeff :=
    congrArg (fun v : OneCellChains k => v (baseLetter k 1)) hvec
  rw [missingInverseEdge_nonzero] at hcoeff
  norm_num at hcoeff

/-- A full first-handle word is nonidentity in the ACTUAL free group
by #722/#774 Heisenberg, but zero as a class in the actual finite
cycle/boundary quotient. This exhibits strict abelian information loss
in the same source index and genus, not an isomorphism of free groups. -/
theorem firstHandle_nontrivial_but_H1_zero (k : ℕ) :
    polygonBoundaryEval k
        (handleBlock k (baseLetter k 0) (baseLetter k 1)) ≠ 1 ∧
      signedWordH1Class k
        (handleBlock k (baseLetter k 0) (baseLetter k 1)) = 0 := by
  refine ⟨(firstHandleBlock_in_kernel_nontrivial k).1, ?_⟩
  unfold signedWordH1Class
  have hvec : (fun x => signedWordCoefficient k x
      (handleBlock k (baseLetter k 0) (baseLetter k 1))) =
      (0 : OneCellChains k) := by
    funext x
    exact signedWordCoefficient_handleBlock k x _ _
  rw [hvec]
  simp

/-- Full family including k=0: the canonical algebraic quotient
retains the four distinct genus-two one-cell source IDs. -/
theorem genus_two_oneCellCount :
    Fintype.card (GenusLetter 0) = 4 :=
  genus_two_integer_coordinate_count

/-- Nonvacuous additional handle k=1: its canonical algebraic quotient
retains all six distinct genus-three one-cell source IDs. -/
theorem genus_three_oneCellCount :
    Fintype.card (GenusLetter 1) = 6 :=
  genus_three_integer_coordinate_count

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCandidateH1
