# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Builtin.Variant9ecdebcde405d13bca2218606b47bb3ea090471183183f86e99cdd288df89847

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89f7558fd6a6d2fe7dce286347641cf325d699e1` · SHA-256 `c5135e48d6ede74335ed08ac8121c4889cde251299d2667b8c5e1dfbfbcc2341`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLinterSuspiciousUnexpanderPatterns.Variant495e1cf95261433ffb2257244f8b4abe2dd99e6710b766240030fcee818769a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"495e1cf95261433ffb2257244f8b4abe2dd99e6710b766240030fcee818769a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetLinterSuspiciousUnexpanderPatterns.Variant495e1cf95261433ffb2257244f8b4abe2dd99e6710b766240030fcee818769a6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"495e1cf95261433ffb2257244f8b4abe2dd99e6710b766240030fcee818769a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/Builtin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König
-/
module

prelude
public import Lean.Linter.Util
public import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLinterSuspiciousUnexpanderPatterns.Variant495e1cf95261433ffb2257244f8b4abe2dd99e6710b766240030fcee818769a6

public section

namespace Lean.Linter

register_builtin_option linter.suspiciousUnexpanderPatterns : Bool := {
  defValue := true,
  descr := "enable the 'suspicious unexpander patterns' linter"
}

def getLinterSuspiciousUnexpanderPatterns (o : LinterOptions) : Bool := getLinterValue linter.suspiciousUnexpanderPatterns o

def suspiciousUnexpanderPatterns : Linter where
  run cmdStx := do
    unless getLinterSuspiciousUnexpanderPatterns (← getLinterOptions) do
      return

    -- check `[app_unexpander _]` defs defined by pattern matching
    let `($[$_:docComment]? @[$[$attrs:attr],*] $(_vis)? def $_ : $_ $[| $pats => $_]*) := cmdStx | return

    unless attrs.any (· matches `(attr| app_unexpander $_)) do
      return

    for pat in pats do
      let patHead ← match pat with
        | `(`($patHead:ident $_args*)) => pure patHead
        | `(`($patHead:ident))         => pure patHead
        | _                            => continue

      logLint linter.suspiciousUnexpanderPatterns patHead
        "Unexpanders should match the function name against an antiquotation `$_` so as to be independent of the specific pretty printing of the name."

builtin_initialize addLinter suspiciousUnexpanderPatterns

end Lean.Linter
```
