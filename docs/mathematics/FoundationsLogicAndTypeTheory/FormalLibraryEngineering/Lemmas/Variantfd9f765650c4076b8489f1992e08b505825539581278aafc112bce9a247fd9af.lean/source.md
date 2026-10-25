# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantfd9f765650c4076b8489f1992e08b505825539581278aafc112bce9a247fd9af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e358891c9c1b951e472d5a1285a0f9a85efeff4b` · SHA-256 `c8777e631e12248f128257e0def8ee0144ac2da7cdab04f5574579761fb0e646`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnpackMantissaPackComponents.Variant6a14f10ead93e605c5fcfc30e4982d850094f5bd0fc0ac3ded96e6b0418e1712","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a14f10ead93e605c5fcfc30e4982d850094f5bd0fc0ac3ded96e6b0418e1712","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.UnpackMantissaPackComponents.Variant6a14f10ead93e605c5fcfc30e4982d850094f5bd0fc0ac3ded96e6b0418e1712","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6a14f10ead93e605c5fcfc30e4982d850094f5bd0fc0ac3ded96e6b0418e1712","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Pack/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Pack.Basic
public import Init.Data.Float.Model.Format.Valid

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnpackMantissaPackComponents.Variant6a14f10ead93e605c5fcfc30e4982d850094f5bd0fc0ac3ded96e6b0418e1712

@[expose] public section

/-!
These are only the lemmas required to write down the operations on `Float.Model` and
`Float32.Model`. There will not be any additional lemmas; see the docstring of `UnpackedFloat` for
more details.
-/

namespace Float.Model.UnpackedFloat

@[simp]
theorem unpackMantissa_packComponents {spec : Format} {sign exponent mantissa} :
    unpackMantissa (packComponents spec sign exponent mantissa) = mantissa := by
  ext i hi
  simp [unpackMantissa, packComponents, BitVec.getLsbD_eq_getElem, BitVec.getLsbD_append, hi]

@[simp]
theorem unpackExponent_packComponents {spec : Format} {sign exponent mantissa} :
    unpackExponent (packComponents spec sign exponent mantissa) = exponent := by
  ext i hi
  simp [unpackExponent, packComponents, BitVec.getLsbD_eq_getElem, BitVec.getLsbD_append, hi]

@[simp]
theorem valid_pack {spec : Format} {f : UnpackedFloat} : spec.Valid (pack spec f) := by
  refine ⟨?_⟩
  fun_cases pack with
  | case1 => simp
  | case2 s => simp [packedInfinity]
  | case3 s => simp [packedZero]
  | case4 s m e hm biasedExponent h => simp [packedInfinity]
  | case5 s m e hm actualMantissaBits biasedExponent h₁ h₂ =>
    suffices biasedExponent % 2 ^ spec.exponentBits ≠ 2 ^ spec.exponentBits - 1 by
      simp [BitVec.neg_one_eq_allOnes, ← BitVec.toNat_inj, this]
    suffices biasedExponent < 2 ^ spec.exponentBits - 1 by
      rw [Nat.mod_eq_of_lt (by omega)]
      omega
    omega
  | case6 s m e hm actualMantissaBits biasedExponent h₁ h₂ =>
    simp [Nat.pos_iff_ne_zero.1 spec.he]

end Float.Model.UnpackedFloat
```
