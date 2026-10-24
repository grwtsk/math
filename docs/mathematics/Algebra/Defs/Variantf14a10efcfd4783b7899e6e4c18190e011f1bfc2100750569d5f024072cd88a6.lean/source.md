# Complete source: GRWTSK.Algebra.Defs.Variantf14a10efcfd4783b7899e6e4c18190e011f1bfc2100750569d5f024072cd88a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c8cc95c7f66e762e81a8be692f3b371a6fa6b45` · SHA-256 `f5133d1de5d8c4199ba4dac0ed3b4e0486b1b32636c2fd948be8c708b00f4d77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AlgebraIsIntegralDef.Variant66ffb5bd899605770e1fbe7d2bd1250d1c95038be97da1f5b71386094d99a90e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66ffb5bd899605770e1fbe7d2bd1250d1c95038be97da1f5b71386094d99a90e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AlgebraIsIntegralDef.Variant66ffb5bd899605770e1fbe7d2bd1250d1c95038be97da1f5b71386094d99a90e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"66ffb5bd899605770e1fbe7d2bd1250d1c95038be97da1f5b71386094d99a90e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/IntegralClosure/Algebra/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
module

public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs

/-!
# Integral algebras

## Main definitions

Let `R` be a `CommRing` and let `A` be an R-algebra.

* `Algebra.IsIntegral R A` : An algebra is integral if every element of the extension is integral
  over the base ring.
-/


namespace GRWTSK.Algebra.AlgebraIsIntegralDef.Variant66ffb5bd899605770e1fbe7d2bd1250d1c95038be97da1f5b71386094d99a90e

public section

section Ring

variable {R A : Type*}
variable [CommRing R] [Ring A]

variable [Algebra R A] (R)

variable (A)

/-- An algebra is integral if every element of the extension is integral over the base ring. -/
@[mk_iff] protected class Algebra.IsIntegral : Prop where
  isIntegral : ∀ x : A, IsIntegral R x

variable {R A}

lemma Algebra.isIntegral_def : Algebra.IsIntegral R A ↔ ∀ x : A, IsIntegral R x :=
  ⟨fun ⟨h⟩ ↦ h, fun h ↦ ⟨h⟩⟩

lemma algebraMap_isIntegral_iff : (algebraMap R A).IsIntegral ↔ Algebra.IsIntegral R A :=
  (Algebra.isIntegral_iff ..).symm

end Ring
```
