/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.Analysis.OperatorTheory.OrderedDiffusion
import GRWTSK.Combinatorics.GraphTheory.RootHeatState
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FinitePhaseDiffusion
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.CyclotomicFrobeniusLoops
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSignedDiffusion
import Mathlib.Tactic

/-!
# Exact adapters between the finite diffuser families

This module connects existing diffuser families only where an exact map is
available.

## Cyclotomic Frobenius pullback -> ordered diffusion

For the cyclotomic unit fiber `G_n=(ZMod n)ˣ`, every unit `u` acts on
coefficient functions by pullback

  `F(a) ↦ F(u*a)`.

The full family of these actions is an `OrderedDiffuser`.  Its ordered word is
the literal ordered product of the unit labels.  Since `G_n` is abelian this
particular family is pairwise commuting, although the generic
`OrderedDiffuser` interface does not assume commutativity.

## Cyclotomic Frobenius pullback -> RootHeatState

The same rational-valued pullback is realized by a deterministic exact
`RootHeatState.HeatKernel`:

  transition target source = 1  iff  source = u*target.

The target/source orientation is deliberate.  With the repository's
column-stochastic convention,

  `kernel.step h target = h (u*target)`.

Thus the arithmetic transfer and the finite Markov heat are not merely similar:
they are exactly the same operator on rational coefficient functions.  The
identity map is an `OrderedDiffuser.Hom`, so the equality propagates through
every heterogeneous chronological word.

This deterministic kernel is a permutation kernel.  Its positivity and mass
preservation do not imply any sign for an unrelated signed arithmetic quadratic
form.

## Finite phase heat -> ordered diffusion

For a fixed real label function `d`, the existing Gaussian matrix heat
`FinitePhaseDiffusion.heat d s` is an ordered diffuser indexed by real times.
The existing semigroup law proves this specialization is pairwise commuting and
collapses a word to the sum of its times.  This is an exact adapter, not an
identification with the Frobenius permutation operator.

## Radius-two Weil coordinate heat -> ordered diffusion

The existing `RadiusTwoSignedDiffusion.heatHead` becomes a one-label ordered
diffuser.  Its already-proved `diffusedPaid_source_return` theorem is restated
through that adapter.  This connects the generic ordered mechanism to the
physical radius-two coordinate heat while preserving the original signed,
pole-inclusive paid Weil quadratic source.

## Boundary

The common `OrderedDiffuser` carrier says only that these are ordered families
of transformations.  It does NOT identify:

* the Frobenius permutation Laplacian with Gaussian phase damping;
* either finite arithmetic operator with the radius-two Weil heat;
* finite Markov positivity with the paid Weil sign;
* any of these finite diffusers with a complete analytic Weil semigroup.

In particular, there is still no source-preserving operator map from the
cyclotomic Frobenius coefficient space to the complete gamma/conductor/pole/
residual Weil quadratic form.  That remains a mathematical bridge to prove,
not a field hidden in this adapter.

Current source base: grwtsk/math
`0d86e3e3b7b525872918d3d1ceed04ba09a39b54`.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.CyclotomicDiffuserConnections

open GRWTSK.Analysis.OperatorTheory.OrderedDiffusion
open GRWTSK.Analysis.OperatorTheory.OrderedDiffusion.OrderedDiffuser
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.CyclotomicFrobeniusLoops

universe u

variable {n : ℕ} [NeZero n]

/-! ## Frobenius pullback as the generic ordered diffuser -/

/-- Left-multiplication pullback on coefficient functions, with the coefficient
type completely independent of the arithmetic carrier. -/
def frobeniusPullbackDiffuser (A : Type u) :
    OrderedDiffuser (UnitFiber n) (UnitFiber n → A) where
  step u F := fun a => F (u * a)

/-- The complex specialization is definitionally the existing cyclotomic
Frobenius transfer. -/
theorem frobeniusPullback_step_complex
    (u : UnitFiber n) (F : UnitFiber n → ℂ) :
    (frobeniusPullbackDiffuser (n := n) ℂ).step u F =
      transfer u F := by
  rfl

/-- An arbitrary chronological word is pullback by its literal ordered product. -/
theorem frobeniusPullback_evolve_apply
    (A : Type u) (word : List (UnitFiber n))
    (F : UnitFiber n → A) (a : UnitFiber n) :
    (frobeniusPullbackDiffuser (n := n) A).evolve word F a =
      F (word.prod * a) := by
  induction word generalizing F a with
  | nil =>
      simp [frobeniusPullbackDiffuser]
  | cons u word ih =>
      calc
        (frobeniusPullbackDiffuser (n := n) A).evolve
            (u :: word) F a =
          (frobeniusPullbackDiffuser (n := n) A).evolve word
            ((frobeniusPullbackDiffuser (n := n) A).step u F) a := rfl
        _ =
          ((frobeniusPullbackDiffuser (n := n) A).step u F)
            (word.prod * a) := ih _ _
        _ = F (u * (word.prod * a)) := rfl
        _ = F ((u :: word).prod * a) := by
          simp [mul_assoc]

/-- The cyclotomic specialization commutes because the unit group modulo n is
abelian.  This property is proved here rather than built into OrderedDiffuser. -/
theorem frobeniusPullback_pairwiseCommuting (A : Type u) :
    (frobeniusPullbackDiffuser (n := n) A).PairwiseCommuting := by
  intro u v F
  funext a
  simp [OrderedDiffuser.CommuteAt, frobeniusPullbackDiffuser,
    mul_assoc, mul_comm, mul_left_comm]

/-! ## Exact deterministic RootHeatState adapter -/

/-- Deterministic column-stochastic kernel whose pullback action is exactly
`F(a) ↦ F(u*a)`.  The first index is target and the second is source. -/
def frobeniusHeatKernel (u : UnitFiber n) :
    HeatKernel (UnitFiber n) where
  transition target source :=
    if source = u * target then 1 else 0
  nonnegative := by
    intro target source
    split_ifs <;> norm_num
  stochastic := by
    intro source
    classical
    have hiff : ∀ target : UnitFiber n,
        source = u * target ↔ target = u⁻¹ * source := by
      intro target
      constructor
      · intro h
        calc
          target = u⁻¹ * (u * target) := by group
          _ = u⁻¹ * source := by rw [h]
      · intro h
        calc
          source = u * (u⁻¹ * source) := by group
          _ = u * target := by rw [h]
    simp_rw [hiff]
    simp

/-- The deterministic Markov step is exactly the rational Frobenius pullback. -/
theorem frobeniusHeatKernel_step
    (u : UnitFiber n) (heat : UnitFiber n → ℚ) :
    (frobeniusHeatKernel u).step heat =
      (frobeniusPullbackDiffuser (n := n) ℚ).step u heat := by
  funext target
  simp [HeatKernel.step, frobeniusHeatKernel, frobeniusPullbackDiffuser]

/-- Ordered family obtained by allowing the deterministic Frobenius kernel to
change at every chronological step. -/
def frobeniusHeatOrderedDiffuser :
    OrderedDiffuser (UnitFiber n) (UnitFiber n → ℚ) where
  step u := (frobeniusHeatKernel u).step

/-- Identity source-return from deterministic RootHeatState steps to the exact
arithmetic pullback family. -/
def frobeniusHeatHom :
    OrderedDiffuser.Hom
      (frobeniusHeatOrderedDiffuser (n := n))
      (frobeniusPullbackDiffuser (n := n) ℚ) where
  map := id
  step_map := by
    intro u heat
    exact frobeniusHeatKernel_step u heat

/-- The exact Markov/arithmetic equality propagates through every ordered word. -/
theorem frobeniusHeat_evolve_eq_pullback
    (word : List (UnitFiber n)) (heat : UnitFiber n → ℚ) :
    (frobeniusHeatOrderedDiffuser (n := n)).evolve word heat =
      (frobeniusPullbackDiffuser (n := n) ℚ).evolve word heat := by
  have h :=
    OrderedDiffuser.Hom.evolve_map
      (frobeniusHeatHom (n := n)) word heat
  simpa [frobeniusHeatHom] using h

/-- In particular the deterministic Markov word has the same explicit ordered
product formula as the arithmetic pullback. -/
theorem frobeniusHeat_evolve_apply
    (word : List (UnitFiber n)) (heat : UnitFiber n → ℚ)
    (a : UnitFiber n) :
    (frobeniusHeatOrderedDiffuser (n := n)).evolve word heat a =
      heat (word.prod * a) := by
  rw [frobeniusHeat_evolve_eq_pullback]
  exact frobeniusPullback_evolve_apply ℚ word heat a

/-! ## Existing finite phase heat as a commuting ordered diffuser -/

open GRWTSK.Analysis.OperatorTheory.FinitePhaseDiffusion

/-- A fixed label function supplies one ordered family of Gaussian phase-heat
steps indexed by real time. -/
def finitePhaseOrderedDiffuser {ι : Type*} (d : ι → ℝ) :
    OrderedDiffuser ℝ (Matrix ι ι ℝ) where
  step s K := heat d s K

/-- The fixed-label phase diffuser is pairwise commuting in its time labels. -/
theorem finitePhase_pairwiseCommuting {ι : Type*} (d : ι → ℝ) :
    (finitePhaseOrderedDiffuser d).PairwiseCommuting := by
  intro s t K
  change heat d t (heat d s K) = heat d s (heat d t K)
  rw [heat_add, heat_add, add_comm]

/-- A chronological word of fixed-label phase heats collapses to the sum of
its scalar times. -/
theorem finitePhase_evolve_eq_heat_sum {ι : Type*}
    (d : ι → ℝ) (word : List ℝ) (K : Matrix ι ι ℝ) :
    (finitePhaseOrderedDiffuser d).evolve word K =
      heat d word.sum K := by
  induction word generalizing K with
  | nil =>
      simp [finitePhaseOrderedDiffuser]
  | cons s word ih =>
      calc
        (finitePhaseOrderedDiffuser d).evolve (s :: word) K =
            (finitePhaseOrderedDiffuser d).evolve word (heat d s K) := rfl
        _ = heat d word.sum (heat d s K) := ih _
        _ = heat d (word.sum + s) K := heat_add d word.sum s K
        _ = heat d (s + word.sum) K := by rw [add_comm]
        _ = heat d (s :: word).sum K := rfl

/-! ## Existing radius-two Weil coordinate heat as an ordered diffuser -/

open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateEntries
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDiagonalResidual
open GRWTSK.NumberTheory.WeilQuadraticForm.OddTrialResidualMatrix
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSignedDiffusion

/-- The existing radius-two physical coordinate heat is a one-label ordered
diffuser.  No arithmetic source is changed by this wrapper. -/
def radiusTwoOrderedDiffuser :
    OrderedDiffuser PUnit (Head → ℝ) where
  step _ := heatHead

@[simp] theorem radiusTwoOrderedDiffuser_step (v : Head → ℝ) :
    radiusTwoOrderedDiffuser.step PUnit.unit v = heatHead v := rfl

/-- The existing signed, pole-inclusive source return is preserved exactly
through the generic ordered-diffuser adapter. -/
theorem radiusTwo_ordered_source_return
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ) :
    diffusedPaidQuadratic centres radii X
        (radiusTwoOrderedDiffuser.step PUnit.unit v) =
      quadratic (paidLower centres radii X) v := by
  simpa [radiusTwoOrderedDiffuser] using
    diffusedPaid_source_return centres radii X v

end GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.CyclotomicDiffuserConnections
