# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Special.Variant7749748d184caf5fbeeab0f8e5c8e43834245dc5fe953b860168a82cdd5172c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `705d66339726d2591b39171146880e467ac5d960` · SHA-256 `3249c0a49330d284343d5d03a2c94fd2686a37fc4d5b66b4f3733b1d22774d2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.ErfCoeffLo.Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.ErfCoeffLo.Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873","mathematical_subject":"Algebra.Polynomials","original_sha256":"574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Engine/TaylorModel/Special.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Engine.TaylorModel.Core

/-!
# Taylor Models - Special Functions

This file contains Taylor polynomial definitions and remainder bounds for
special functions (erf, and future sqrt), along with function-level Taylor
models.

## Main definitions

* `erfTaylorPoly` - Taylor polynomial for erf
* `erfRemainderBound` - Remainder bound for erf
* `tmErf` - Function-level Taylor model for erf
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.ErfCoeffLo.Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873

namespace LeanCert.Engine

open LeanCert.Core
open Polynomial

namespace TaylorModel

/-! ### erf Taylor polynomial

erf(x) = (2/√π) ∫₀ˣ e^{-t²} dt
       = (2/√π) Σ_{n=0}^∞ (-1)^n x^{2n+1} / (n! (2n+1))
       = (2/√π) (x - x³/3 + x⁵/10 - x⁷/42 + ...)

We use rational approximations for 2/√π ≈ 1.128379...
-/

/-- Rational approximation of 2/√π (lower bound) -/
def erfCoeff_lo : ℚ := 1128 / 1000  -- ~1.128

/-- Rational approximation of 2/√π (upper bound) -/
def erfCoeff_hi : ℚ := 1129 / 1000  -- ~1.129

/-- Taylor polynomial coefficients for erf at center 0 (using middle approximation):
    erf(x) ≈ (2/√π) Σ (-1)^k x^{2k+1} / (k! (2k+1)) -/
noncomputable def erfTaylorCoeffs (n : ℕ) : ℕ → ℚ := fun i =>
  if i ≤ n then
    if i % 2 = 1 then  -- odd terms only
      let k := (i - 1) / 2
      let coeff := (erfCoeff_lo + erfCoeff_hi) / 2  -- middle approximation
      coeff * ((-1 : ℚ) ^ k) / ((Nat.factorial k : ℚ) * (2 * k + 1))
    else 0
  else 0

/-- Taylor polynomial for erf of degree n -/
noncomputable def erfTaylorPoly (n : ℕ) : Polynomial ℚ :=
  ∑ i ∈ Finset.range (n + 1), Polynomial.C (erfTaylorCoeffs n i) * Polynomial.X ^ i

/-- Remainder bound for erf: |erf(x)| ≤ 1 for all x, so we use Taylor remainder
    plus coefficient approximation error. -/
noncomputable def erfRemainderBound (domain : IntervalRat) (n : ℕ) : ℚ :=
  let r := max (|domain.lo|) (|domain.hi|)
  -- Taylor remainder plus approximation error for 2/√π
  let taylor_rem := r ^ (n + 1) / (Nat.factorial (n + 1) : ℚ)
  -- Coefficient error: |true - approx| ≤ (erfCoeff_hi - erfCoeff_lo)/2 * sum of poly terms
  let coeff_err := (erfCoeff_hi - erfCoeff_lo) / 2 * r  -- simplified upper bound
  taylor_rem + coeff_err

/-- Remainder bound for erf is nonnegative -/
theorem erfRemainderBound_nonneg (domain : IntervalRat) (n : ℕ) :
    0 ≤ erfRemainderBound domain n := by
  unfold erfRemainderBound
  simp only [erfCoeff_hi, erfCoeff_lo]
  apply add_nonneg
  · apply div_nonneg
    · apply pow_nonneg
      exact le_max_of_le_left (abs_nonneg _)
    · exact Nat.cast_nonneg _
  · apply mul_nonneg
    · norm_num
    · exact le_max_of_le_left (abs_nonneg _)

/-- Taylor model for erf z on domain J, centered at 0, degree n.
    erf(z) = (2/√π) ∫₀ᶻ e^{-t²} dt. -/
noncomputable def tmErf (J : IntervalRat) (n : ℕ) : TaylorModel :=
  { poly := erfTaylorPoly n
    remainder := ⟨-erfRemainderBound J n, erfRemainderBound J n,
      by linarith [erfRemainderBound_nonneg J n]⟩
    center := 0
    domain := J }

/-! ### Future: sqrt Taylor model

sqrt(x) requires special treatment since it's not analytic at 0.
It needs to be expanded around a positive center c > 0.

For now, we leave a placeholder comment.
-/

end TaylorModel

end LeanCert.Engine
```
