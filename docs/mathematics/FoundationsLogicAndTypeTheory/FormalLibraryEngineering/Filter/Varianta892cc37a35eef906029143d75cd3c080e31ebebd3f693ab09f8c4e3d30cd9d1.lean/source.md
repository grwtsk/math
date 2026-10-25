# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Filter.Varianta892cc37a35eef906029143d75cd3c080e31ebebd3f693ab09f8c4e3d30cd9d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `352bb0be62ef02dedc56bd20d008f8fff7823c91` · SHA-256 `f272a3f06c92cf570c7e23f18a932d3a127a3d7bcf773870364561bcbd3aff92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabFilter.Variant08f429dabd93229b099214a6f119afaa47909381de7bbc4d0f17f12ef27ef77a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08f429dabd93229b099214a6f119afaa47909381de7bbc4d0f17f12ef27ef77a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabFilter.Variant08f429dabd93229b099214a6f119afaa47909381de7bbc4d0f17f12ef27ef77a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"08f429dabd93229b099214a6f119afaa47909381de7bbc4d0f17f12ef27ef77a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/Filter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
public import Lean.Meta.Tactic.Grind.Filter

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabFilter.Variant08f429dabd93229b099214a6f119afaa47909381de7bbc4d0f17f12ef27ef77a

namespace Lean.Elab.Tactic.Grind
open Meta Lean.Meta.Grind

public partial def elabFilter (filter? : Option (TSyntax `grind_filter)) : GrindTacticM Filter := do
  let some filter := filter? | return .true
  go filter
where
  go (filter : TSyntax `grind_filter) : GrindTacticM Filter := do
    match filter with
    | `(grind_filter| $id:ident) =>
      match (← Term.resolveId? id) with
      | some (.const declName _) => return .const declName
      | some (.fvar fvarId) => return .fvar fvarId
      | _ => throwErrorAt id "invalid identifier"
    | `(grind_filter| $a:grind_filter && $b:grind_filter) => return .and (← go a) (← go b)
    | `(grind_filter| $a:grind_filter || $b:grind_filter) => return .or (← go a) (← go b)
    | `(grind_filter| ! $a:grind_filter) => return .not (← go a)
    | `(grind_filter| ($a:grind_filter)) => go a
    | `(grind_filter| gen = $n:num)  => let n := n.getNat; return .gen fun x => x == n
    | `(grind_filter| gen > $n:num)  => let n := n.getNat; return .gen fun x => x > n
    | `(grind_filter| gen ≥ $n:num)  => let n := n.getNat; return .gen fun x => x ≥ n
    | `(grind_filter| gen >= $n:num) => let n := n.getNat; return .gen fun x => x ≥ n
    | `(grind_filter| gen ≤ $n:num)  => let n := n.getNat; return .gen fun x => x ≤ n
    | `(grind_filter| gen <= $n:num) => let n := n.getNat; return .gen fun x => x ≤ n
    | `(grind_filter| gen < $n:num)  => let n := n.getNat; return .gen fun x => x < n
    | `(grind_filter| gen != $n:num) => let n := n.getNat; return .gen fun x => x != n
    | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.Grind
```
