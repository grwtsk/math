# Complete source: GRWTSK.Algebra.Defs.Variant8014632d611e1c2b1ce67ad54bbd0ad15ec04515e126ca4fa6db2cadb84035b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d872c2dbc774e647538115f7f41bd4afc5b268f1` · SHA-256 `36eb370fbbfacd599d050f674e31b7c637f946d42ccfd8c19cd5bbd749d10ea0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AlgebraIsIntegral.Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AlgebraIsIntegral.Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/IntegralClosure/Algebra/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs

/-!
# Integral algebras

## Main definitions

Let `R` be a `CommRing` and let `A` be an R-algebra.

* `Algebra.IsIntegral R A` : An algebra is integral if every element of the extension is integral
  over the base ring.
-/



namespace GRWTSK.Algebra.AlgebraIsIntegral.Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815

open Polynomial Submodule

section Ring

variable {R S A : Type*}
variable [CommRing R] [Ring A] [Ring S] (f : R →+* S)

variable [Algebra R A] (R)

variable (A)

/-- An algebra is integral if every element of the extension is integral over the base ring. -/
protected class Algebra.IsIntegral : Prop where
  isIntegral : ∀ x : A, IsIntegral R x

variable {R A}

lemma Algebra.isIntegral_def : Algebra.IsIntegral R A ↔ ∀ x : A, IsIntegral R x :=
  ⟨fun ⟨h⟩ ↦ h, fun h ↦ ⟨h⟩⟩

end Ring
```
