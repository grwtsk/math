# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant323472cfbcc06ef4b5a2fc019e3335cbe16ee49a17dd48d85113f13ac34d73b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `876e619756fa0bf4b34af1dde23ea992a8c148de` · SHA-256 `323472cfbcc06ef4b5a2fc019e3335cbe16ee49a17dd48d85113f13ac34d73b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPositiveLift
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas

/-!
# Exact derivatives of the theta transport basis

These identities concern the unchanged polynomial `evenBasis`. They supply the
polynomial side and the zero-endpoint terms of the proposed tail transport;
they assert no integration-by-parts or source determinant sign theorem.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- Every derivative of the actual even basis, including orders above its degree. -/
theorem iteratedDeriv_evenBasis (n d : ℕ) (t : ℝ) :
    iteratedDeriv d (evenBasis n) t =
      (2 : ℝ) ^ d * ((2 * n).descFactorial d : ℝ) *
        (2 * t) ^ (2 * n - d) / ((2 * n).factorial : ℝ) := by
  unfold evenBasis
  rw [iteratedDeriv_div_const]
  rw [iteratedDeriv_comp_const_mul (by fun_prop :
    ContDiff ℝ d (fun x : ℝ => x ^ (2 * n)))]
  simp only [iteratedDeriv_pow]
  ring

/-- The exact factor in the proposed repeated integration by parts is `4^q`. -/
theorem iteratedDeriv_evenBasis_add (m q : ℕ) (t : ℝ) :
    iteratedDeriv (2 * q) (evenBasis (m + q)) t =
      (4 : ℝ) ^ q * evenBasis m t := by
  rw [iteratedDeriv_evenBasis]
  have hd : 2 * (m + q) - 2 * q = 2 * m := by omega
  have hf : ((2 * m).factorial : ℝ) *
      ((2 * (m + q)).descFactorial (2 * q) : ℝ) =
      ((2 * (m + q)).factorial : ℝ) := by
    exact_mod_cast (hd ▸ Nat.factorial_mul_descFactorial
      (show 2 * q ≤ 2 * (m + q) by omega))
  have hfn : ((2 * (m + q)).factorial : ℝ) ≠ 0 := by positivity
  have hfm : ((2 * m).factorial : ℝ) ≠ 0 := by positivity
  rw [hd, pow_mul]
  norm_num only [show (2 : ℝ) ^ 2 = 4 by norm_num]
  unfold evenBasis
  field_simp
  rw [← hf]
  ring

/-- Every polynomial endpoint derivative needed before `2q` integrations vanishes. -/
theorem iteratedDeriv_evenBasis_add_zero (m q d : ℕ) (hd : d < 2 * q) :
    iteratedDeriv d (evenBasis (m + q)) 0 = 0 := by
  rw [iteratedDeriv_evenBasis]
  have he : 2 * (m + q) - d ≠ 0 := by omega
  simp [zero_pow he]

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
