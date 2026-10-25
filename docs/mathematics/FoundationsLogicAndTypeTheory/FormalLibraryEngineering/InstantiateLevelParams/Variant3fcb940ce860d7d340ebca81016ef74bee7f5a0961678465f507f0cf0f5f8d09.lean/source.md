# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateLevelParams.Variant3fcb940ce860d7d340ebca81016ef74bee7f5a0961678465f507f0cf0f5f8d09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e05b2a876f89eac3e0aa983127ccacec64fd9c2` · SHA-256 `6e8c9f4d25cbaf0c1776fc1bd1cb453d8d75808c314f565a3fbda6d9d1632897`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetParamSubst.Varianta18331b9ac993ffb11dac917c03df342df962de31321340e07749c606f9d1aa4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a18331b9ac993ffb11dac917c03df342df962de31321340e07749c606f9d1aa4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetParamSubst.Varianta18331b9ac993ffb11dac917c03df342df962de31321340e07749c606f9d1aa4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a18331b9ac993ffb11dac917c03df342df962de31321340e07749c606f9d1aa4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/InstantiateLevelParams.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.ReplaceExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetParamSubst.Varianta18331b9ac993ffb11dac917c03df342df962de31321340e07749c606f9d1aa4

public section

namespace Lean.Expr

/--
Instantiate level parameters
-/
@[specialize] def instantiateLevelParamsCore (s : Name → Option Level) (e : Expr) : Expr :=
  e.replace replaceFn
where
  @[specialize] replaceFn (e : Expr) : Option Expr :=
    if !e.hasLevelParam then e else match e with
    | const _ us => e.updateConst! (us.map fun u => u.substParams s)
    | sort u => e.updateSort! (u.substParams s)
    | _ => none

private def getParamSubst : List Name → List Level → Name → Option Level
  | p::ps, u::us, p' => if p == p' then some u else getParamSubst ps us p'
  | _,     _,     _  => none

/--
Instantiate universe level parameters names `paramNames` with `lvls` in `e`.
If the two lists have different length, the smallest one is used.
-/
def instantiateLevelParams (e : Expr) (paramNames : List Name) (lvls : List Level) : Expr :=
  if paramNames.isEmpty || lvls.isEmpty then e else
    instantiateLevelParamsCore (getParamSubst paramNames lvls) e

/--
Instantiate universe level parameters names `paramNames` with `lvls` in `e`.
If the two lists have different length, the smallest one is used.
(Does not preserve expression sharing.)
-/
def instantiateLevelParamsNoCache (e : Expr) (paramNames : List Name) (lvls : List Level) : Expr :=
  if paramNames.isEmpty || lvls.isEmpty then e else
    e.replaceNoCache (instantiateLevelParamsCore.replaceFn (getParamSubst paramNames lvls))

private partial def getParamSubstArray (ps : Array Name) (us : Array Level) (p' : Name) (i : Nat) : Option Level :=
  if h : i < ps.size then
    let p := ps[i]
    if h : i < us.size then
      let u := us[i]
      if p == p' then some u else getParamSubstArray ps us p' (i+1)
    else none
  else none

/--
Instantiate universe level parameters names `paramNames` with `lvls` in `e`.
If the two arrays have different length, the smallest one is used.
-/
def instantiateLevelParamsArray (e : Expr) (paramNames : Array Name) (lvls : Array Level) : Expr :=
  if paramNames.isEmpty || lvls.isEmpty then e else
    e.instantiateLevelParamsCore fun p =>
      getParamSubstArray paramNames lvls p 0
```
