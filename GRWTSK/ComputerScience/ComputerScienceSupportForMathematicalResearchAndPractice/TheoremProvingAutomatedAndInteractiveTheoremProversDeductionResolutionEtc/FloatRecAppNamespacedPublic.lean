-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FloatRecApp.Variant7301397e6b8893d1ad358d36476295284ec6c572b122687c4a3588cec25635b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7301397e6b8893d1ad358d36476295284ec6c572b122687c4a3588cec25635b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FloatRecApp.Variant7301397e6b8893d1ad358d36476295284ec6c572b122687c4a3588cec25635b9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7301397e6b8893d1ad358d36476295284ec6c572b122687c4a3588cec25635b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/WF/FloatRecApp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Transform
public import Lean.Elab.RecAppSyntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FloatRecApp.Variant7301397e6b8893d1ad358d36476295284ec6c572b122687c4a3588cec25635b9

public section

namespace Lean.Elab.WF
open Meta

/--
Preprocesses the expressions to improve the effectiveness of `wfRecursion`.

* Floats out the RecApp markers.
  Example:
  ```
  def f : Nat → Nat
    | 0 => 1
    | i+1 => (f x) i
  ```

Unlike `Lean.Elab.Structural.preprocess`, do _not_ beta-reduce, as it could
remove `let_fun`-lambdas that contain explicit termination proofs.
(Note(kmill): this last statement no longer affects `let_fun`/`have`.)
-/
def floatRecApp (e : Expr) : CoreM Expr :=
  Core.transform e
    (post := fun e => do
      if e.isApp && e.getAppFn.isMData then
        let .mdata m f := e.getAppFn | unreachable!
        if m.isRecApp then
          return .done (.mdata m (f.beta e.getAppArgs))
      return .continue)

end Lean.Elab.WF
