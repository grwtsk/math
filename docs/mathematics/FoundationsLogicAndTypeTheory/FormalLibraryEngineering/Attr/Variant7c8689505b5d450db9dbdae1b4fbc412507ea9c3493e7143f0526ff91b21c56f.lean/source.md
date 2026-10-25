# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant7c8689505b5d450db9dbdae1b4fbc412507ea9c3493e7143f0526ff91b21c56f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a542cda1d05df845da075e0fe4deb261e8f53c0b` · SHA-256 `49be7a8688fd2370c5eb3ce8cfd482f2b353cd7a1c9991ac022f6bedb10ae8f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunPropHelpString.Variant34e233e809775ee1ec0a8c0c5a342383e0b92839d676e0a2fd12b5d209ee104a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34e233e809775ee1ec0a8c0c5a342383e0b92839d676e0a2fd12b5d209ee104a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FunPropHelpString.Variant34e233e809775ee1ec0a8c0c5a342383e0b92839d676e0a2fd12b5d209ee104a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"34e233e809775ee1ec0a8c0c5a342383e0b92839d676e0a2fd12b5d209ee104a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/FunProp/Attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Tomáš Skřivan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tomáš Skřivan
-/
import Mathlib.Tactic.FunProp.Decl
import Mathlib.Tactic.FunProp.Theorems

/-!
## `funProp` attribute
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunPropHelpString.Variant34e233e809775ee1ec0a8c0c5a342383e0b92839d676e0a2fd12b5d209ee104a

namespace Mathlib
open Lean Meta

namespace Meta.FunProp

private def funPropHelpString : String :=
"`fun_prop` tactic to prove function properties like `Continuous`, `Differentiable`, `IsLinearMap`"

/-- Initialization of `funProp` attribute -/
initialize funPropAttr : Unit ←
  registerBuiltinAttribute {
    name  := `fun_prop
    descr := funPropHelpString
    applicationTime := AttributeApplicationTime.afterCompilation
    add   := fun declName _stx attrKind =>
       discard <| MetaM.run do
       let info ← getConstInfo declName
       forallTelescope info.type fun _ b => do
         if b.isProp then
           addFunPropDecl declName
         else
           addTheorem declName attrKind
    erase := fun _declName =>
      throwError "can't remove `funProp` attribute (not implemented yet)"
  }

end Meta.FunProp

end Mathlib
```
