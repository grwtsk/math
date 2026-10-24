# Complete source: GRWTSK.Analysis.MeasureTheory.PreorderRestrict.Variant8fb44b4e45db0821f782f645f610c9e3e9be4b87ce69952dc7b7ad80c52987a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef68a3569a9763d3769553b7db07967114e140bb` · SHA-256 `62c3d6065e10ff3f0cceb331f9b848532e21ea592a11a5c109855f5d0f5dcc03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableRestrictLe.Variant4e5e2a2ecc2d9bb47cadaa0a7721a4fc9481e5160691611bb7ea6d30ff442e58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e5e2a2ecc2d9bb47cadaa0a7721a4fc9481e5160691611bb7ea6d30ff442e58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableRestrictLe.Variant4e5e2a2ecc2d9bb47cadaa0a7721a4fc9481e5160691611bb7ea6d30ff442e58","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"4e5e2a2ecc2d9bb47cadaa0a7721a4fc9481e5160691611bb7ea6d30ff442e58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/MeasurableSpace/PreorderRestrict.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
module

public import Mathlib.MeasureTheory.MeasurableSpace.Constructions
public import Mathlib.Order.Restriction

/-!
# Measurability of the restriction function for functions indexed by a preorder

We prove that the map which restricts a function `f : (i : α) → X i` to elements `≤ a` is
measurable.
-/


namespace GRWTSK.Analysis.MeasureTheory.MeasurableRestrictLe.Variant4e5e2a2ecc2d9bb47cadaa0a7721a4fc9481e5160691611bb7ea6d30ff442e58

public section

namespace Preorder

variable {α : Type*} [Preorder α] {X : α → Type*} [∀ a, MeasurableSpace (X a)]

@[fun_prop]
theorem measurable_restrictLe (a : α) : Measurable (restrictLe (π := X) a) :=
    Set.measurable_restrict _

@[fun_prop]
theorem measurable_restrictLe₂ {a b : α} (hab : a ≤ b) : Measurable (restrictLe₂ (π := X) hab) :=
  Set.measurable_restrict₂ _

variable [LocallyFiniteOrderBot α]

@[fun_prop]
theorem measurable_frestrictLe (a : α) : Measurable (frestrictLe (π := X) a) :=
  Finset.measurable_restrict _

@[fun_prop]
theorem measurable_frestrictLe₂ {a b : α} (hab : a ≤ b) : Measurable (frestrictLe₂ (π := X) hab) :=
  Finset.measurable_restrict₂ _

end Preorder
```
