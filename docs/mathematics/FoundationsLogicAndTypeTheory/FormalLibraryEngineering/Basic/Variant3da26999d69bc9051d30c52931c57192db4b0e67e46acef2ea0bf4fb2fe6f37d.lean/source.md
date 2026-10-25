# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant3da26999d69bc9051d30c52931c57192db4b0e67e46acef2ea0bf4fb2fe6f37d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b1d7c0ce0ce60741e0cf56ce2077e9ef288d3cb` · SHA-256 `9db20d52fef21fe2d3b47bb0652b83972d55937597c4cb3e5797352d08e62566`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BicategoryNf.Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BicategoryNf.Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/CategoryTheory/Bicategory/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yuma Mizuno. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuma Mizuno
-/
import Mathlib.Tactic.CategoryTheory.Coherence.Basic
import Mathlib.Tactic.CategoryTheory.Bicategory.Normalize
import Mathlib.Tactic.CategoryTheory.Bicategory.PureCoherence

/-!
# `bicategory` tactic

This file provides `bicategory` tactic, which solves equations in a bicategory, where
the two sides only differ by replacing strings of bicategory structural morphisms (that is,
associators, unitors, and identities) with different strings of structural morphisms with the same
source and target. In other words, `bicategory` solves equalities where both sides have the same
string diagrams.

The core function for the `bicategory` tactic is provided in
`Mathlib/Tactic/CategoryTheory/Coherence/Basic.lean`. See this file for more details about the
implementation.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BicategoryNf.Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a

open Lean Meta Elab Tactic
open CategoryTheory Mathlib.Tactic.BicategoryLike

namespace Mathlib.Tactic.Bicategory

/-- Normalize the both sides of an equality. -/
def bicategoryNf (mvarId : MVarId) : MetaM (List MVarId) := do
  BicategoryLike.normalForm Bicategory.Context `bicategory mvarId

@[inherit_doc bicategoryNf]
elab "bicategory_nf" : tactic => withMainContext do
  replaceMainGoal (← bicategoryNf (← getMainGoal))

/--
Use the coherence theorem for bicategories to solve equations in a bicategory,
where the two sides only differ by replacing strings of bicategory structural morphisms
(that is, associators, unitors, and identities)
with different strings of structural morphisms with the same source and target.

That is, `bicategory` can handle goals of the form
`a ≫ f ≫ b ≫ g ≫ c = a' ≫ f ≫ b' ≫ g ≫ c'`
where `a = a'`, `b = b'`, and `c = c'` can be proved using `bicategory_coherence`.
-/
def bicategory (mvarId : MVarId) : MetaM (List MVarId) :=
  BicategoryLike.main  Bicategory.Context `bicategory mvarId

@[inherit_doc bicategory]
elab "bicategory" : tactic => withMainContext do
  replaceMainGoal <| ← bicategory <| ← getMainGoal

end Mathlib.Tactic.Bicategory
```
