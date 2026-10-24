# Complete source: GRWTSK.Algebra.Noetherian.Variant0d40ceddd61d019674bc0afd58e9c340f1b8e03b04d31fcf149c2c26c6a33155

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e4d6913c76ad93fea21f2326e573dc11d7041e8` · SHA-256 `241cc4fb00359bba8277fd5be48ab633ee8a3f9f9cdca26ca30f12c7f3446e4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsHausdorffOfLeJacobson.Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsHausdorffOfLeJacobson.Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/AdicCompletion/Noetherian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.AdicCompletion.Basic
import Mathlib.RingTheory.Filtration

/-!
# Hausdorff-ness for noetherian rings
-/


namespace GRWTSK.Algebra.IsHausdorffOfLeJacobson.Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8

open IsLocalRing

variable {R : Type*} [CommRing R] (I : Ideal R) (M : Type*) [AddCommGroup M] [Module R M]
variable [IsNoetherianRing R] [Module.Finite R M]

lemma IsHausdorff.of_le_jacobson (h : I ≤ Ideal.jacobson ⊥) : IsHausdorff I M :=
  ⟨fun x hx ↦ (Ideal.iInf_pow_smul_eq_bot_of_le_jacobson I h).le (by simpa [SModEq.zero] using hx)⟩

theorem IsHausdorff.of_isLocalRing [IsLocalRing R] (h : I ≠ ⊤) : IsHausdorff I M :=
  of_le_jacobson I M ((le_maximalIdeal h).trans (maximalIdeal_le_jacobson _))

instance [IsLocalRing R] : IsHausdorff (maximalIdeal R) M :=
  .of_le_jacobson _ _ (maximalIdeal_le_jacobson _)

theorem IsHausdorff.of_noZeroSMulDivisors [NoZeroSMulDivisors R M] (h : I ≠ ⊤) : IsHausdorff I M :=
  ⟨fun x hx ↦ (I.iInf_pow_smul_eq_bot_of_noZeroSMulDivisors h).le (by simpa [SModEq.zero] using hx)⟩

theorem IsHausdorff.of_isDomain [IsDomain R] (h : I ≠ ⊤) : IsHausdorff I R :=
  .of_noZeroSMulDivisors I R h
```
