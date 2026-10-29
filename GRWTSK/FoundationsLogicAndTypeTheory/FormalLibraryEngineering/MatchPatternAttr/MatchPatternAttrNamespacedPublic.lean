-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasMatchPatternAttribute.Variant9005a195aa82f24ed26aef743012433ec2beb8646eeac50a0e4011cf999b4402","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9005a195aa82f24ed26aef743012433ec2beb8646eeac50a0e4011cf999b4402","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HasMatchPatternAttribute.Variant9005a195aa82f24ed26aef743012433ec2beb8646eeac50a0e4011cf999b4402","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9005a195aa82f24ed26aef743012433ec2beb8646eeac50a0e4011cf999b4402","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Match/MatchPatternAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Attributes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasMatchPatternAttribute.Variant9005a195aa82f24ed26aef743012433ec2beb8646eeac50a0e4011cf999b4402

public section

namespace Lean

/--
Instructs the pattern matcher to unfold occurrences of this definition.

By default, only constructors and literals can be used for pattern matching. Using
`@[match_pattern]` allows using other definitions, as long as they eventually reduce to
constructors and literals.

Example:
```
@[match_pattern]
def yellowString : String := "yellow"

def isYellow (color : String) : Bool :=
  match color with
  | yellowString => true
  | _ => false
```
-/
@[builtin_doc]
builtin_initialize matchPatternAttr : TagAttribute ←
  registerTagAttribute `match_pattern "mark that a definition can be used in a pattern (remark: the dependent pattern matching compiler will unfold the definition)"
    (validate := fun declName => do
      withExporting (isExporting := !isPrivateName declName) do
        if !(← getConstInfo declName).isDefinition then
          throwError "invalid `@[match_pattern]` attribute, `{.ofConstName declName}` is not an exposed definition")

def hasMatchPatternAttribute (env : Environment) (n : Name) : Bool :=
  matchPatternAttr.hasTag env n

end Lean
