# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IO.Variant39773dd1ce84f3459efa849b942da42c72753f8b7a563006b883d3f39bd64359

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bb5fbcd470d58dc280a1293a42de87fc636d996` · SHA-256 `8d15b3bf9537283a3eb573b2355310663baf9593282a1a4dd33b01ba2fb1ba88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListWaitAll.Variantf4d8ac6aa293f8492663da6a6f103cc9325ccf4b486ba6437c391d0b1f5b2342","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4d8ac6aa293f8492663da6a6f103cc9325ccf4b486ba6437c391d0b1f5b2342","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListWaitAll.Variantf4d8ac6aa293f8492663da6a6f103cc9325ccf4b486ba6437c391d0b1f5b2342","mathematical_subject":"Computation.DataStructures","original_sha256":"f4d8ac6aa293f8492663da6a6f103cc9325ccf4b486ba6437c391d0b1f5b2342","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/System/IO.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListWaitAll.Variantf4d8ac6aa293f8492663da6a6f103cc9325ccf4b486ba6437c391d0b1f5b2342

@[expose] public section

/-!
# Functions for manipulating a list of tasks

* `IO.waitAny'` is a wrapper for `IO.waitAny` that also returns the remaining tasks.
* `List.waitAll : List (Task α) → Task (List α)` gathers a list of tasks into a task returning
  the list of all results.
-/

set_option autoImplicit true

-- duplicated from `lean4/src/Init/System/IO.lean`
local macro "nonempty_list" : tactic =>
  `(tactic| exact Nat.zero_lt_succ _)

/--
Given a list of tasks, create the task returning the list of results,
by waiting for each.
-/
def List.waitAll (tasks : List (Task α)) : Task (List α) :=
  match tasks with
  | [] => .pure []
  | task :: tasks => task.bind (prio := .max) fun a =>
      tasks.waitAll.map (prio := .max) fun as => a :: as
```
