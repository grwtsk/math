# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Arithmetic.Variant740a1c150d81e2c8e34c9a729cde1dc2d15f2c2cd12966e4b9379043f821e2ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdd648c560cf6c82971fee6a7b2da6ee9e7f4211` · SHA-256 `a62959413c5b63969b3a177cae94dabef38867355781689df0d1ea0baee14c32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeTwo.Variant73ed8a8c5b54a19b4e8fbf904f6c7fd3a4fd34923448297bc5644aabcbeeee6d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73ed8a8c5b54a19b4e8fbf904f6c7fd3a4fd34923448297bc5644aabcbeeee6d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PrimeTwo.Variant73ed8a8c5b54a19b4e8fbf904f6c7fd3a4fd34923448297bc5644aabcbeeee6d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"73ed8a8c5b54a19b4e8fbf904f6c7fd3a4fd34923448297bc5644aabcbeeee6d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/riemann/lean/Riemann/Fixtures/Arithmetic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Factorization.Defs
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.NumberTheory.EulerProduct.DirichletLSeries

/-!
Public, nonterminal prerequisite statements for the arithmetic route in #8.
These aliases use the exact locked Mathlib source; they are outside the canonical
proof root and confer no proofgraph admission or reader-review acceptance.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeTwo.Variant73ed8a8c5b54a19b4e8fbf904f6c7fd3a4fd34923448297bc5644aabcbeeee6d

open scoped BigOperators Topology LSeries.notation ArithmeticFunction.vonMangoldt

namespace Riemann.Fixtures.Arithmetic

theorem primeTwo : Nat.Prime 2 := Nat.prime_two

theorem primeLowerBound {p : ℕ} (hp : Nat.Prime p) : 2 ≤ p := Nat.Prime.two_le hp

theorem factorization {n : ℕ} (hn : n ≠ 0) : n.factorization.prod (· ^ ·) = n :=
  Nat.prod_factorization_pow_eq_self hn

theorem logPower (x : ℝ) (n : ℕ) : Real.log (x ^ n) = n * Real.log x :=
  Real.log_pow x n

theorem logPrimePositive {p : ℕ} (hp : p.Prime) : 0 < Real.log p :=
  Nat.Prime.log_pos hp

theorem primePowerNotPrime {x n : ℕ} (hn : 2 ≤ n) : ¬(x ^ n).Prime :=
  Nat.Prime.not_prime_pow hn

theorem lambdaPrimePower {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    Λ (p ^ k) = Real.log p :=
  (ArithmeticFunction.vonMangoldt_apply_pow hk).trans
    (ArithmeticFunction.vonMangoldt_apply_prime hp)

theorem lambdaZero {n : ℕ} : Λ n = 0 ↔ ¬IsPrimePow n :=
  ArithmeticFunction.vonMangoldt_eq_zero_iff

theorem lambdaDivisorSum {n : ℕ} : ∑ i ∈ n.divisors, Λ i = Real.log n :=
  ArithmeticFunction.vonMangoldt_sum

theorem zetaSeries {s : ℂ} (hs : 1 < s.re) :
    riemannZeta s = ∑' n : ℕ, 1 / (n + 1 : ℂ) ^ s :=
  zeta_eq_tsum_one_div_nat_add_one_cpow hs

theorem eulerProduct {s : ℂ} (hs : 1 < s.re) :
    ∏' p : Nat.Primes, (1 - (p : ℂ) ^ (-s))⁻¹ = riemannZeta s :=
  riemannZeta_eulerProduct_tprod hs

theorem eulerProductLimit {s : ℂ} (hs : 1 < s.re) :
    Filter.Tendsto
      (fun n : ℕ ↦ ∏ p ∈ Nat.primesBelow n, (1 - (p : ℂ) ^ (-s))⁻¹)
      Filter.atTop (𝓝 (riemannZeta s)) :=
  riemannZeta_eulerProduct hs

theorem zetaExpLambdaSeries {s : ℂ} (hs : 1 < s.re) :
    Complex.exp (LSeries (fun n : ℕ ↦ Λ n / Real.log n) s) = riemannZeta s :=
  riemannZeta_eq_exp_LSeries hs

theorem lambdaSummable {s : ℂ} (hs : 1 < s.re) : LSeriesSummable ↗Λ s :=
  ArithmeticFunction.LSeriesSummable_vonMangoldt hs

theorem zetaNonvanishing {s : ℂ} (hs : 1 < s.re) : riemannZeta s ≠ 0 :=
  riemannZeta_ne_zero_of_one_lt_re hs

theorem lambdaLogDerivative {s : ℂ} (hs : 1 < s.re) :
    LSeries ↗Λ s = -deriv riemannZeta s / riemannZeta s :=
  ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hs

end Riemann.Fixtures.Arithmetic
```
