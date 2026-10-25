# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Forall.Variant586dc2b6ab4cbbbf54b891777179c6ba46d4b3d0ebd926ff64fa834c3d34e132

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25fdfee06cde2bab30c58db9b4509e9085a7f61e` · SHA-256 `4a070741d66bfe4bd50fa35fd705187e1bb2b37cf4a34e17264a3b75abc565d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DsimpForall.Variant0f903514c055f97eeb34a6274df07c0b11a3a20be6ce585720180fba74b9d39d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f903514c055f97eeb34a6274df07c0b11a3a20be6ce585720180fba74b9d39d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DsimpForall.Variant0f903514c055f97eeb34a6274df07c0b11a3a20be6ce585720180fba74b9d39d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0f903514c055f97eeb34a6274df07c0b11a3a20be6ce585720180fba74b9d39d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/DSimp/Forall.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.DSimpM
import Lean.Meta.Sym.AbstractS
import Lean.Meta.Sym.InstantiateS

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DsimpForall.Variant0f903514c055f97eeb34a6274df07c0b11a3a20be6ce585720180fba74b9d39d

namespace Lean.Meta.Sym.DSimp

/--
Definitionally simplifies a forall expression.

Unlike `Sym.Simp.simpForall`, it descends into the binder type as well as the
body.
-/
public def dsimpForall : DSimproc := fun e =>
  go e #[] false
where
  go (e : Expr) (fvars : Array Expr) (modified : Bool) : DSimpM Result := do
    match e with
    | .forallE n d b c =>
      -- Instantiate the binder domain against the already-introduced `fvars` *before* creating
      -- the local declaration, otherwise the decl retains loose bound variables referring to
      -- earlier binders in this telescope.
      let d ← instantiateRevBetaS d fvars
      match (← dsimp d) with
      | .rfl _ => withLocalDecl n c d fun x => go b (fvars.push x) modified
      | .step d' _ => withLocalDecl n c d' fun x => go b (fvars.push x) true
    | _ =>
      let r ← dsimp (← instantiateRevBetaS e fvars)
      match r with
      | .rfl _ =>
        if modified then
          return .step (← mkForallFVarsS fvars e)
        else
          return .rfl
      | .step e' _ =>
        return .step (← mkForallFVarsS fvars e')

end Lean.Meta.Sym.DSimp
```
