# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateLevelParams.Varianta18331b9ac993ffb11dac917c03df342df962de31321340e07749c606f9d1aa4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `642468daf39c6319f6d2c4390df56f5b49c4c794` · SHA-256 `a18331b9ac993ffb11dac917c03df342df962de31321340e07749c606f9d1aa4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.ReplaceExpr

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
