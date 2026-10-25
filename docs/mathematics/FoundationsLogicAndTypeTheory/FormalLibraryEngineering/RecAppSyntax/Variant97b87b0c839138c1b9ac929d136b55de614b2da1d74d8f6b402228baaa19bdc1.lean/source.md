# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecAppSyntax.Variant97b87b0c839138c1b9ac929d136b55de614b2da1d74d8f6b402228baaa19bdc1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e49cb4df0ecf1aceacfcd91093bc431eb466750` · SHA-256 `64f91f43afb555d3db8e852009044ff14d2a44f2d14ee89d3234694dae56a7e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecAppKey.Variant93dda52748fa4b0feac97c71c8ae0eb37f2285f1c282df7a71bf918dfdac3aa0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93dda52748fa4b0feac97c71c8ae0eb37f2285f1c282df7a71bf918dfdac3aa0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RecAppKey.Variant93dda52748fa4b0feac97c71c8ae0eb37f2285f1c282df7a71bf918dfdac3aa0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"93dda52748fa4b0feac97c71c8ae0eb37f2285f1c282df7a71bf918dfdac3aa0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/RecAppSyntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecAppKey.Variant93dda52748fa4b0feac97c71c8ae0eb37f2285f1c282df7a71bf918dfdac3aa0

public section

namespace Lean

private def recAppKey := `_recApp
private def recAppPosKey := `_recAppPos

/--
We store the syntax at recursive applications to be able to generate better error messages
when performing well-founded and structural recursion.

We additionally store the source position as an extra key, so that two recursive applications
that are structurally identical as `Syntax` but originate from different source positions
still produce distinct `MData`. Otherwise hashconsing or simplification can merge them and
attribute an error to the wrong call site (issue #13444).
-/
def mkRecAppWithSyntax (e : Expr) (stx : Syntax) : Expr :=
  let m := KVMap.empty.insert recAppKey (.ofSyntax stx)
  let m := match stx.getPos? with
    | some p => m.insert recAppPosKey (.ofNat p.byteIdx)
    | none   => m
  mkMData m e

/--
Retrieve (if available) the syntax object attached to a recursive application.
-/
def getRecAppSyntax? (e : Expr) : Option Syntax :=
  match e with
  | .mdata d _ =>
    match d.find recAppKey with
    | some (DataValue.ofSyntax stx) => some stx
    | _ => none
  | _                => none

/--
Checks if the `MData` is for a recursive application.
-/
def MData.isRecApp (d : MData) : Bool :=
  d.contains recAppKey

/--
Return `true` if `getRecAppSyntax? e` is a `some`.
-/
def hasRecAppSyntax (e : Expr) : Bool :=
  match e with
  | .mdata d _ => d.isRecApp
  | _ => false

end Lean
```
