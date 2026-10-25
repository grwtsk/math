# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantfc8f23f3b9939844a933aa29da835697dab21ebd778c945dbeae6dbb2fb9f2b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdfd2dc4411e9ba1d5a9e77ae1dba8287b1f0b1b` · SHA-256 `9811d21be5609c08789302c63e5961f12bf2de80644ade0f14e8a3baef039aac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabConfigItems.Variant7d51fdd21c71eed2bb4424dafbc8a9720e2fb4e965194d7c1b75e414afc857d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d51fdd21c71eed2bb4424dafbc8a9720e2fb4e965194d7c1b75e414afc857d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabConfigItems.Variant7d51fdd21c71eed2bb4424dafbc8a9720e2fb4e965194d7c1b75e414afc857d8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7d51fdd21c71eed2bb4424dafbc8a9720e2fb4e965194d7c1b75e414afc857d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/Config.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
import Lean.Elab.ConfigEval


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabConfigItems.Variant7d51fdd21c71eed2bb4424dafbc8a9720e2fb4e965194d7c1b75e414afc857d8

public section
namespace Lean.Elab.Tactic

open ConfigEval

/--
Elaborator for grind configurations, with the `(config := ...)` elaborator exposed.
This allows overriding which structure is used as the expected type when elaborating
the term, which affects which default values are used in `{...}` structure instance notation.
-/
private declare_term_config_elab elabGrindConfigCore Grind.Config
    (evalConfig : Term → TermElabM Grind.Config) where
  option config := fun _ item => evalConfig ⟨item.value⟩

local macro "make_elab_grind_config" fn:ident struct:ident : command => do
  let cfg := mkIdent `cfg
  let init := mkIdent `init
  let logExceptions := mkIdent `logExceptions
  `(private local ensure_eval_expr_instance $struct
    def $fn ($cfg : Syntax)
        ($init : $struct := {})
        ($logExceptions : Bool := true) :
        TacticM Grind.Config := do
      elabGrindConfigCore $cfg { $init with }
        (evalConfig := fun c => do
          let cfg : $struct ← evalExprWithElab c
          return { cfg with })
        (logExceptions := $logExceptions && (← read).recover))

make_elab_grind_config elabGrindConfig Grind.Config
make_elab_grind_config elabGrindConfigInteractive Grind.ConfigInteractive
make_elab_grind_config elabCutsatConfig Grind.CutsatConfig
make_elab_grind_config elabLinarithConfig Grind.LinarithConfig
make_elab_grind_config elabOrderConfig Grind.OrderConfig
make_elab_grind_config elabGrobnerConfig Grind.GrobnerConfig

namespace Grind

def elabConfigItems (init : Grind.Config) (items : Array Syntax) :
    TermElabM Grind.Config := do
  elabGrindConfigCore (mkNullNode items) init
    (evalConfig := fun c => evalExprWithElab c)
    (logExceptions := false)

def withConfigItems (items : Array Syntax)
    (k : GrindTacticM α) : GrindTacticM α := do
  if items.isEmpty then
    k
  else
    let config := (← read).ctx.config
    let config ← elabConfigItems config items
    withReader (fun c => { c with ctx.config := config }) do k

end Lean.Elab.Tactic.Grind
```
