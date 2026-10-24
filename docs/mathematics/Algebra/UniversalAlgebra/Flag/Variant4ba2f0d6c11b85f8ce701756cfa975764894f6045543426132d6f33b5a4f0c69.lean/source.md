# Complete source: GRWTSK.Algebra.UniversalAlgebra.Flag.Variant4ba2f0d6c11b85f8ce701756cfa975764894f6045543426132d6f33b5a4f0c69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02721d118039cda108f35cd7e85f0087aafa47f2` · SHA-256 `37c7f0134dff628f729a85b6ce726c04fd03e542d51ba2d9bd8bc0c11f9a6fc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CoeSmul.Variant058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CoeSmul.Variant058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/Action/Flag.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Action.Pointwise.Set.Basic
import Mathlib.Algebra.Order.Group.Action.End
import Mathlib.Order.Preorder.Chain

/-!
# Action on flags

Order isomorphisms act on flags.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.CoeSmul.Variant058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd

open scoped Pointwise

variable {α : Type*}

namespace Flag
variable [Preorder α]

instance : SMul (α ≃o α) (Flag α) where smul e := map e

@[simp, norm_cast]
lemma coe_smul (e : α ≃o α) (s : Flag α) : (↑(e • s) : Set α) = e • s := rfl

instance : MulAction (α ≃o α) (Flag α) := SetLike.coe_injective.mulAction _ coe_smul

end Flag
```
