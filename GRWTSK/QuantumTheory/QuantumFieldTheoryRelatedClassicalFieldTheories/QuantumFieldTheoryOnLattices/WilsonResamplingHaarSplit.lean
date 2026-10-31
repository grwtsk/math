/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib measurable equivalences and product measures retain upstream licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonLocalDensityBounds
import Mathlib.MeasureTheory.Constructions.Pi
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Actual product Haar coordinates for Wilson link resampling

The full configuration is split into A-links and complement-links. Measure
preservation concerns product Haar only. Wilson exterior marginals retain their
partition weights; no Gibbs independence follows. SOURCE_PROOF_CANDIDATE;
compilation, replay, transitive axioms and interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonResamplingHaarSplit
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Topology
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
variable (L : ℕ) [NeZero L]

def splitEquiv (A : Finset (Link L)) :
    Configuration L SU2 ≃ᵐ
      (({l : Link L // l ∈ A} → SU2) × ({l : Link L // l ∉ A} → SU2)) :=
  MeasurableEquiv.piEquivPiSubtypeProd (fun _ : Link L => SU2) (fun l => l ∈ A)

def assemble (A : Finset (Link L))
    (uv : ({l : Link L // l ∈ A} → SU2) × ({l : Link L // l ∉ A} → SU2)) :
    Configuration L SU2 := (splitEquiv L A).symm uv

theorem assemble_apply (A : Finset (Link L))
    (u : {l : Link L // l ∈ A} → SU2) (v : {l : Link L // l ∉ A} → SU2)
    (l : Link L) :
    assemble L A (u,v) l = if h : l ∈ A then u ⟨l,h⟩ else v ⟨l,h⟩ := rfl

theorem assemble_split (A : Finset (Link L)) (U : Configuration L SU2) :
    assemble L A (splitEquiv L A U) = U :=
  (splitEquiv L A).symm_apply_apply U

theorem split_preserving (A : Finset (Link L)) :
    MeasurePreserving (splitEquiv L A) (referenceMeasure L)
      ((productHaar {l : Link L // l ∈ A}).prod
        (productHaar {l : Link L // l ∉ A})) := by
  exact measurePreserving_piEquivPiSubtypeProd
    (fun _ : Link L => haarProbability) (fun l => l ∈ A)

theorem assemble_preserving (A : Finset (Link L)) :
    MeasurePreserving (assemble L A)
      ((productHaar {l : Link L // l ∈ A}).prod
        (productHaar {l : Link L // l ∉ A})) (referenceMeasure L) :=
  (split_preserving L A).symm

theorem continuous_assemble (A : Finset (Link L)) : Continuous (assemble L A) := by
  apply continuous_pi
  intro l
  by_cases h : l ∈ A
  · change Continuous (fun uv => if h' : l ∈ A then uv.1 ⟨l,h'⟩ else uv.2 ⟨l,h'⟩)
    simpa only [dif_pos h] using
      (continuous_apply (⟨l,h⟩ : {l : Link L // l ∈ A})).comp continuous_fst
  · change Continuous (fun uv => if h' : l ∈ A then uv.1 ⟨l,h'⟩ else uv.2 ⟨l,h'⟩)
    simpa only [dif_neg h] using
      (continuous_apply (⟨l,h⟩ : {l : Link L // l ∉ A})).comp continuous_snd

/-- Exact finite Haar Fubini identity, before any Gibbs reweighting. -/
theorem integral_split (A : Finset (Link L))
    (F : Configuration L SU2 → ℝ) (hF : Continuous F) :
    (∫ U, F U ∂referenceMeasure L) =
      ∫ u, ∫ v, F (assemble L A (u,v))
        ∂productHaar {l : Link L // l ∉ A}
        ∂productHaar {l : Link L // l ∈ A} := by
  have hi : Integrable (fun uv => F (assemble L A uv))
      ((productHaar {l : Link L // l ∈ A}).prod
        (productHaar {l : Link L // l ∉ A})) :=
    (hF.comp (continuous_assemble L A)).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)
  calc
    _ = ∫ uv, F (assemble L A uv)
        ∂(productHaar {l : Link L // l ∈ A}).prod
          (productHaar {l : Link L // l ∉ A}) :=
      ((assemble_preserving L A).integral_comp' F).symm
    _ = _ := integral_prod _ hi

end GRWTSK.Geometry.GaugeTheory.WilsonResamplingHaarSplit
