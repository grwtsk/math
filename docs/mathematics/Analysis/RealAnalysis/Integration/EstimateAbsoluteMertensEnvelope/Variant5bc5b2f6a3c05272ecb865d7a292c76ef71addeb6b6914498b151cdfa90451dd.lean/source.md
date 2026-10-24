# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.EstimateAbsoluteMertensEnvelope.Variant5bc5b2f6a3c05272ecb865d7a292c76ef71addeb6b6914498b151cdfa90451dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29b56230cb087b6f885d44bdd2a4d78756c62cee` · SHA-256 `5bc5b2f6a3c05272ecb865d7a292c76ef71addeb6b6914498b151cdfa90451dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
# Obstruction to an absolute Mertens-envelope majorant

An absolute envelope of the schematic size `x * delta x`, paired with a
source-kernel derivative envelope of size `x^(-3/2)`, leaves
`delta x / sqrt x`. If `delta` eventually dominates `x^(-1/4)`, this
majorant is not integrable on the tail. The exact lower-envelope primitive
records the resulting growth.

The hypothesis below is on a proposed envelope, not a lower bound for the
actual Mertens function. These statements assert neither that the signed
source residual is unbounded nor that cancellation in it is impossible.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateAbsoluteMertensEnvelope

open MeasureTheory Set

noncomputable section

/-- The quarter-power lower envelope leaves the nonintegrable three-quarter
power after division by the square-root source weight. -/
theorem quarter_power_div_sqrt (x : ℝ) (hx : 0 < x) :
    x ^ (-(1 : ℝ) / 4) / Real.sqrt x = x ^ (-(3 : ℝ) / 4) := by
  rw [Real.sqrt_eq_rpow, ← Real.rpow_sub hx]
  congr 1
  norm_num

/-- Exact finite integral of the lower majorant, before any unbounded passage. -/
theorem three_quarter_power_integral (R X : ℝ) :
    (∫ x in R..X, x ^ (-(3 : ℝ) / 4)) =
      4 * (X ^ ((1 : ℝ) / 4) - R ^ ((1 : ℝ) / 4)) := by
  rw [integral_rpow (Or.inl (by norm_num : -(1 : ℝ) < -3 / 4))]
  norm_num
  ring

/-- Any envelope with the stated eventual lower bound loses enough decay
that its absolute Mertens majorant is not tail integrable. -/
theorem not_integrableOn_div_sqrt_of_quarter_power_le
    (R : ℝ) (hR : 1 ≤ R) (delta : ℝ → ℝ)
    (hdelta : ∀ x : ℝ, R < x → x ^ (-(1 : ℝ) / 4) ≤ delta x) :
    ¬ IntegrableOn (fun x ↦ delta x / Real.sqrt x) (Ioi R) := by
  intro h
  have hRpos : 0 < R := zero_lt_one.trans_le hR
  have hp : IntegrableOn (fun x : ℝ ↦ x ^ (-(3 : ℝ) / 4)) (Ioi R) := by
    apply h.mono' (by fun_prop)
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    have hxpos : 0 < x := hRpos.trans hx
    rw [Real.norm_eq_abs, abs_of_nonneg (Real.rpow_nonneg hxpos.le _)]
    calc
      x ^ (-(3 : ℝ) / 4) = x ^ (-(1 : ℝ) / 4) / Real.sqrt x :=
        (quarter_power_div_sqrt x hxpos).symm
      _ ≤ delta x / Real.sqrt x :=
        div_le_div_of_nonneg_right (hdelta x hx) (Real.sqrt_nonneg x)
  have hlt := (integrableOn_Ioi_rpow_iff hRpos).mp hp
  norm_num at hlt

end
end EstimateAbsoluteMertensEnvelope
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
