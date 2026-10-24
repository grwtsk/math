# Complete source: GRWTSK.Algebra.Defs.Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f382330b2902c4a0d8dd77a9e68fb2bec3ebbcb` · SHA-256 `c5061d03df52810a59689433529ad6a5605d79a800f0e30b83abf39e5aac26e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ResidueField.Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ResidueField.Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/LocalRing/ResidueField/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
import Mathlib.RingTheory.Ideal.Quotient.Basic
import Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic

/-!

# Residue Field of local rings

## Main definitions

* `IsLocalRing.ResidueField`: The quotient of a local ring by its maximal ideal.
* `IsLocalRing.residue`: The quotient map from a local ring to its residue field.
-/


namespace GRWTSK.Algebra.ResidueField.Variant14253388ba8880aaf95b48570e6a71281513b9ced87be94493e31f1d18a1c88f

namespace IsLocalRing

variable (R : Type*) [CommRing R] [IsLocalRing R]

/-- The residue field of a local ring is the quotient of the ring by its maximal ideal. -/
def ResidueField :=
  R ⧸ maximalIdeal R

-- The `CommRing, Inhabited` instances should be constructed by a deriving handler.
-- https://github.com/leanprover-community/mathlib4/issues/380

instance ResidueFieldCommRing : CommRing (ResidueField R) :=
  show CommRing (R ⧸ maximalIdeal R) from inferInstance

instance ResidueFieldInhabited : Inhabited (ResidueField R) :=
  show Inhabited (R ⧸ maximalIdeal R) from inferInstance

noncomputable instance ResidueField.field : Field (ResidueField R) :=
  Ideal.Quotient.field (maximalIdeal R)

/-- The quotient map from a local ring to its residue field. -/
def residue : R →+* ResidueField R :=
  Ideal.Quotient.mk _

end IsLocalRing

@[deprecated (since := "2024-11-11")] alias LocalRing.ResidueField := IsLocalRing.ResidueField
@[deprecated (since := "2024-11-11")] alias LocalRing.residue := IsLocalRing.residue
```
