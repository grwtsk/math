# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reduce.Variant8a71f409937d542e3d384495d45d9fa9d6cb2a6ebfe0bb426dd6c6a42b6071bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9f1fac6ead648d36534557a690ac791bc1d6ca8` · SHA-256 `b293188d73fc76bcffe12d086b11e0332907a338803281be601cd8ba1a6afebb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reduce.Variant54d713742cec4b5bd47b85f369e2fdd7d13c6a0b51503a72b05cef1b38e7c191","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"54d713742cec4b5bd47b85f369e2fdd7d13c6a0b51503a72b05cef1b38e7c191","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Reduce.Variant54d713742cec4b5bd47b85f369e2fdd7d13c6a0b51503a72b05cef1b38e7c191","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"54d713742cec4b5bd47b85f369e2fdd7d13c6a0b51503a72b05cef1b38e7c191","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Reduce.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.FunInfo
import Init.Data.Range.Polymorphic.Iterators


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reduce.Variant54d713742cec4b5bd47b85f369e2fdd7d13c6a0b51503a72b05cef1b38e7c191

public section

namespace Lean.Meta

partial def reduce (e : Expr) (explicitOnly skipTypes skipProofs := true) : MetaM Expr :=
  let rec visit (e : Expr) : MonadCacheT Expr Expr MetaM Expr :=
    checkCache e fun _ => Core.withIncRecDepth do
      if (← (pure skipTypes <&&> isType e)) then
        return e
      else if (← (pure skipProofs <&&> isProof e)) then
        return e
      else
        let e ← whnf e
        match e with
        | Expr.app .. =>
          let f     ← visit e.getAppFn
          let nargs := e.getAppNumArgs
          let finfo ← getFunInfoNArgs f nargs
          let mut args  := e.getAppArgs
          for i in *...args.size do
            if h : i < finfo.paramInfo.size then
              let info := finfo.paramInfo[i]
              if !explicitOnly || info.isExplicit then
                args ← args.modifyM i visit
            else
              args ← args.modifyM i visit
          if f.isConstOf ``Nat.succ && args.size == 1 && args[0]!.isRawNatLit then
            return mkRawNatLit (args[0]!.rawNatLit?.get! + 1)
          else
            return mkAppN f args
        | Expr.lam ..        => lambdaTelescope e fun xs b => do mkLambdaFVars xs (← visit b)
        | Expr.forallE ..    => forallTelescope e fun xs b => do mkForallFVars xs (← visit b)
        | Expr.proj n i s .. => return mkProj n i (← visit s)
        | _                  => return e
  visit e |>.run

def reduceAll (e : Expr) : MetaM Expr :=
  reduce e false false false

end Lean.Meta
```
