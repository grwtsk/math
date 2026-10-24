# Complete source: GRWTSK.Analysis.ComplexAnalysis.ComplexAnalysisResidueExamples.Variante49c067d4c36a72ba401cc515de978e5441fbc53702abfdb50484a258394f1c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `732158e4fdfc09fc4eef5858a09b2fe75e5cbc3b` · SHA-256 `e49c067d4c36a72ba401cc515de978e5441fbc53702abfdb50484a258394f1c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Core.ComplexAnalysis.ResidueAPI
import Mathlib.Tactic

/-!
# Generic local-residue examples

Two coefficient-free examples exercising the incubating Surface residue API.
They are submission-gate tests for the prospective mathlib extraction and do
not mention Dirichlet characters, L-functions, explicit formulas, RH, or GRH.
-/

open Filter Set
open scoped Topology

namespace Surface.Audit.ComplexAnalysisResidueExamples

private theorem analyticOrderAt_sub_pow
    (z : ℂ) (n : ℕ) :
    analyticOrderAt (fun w : ℂ ↦ (w - z) ^ n) z = n := by
  have hbase : AnalyticAt ℂ (fun w : ℂ ↦ w - z) z := by
    fun_prop
  have hbaseOrder :
      analyticOrderAt (fun w : ℂ ↦ w - z) z = 1 := by
    apply hbase.analyticOrderAt_eq_natCast.mpr
    refine ⟨fun _ ↦ 1, analyticAt_const, one_ne_zero, ?_⟩
    filter_upwards
    intro w
    simp [smul_eq_mul]
  change analyticOrderAt ((fun w : ℂ ↦ w - z) ^ n) z = n
  rw [analyticOrderAt_pow hbase, hbaseOrder]
  simp

/-- The local coefficient of the logarithmic derivative of a pure monomial
is its exponent. -/
example (z : ℂ) (n : ℕ) :
    Surface.Core.ComplexAnalysis.HasResidueCoefficientAt
      (logDeriv (fun w : ℂ ↦ (w - z) ^ n)) z (n : ℂ) := by
  apply Surface.Core.ComplexAnalysis.logDeriv_hasResidueCoefficientAt_order
    (by fun_prop)
  exact analyticOrderAt_sub_pow z n

/-- Multiplication by the nonvanishing analytic unit `exp` preserves the
small-circle logarithmic-derivative multiplicity integral. -/
example (z : ℂ) (n : ℕ) :
    ∃ R : ℝ, 0 < R ∧
      ∀ r : ℝ, 0 < r → r < R →
        Surface.Core.ComplexAnalysis.normalizedResidueCircleIntegral
          (logDeriv
            (fun w : ℂ ↦ (w - z) ^ n * Complex.exp w))
          z r = (n : ℂ) := by
  have hpow :
      AnalyticAt ℂ (fun w : ℂ ↦ (w - z) ^ n) z := by
    fun_prop
  have hexp : AnalyticAt ℂ Complex.exp z := analyticAt_cexp
  apply Surface.Core.ComplexAnalysis.logDeriv_smallCircle_normalizedIntegral_eq_order
    (hf := hpow.mul hexp)
  change analyticOrderAt
      ((fun w : ℂ ↦ (w - z) ^ n) * Complex.exp) z = n
  rw [analyticOrderAt_mul hpow hexp,
    analyticOrderAt_sub_pow z n,
    hexp.analyticOrderAt_eq_zero.mpr (Complex.exp_ne_zero z)]
  simp

end Surface.Audit.ComplexAnalysisResidueExamples
```
