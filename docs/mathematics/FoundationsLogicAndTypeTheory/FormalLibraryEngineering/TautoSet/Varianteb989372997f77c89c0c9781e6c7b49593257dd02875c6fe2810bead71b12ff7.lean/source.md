# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TautoSet.Varianteb989372997f77c89c0c9781e6c7b49593257dd02875c6fe2810bead71b12ff7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8c42879c6ef2eca7dc0f026a11cf0cd5ed74422` · SHA-256 `af8f5fa1816ccc921b719145e7c5ca6a5a1e5168264071c910422c984b742006`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymmDiff.Variant9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SymmDiff.Variant9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/TautoSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lenny Taelman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lenny Taelman
-/

import Mathlib.Data.Set.SymmDiff
import Mathlib.Data.Set.Disjoint

/-!
# The `tauto_set` tactic
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymmDiff.Variant9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180

assert_not_exists RelIso

namespace Mathlib.Tactic.TautoSet

open Lean Elab.Tactic

/--
`specialize_all x` runs `specialize h x` for all hypotheses `h` where this tactic succeeds.
-/
elab (name := specialize_all) "specialize_all" x:term : tactic => withMainContext do
  for h in ← getLCtx do
    evalTactic (← `(tactic|specialize $(mkIdent h.userName) $x)) <|> pure ()


/--
`tauto_set` attempts to prove tautologies involving hypotheses and goals of the form `X ⊆ Y`
or `X = Y`, where `X`, `Y` are expressions built using ∪, ∩, \, and ᶜ from finitely many
variables of type `Set α`. It also unfolds expressions of the form `Disjoint A B` and
`symmDiff A B`.

Examples:
```lean
example {α} (A B C D : Set α) (h1 : A ⊆ B) (h2 : C ⊆ D) : C \ B ⊆ D \ A := by
  tauto_set

example {α} (A B C : Set α) (h1 : A ⊆ B ∪ C) : (A ∩ B) ∪ (A ∩ C) = A := by
  tauto_set
```
-/
macro "tauto_set" : tactic => `(tactic|
  · simp_all -failIfUnchanged only [
      Set.ext_iff, Set.subset_def,
      Set.mem_union, Set.mem_compl_iff, Set.mem_inter_iff,
      Set.symmDiff_def, Set.diff_eq, Set.disjoint_iff
    ]
    try intro x
    try specialize_all x
    <;> tauto
)


end Mathlib.Tactic.TautoSet
````
