# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Propagator.Varianta102b2cffc8b0136eb04f1bb8eea0f75bf1224fc65914b8ca821f1df1c2e4577

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10a52b19955ec59e72a316124f25369399e07ae1` · SHA-256 `38cc040257915ffaa86c4ad1819bb9512db59418fa135eec1f249f780cdf140a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant092b626e1ec2c7b15ecb208263e50c2c5b1fe57a170a34d3776d041993931c01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"092b626e1ec2c7b15ecb208263e50c2c5b1fe57a170a34d3776d041993931c01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Meta.Variant092b626e1ec2c7b15ecb208263e50c2c5b1fe57a170a34d3776d041993931c01","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"092b626e1ec2c7b15ecb208263e50c2c5b1fe57a170a34d3776d041993931c01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Propagator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public meta import Init.Meta
public import Init.Tactics
import Init.Meta.Defs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant092b626e1ec2c7b15ecb208263e50c2c5b1fe57a170a34d3776d041993931c01

public section

namespace Lean.Parser

/-- A user-defined propagator for the `grind` tactic. -/
-- TODO: not implemented yet
syntax (docComment)? "grind_propagator " (Tactic.simpPre <|> Tactic.simpPost) ident " (" ident ")" " := " term : command

/-- A builtin propagator for the `grind` tactic. -/
syntax (docComment)? "builtin_grind_propagator " ident (Tactic.simpPre <|> Tactic.simpPost) ident " := " term : command

/-- Auxiliary attribute for builtin `grind` propagators. -/
syntax (name := grindPropagatorBuiltinAttr) "builtin_grind_propagator" (Tactic.simpPre <|> Tactic.simpPost) ident : attr

macro_rules
  | `($[$doc?:docComment]? builtin_grind_propagator $propagatorName:ident $direction $op:ident := $body) => do
    let propagatorType := `Lean.Meta.Grind.Propagator
    `($[$doc?:docComment]? def $propagatorName:ident : $(mkIdent propagatorType) := $body
      attribute [builtin_grind_propagator $direction $op] $propagatorName)

end Lean.Parser
```
