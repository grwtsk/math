/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib continuous-function density retains Heather Macbeth's authorship;
continuous-to-Lp maps retain Rémy Degenne and Sébastien Gouëzel's. Hilbert
orthogonal theory retains Zhouhang Zhou, Frédéric Dupuis and Heather Macbeth's.
Imports retain their original attribution and Apache-2.0 licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceGaugeAveragePairing
import Mathlib.MeasureTheory.Function.ContinuousMapDense
import Mathlib.Analysis.InnerProductSpace.Projection.Submodule

/-!
# Density inside the actual gauge-invariant real L2 subspace

The actual compact metrizable slice and finite Borel Haar pay regularity,
then the maintained continuous-to-Lp density theorem supplies ambient density.
Gauge averaging and its paid pairing identity show that a vector of the
ACTUAL fixed subspace orthogonal to invariant continuous functions vanishes.
The Hilbert orthogonal-complement theorem then gives density in that fixed
subspace. No density in the full L2 space of invariant functions is asserted.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantContinuousDensity

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeAverage
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeAveragePairing

variable (L : ℕ) [NeZero L]

/-- Actual finite Borel measure on the compact metrizable matrix-product slice. -/
theorem sliceHaar_regular : Measure.Regular (sliceHaar L) :=
  Measure.Regular.of_sigmaCompactSpace_of_isLocallyFiniteMeasure (sliceHaar L)

theorem sliceHaar_weaklyRegular : Measure.WeaklyRegular (sliceHaar L) := by
  letI : Measure.Regular (sliceHaar L) := sliceHaar_regular L
  infer_instance

/-- Required normal/Borel/compact/finite hypotheses come from the actual slice and Haar. -/
theorem continuous_toLp_denseRange :
    DenseRange (ContinuousMap.toLp 2 (sliceHaar L) ℝ :
      C(Slice L SU2, ℝ) →L[ℝ] RealSliceL2 L) := by
  letI : Measure.WeaklyRegular (sliceHaar L) := sliceHaar_weaklyRegular L
  exact ContinuousMap.toLp_denseRange (E := ℝ) (μ := sliceHaar L) (𝕜 := ℝ) (p := 2)
    (by norm_num)

/-- The actual continuous population, with pointwise invariance under every gauge. -/
def invariantContinuousSpace : Submodule ℝ C(Slice L SU2, ℝ) where
  carrier := {f | ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a}
  zero_mem' := by intro g a; rfl
  add_mem' := by
    intro f h hf hh g a
    change f (sliceGaugeAction g a) + h (sliceGaugeAction g a) = f a + h a
    rw [hf g a, hh g a]
  smul_mem' := by
    intro r f hf g a
    change r * f (sliceGaugeAction g a) = r * f a
    rw [hf g a]

def invariantEmbedding : invariantContinuousSpace L →L[ℝ] gaugeInvariantSpace L :=
  (ContinuousMap.toLp 2 (sliceHaar L) ℝ).restrict
    (fun f hf => continuous_mem_gaugeInvariantSpace L f hf)

theorem invariantEmbedding_coe (f : invariantContinuousSpace L) :
    (invariantEmbedding L f : RealSliceL2 L) =
      ContinuousMap.toLp 2 (sliceHaar L) ℝ f.val := rfl

/-- The exact zero-annihilator statement, consuming actual gauge averaging and ambient density. -/
theorem eq_zero_of_inner_invariantContinuous (h : gaugeInvariantSpace L)
    (hh : ∀ f : invariantContinuousSpace L, inner ℝ h (invariantEmbedding L f) = 0) : h = 0 := by
  have hz : (h : RealSliceL2 L) = 0 :=
    (continuous_toLp_denseRange L).eq_zero_of_inner_left ℝ (fun f => by
      let pf : invariantContinuousSpace L := ⟨average L f, average_gauge L f⟩
      have hp := hh pf
      change inner ℝ (h : RealSliceL2 L)
        (ContinuousMap.toLp 2 (sliceHaar L) ℝ (average L f)) = 0 at hp
      rw [inner_average L (h : RealSliceL2 L) h.property f] at hp
      exact hp)
  exact Subtype.ext hz

/-- Density is in the constructed fixed subspace, with no certificate premise. -/
theorem invariantEmbedding_denseRange : DenseRange (invariantEmbedding L) := by
  let R : Submodule ℝ (gaugeInvariantSpace L) := (invariantEmbedding L).range
  have horth : Rᗮ = ⊥ := by
    apply le_antisymm ?_ bot_le
    intro h hh
    have hz := eq_zero_of_inner_invariantContinuous L h (fun f =>
      (Submodule.mem_orthogonal' R h).mp hh (invariantEmbedding L f) ⟨f, rfl⟩)
    simpa only [Submodule.mem_bot] using hz
  have htop : R.topologicalClosure = ⊤ :=
    (Submodule.topologicalClosure_eq_top_iff (K := R)).mpr horth
  intro h
  change h ∈ closure (R : Set (gaugeInvariantSpace L))
  change h ∈ R.topologicalClosure
  rw [htop]
  trivial

end GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantContinuousDensity
