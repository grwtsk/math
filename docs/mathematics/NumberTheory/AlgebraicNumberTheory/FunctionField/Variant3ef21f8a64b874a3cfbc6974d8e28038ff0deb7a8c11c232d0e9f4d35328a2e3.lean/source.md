# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.FunctionField.Variant3ef21f8a64b874a3cfbc6974d8e28038ff0deb7a8c11c232d0e9f4d35328a2e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6774cc873c4505a4513f5816892a5ae19988110` · SHA-256 `1b1da6417d5d983cdad6433adcb78b1de747762fe6b0240bd3ff27304f802b17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AlgebraicNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AlgebraicNumberTheory.ClassNumber.Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AlgebraicNumberTheory.SourceCorpus.ClassNumber.Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1","mathematical_subject":"NumberTheory.AlgebraicNumberTheory","original_sha256":"d1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/ClassNumber/FunctionField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.NumberTheory.ClassNumber.AdmissibleCardPowDegree
import Mathlib.NumberTheory.ClassNumber.Finite
import Mathlib.NumberTheory.FunctionField

/-!
# Class numbers of function fields

This file defines the class number of a function field as the (finite) cardinality of
the class group of its ring of integers. It also proves some elementary results
on the class number.

## Main definitions
- `FunctionField.classNumber`: the class number of a function field is the (finite)
cardinality of the class group of its ring of integers
-/



namespace GRWTSK.NumberTheory.AlgebraicNumberTheory.ClassNumber.Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1

namespace FunctionField

open scoped Polynomial

variable (Fq F : Type*) [Field Fq] [Fintype Fq] [Field F]
variable [Algebra Fq[X] F] [Algebra (RatFunc Fq) F]
variable [IsScalarTower Fq[X] (RatFunc Fq) F]
variable [FunctionField Fq F] [Algebra.IsSeparable (RatFunc Fq) F]

namespace RingOfIntegers

open FunctionField

open scoped Classical in
noncomputable instance : Fintype (ClassGroup (ringOfIntegers Fq F)) :=
  ClassGroup.fintypeOfAdmissibleOfFinite (RatFunc Fq) F
    (Polynomial.cardPowDegreeIsAdmissible :
      AbsoluteValue.IsAdmissible (Polynomial.cardPowDegree : AbsoluteValue Fq[X] ℤ))

end RingOfIntegers

/-- The class number in a function field is the (finite) cardinality of the class group. -/
noncomputable def classNumber : ℕ :=
  Fintype.card (ClassGroup (ringOfIntegers Fq F))

/-- The class number of a function field is `1` iff the ring of integers is a PID. -/
theorem classNumber_eq_one_iff :
    classNumber Fq F = 1 ↔ IsPrincipalIdealRing (ringOfIntegers Fq F) :=
  card_classGroup_eq_one_iff

end FunctionField
```
