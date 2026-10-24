# Complete source: GRWTSK.Algebra.GroupTheory.Finite.Variant867dded8b707b0ed880d784552dd608bffc2fac980c7bc175dc7344954bf800a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fcec16988e255cb9cb8e9fe2b0cce801e6c244d` · SHA-256 `03b488e576770bbe156287cb61a37cee17308ed329a960b7553ad38a2fadd531`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Fg.Variant24746f807b6b4fcaf8a1a52c7bee1efb4c4f873aa575f4ac0cda79d30ce28198","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24746f807b6b4fcaf8a1a52c7bee1efb4c4f873aa575f4ac0cda79d30ce28198","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Fg.Variant24746f807b6b4fcaf8a1a52c7bee1efb4c4f873aa575f4ac0cda79d30ce28198","mathematical_subject":"Algebra.Groups","original_sha256":"24746f807b6b4fcaf8a1a52c7bee1efb4c4f873aa575f4ac0cda79d30ce28198","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/MonoidLocalization/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies, Patrick Luo. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Patrick Luo
-/
import Mathlib.GroupTheory.Finiteness
import Mathlib.GroupTheory.MonoidLocalization.GrothendieckGroup

/-!
# Localization of a finitely generated submonoid

## TODO

If `Mathlib/GroupTheory/Finiteness.lean` wasn't so heavy, this could move earlier.
-/


namespace GRWTSK.Algebra.GroupTheory.Fg.Variant24746f807b6b4fcaf8a1a52c7bee1efb4c4f873aa575f4ac0cda79d30ce28198

open Localization

variable {M : Type*} [CommMonoid M] {S : Submonoid M}

namespace Localization

/-- The localization of a finitely generated monoid at a finitely generated submonoid is
finitely generated. -/
@[to_additive "The localization of a finitely generated monoid at a finitely generated submonoid is
finitely generated."]
lemma fg [Monoid.FG M] (hS : S.FG) : Monoid.FG <| Localization S := by
  rw [← Monoid.fg_iff_submonoid_fg] at hS; exact Monoid.fg_of_surjective mkHom mkHom_surjective

end Localization

namespace Algebra.GrothendieckGroup

/-- The Grothendieck group of a finitely generated monoid is finitely generated. -/
@[to_additive "The Grothendieck group of a finitely generated monoid is finitely generated."]
instance instFG [Monoid.FG M] : Monoid.FG <| GrothendieckGroup M := fg Monoid.FG.fg_top

end Algebra.GrothendieckGroup
```
