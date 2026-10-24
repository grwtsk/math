# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChebyshevTheta.Variantfc7952b3a1141701f6147476ae7d001a6de5f7d914e01e2e8559bb4e82b35e03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab4ccfb5374b4ab44e42fe3040492fa4f60999d0` · SHA-256 `5b9568e46c6b7a7d300d1d9b9cd0696792352dace43950509259bbd468ee3952`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChebyshevTheta.Variantb96bad0ac4285e56d010f6a2cef3c4bad3360710db5adf61a9d66cb3174eb10f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b96bad0ac4285e56d010f6a2cef3c4bad3360710db5adf61a9d66cb3174eb10f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ChebyshevTheta.Variantb96bad0ac4285e56d010f6a2cef3c4bad3360710db5adf61a9d66cb3174eb10f","mathematical_subject":"Foundations.Unclassified","original_sha256":"b96bad0ac4285e56d010f6a2cef3c4bad3360710db5adf61a9d66cb3174eb10f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/ChebyshevTheta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Engine.ChebyshevTheta


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChebyshevTheta.Variantb96bad0ac4285e56d010f6a2cef3c4bad3360710db5adf61a9d66cb3174eb10f

open LeanCert.Engine.ChebyshevTheta

-- Quick test: theta(N) <= 1.11 * N for all N = 1..599
-- (analogous to the psi test in ChebyshevPsiTest)
example : checkAllThetaLeMulWith 599 (111 / 100) 20 = true := by native_decide

-- PNT+ issue #990: Eθ(x) = |θ(x) - x| / x ≤ 1 - log(2)/3 for 2 ≤ x ≤ 599.
-- 1 - log(2)/3 ≈ 0.7690...; we over-approximate with 770/1000.
-- The proof in PNT+ will verify 770/1000 ≥ 1 - log(2)/3 via interval arithmetic.
example : checkAllThetaRelError 2 599 (770 / 1000) 20 = true := by native_decide

-- Strengthened real-valued checker: covers all real x ∈ [2, 599], not just integers.
-- Uses strengthened lower bound θ(N) ≥ (1-a)·(N+1) for N < 599.
example : checkAllThetaRelErrorReal 2 599 (770 / 1000) 20 = true := by native_decide

-- For the PNT+ proof: [3,599) range with tighter bound 768/1000 < 1 - log(2)/3
-- (The [2,3) case is handled analytically since the bound is tight at x → 3⁻)
example : checkAllThetaRelErrorReal 3 599 (768 / 1000) 20 = true := by native_decide

-- Eval versions for quick testing
#eval checkAllThetaLeMulWith 599 (111 / 100) 20
#eval checkAllThetaRelError 2 599 (770 / 1000) 20
#eval checkAllThetaRelErrorReal 2 599 (770 / 1000) 20
#eval checkAllThetaRelErrorReal 3 599 (768 / 1000) 20
```
