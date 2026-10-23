/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization
import Mathlib.Tactic

set_option autoImplicit false

open Filter Topology

/-!
# Zero-parameterized canonical probe and quartic sign orientation

The canonical stage/operator family is fixed by the arithmetic source.
Only the probe vector is allowed to depend on the horizontal/vertical
coordinates through one explicit globally defined formula.

This avoids forcing the unrelated zero-independent normalized source to
decay on the critical line.

The natural quartic-magnitude probe realizes the NEGATIVE of the existing
signed quartic witness.  This exact sign is retained as a first-class
obstruction witness.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalQuarticProbe

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization
open GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort
open GRWTSK.Polynomial.ConjugateQuartic

/-- Scaling the test vector by a real scalar scales the finite Gram by the
square of that scalar. -/
theorem stageEnergy_const_mul
    (stage : PrimePowerWitnessStage) (f : ℝ → ℝ) (c : ℝ) :
    stageEnergy stage (fun u => c * f u) =
      c ^ 2 * stageEnergy stage f := by
  classical
  unfold stageEnergy
  calc
    (∑ a : stage.WitnessIndex,
      atomWeight a.1 * (c * f (logLocation a.1)) ^ 2) =
      ∑ a : stage.WitnessIndex,
        c ^ 2 * (atomWeight a.1 * (f (logLocation a.1)) ^ 2) := by
          apply Finset.sum_congr rfl
          intro a _
          ring
    _ = c ^ 2 *
        ∑ a : stage.WitnessIndex,
          atomWeight a.1 * (f (logLocation a.1)) ^ 2 := by
          rw [Finset.mul_sum]

/-- Source-independent scalar profile carrying exactly the magnitude of the
signed quartic witness. -/
noncomputable def quarticMagnitudeScale (α γ : ℝ) : ℝ :=
  2 * α * Real.sqrt (α ^ 2 + 3 * γ ^ 2)

/-- The square of the magnitude scale is exactly minus the signed quartic
witness. -/
theorem quarticMagnitudeScale_sq (α γ : ℝ) :
    quarticMagnitudeScale α γ ^ 2 =
      -witnessTrace α γ := by
  have hnonneg : 0 ≤ α ^ 2 + 3 * γ ^ 2 := by positivity
  unfold quarticMagnitudeScale
  rw [witnessTrace_eq, mul_pow, mul_pow, Real.sq_sqrt hnonneg]
  ring

/-- The globally fixed zero-parameterized probe. The stage family remains
canonical; only the vector supplied to that fixed positive source depends on
the candidate coordinates. -/
noncomputable def quarticProbe
    (α γ : ℝ) (n : ℕ) (u : ℝ) : ℝ :=
  quarticMagnitudeScale α γ * radiusNormalizedAmplitude n u

/-- The natural positive prime-power Gram has the opposite sign orientation
from the repository's signed quartic witness. -/
theorem stageEnergy_quarticProbe_eq
    (α γ : ℝ) (n : ℕ) :
    stageEnergy (canonicalStage n) (quarticProbe α γ n) =
      (-witnessTrace α γ) * radiusNormalizedCorrection n := by
  unfold quarticProbe
  rw [stageEnergy_const_mul,
    quarticMagnitudeScale_sq,
    radiusNormalizedStageEnergy_eq_correction]

/-- The quartic probe vanishes identically on the critical-line horizontal
coordinate, without requiring any decay of the underlying normalized source. -/
theorem quarticProbe_zero_horizontal (γ : ℝ) (n : ℕ) :
    quarticProbe 0 γ n = fun _ => 0 := by
  funext u
  simp [quarticProbe, quarticMagnitudeScale]

/-- Its finite Gram therefore vanishes identically on the critical line. -/
theorem stageEnergy_quarticProbe_zero_horizontal (γ : ℝ) (n : ℕ) :
    stageEnergy (canonicalStage n) (quarticProbe 0 γ n) = 0 := by
  rw [stageEnergy_quarticProbe_eq]
  simp [witnessTrace_eq]

/-- Diagnostic obstruction left by the zero-independent normalized profile:
at alpha=0 it forces the entire global normalized correction to tend to zero.
The new parameterized probe avoids imposing this unrelated requirement. -/
theorem zeroIndependentComparison_forces_global_decay
    {γ : ℝ} (comparison : RadiusNormalizedQuarticComparison 0 γ) :
    Tendsto radiusNormalizedCorrection atTop (𝓝 0) := by
  have h := comparison.normalizedCorrection_tendsto
  simpa [witnessTrace_eq] using h

/-- Named reusable sign-orientation witness. -/
def QuarticSignOrientationWitness : Prop :=
  ∀ α γ n,
    stageEnergy (canonicalStage n) (quarticProbe α γ n) =
      (-witnessTrace α γ) * radiusNormalizedCorrection n

theorem quarticSignOrientationWitness :
    QuarticSignOrientationWitness := by
  intro α γ n
  exact stageEnergy_quarticProbe_eq α γ n

/-- Stable identifier for issue/replay ledgers. -/
def quarticSignOrientationWitnessId : String :=
  "WITNESS_QUARTIC_SIGN_ORIENTATION"

/-- A positive-scalar exact identification of the natural positive probe with
the POSITIVE orientation of witnessTrace already forces the horizontal
coordinate to vanish. -/
theorem exact_positive_orientation_forces_horizontal_zero
    {α γ w : ℝ} {n : ℕ} (hw : 0 < w)
    (hidentity :
      stageEnergy (canonicalStage n) (quarticProbe α γ n) =
        w * witnessTrace α γ) :
    α = 0 := by
  have hsource :
      0 ≤ stageEnergy (canonicalStage n) (quarticProbe α γ n) :=
    stageEnergy_nonneg (canonicalStage n) (quarticProbe α γ n)
  have htarget : 0 ≤ w * witnessTrace α γ := by
    rw [← hidentity]
    exact hsource
  have htrace : 0 ≤ witnessTrace α γ :=
    (mul_nonneg_iff_of_pos_left hw).mp htarget
  exact (witnessTrace_nonneg_iff α γ).mp htrace

/-- Preferred comparison type: the source stage/operator and the
zero-parameterized probe formula are fixed globally. Only the signed
comparison scale and error remain analytic data. -/
structure ProbeQuarticComparison (α γ : ℝ) where
  weight : ℕ → ℝ
  error : ℕ → ℝ
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity : ∀ n,
    stageEnergy (canonicalStage n) (quarticProbe α γ n) =
      weight n * witnessTrace α γ + error n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)
  error_tendsto : Tendsto error atTop (𝓝 0)

namespace ProbeQuarticComparison

/-- The parameterized-probe comparison is an instance of the generic
positive-Gram extraction, without target-dependent stage selection. -/
noncomputable def toQuarticExtraction
    {α γ : ℝ} (comparison : ProbeQuarticComparison α γ) :
    QuarticExtraction α γ where
  stage := canonicalStage
  test := quarticProbe α γ
  weight := comparison.weight
  error := comparison.error
  limitWeight := comparison.limitWeight
  limitWeight_pos := comparison.limitWeight_pos
  identity := comparison.identity
  weight_tendsto := comparison.weight_tendsto
  error_tendsto := comparison.error_tendsto

theorem horizontal_displacement_eq_zero
    {α γ : ℝ} (comparison : ProbeQuarticComparison α γ) :
    α = 0 :=
  horizontal_displacement_eq_zero_of_quarticExtraction
    comparison.toQuarticExtraction

end ProbeQuarticComparison

/-- RH-facing endpoint for the corrected fixed-stage, parameterized-probe
interface. -/
theorem riemannHypothesis_of_probeQuarticComparison
    (hcompare :
      ∀ s : ℂ, NontrivialZetaZero s →
        ProbeQuarticComparison (s.re - 1 / 2) s.im) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_primePowerGramExtraction
  intro s hs
  exact (hcompare s hs).toQuarticExtraction

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalQuarticProbe
