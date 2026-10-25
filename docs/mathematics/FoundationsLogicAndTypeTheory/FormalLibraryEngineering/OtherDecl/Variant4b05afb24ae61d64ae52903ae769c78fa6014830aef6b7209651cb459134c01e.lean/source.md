# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OtherDecl.Variant4b05afb24ae61d64ae52903ae769c78fa6014830aef6b7209651cb459134c01e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0eecef6714945160f94026ef99618a5fc5d63002` · SHA-256 `e418cad59d5cbedb1c9a258d1c37f319cb908bd41c68e8971f93b1d54e10312d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetOtherDeclType.Variantcb137113a603520d0553a2d5553f60f1c66425a5a79613edade23b45c7a5fd95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb137113a603520d0553a2d5553f60f1c66425a5a79613edade23b45c7a5fd95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetOtherDeclType.Variantcb137113a603520d0553a2d5553f60f1c66425a5a79613edade23b45c7a5fd95","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cb137113a603520d0553a2d5553f60f1c66425a5a79613edade23b45c7a5fd95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/OtherDecl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM
import Lean.Compiler.LCNF.MonoTypes
import Lean.Compiler.LCNF.ToImpureType


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetOtherDeclType.Variantcb137113a603520d0553a2d5553f60f1c66425a5a79613edade23b45c7a5fd95

public section

namespace Lean.Compiler.LCNF

/--
Return the LCNF type for constructors, inductive types, and foreign functions.
-/
def getOtherDeclType (declName : Name) (us : List Level := []) : CompilerM Expr := do
  match (← getPhase) with
  | .base => getOtherDeclBaseType declName us
  | .mono => getOtherDeclMonoType declName
  | .impure => throwError "getOtherDeclType unsupported for impure"

end Lean.Compiler.LCNF
```
