# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.AcousticMultipath.Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15fbb58a1352087059089b2f6e7a762355aead96` · SHA-256 `3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-!
# Finite delayed-source Fourier carriers

The angular Fourier convention in this module is the unnormalized integral
`∫ t, exp(-i ω t) source(t) dt`. It is local to these acoustic formulas and changes
no RH transform convention. Finite sums of delayed copies of one integrable source
have the proved scalar transfer factor `∑ j, Aⱼ exp(-i ω τⱼ)`.

The common-source model is a hypothesis, not a physical derivation: independent
sources require a transfer matrix rather than this scalar inverse. Complex signal
amplitudes and real time shifts are mathematical data; causal physical use must
also justify the path delays and amplitudes. No shock or fluid evolution is proved.

Recovery and stability below are pointwise spectral statements. The explicit notch
collision uses a declared finite-bin spectrum space. An isolated real-frequency
zero does not by itself give a nonzero kernel in continuous-frequency L², where
functions are identified almost everywhere. No L² inversion is inferred, and no
signal-realization theorem for arbitrary finite-bin data is inferred here.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace BubbleAcoustics

open MeasureTheory

noncomputable section

/-- The explicitly negative-exponent angular Fourier phase, with no factor of two pi. -/
def angularFourierPhase (frequency time : ℝ) : ℂ :=
  Complex.exp ((-(frequency * time) : ℝ) * Complex.I)

/-- The angular Fourier integral against real Lebesgue measure, without a normalization factor. -/
def angularFourier (source : ℝ → ℂ) (frequency : ℝ) : ℂ :=
  ∫ time, angularFourierPhase frequency time * source time

/-- Every angular Fourier phase has complex norm one. -/
theorem angularFourierPhase_norm (frequency time : ℝ) :
    ‖angularFourierPhase frequency time‖ = 1 :=
  Complex.norm_exp_ofReal_mul_I _

/-- The phase is continuous as a function of source time. -/
theorem angularFourierPhase_continuous (frequency : ℝ) :
    Continuous (angularFourierPhase frequency) := by
  unfold angularFourierPhase
  fun_prop

/-- Addition of source times multiplies the declared negative-exponent phases. -/
theorem angularFourierPhase_add (frequency first second : ℝ) :
    angularFourierPhase frequency (first + second) =
      angularFourierPhase frequency first * angularFourierPhase frequency second := by
  unfold angularFourierPhase
  rw [← Complex.exp_add]
  congr 1
  push_cast
  ring

/-- Multiplication by the unit phase preserves integrability of the source. -/
theorem angular_fourier_integrable (source : ℝ → ℂ) (integrable : Integrable source)
    (frequency : ℝ) : Integrable (fun time => angularFourierPhase frequency time * source time) :=
  integrable.bdd_mul (angularFourierPhase_continuous frequency).aestronglyMeasurable
    (Filter.Eventually.of_forall fun time => (angularFourierPhase_norm frequency time).le)

/-- A path contributes a fixed complex amplitude times one delayed copy of the common source. -/
def delayedPath (amplitude : ℂ) (delay : ℝ) (source : ℝ → ℂ) (time : ℝ) : ℂ :=
  amplitude * source (time - delay)

/-- Translation and multiplication by a fixed path amplitude preserve source integrability. -/
theorem delayed_path_integrable (source : ℝ → ℂ) (integrable : Integrable source)
    (amplitude : ℂ) (delay : ℝ) : Integrable (delayedPath amplitude delay source) :=
  (integrable.comp_sub_right delay).const_mul amplitude

/-- Constant amplitude factors out of the raw Fourier integral. -/
theorem angularFourier_const_mul (source : ℝ → ℂ) (amplitude : ℂ) (frequency : ℝ) :
    angularFourier (fun time => amplitude * source time) frequency =
      amplitude * angularFourier source frequency := by
  unfold angularFourier
  rw [← integral_const_mul]
  congr 1
  funext time
  ring

/-- Translation invariance gives the exact phase for a delayed source integral. -/
theorem angularFourier_delay (source : ℝ → ℂ) (delay frequency : ℝ) :
    angularFourier (fun time => source (time - delay)) frequency =
      angularFourierPhase frequency delay * angularFourier source frequency := by
  unfold angularFourier
  rw [← integral_add_right_eq_self
    (fun time => angularFourierPhase frequency time * source (time - delay)) delay]
  simp only [add_sub_cancel_right]
  rw [← integral_const_mul]
  congr 1
  funext time
  rw [angularFourierPhase_add]
  ring

/-- The delayed path factor uses the same negative phase as the declared transform. -/
theorem angularFourier_delayedPath (source : ℝ → ℂ) (amplitude : ℂ)
    (delay frequency : ℝ) :
    angularFourier (delayedPath amplitude delay source) frequency =
      amplitude * angularFourierPhase frequency delay * angularFourier source frequency := by
  unfold delayedPath
  rw [angularFourier_const_mul, angularFourier_delay]
  ring

/-- The time signal is an actual finite sum of delayed copies of one common source. -/
def finiteMultipathSignal {Path : Type*} (paths : Finset Path) (amplitudes : Path → ℂ)
    (delays : Path → ℝ) (source : ℝ → ℂ) (time : ℝ) : ℂ :=
  ∑ path ∈ paths, delayedPath (amplitudes path) (delays path) source time

/-- The finite transfer factor associated with the declared path data. -/
def finiteTransfer {Path : Type*} (paths : Finset Path) (amplitudes : Path → ℂ)
    (delays : Path → ℝ) (frequency : ℝ) : ℂ :=
  ∑ path ∈ paths, amplitudes path * angularFourierPhase frequency (delays path)

/-- An integrable common source gives an integrable received finite-path signal. -/
theorem finite_multipath_integrable {Path : Type*} (paths : Finset Path)
    (amplitudes : Path → ℂ) (delays : Path → ℝ) (source : ℝ → ℂ)
    (integrable : Integrable source) :
    Integrable (finiteMultipathSignal paths amplitudes delays source) :=
  integrable_finsetSum paths fun path _ =>
    delayed_path_integrable source integrable (amplitudes path) (delays path)

/-- Fourier integration commutes with a finite sum whose individual signals are integrable. -/
theorem angularFourier_finite_sum {Path : Type*} (paths : Finset Path)
    (signals : Path → ℝ → ℂ) (integrable : ∀ path ∈ paths, Integrable (signals path))
    (frequency : ℝ) :
    angularFourier (fun time => ∑ path ∈ paths, signals path time) frequency =
      ∑ path ∈ paths, angularFourier (signals path) frequency := by
  unfold angularFourier
  simp_rw [Finset.mul_sum]
  exact integral_finsetSum paths fun path member =>
    angular_fourier_integrable (signals path) (integrable path member) frequency

/-- The finite delayed source model has its exact Fourier factorization with genuine L¹ data. -/
theorem finite_multipath_fourier {Path : Type*} (paths : Finset Path)
    (amplitudes : Path → ℂ) (delays : Path → ℝ) (source : ℝ → ℂ)
    (integrable : Integrable source) (frequency : ℝ) :
    angularFourier (finiteMultipathSignal paths amplitudes delays source) frequency =
      finiteTransfer paths amplitudes delays frequency * angularFourier source frequency := by
  unfold finiteMultipathSignal
  rw [angularFourier_finite_sum paths _
    (fun path _ => delayed_path_integrable source integrable (amplitudes path) (delays path))]
  simp_rw [angularFourier_delayedPath]
  exact (Finset.sum_mul paths _ _).symm

/-- Division by a nonzero transfer factor recovers the single source Fourier coefficient. -/
theorem source_fourier_recovery {Path : Type*} (paths : Finset Path)
    (amplitudes : Path → ℂ) (delays : Path → ℝ) (source : ℝ → ℂ)
    (integrable : Integrable source) (frequency : ℝ)
    (nonzero : finiteTransfer paths amplitudes delays frequency ≠ 0) :
    angularFourier (finiteMultipathSignal paths amplitudes delays source) frequency /
      finiteTransfer paths amplitudes delays frequency = angularFourier source frequency := by
  rw [finite_multipath_fourier paths amplitudes delays source integrable frequency]
  exact mul_div_cancel_left₀ _ nonzero

/-- The source domain carries its actual whole-line integrability proof. -/
abbrev IntegrableAcousticSignal := {source : ℝ → ℂ // Integrable source}

/-- Nonvanishing transfer gives descent for a pointwise source coefficient, not the full history. -/
theorem source_fourier_coefficient_descends {Path : Type*} (paths : Finset Path)
    (amplitudes : Path → ℂ) (delays : Path → ℝ) (frequency : ℝ)
    (nonzero : finiteTransfer paths amplitudes delays frequency ≠ 0) :
    DescendsThrough
      (fun source : IntegrableAcousticSignal =>
        angularFourier (finiteMultipathSignal paths amplitudes delays source.val) frequency)
      (fun source => angularFourier source.val frequency) := by
  intro first second equal
  dsimp only at equal ⊢
  rw [finite_multipath_fourier paths amplitudes delays first.val first.property frequency,
    finite_multipath_fourier paths amplitudes delays second.val second.property frequency] at equal
  exact mul_left_cancel₀ nonzero equal

/-- A positive lower transfer bound controls pointwise source-coefficient differences. -/
theorem transfer_stability {transfer first second : ℂ} {lower : ℝ}
    (positive : 0 < lower) (lowerBound : lower ≤ ‖transfer‖) :
    ‖first - second‖ ≤ ‖transfer * first - transfer * second‖ / lower := by
  rw [← mul_sub, norm_mul]
  apply (le_div_iff₀ positive).mpr
  simpa only [mul_comm] using mul_le_mul_of_nonneg_right lowerBound (norm_nonneg (first - second))

/-- A diagonal transfer operator on a declared pointwise spectrum space. -/
def spectralObservation {Bin : Type*} (transfer : Bin → ℂ) (source : Bin → ℂ) : Bin → ℂ :=
  fun bin => transfer bin * source bin

/-- Nonzero transfer at every declared bin makes the diagonal spectrum carrier injective. -/
theorem spectralObservation_injective {Bin : Type*} (transfer : Bin → ℂ)
    (nonzero : ∀ bin, transfer bin ≠ 0) : Function.Injective (spectralObservation transfer) := by
  intro first second equal
  funext bin
  exact mul_left_cancel₀ (nonzero bin) (congrFun equal bin)

/-- A spectrum supported only at one declared bin; this is pointwise data, not an L² class. -/
def notchSpectrum {Bin : Type*} [DecidableEq Bin] (notch : Bin) : Bin → ℂ :=
  fun bin => if bin = notch then 1 else 0

/-- A zero transfer bin creates an explicit collision in the declared pointwise spectrum space. -/
def spectralNotchObstruction {Bin : Type*} [DecidableEq Bin] (transfer : Bin → ℂ)
    (notch : Bin) (zero : transfer notch = 0) :
    DescentObstruction (spectralObservation transfer) (id : (Bin → ℂ) → (Bin → ℂ)) where
  left := fun _ => 0
  right := notchSpectrum notch
  sameCarrier := by
    funext bin
    by_cases equal : bin = notch
    · simp [spectralObservation, notchSpectrum, equal, zero]
    · simp [spectralObservation, notchSpectrum, equal]
  targetSeparated := by
    intro equal
    have atNotch := congrFun equal notch
    norm_num [notchSpectrum] at atNotch

/-- Equal-amplitude paths with delays zero and one form a simple coherent two-path transfer. -/
def twoPathTransfer (frequency : ℝ) : ℂ :=
  finiteTransfer (Finset.univ : Finset Bool) (fun _ => 1)
    (fun path => if path then 1 else 0) frequency

/-- The undelayed and unit-delayed contributions give the explicit two-path factor. -/
theorem twoPathTransfer_formula (frequency : ℝ) :
    twoPathTransfer frequency = 1 + angularFourierPhase frequency 1 := by
  simp [twoPathTransfer, finiteTransfer, angularFourierPhase, add_comm]

/-- The two-path factor has a genuine notch at angular frequency pi. -/
theorem twoPathTransfer_notch : twoPathTransfer Real.pi = 0 := by
  rw [twoPathTransfer_formula]
  simp [angularFourierPhase, Complex.exp_neg, Complex.exp_pi_mul_I]

/-- Its zero-frequency factor is two, so the whole transfer is not identically zero. -/
theorem twoPathTransfer_zero : twoPathTransfer 0 = 2 := by
  norm_num [twoPathTransfer_formula, angularFourierPhase]

/-- The explicit finite-bin model samples angular frequencies zero and pi. -/
def twoBinTransfer (bin : Bool) : ℂ :=
  twoPathTransfer (if bin then Real.pi else 0)

/-- The pi bin of this actual finite-path transfer vanishes. -/
theorem twoBinTransfer_notch : twoBinTransfer true = 0 := by
  simpa [twoBinTransfer] using twoPathTransfer_notch

/-- A concrete two-bin source collision caused by the proved finite-path notch. -/
def twoBinNotchObstruction :
    DescentObstruction (spectralObservation twoBinTransfer) (id : (Bool → ℂ) → (Bool → ℂ)) :=
  spectralNotchObstruction twoBinTransfer true twoBinTransfer_notch

/-- No decoder of the observed two bins recovers every source spectrum in that finite-bin model. -/
theorem no_two_bin_spectrum_decoder :
    ¬∃ recover : (Bool → ℂ) → (Bool → ℂ), ∀ source,
      recover (spectralObservation twoBinTransfer source) = source :=
  descent_obstruction_no_factorization twoBinNotchObstruction

end
end BubbleAcoustics
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
