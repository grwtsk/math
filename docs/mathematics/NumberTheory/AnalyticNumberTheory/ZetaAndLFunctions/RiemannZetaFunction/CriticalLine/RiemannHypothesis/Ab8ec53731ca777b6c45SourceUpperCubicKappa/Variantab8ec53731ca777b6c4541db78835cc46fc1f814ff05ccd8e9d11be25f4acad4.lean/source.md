# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Ab8ec53731ca777b6c45SourceUpperCubicKappa.Variantab8ec53731ca777b6c4541db78835cc46fc1f814ff05ccd8e9d11be25f4acad4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1abc01adf3400f9615cb408618e0fdfdf097c2da` · SHA-256 `ab8ec53731ca777b6c4541db78835cc46fc1f814ff05ccd8e9d11be25f4acad4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCubicSignedUpperCoefficients

/-!
# Literal upper-cell kappa coefficients of the unchanged cubic source

AI attribution: OpenAI Codex. Kappa is independently defined by the actual
upper-cell signed integral in the source comment #327/5997261407. All four
signed derivative jets are retained. Optional Euler continuation identities
include corrections -4,+16,-96,+768; none is removed or assumed here. These
are upper-cell coefficients, distinct from whole-positive-axis sampling.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceUpperCubicKappa

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourceCubicUpperLogMoments SourceCubicSignedUpperCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

noncomputable section

/-- Independent literal upper-cell kappa integrand, with its signed logarithmic derivative. -/
def upperCubicKappaWeight (k : ℕ) (u : ℝ) : ℝ :=
  centeredSawtooth u * u ^ (-(3 : ℝ) / 2) *
    ((k : ℝ) * (Real.log u) ^ (k - 1) - (Real.log u) ^ k / 2)

theorem upperCubicKappaWeight_eq_moment_densities (k : ℕ) (u : ℝ) :
    upperCubicKappaWeight k u =
      (k : ℝ) * cubicUpperCoefficientWeight (k - 1) u - cubicUpperCoefficientWeight k u / 2 := by
  unfold upperCubicKappaWeight cubicUpperCoefficientWeight upperLogWeight
  ring

theorem upperCubicKappaWeight_integrable (k : ℕ) :
    IntegrableOn (upperCubicKappaWeight k) (Ioi (1 : ℝ)) := by
  have he : upperCubicKappaWeight k = fun u =>
      (k : ℝ) * cubicUpperCoefficientWeight (k - 1) u - cubicUpperCoefficientWeight k u / 2 :=
    funext (upperCubicKappaWeight_eq_moment_densities k)
  rw [he]
  exact ((cubicUpperCoefficientWeight_integrable (k - 1)).const_mul (k : ℝ)).sub
    ((cubicUpperCoefficientWeight_integrable k).div_const 2)

/-- Literal independently defined upper-cell coefficient, before comparison with source sampling. -/
def upperCubicKappa (k : ℕ) : ℝ := ∫ u in Ioi (1 : ℝ), upperCubicKappaWeight k u

theorem upperCubicKappa_eq_moments (k : ℕ) :
    upperCubicKappa k = (k : ℝ) * cubicUpperCoefficientMoment (k - 1) -
      cubicUpperCoefficientMoment k / 2 := by
  unfold upperCubicKappa
  simp_rw [upperCubicKappaWeight_eq_moment_densities]
  rw [integral_sub ((cubicUpperCoefficientWeight_integrable (k - 1)).const_mul (k : ℝ))
    ((cubicUpperCoefficientWeight_integrable k).div_const 2), integral_const_mul, integral_div]
  rfl

/-- The four signed model coefficients are exactly the source's upper kappa
divided by factorials. -/
theorem cubicUpperBetas_eq_kappa :
    cubicUpperBeta0 = upperCubicKappa 1 ∧
      cubicUpperBeta1 = upperCubicKappa 2 ∧
      cubicUpperBeta2 = upperCubicKappa 3 / 2 ∧
      cubicUpperBeta3 = upperCubicKappa 4 / 6 := by
  simp only [upperCubicKappa_eq_moments, Nat.cast_ofNat, Nat.reduceSub]
  unfold cubicUpperBeta0 cubicUpperBeta1 cubicUpperBeta2 cubicUpperBeta3
  constructor
  · ring
  constructor
  · ring
  constructor <;> ring

/-- The independently specified main term retains all literal signed kappa jets. -/
theorem cubicUpperMainTerm_eq_kappa_jet (A k : ℝ) :
    cubicUpperMainTerm A k =
      (∑ j ∈ Finset.range 4, upperCubicKappa (j + 1) / (j.factorial : ℝ) *
        iteratedDeriv j (sourceCorrelation explicitSecondDerivative A) (Real.log k)) /
        Real.sqrt k := by
  rcases cubicUpperBetas_eq_kappa with ⟨h0, h1, h2, h3⟩
  unfold cubicUpperMainTerm
  rw [h0, h1, h2, h3]
  norm_num [Finset.sum_range_succ, iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial]
  ring

end
end FormalResearch.RiemannHypothesis.SourceUpperCubicKappa
```
