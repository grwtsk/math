# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InheritDoc.Variant8c5ef48c87351af10ebe0c91b04a7c8cfb1760d898b9056118006dc842a4b54d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad7b34afa7caac8fed6013343ef3ad98938d70e7` · SHA-256 `14d6fdc5335c3a71973483fa68a4ac2e930a4fc0e062534155f226f8202f6d55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfoTree.Variant7a1e942523808829b592ad8a8f05d5f09a3961af453059416278708d49f218c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a1e942523808829b592ad8a8f05d5f09a3961af453059416278708d49f218c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InfoTree.Variant7a1e942523808829b592ad8a8f05d5f09a3961af453059416278708d49f218c6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7a1e942523808829b592ad8a8f05d5f09a3961af453059416278708d49f218c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/InheritDoc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
import Lean.Elab.InfoTree.Main
import Lean.DocString.Markdown


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfoTree.Variant7a1e942523808829b592ad8a8f05d5f09a3961af453059416278708d49f218c6

namespace Lean

/--
Uses documentation from a specified declaration.

`@[inherit_doc decl]` is used to inherit the documentation from the declaration `decl`.
-/
@[builtin_doc]
public builtin_initialize
  registerBuiltinAttribute {
    name := `inherit_doc
    descr := "inherit documentation from a specified declaration"
    add   := fun decl stx kind => do
      unless kind == AttributeKind.global do
        throwAttrMustBeGlobal `inherit_doc kind
      match stx with
      | `(attr| inherit_doc $[$id?:ident]?) => withRef stx[0] do
        let some id := id?
          | throwError "Invalid `[inherit_doc]` attribute: Could not infer doc source"
        -- allow inheriting private docstrings
        let declName ← withoutExporting <| Elab.realizeGlobalConstNoOverloadWithInfo id
        if (← findSimpleDocString? (← getEnv) decl (includeBuiltin := false)).isSome then
          logWarning m!"{← mkConstWithLevelParams decl} already has a doc string"
        -- Outside the server, we do not have access to all docstrings
        if !(← getEnv).header.isModule || Elab.inServer.get (← getOptions) then
          if (← findInternalDocString? (← getEnv) declName).isNone then
            logWarningAt id m!"{← mkConstWithLevelParams declName} does not have a doc string"
        addInheritedDocString decl declName
      | _  => throwError "Invalid `[inherit_doc]` attribute syntax"
    applicationTime := AttributeApplicationTime.afterCompilation
  }
```
