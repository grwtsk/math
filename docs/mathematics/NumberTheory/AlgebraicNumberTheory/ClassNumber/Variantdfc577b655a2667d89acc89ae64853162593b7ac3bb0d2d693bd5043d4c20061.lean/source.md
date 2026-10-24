# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.ClassNumber.Variantdfc577b655a2667d89acc89ae64853162593b7ac3bb0d2d693bd5043d4c20061

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `060ff626fd9943d6be5b715678b6d04d50c417d9` · SHA-256 `dd63a0e9ef01f16224d834c55b2998962c7425547e9ad48f614e9bd4bdb5bab6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AlgebraicNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AlgebraicNumberTheory.ClassNumber.Variant2c0eee655b2c4cc932f2d0bbe415eeb05cb39c917badc673ae48c97305fc501c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c0eee655b2c4cc932f2d0bbe415eeb05cb39c917badc673ae48c97305fc501c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AlgebraicNumberTheory.SourceCorpus.ClassNumber.Variant2c0eee655b2c4cc932f2d0bbe415eeb05cb39c917badc673ae48c97305fc501c","mathematical_subject":"NumberTheory.AlgebraicNumberTheory","original_sha256":"2c0eee655b2c4cc932f2d0bbe415eeb05cb39c917badc673ae48c97305fc501c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/NumberTheory/NumberField/ClassNumber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.NumberTheory.ClassNumber.AdmissibleAbs
import Mathlib.NumberTheory.ClassNumber.Finite
import Mathlib.NumberTheory.NumberField.Basic


namespace GRWTSK.NumberTheory.AlgebraicNumberTheory.ClassNumber.Variant2c0eee655b2c4cc932f2d0bbe415eeb05cb39c917badc673ae48c97305fc501c

#align_import number_theory.number_field.class_number from "leanprover-community/mathlib"@"d0259b01c82eed3f50390a60404c63faf9e60b1f"

/-!
# Class numbers of number fields

This file defines the class number of a number field as the (finite) cardinality of
the class group of its ring of integers. It also proves some elementary results
on the class number.

## Main definitions
- `NumberField.classNumber`: the class number of a number field is the (finite)
cardinality of the class group of its ring of integers
-/


namespace NumberField

variable (K : Type*) [Field K] [NumberField K]

namespace RingOfIntegers

noncomputable instance : Fintype (ClassGroup (ringOfIntegers K)) :=
  ClassGroup.fintypeOfAdmissibleOfFinite ℚ K AbsoluteValue.absIsAdmissible

end RingOfIntegers

/-- The class number of a number field is the (finite) cardinality of the class group. -/
noncomputable def classNumber : ℕ :=
  Fintype.card (ClassGroup (ringOfIntegers K))
#align number_field.class_number NumberField.classNumber

variable {K}

/-- The class number of a number field is `1` iff the ring of integers is a PID. -/
theorem classNumber_eq_one_iff : classNumber K = 1 ↔ IsPrincipalIdealRing (ringOfIntegers K) :=
  card_classGroup_eq_one_iff
#align number_field.class_number_eq_one_iff NumberField.classNumber_eq_one_iff

end NumberField

namespace Rat

open NumberField

theorem classNumber_eq : NumberField.classNumber ℚ = 1 :=
  classNumber_eq_one_iff.mpr <| by
    convert IsPrincipalIdealRing.of_surjective
      (Rat.ringOfIntegersEquiv.symm: ℤ →+* ringOfIntegers ℚ) Rat.ringOfIntegersEquiv.symm.surjective
#align rat.class_number_eq Rat.classNumber_eq

end Rat
```
