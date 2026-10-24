# Complete source: GRWTSK.Algebra.IntermediateField.Variantfc744792d67a6b7ab7ad3a015c629b78e78b370056f75291e0db9673b801f4ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aae0f452d15cd44a6cc7bc0a728314e1a8280667` · SHA-256 `8356cffe6ad17b17dd45c845afbc2f4141c043ee70757a2d01ee2ee59e9da016`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Algebra.Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Algebra.Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/CharP/IntermediateField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.Algebra.CharP.Algebra
import Mathlib.FieldTheory.IntermediateField.Basic

/-!

# Characteristic of intermediate fields

This file contains some convenient instances for determining the characteristic of
intermediate fields. Some char zero instances are not provided, since they are already
covered by `SubsemiringClass.instCharZero`.

-/


namespace GRWTSK.Algebra.Algebra.Variant5814c2be665e5b7c36310f56a28087e270fe825587a75e022fa7456cf1a184dc

variable {F E : Type*} [Field F] [Field E] [Algebra F E]

namespace Subfield

variable (L : Subfield F) (p : ℕ)

instance charP [CharP F p] : CharP L p := RingHom.charP _ (algebraMap _ F).injective p

instance expChar [ExpChar F p] : ExpChar L p := RingHom.expChar _ (algebraMap _ F).injective p

end Subfield

namespace IntermediateField

variable (L : IntermediateField F E) (p : ℕ)

instance charZero [CharZero F] : CharZero L :=
  charZero_of_injective_algebraMap (algebraMap F _).injective

instance charP [CharP F p] : CharP L p :=
  charP_of_injective_algebraMap (algebraMap F _).injective p

instance expChar [ExpChar F p] : ExpChar L p :=
  expChar_of_injective_algebraMap (algebraMap F _).injective p

instance charP' [CharP E p] : CharP L p := Subfield.charP L.toSubfield p

instance expChar' [ExpChar E p] : ExpChar L p := Subfield.expChar L.toSubfield p

end IntermediateField
```
