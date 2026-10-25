# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exact.Variantac5f832c397a7654fe92d88e8dc40f76250c5860aded16dd81c60a362ce1a41c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98f9d8bc2a9de5d89af6545db01ef7e9299e4bd2` · SHA-256 `3417915b96d1428f2af4d36a1e6847fd974b3d4d7a3264f180beaa728e1b5748`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMVarIdAssignIfDefEq.Variant5ddfd54d0668e7c3cb03706d4db55d5cc14ce1e0901dc9215941728526f5a169","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ddfd54d0668e7c3cb03706d4db55d5cc14ce1e0901dc9215941728526f5a169","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanMVarIdAssignIfDefEq.Variant5ddfd54d0668e7c3cb03706d4db55d5cc14ce1e0901dc9215941728526f5a169","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5ddfd54d0668e7c3cb03706d4db55d5cc14ce1e0901dc9215941728526f5a169","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Tactic/Exact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Batteries.Tactic.Alias


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMVarIdAssignIfDefEq.Variant5ddfd54d0668e7c3cb03706d4db55d5cc14ce1e0901dc9215941728526f5a169

public meta section

/-! # `exact` tactic (`MetaM` version) -/

open Lean Meta

/--
`MetaM` version of `Lean.Elab.Tactic.evalExact`: add `mvarId := x` to the metavariable assignment.
This method wraps `Lean.MVarId.assign`, checking whether `mvarId` is already assigned, and whether
the expression has the right type. -/
def Lean.MVarId.assignIfDefEq (g : MVarId) (e : Expr) : MetaM Unit := do
  guard <| ← isDefEq (← g.getType) (← inferType e)
  g.checkNotAssigned `assignIfDefEq
  g.assign e

@[deprecated (since := "2025-04-09")]
alias Lean.MVarId.assignIfDefeq := Lean.MVarId.assignIfDefEq
```
