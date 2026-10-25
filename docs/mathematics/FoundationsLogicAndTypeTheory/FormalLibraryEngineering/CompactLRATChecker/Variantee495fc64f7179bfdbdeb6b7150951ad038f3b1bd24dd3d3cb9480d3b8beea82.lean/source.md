# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactLRATChecker.Variantee495fc64f7179bfdbdeb6b7150951ad038f3b1bd24dd3d3cb9480d3b8beea82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4cdd808bb8b66500311d59cddceeb7ebe1dbc1f` · SHA-256 `730981a7ddfab3725d0348af5b8849bfc481055ae7822a64104c67bbf18fe33f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactLratChecker.Variant3cd27b63554c823066be6d9d8e2bd7fffd673916e60a6658d9382a3bdd7d5892","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cd27b63554c823066be6d9d8e2bd7fffd673916e60a6658d9382a3bdd7d5892","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CompactLratChecker.Variant3cd27b63554c823066be6d9d8e2bd7fffd673916e60a6658d9382a3bdd7d5892","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3cd27b63554c823066be6d9d8e2bd7fffd673916e60a6658d9382a3bdd7d5892","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Internal/CompactLRATChecker.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Internal.LRATChecker
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Implementation
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Instance
public import Std.Tactic.BVDecide.LRAT.Internal.Actions



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactLratChecker.Variant3cd27b63554c823066be6d9d8e2bd7fffd673916e60a6658d9382a3bdd7d5892

@[expose] public section

namespace Std.Tactic.BVDecide
namespace LRAT
namespace Internal

/-!
This module implements an LRAT checker that acts on an `Array IntAction` and only explodes it into
the `DefaultClauseAction` when required instead of upfront. This allows for a significantly smaller
memory footprint compared to the generic LRAT checker.
-/

def compactLratChecker (f : DefaultFormula n) (proof : Array IntAction) :
    Result :=
  go f proof 0
where
  go {n : Nat} (f : DefaultFormula n) (proof : Array IntAction) (idx : Nat) : Result :=
    if h : idx < proof.size then
      let step := intActionToDefaultClauseAction n proof[idx]
      match step with
      | none => go f proof (idx + 1)
      | some (.addEmpty _ rupHints) =>
        let (_, checkSuccess) := Formula.performRupAdd f Clause.empty rupHints
        if checkSuccess then
          .success
        else
          .rupFailure
      | some (.addRup _ c rupHints) =>
        let (f, checkSuccess) := Formula.performRupAdd f c rupHints
        if checkSuccess then
          go f proof (idx + 1)
        else
          .rupFailure
      | some (.addRat _ c pivot rupHints ratHints) =>
        if pivot ∈ Clause.toList c then
          let (f, checkSuccess) := Formula.performRatAdd f c pivot rupHints ratHints
          if checkSuccess then
            go f proof (idx + 1)
          else
            .rupFailure
        else
          go f proof (idx + 1)
      | some (.del ids) => go (Formula.delete f ids) proof (idx + 1)
    else
      .outOfProof

end Internal
end LRAT
end Std.Tactic.BVDecide
```
