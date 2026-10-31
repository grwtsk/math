/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonLocalAction

/-!
# Exterior-action cancellation in actual finite link-resampling weights

The resampling carrier is the actual finite product of SU2 links in A, equipped
with product Haar. Both normalizers are retained. This exact integral identity
precedes the proof that the density is a regular conditional probability of the
full Wilson law; disintegration, positivity and local minorization are separate.
SOURCE_PROOF_CANDIDATE; compilation, replay, axioms and interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonLocalDensityCancellation
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Topology
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonLocalAction
variable (L : ℕ) [NeZero L]

def resample (A : Finset (Link L)) (V : Configuration L SU2)
    (u : {l // l ∈ A} → SU2) : Configuration L SU2 :=
  fun l => if h : l ∈ A then u ⟨l,h⟩ else V l

theorem resample_outside (A : Finset (Link L)) (V : Configuration L SU2)
    (u : {l // l ∈ A} → SU2) (l : Link L) (hl : l ∉ A) :
    resample L A V u l = V l := by simp [resample, hl]

def exteriorAction (A : Finset (Link L)) (V : Configuration L SU2) : ℝ :=
  wilsonAction L V-localAction L A V

theorem action_resample (A : Finset (Link L)) (V : Configuration L SU2)
    (u : {l // l ∈ A} → SU2) :
    wilsonAction L (resample L A V u) =
      exteriorAction L A V+localAction L A (resample L A V u) := by
  have h := action_difference_eq_local L A (resample L A V u) V
    (fun l hl => resample_outside L A V u l hl)
  dsimp [exteriorAction]
  linarith

def fullWeight (A : Finset (Link L)) (V : Configuration L SU2) (β : ℝ)
    (u : {l // l ∈ A} → SU2) : ℝ :=
  Real.exp (-β*wilsonAction L (resample L A V u))

def localWeight (A : Finset (Link L)) (V : Configuration L SU2) (β : ℝ)
    (u : {l // l ∈ A} → SU2) : ℝ :=
  Real.exp (-β*localAction L A (resample L A V u))

theorem weight_factor (A : Finset (Link L)) (V : Configuration L SU2)
    (β : ℝ) (u : {l // l ∈ A} → SU2) :
    fullWeight L A V β u =
      Real.exp (-β*exteriorAction L A V)*localWeight L A V β u := by
  unfold fullWeight localWeight
  rw [action_resample, mul_add, Real.exp_add]

/-- Both partitions integrate over exactly the same actual resampled links. -/
theorem partition_factor (A : Finset (Link L)) (V : Configuration L SU2) (β : ℝ) :
    (∫ u, fullWeight L A V β u ∂productHaar {l : Link L // l ∈ A}) =
      Real.exp (-β*exteriorAction L A V)*
        (∫ u, localWeight L A V β u ∂productHaar {l : Link L // l ∈ A}) := by
  simp_rw [weight_factor]
  exact integral_const_mul _ _

/-- Exact cancellation; this does not assert a disintegration theorem. -/
theorem normalized_density_eq (A : Finset (Link L)) (V : Configuration L SU2)
    (β : ℝ) (u : {l // l ∈ A} → SU2) :
    fullWeight L A V β u /
      (∫ v, fullWeight L A V β v ∂productHaar {l : Link L // l ∈ A}) =
    localWeight L A V β u /
      (∫ v, localWeight L A V β v ∂productHaar {l : Link L // l ∈ A}) := by
  rw [weight_factor, partition_factor]
  exact mul_div_mul_left _ _ (ne_of_gt (Real.exp_pos _))

end GRWTSK.Geometry.GaugeTheory.WilsonLocalDensityCancellation
