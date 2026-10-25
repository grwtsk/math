# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prop.Varianta6f9a8f6b757cf6eb1286209f3b4d4c35bf282f7cd3357acab40038e09360776

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7eff025b1b9fc4313313b9e4c87b53803584c5d7` · SHA-256 `9e84406611f26c11705e0dd05034ccdab1c2bf8b1a9d266ba9227b8b4da00212`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PiLeDef.Varianta68666f5228676d4cc8f5e30e46b072952fc626e6fa73af493fe28f61e52dbb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a68666f5228676d4cc8f5e30e46b072952fc626e6fa73af493fe28f61e52dbb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PiLeDef.Varianta68666f5228676d4cc8f5e30e46b072952fc626e6fa73af493fe28f61e52dbb1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a68666f5228676d4cc8f5e30e46b072952fc626e6fa73af493fe28f61e52dbb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Defs/Prop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Yury Kudryashov
-/
module

import Mathlib.Tactic.ToDual
public import Mathlib.Tactic.ToDual

/-!
# Order definitions for propositions

This file defines orders on `Pi` and `Prop`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PiLeDef.Varianta68666f5228676d4cc8f5e30e46b072952fc626e6fa73af493fe28f61e52dbb1

public section

instance Pi.hasLe {ι : Type*} {π : ι → Type*} [∀ i, LE (π i)] : LE (∀ i, π i) where
  le x y := ∀ i, x i ≤ y i

@[to_dual self]
theorem Pi.le_def {ι : Type*} {π : ι → Type*} [∀ i, LE (π i)] {x y : ∀ i, π i} :
    x ≤ y ↔ ∀ i, x i ≤ y i :=
  .rfl

/-- Propositions form a complete Boolean algebra, where the `≤` relation is given by implication. -/
instance Prop.le : LE Prop :=
  ⟨(· → ·)⟩

@[simp]
theorem le_Prop_eq : ((· ≤ ·) : Prop → Prop → Prop) = (· → ·) :=
  rfl
```
