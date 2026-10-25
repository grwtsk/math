# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant12c1b5f2949937ee419ac3f0a2b083ef95dbbb32e1eac04c2b803156c44fb2ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b393a61bc050fe7b0ce4a278443d9fa60e524a7b` · SHA-256 `0a171723c61a2a9c684c7e3bab29150b872ce70789452b6a942e6446f89a7025`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonoidalNf.Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MonoidalNf.Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/CategoryTheory/Monoidal/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yuma Mizuno. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuma Mizuno
-/
import Mathlib.Tactic.CategoryTheory.Coherence.Basic
import Mathlib.Tactic.CategoryTheory.Monoidal.Normalize
import Mathlib.Tactic.CategoryTheory.Monoidal.PureCoherence

/-!
# `monoidal` tactic

This file provides `monoidal` tactic, which solves equations in a monoidal category, where
the two sides only differ by replacing strings of monoidal structural morphisms (that is,
associators, unitors, and identities) with different strings of structural morphisms with the same
source and target. In other words, `monoidal` solves equalities where both sides have the same
string diagrams.

The core function for the `monoidal` tactic is provided in
`Mathlib/Tactic/CategoryTheory/Coherence/Basic.lean`. See this file for more details about the
implementation.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonoidalNf.Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc

open Lean Meta Elab Tactic
open CategoryTheory Mathlib.Tactic.BicategoryLike

namespace Mathlib.Tactic.Monoidal

/-- Normalize the both sides of an equality. -/
def monoidalNf (mvarId : MVarId) : MetaM (List MVarId) := do
  BicategoryLike.normalForm Monoidal.Context `monoidal mvarId

@[inherit_doc monoidalNf]
elab "monoidal_nf" : tactic => withMainContext do
  replaceMainGoal (← monoidalNf (← getMainGoal))

/--
Use the coherence theorem for monoidal categories to solve equations in a monoidal category,
where the two sides only differ by replacing strings of monoidal structural morphisms
(that is, associators, unitors, and identities)
with different strings of structural morphisms with the same source and target.

That is, `monoidal` can handle goals of the form
`a ≫ f ≫ b ≫ g ≫ c = a' ≫ f ≫ b' ≫ g ≫ c'`
where `a = a'`, `b = b'`, and `c = c'` can be proved using `monoidal_coherence`.
-/
def monoidal (mvarId : MVarId) : MetaM (List MVarId) :=
  BicategoryLike.main Monoidal.Context `monoidal mvarId

@[inherit_doc monoidal]
elab "monoidal" : tactic => withMainContext do
  replaceMainGoal <| ← monoidal <| ← getMainGoal

end Mathlib.Tactic.Monoidal
```
