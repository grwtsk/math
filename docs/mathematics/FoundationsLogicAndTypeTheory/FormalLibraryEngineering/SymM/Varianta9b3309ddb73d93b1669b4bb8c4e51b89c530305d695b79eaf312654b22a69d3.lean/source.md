# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symm.Varianta9b3309ddb73d93b1669b4bb8c4e51b89c530305d695b79eaf312654b22a69d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee86c4f90c3ad0f6f244435c95b40f91ccf68499` · SHA-256 `d7a0d3ca4616ad13144d0073a68357d331212403bed81eb8648f70c2ac0cf576`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalSymm.Variant72c8583a27ca4c47f1854bf3af3df78bfd7ba4d688d964fd53fa2aa2fbbcffd2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72c8583a27ca4c47f1854bf3af3df78bfd7ba4d688d964fd53fa2aa2fbbcffd2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalSymm.Variant72c8583a27ca4c47f1854bf3af3df78bfd7ba4d688d964fd53fa2aa2fbbcffd2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"72c8583a27ca4c47f1854bf3af3df78bfd7ba4d688d964fd53fa2aa2fbbcffd2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Symm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Siddhartha Gadgil. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Siddhartha Gadgil, Mario Carneiro, Kim Morrison
-/
module

prelude
public import Lean.Meta.Tactic.Symm
public import Lean.Elab.Tactic.Location


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalSymm.Variant72c8583a27ca4c47f1854bf3af3df78bfd7ba4d688d964fd53fa2aa2fbbcffd2

public section

namespace Lean.Elab.Tactic

@[builtin_tactic Lean.Parser.Tactic.symm]
def evalSymm : Tactic := fun stx =>
  match stx with
  | `(tactic| symm $(loc?)?) => do
    let atHyp h := liftMetaTactic1 fun g => g.applySymmAt h
    let atTarget := liftMetaTactic1 fun g => g.applySymm
    let loc := if let some loc := loc? then expandLocation loc else Location.targets #[] true
    withLocation loc atHyp atTarget fun _ => throwError "`symm` made no progress"
  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.symmSaturate]
def evalSymmSaturate : Tactic := fun stx =>
  match stx with
  | `(tactic| symm_saturate) => do
    liftMetaTactic1 fun g => g.symmSaturate
  | _ => throwUnsupportedSyntax
```
