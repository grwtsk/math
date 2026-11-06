/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ComplexPolarizedModes
import GRWTSK.RealFunctions.FramedPortChains
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.FiniteLSeriesRouting

/-!
# Complete polarized packets in the existing observer/port interfaces

Reuse FiberEndpoint, EndpointIdentity, FrameAddress, RankLosingReduction,
FramedPort and FramedObservation.Chain. The concrete rejected amplitude is the
discarded packet of the existing reduction type. The complete two-port map has
a proved inverse on its image and zero observer discrepancy; neither property
is inferred merely from a zero budget annotation.

Finite channel refinement preserves the full sum of amplitudes and energies,
using the concrete complementary-projector family as an actual supplier. Color
is an arbitrary typed label; the color partition preserves total separated-port
intensity but does not reconstruct phases. No claim concerns coherent combining
without cross terms. No new execution graph, scheduler or validation gate is made.

The robust winner theorem consumes the existing chain defect bound for the actual
admissible input and both observer budgets. It never substitutes the harmonic
intensity-loss bound for a different observer's error estimate. Endpoints retain
caller-supplied source identities and frames; strings are not authentication.

Primary proof: exact split reconstruction; finite sum interchange; two-sided
absolute-error inequalities. Hostile input: opposite global signs have identical
intensity and distinguishable quadrature. This is a finite mathematical routing
model, not hardware validation, a spectral gap, RH or Dirichlet GRH.
AI-assisted manual source candidate. Novelty/independent review UNASSESSED.
Elaboration, fresh kernel replay and transitive axiom audit: NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.PolarizedObservers
open GRWTSK.LinearAlgebra.PolarizedModes
open GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w
variable {Mode : Type u} {Color : Type v} {Channel : Type w}

/-- False selects the real part, true the imaginary part, of the same amplitude. -/
def quadrature (z : Mode → ℂ) (i : Mode × Bool) : ℝ :=
  if i.2 then (z i.1).im else (z i.1).re

theorem quadrature_injective : Function.Injective (@quadrature Mode) := by
  intro z w h
  funext i
  apply Complex.ext
  · have hr := congrFun h (i, false)
    simpa [quadrature] using hr
  · have hi := congrFun h (i, true)
    simpa [quadrature] using hi

def endpoint (identity : EndpointIdentity) (frame : FrameAddress) :
    FiberEndpoint (Fin 2 × Bool) where
  identity := identity
  frame := frame
  Carrier := Jones
  observe i z := quadrature z i

/-- Observers of the complete packet recover the original amplitude by addition. -/
def completeEndpoint (identity : EndpointIdentity) (frame : FrameAddress) :
    FiberEndpoint (Fin 2 × Bool) where
  identity := identity
  frame := frame
  Carrier := Jones × Jones
  observe i packet := quadrature (packet.1 + packet.2) i

/-- Instantiate the existing information-losing reduction, including its kernel witness. -/
def reduction (identity : EndpointIdentity) (frame : FrameAddress)
    (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) :
    RankLosingReduction (endpoint identity frame) (endpoint identity frame) Jones where
  reduce := project c s
  discard := project (-s) c
  reconstruct x y := x + y
  reconstruct_packet := reconstruct c s h
  losesDistinction := by
    refine ⟨axis (-s) c, 0, axis_ne_zero (-s) c (by nlinarith [h]), ?_⟩
    simp only [project_perpendicular, map_zero]

/-- No competing port type: exact reconstruction discharges every zero-budget obligation. -/
def completePort (sourceId targetId : EndpointIdentity)
    (sourceFrame targetFrame : FrameAddress)
    (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) :
    FramedPort (endpoint sourceId sourceFrame) (completeEndpoint targetId targetFrame) where
  domain := Set.univ
  map := (reduction sourceId sourceFrame c s h).packet
  residual := fun _ _ => 0
  residual_eq_defect := by
    intro z _ i
    change 0 = quadrature (project c s z + project (-s) c z) i - quadrature z i
    rw [reconstruct c s h z, sub_self]
  errorBudget := fun _ => 0
  errorBudget_nonnegative := fun _ => le_rfl
  residual_bound := by simp

/-- Reuse the existing reduction packet theorem rather than reproving generic injectivity. -/
theorem completePort_injective (sourceId targetId : EndpointIdentity)
    (sourceFrame targetFrame : FrameAddress)
    (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) :
    Function.Injective (completePort sourceId targetId sourceFrame targetFrame c s h).map :=
  (reduction sourceId sourceFrame c s h).packet_injective

/-- The same actual port can be evaluated coefficientwise at the L-series boundary.
The source index and complex kernel are unchanged on each output. -/
theorem completePort_finiteLSeries (sourceId targetId : EndpointIdentity)
    (sourceFrame targetFrame : FrameAddress)
    (c d : ℝ) (h : c ^ 2 + d ^ 2 = 1)
    (S : Finset ℕ) (a : ℕ → Jones) (s : ℂ) :
    (completePort sourceId targetId sourceFrame targetFrame c d h).map
        (GRWTSK.NumberTheory.LSeriesRouting.finite S a s) =
      (GRWTSK.NumberTheory.LSeriesRouting.finite S (fun n => project c d (a n)) s,
       GRWTSK.NumberTheory.LSeriesRouting.finite S (fun n => project (-d) c (a n)) s) := by
  change (project c d (GRWTSK.NumberTheory.LSeriesRouting.finite S a s),
    project (-d) c (GRWTSK.NumberTheory.LSeriesRouting.finite S a s)) = _
  rw [GRWTSK.NumberTheory.LSeriesRouting.map_finite,
    GRWTSK.NumberTheory.LSeriesRouting.map_finite]

def splitBranch (c s : ℝ) (b : Bool) : Jones →ₗ[ℂ] Jones :=
  if b then project (-s) c else project c s

theorem splitBranch_return (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) (z : Jones) :
    (∑ b : Bool, splitBranch c s b z) = z := by
  simpa [splitBranch, Fintype.sum_bool, add_comm] using reconstruct c s h z

theorem splitBranch_energy (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) (z : Jones) :
    (∑ b : Bool, energy (splitBranch c s b z)) = energy z := by
  simpa [splitBranch, Fintype.sum_bool, add_comm] using complete_energy c s h z

section Refinement
variable {I J : Type*} [Fintype I] [Fintype J]

/-- Product labels retain both the parent and child occurrence. -/
theorem refined_return (F : I → Jones →ₗ[ℂ] Jones)
    (G : I → J → Jones →ₗ[ℂ] Jones)
    (hF : ∀ z, (∑ i, F i z) = z)
    (hG : ∀ i z, (∑ j, G i j z) = z) (z : Jones) :
    (∑ p : I × J, (G p.1 p.2).comp (F p.1) z) = z := by
  rw [Fintype.sum_prod_type]
  simp only [LinearMap.comp_apply]
  simp_rw [hG]
  exact hF z

theorem refined_energy (F : I → Jones →ₗ[ℂ] Jones)
    (G : I → J → Jones →ₗ[ℂ] Jones)
    (hF : ∀ z, (∑ i, energy (F i z)) = energy z)
    (hG : ∀ i z, (∑ j, energy (G i j z)) = energy z) (z : Jones) :
    (∑ p : I × J, energy ((G p.1 p.2).comp (F p.1) z)) = energy z := by
  rw [Fintype.sum_prod_type]
  simp only [LinearMap.comp_apply]
  simp_rw [hG]
  exact hF z

end Refinement

/-- Intensity of separately resolved ports with a common typed color label. -/
def colorIntensity [Fintype Channel] [DecidableEq Color]
    (color : Channel → Color) (F : Channel → Jones →ₗ[ℂ] Jones)
    (z : Jones) (c : Color) : ℝ :=
  ∑ p, if color p = c then energy (F p z) else 0

theorem color_partition [Fintype Channel] [Fintype Color] [DecidableEq Color]
    (color : Channel → Color) (F : Channel → Jones →ₗ[ℂ] Jones)
    (hF : ∀ z, (∑ p, energy (F p z)) = energy z) (z : Jones) :
    (∑ c, colorIntensity color F z c) = energy z := by
  unfold colorIntensity
  rw [Finset.sum_comm]
  simpa using hF z

theorem linear_intensity_sign_blind (F : Jones →ₗ[ℂ] Jones) (z : Jones) :
    energy (F (-z)) = energy (F z) := by rw [map_neg, energy_neg]

theorem intensity_does_not_determine_quadrature :
    energy (axis 1 0) = energy (-axis 1 0) ∧
      quadrature (axis 1 0) (0, false) ≠ quadrature (-axis 1 0) (0, false) := by
  norm_num [energy, axis, quadrature, Fin.sum_univ_two]

section CertifiedRouting
variable {Observer : Type v} {A B : FiberEndpoint.{u, v} Observer}

/-- A winner in the approximate output returns to the original source only with
both complete chain budgets and every actual intermediate-domain condition. -/
theorem source_order_of_chain_margin
    (path : GRWTSK.Analysis.FramedObservation.Chain.Path A B)
    (x : A.Carrier)
    (hx : GRWTSK.Analysis.FramedObservation.Chain.Admissible path x)
    (winner other : Observer)
    (margin :
      B.observe other (GRWTSK.Analysis.FramedObservation.Chain.evaluate path x) +
          GRWTSK.Analysis.FramedObservation.Chain.budget path other <
        B.observe winner (GRWTSK.Analysis.FramedObservation.Chain.evaluate path x) -
          GRWTSK.Analysis.FramedObservation.Chain.budget path winner) :
    A.observe other x < A.observe winner x := by
  obtain ⟨hwlo, hwhi⟩ := abs_le.mp
    (GRWTSK.Analysis.FramedObservation.Chain.defect_bound path x hx winner)
  obtain ⟨holo, hohi⟩ := abs_le.mp
    (GRWTSK.Analysis.FramedObservation.Chain.defect_bound path x hx other)
  linarith

end CertifiedRouting
end GRWTSK.Analysis.PolarizedObservers
