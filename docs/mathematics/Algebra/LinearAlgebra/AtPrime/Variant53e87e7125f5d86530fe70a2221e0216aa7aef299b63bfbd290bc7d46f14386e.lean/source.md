# Complete source: GRWTSK.Algebra.LinearAlgebra.AtPrime.Variant53e87e7125f5d86530fe70a2221e0216aa7aef299b63bfbd290bc7d46f14386e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f32a14050786fb023f4d21edde83fef5975520b` · SHA-256 `7604a571d2436fbcd6911128ae41fab697eb60bac896342e482dd6cf0a84a3f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsLocalizedModuleAtPrime.Variant6925a7d5f9da8e55b3581c60be5ef61858eaec5f5f6b9ffb06fd8b77da6873bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6925a7d5f9da8e55b3581c60be5ef61858eaec5f5f6b9ffb06fd8b77da6873bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsLocalizedModuleAtPrime.Variant6925a7d5f9da8e55b3581c60be5ef61858eaec5f5f6b9ffb06fd8b77da6873bc","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6925a7d5f9da8e55b3581c60be5ef61858eaec5f5f6b9ffb06fd8b77da6873bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/LocalizedModule/AtPrime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yongle Hu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yongle Hu
-/
import Mathlib.Algebra.Module.LocalizedModule.Basic
import Mathlib.RingTheory.Ideal.Prime

/-!
# Localizations of modules at the complement of a prime ideal
-/


namespace GRWTSK.Algebra.LinearAlgebra.IsLocalizedModuleAtPrime.Variant6925a7d5f9da8e55b3581c60be5ef61858eaec5f5f6b9ffb06fd8b77da6873bc

/-- Given a prime ideal `P` and `f : M →ₗ[R] M'`, `IsLocalizedModule.AtPrime P f` states that `M'`
  is isomorphic to the localization of `M` at the complement of `P`. -/
protected abbrev IsLocalizedModule.AtPrime {R M M' : Type*} [CommSemiring R] (P : Ideal R)
    [P.IsPrime] [AddCommMonoid M] [AddCommMonoid M'] [Module R M] [Module R M'] (f : M →ₗ[R] M') :=
  IsLocalizedModule P.primeCompl f

/-- Given a prime ideal `P`, `LocalizedModule.AtPrime P M` is a localization of `M`
  at the complement of `P`. -/
protected abbrev LocalizedModule.AtPrime {R : Type*} [CommSemiring R] (P : Ideal R) [P.IsPrime]
    (M : Type*) [AddCommMonoid M] [Module R M] :=
  LocalizedModule P.primeCompl M
```
