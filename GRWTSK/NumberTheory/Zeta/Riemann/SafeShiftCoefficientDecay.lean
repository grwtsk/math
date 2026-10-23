/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticFactorization
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Decay of the unrenormalized quartic coefficients

At every safe evaluation point w with Re(w)>1, the von Mangoldt L-series is
summable. Therefore its individual terms tend to zero.  Composing with the
canonical increasing prime-power schedule shows that the safe plus, minus and
center terms all tend to zero.

For a fixed nontrivial zero, division by the fixed defect factors used in the
normalized axial/transverse coordinates does not change this. Hence both
normalized point sequences tend to the origin, and their three-point Gram
coefficients A_n and T_n tend to zero.

Thus the exact factorization

  Q_n = a^4 A_n + 3 a^2 t^2 T_n

cannot have A_n,T_n converging to a common positive limit without an additional
source-derived stage renormalization.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
UNRENORMALIZED_COEFFICIENTS_DECAY / POSITIVE_RENORMALIZATION_REQUIRED.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open CanonicalZeroDivisor

/-- Terms of the pinned von Mangoldt L-series tend to zero at every safe
half-plane evaluation point. -/
theorem vonMangoldtDirichletTerm_tendsto_zero
    {w : ℂ} (hw : 1 < w.re) :
    Tendsto (fun q : ℕ => vonMangoldtDirichletTerm w q)
      atTop (𝓝 0) := by
  have hsum :
      Summable
        (LSeries.term
          (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) w) := by
    exact ArithmeticFunction.LSeriesSummable_vonMangoldt hw
  simpa [vonMangoldtDirichletTerm] using hsum.tendsto_atTop_zero

/-- Restricting to the canonical increasing prime-power schedule preserves
termwise decay. -/
theorem vonMangoldtDirichletTerm_canonical_tendsto_zero
    {w : ℂ} (hw : 1 < w.re) :
    Tendsto
      (fun n =>
        vonMangoldtDirichletTerm w
          (canonicalPrimePowerValueSequence n))
      atTop (𝓝 0) :=
  (vonMangoldtDirichletTerm_tendsto_zero hw).comp
    canonicalPrimePowerValueSequence_strictMono.tendsto_atTop

theorem safePlusPrimePowerTerm_sequence_tendsto_zero
    (z : ZeroPoint) :
    Tendsto
      (fun n =>
        safePlusPrimePowerTerm z
          (canonicalPrimePowerEventSequence n))
      atTop (𝓝 0) := by
  simpa [safePlusPrimePowerTerm,
    canonicalPrimePowerEventSequence_natValue] using
    vonMangoldtDirichletTerm_canonical_tendsto_zero
      (safeShiftPlus_one_lt_re z)

theorem safeMinusPrimePowerTerm_sequence_tendsto_zero
    (z : ZeroPoint) :
    Tendsto
      (fun n =>
        safeMinusPrimePowerTerm z
          (canonicalPrimePowerEventSequence n))
      atTop (𝓝 0) := by
  simpa [safeMinusPrimePowerTerm,
    canonicalPrimePowerEventSequence_natValue] using
    vonMangoldtDirichletTerm_canonical_tendsto_zero
      (safeShiftMinus_one_lt_re z)

/-- The a=0 center source also lies in Re=2>1. -/
theorem safeCenterPrimePowerTerm_sequence_tendsto_zero
    (z : ZeroPoint) :
    Tendsto
      (fun n =>
        safeCenterPrimePowerTerm z
          (canonicalPrimePowerEventSequence n))
      atTop (𝓝 0) := by
  have hcenter : 1 < (safeShiftCenter z.1).re := by
    simp [safeShiftCenter]
  simpa [safeCenterPrimePowerTerm,
    canonicalPrimePowerEventSequence_natValue] using
    vonMangoldtDirichletTerm_canonical_tendsto_zero hcenter

theorem safeEvenPrimePowerTerm_sequence_tendsto_zero
    (z : ZeroPoint) :
    Tendsto
      (fun n =>
        safeEvenPrimePowerTerm z
          (canonicalPrimePowerEventSequence n))
      atTop (𝓝 0) := by
  have hp := safePlusPrimePowerTerm_sequence_tendsto_zero z
  have hm := safeMinusPrimePowerTerm_sequence_tendsto_zero z
  simpa [safeEvenPrimePowerTerm] using (hp.add hm).div_const 2

theorem safeOddPrimePowerTerm_sequence_tendsto_zero
    (z : ZeroPoint) :
    Tendsto
      (fun n =>
        safeOddPrimePowerTerm z
          (canonicalPrimePowerEventSequence n))
      atTop (𝓝 0) := by
  have hp := safePlusPrimePowerTerm_sequence_tendsto_zero z
  have hm := safeMinusPrimePowerTerm_sequence_tendsto_zero z
  simpa [safeOddPrimePowerTerm] using (hp.sub hm).div_const 2

theorem safeEvenDefectPrimePowerTerm_sequence_tendsto_zero
    (z : ZeroPoint) :
    Tendsto
      (fun n =>
        safeEvenDefectPrimePowerTerm z
          (canonicalPrimePowerEventSequence n))
      atTop (𝓝 0) := by
  simpa [safeEvenDefectPrimePowerTerm] using
    (safeEvenPrimePowerTerm_sequence_tendsto_zero z).sub
      (safeCenterPrimePowerTerm_sequence_tendsto_zero z)

/-- Normalized axial vertical coordinates still tend to zero for each fixed
zero, including the totalized a=0 case. -/
theorem safeAxialNormalizedY_sequence_tendsto_zero
    (z : ZeroPoint) :
    Tendsto
      (fun n =>
        safeAxialNormalizedY z
          (canonicalPrimePowerEventSequence n))
      atTop (𝓝 0) := by
  by_cases ha : zeroDefect z.1 = 0
  · simp [safeAxialNormalizedY, ha]
  · have h :=
      (safeEvenDefectPrimePowerTerm_sequence_tendsto_zero z).re
    simpa [safeAxialNormalizedY, ha] using
      h.div_const ((zeroDefect z.1) ^ 2)

/-- Normalized transverse vertical coordinates also tend to zero. -/
theorem safeTransverseNormalizedY_sequence_tendsto_zero
    (z : ZeroPoint) :
    Tendsto
      (fun n =>
        safeTransverseNormalizedY z
          (canonicalPrimePowerEventSequence n))
      atTop (𝓝 0) := by
  by_cases ha : zeroDefect z.1 = 0
  · simp [safeTransverseNormalizedY, ha]
  · by_cases ht : z.1.im = 0
    · simp [safeTransverseNormalizedY, ha, ht]
    · have h :=
        (safeOddPrimePowerTerm_sequence_tendsto_zero z).im
      simpa [safeTransverseNormalizedY, ha, ht] using
        h.div_const (zeroDefect z.1 * z.1.im)

/-- Generic decay of a three-point Gram sequence when both planar coordinates
of its underlying point sequence tend to zero. -/
theorem threePointGram_tendsto_zero_of_coordinates
    (point : ℕ → PackingPoint)
    (hx : Tendsto (fun n => (point n).x) atTop (𝓝 0))
    (hy : Tendsto (fun n => (point n).y) atTop (𝓝 0)) :
    Tendsto
      (fun n =>
        (ThreePointPacking.mk
          (point n) (point (n + 1)) (point (n + 2))).gramVolume)
      atTop (𝓝 0) := by
  have hx1 := hx.comp (tendsto_add_atTop_nat 1)
  have hx2 := hx.comp (tendsto_add_atTop_nat 2)
  have hy1 := hy.comp (tendsto_add_atTop_nat 1)
  have hy2 := hy.comp (tendsto_add_atTop_nat 2)
  have hdx01 :
      Tendsto (fun n => (point (n + 1)).x - (point n).x)
        atTop (𝓝 0) := by
    simpa using hx1.sub hx
  have hdx12 :
      Tendsto (fun n => (point (n + 2)).x - (point (n + 1)).x)
        atTop (𝓝 0) := by
    simpa using hx2.sub hx1
  have hdy01 :
      Tendsto (fun n => (point (n + 1)).y - (point n).y)
        atTop (𝓝 0) := by
    simpa using hy1.sub hy
  have hdy12 :
      Tendsto (fun n => (point (n + 2)).y - (point (n + 1)).y)
        atTop (𝓝 0) := by
    simpa using hy2.sub hy1
  have hdet :
      Tendsto
        (fun n =>
          ((point (n + 1)).x - (point n).x) *
              ((point (n + 2)).y - (point (n + 1)).y) -
            ((point (n + 1)).y - (point n).y) *
              ((point (n + 2)).x - (point (n + 1)).x))
        atTop (𝓝 0) := by
    simpa using (hdx01.mul hdy12).sub (hdy01.mul hdx12)
  have hsq := hdet.pow 2
  simpa [ThreePointPacking.gramVolume, ThreePointPacking.orientedVolume,
    ThreePointPacking.edge01, ThreePointPacking.edge12, PackingPoint.sub] using hsq

/-- The normalized axial Gram coefficient tends to zero. -/
theorem safeAxialQuarticCoefficient_tendsto_zero
    (z : ZeroPoint) :
    Tendsto (safeAxialQuarticCoefficient z) atTop (𝓝 0) := by
  have hx :
      Tendsto
        (fun n =>
          (safeEvenPrimePowerTerm z
            (canonicalPrimePowerEventSequence n)).re)
        atTop (𝓝 0) :=
    (safeEvenPrimePowerTerm_sequence_tendsto_zero z).re
  have hy := safeAxialNormalizedY_sequence_tendsto_zero z
  simpa [safeAxialQuarticCoefficient,
    safeAxialNormalizedPackingSequence, safeAxialNormalizedPoint,
    SequentialThreePointPrimePacking.valueAt,
    SequentialThreePointPrimePacking.packingAt] using
    threePointGram_tendsto_zero_of_coordinates
      (fun n =>
        safeAxialNormalizedPoint z
          (canonicalPrimePowerEventSequence n)) hx hy

/-- The normalized transverse Gram coefficient tends to zero. -/
theorem safeTransverseQuarticCoefficient_tendsto_zero
    (z : ZeroPoint) :
    Tendsto (safeTransverseQuarticCoefficient z) atTop (𝓝 0) := by
  have hx :
      Tendsto
        (fun n =>
          (safeEvenPrimePowerTerm z
            (canonicalPrimePowerEventSequence n)).re)
        atTop (𝓝 0) :=
    (safeEvenPrimePowerTerm_sequence_tendsto_zero z).re
  have hy := safeTransverseNormalizedY_sequence_tendsto_zero z
  simpa [safeTransverseQuarticCoefficient,
    safeTransverseNormalizedPackingSequence, safeTransverseNormalizedPoint,
    SequentialThreePointPrimePacking.valueAt,
    SequentialThreePointPrimePacking.packingAt] using
    threePointGram_tendsto_zero_of_coordinates
      (fun n =>
        safeTransverseNormalizedPoint z
          (canonicalPrimePowerEventSequence n)) hx hy

/-- No unrenormalized axial coefficient can have a positive finite limit. -/
theorem safeAxialQuarticCoefficient_not_tendsto_pos
    (z : ZeroPoint) {L : ℝ} (hL : 0 < L) :
    ¬ Tendsto (safeAxialQuarticCoefficient z) atTop (𝓝 L) := by
  intro h
  have hzero : L = 0 :=
    tendsto_nhds_unique h safeAxialQuarticCoefficient_tendsto_zero
  exact hL.ne' hzero

/-- No unrenormalized transverse coefficient can have a positive finite limit. -/
theorem safeTransverseQuarticCoefficient_not_tendsto_pos
    (z : ZeroPoint) {L : ℝ} (hL : 0 < L) :
    ¬ Tendsto (safeTransverseQuarticCoefficient z) atTop (𝓝 L) := by
  intro h
  have hzero : L = 0 :=
    tendsto_nhds_unique h safeTransverseQuarticCoefficient_tendsto_zero
  exact hL.ne' hzero

end GRWTSK.RiemannHypothesis
