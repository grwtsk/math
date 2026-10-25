# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variante73a2c5c4e60ca0f4094308b51a3b8fd26f7b6c4c2f3b633ae0aeb7cf8dc5ce4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a5f6f193d3d12faf87bc1a1f04bf86c95b4d76b` · SHA-256 `7759713a9dd648eb47a15c974ca9858232f377ea87fd06a2d7093a1c4a70205b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecArgHasLooseBVarsAt.Variant5cd14d22bdf0975fbd9ae5de9a71fe365b6d8af3dd2eeaf027b4cf2f068b07ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cd14d22bdf0975fbd9ae5de9a71fe365b6d8af3dd2eeaf027b4cf2f068b07ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RecArgHasLooseBVarsAt.Variant5cd14d22bdf0975fbd9ae5de9a71fe365b6d8af3dd2eeaf027b4cf2f068b07ae","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5cd14d22bdf0975fbd9ae5de9a71fe365b6d8af3dd2eeaf027b4cf2f068b07ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/Structural/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Joachim Breitner
-/
module

prelude
public import Lean.Meta.ForEachExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecArgHasLooseBVarsAt.Variant5cd14d22bdf0975fbd9ae5de9a71fe365b6d8af3dd2eeaf027b4cf2f068b07ae

public section

namespace Lean.Elab.Structural

/--
  Return true iff `e` contains an application `recFnName .. t ..` where the term `t` is
  the argument we are trying to recurse on, and it contains loose bound variables.

  We use this test to decide whether we should process a matcher-application as a regular
  application or not. That is, whether we should push the `below` argument should be affected by the matcher or not.
  If `e` does not contain an application of the form `recFnName .. t ..`, then we know
  the recursion doesn't depend on any pattern variable in this matcher.
-/
def recArgHasLooseBVarsAt (recFnName : Name) (recArgPos : Nat) (e : Expr) : Bool :=
  let app?   := e.find? fun e =>
     e.isAppOf recFnName && e.getAppNumArgs > recArgPos && (e.getArg! recArgPos).hasLooseBVars
  app?.isSome


/--
Lets say we have `n` mutually recursive functions whose recursive arguments are from a group
of `m` mutually inductive data types. This mapping does not have to be one-to-one: for one type
there can be zero, one or more functions. We use the logic in the `FunPacker` modules to combine
the bodies (and motives) of multiple such functions.

Therefore we have to take the `n` functions, group them by their recursive argument's type,
and for each such type, keep track of the order of the functions.

We represent these positions as an `Array (Array Nat)`. We have that

* `positions.size = indInfo.numTypeFormers`
* `positions.flatten` is a permutation of `[0:n]`, so each of the `n` functions has exactly one
  position, and each position refers to one of the `n` functions.
* if `k ∈ positions[i]` then the recursive argument of function `k` is has type `indInfo.all[i]`
  (or corresponding nested inductive type)

-/
abbrev Positions := Array (Array Nat)

/--
The number of indices in the array.
-/
def Positions.numIndices (positions : Positions) : Nat :=
    positions.foldl (fun s poss => s + poss.size) 0

/--
Groups the `xs` by their `f` value, and puts these groups into the order given by `ys`.
-/
def Positions.groupAndSort {α β} [Inhabited α] [DecidableEq β]
    (f : α → β) (xs : Array α) (ys : Array β) : Positions :=
  let positions := ys.map fun y => (Array.range xs.size).filter fun i => f xs[i]! = y
  -- Sanity check: is this really a grouped permutation of all the indices?
  assert! Array.range xs.size == positions.flatten.qsort Nat.blt
  positions

/--
Let `positions.size = ys.size` and `positions.numIndices = xs.size`. Maps `f` over each `y` in `ys`,
also passing in those elements `xs` that belong to that are those elements of `xs` that belong to
`y` according to `positions`.
-/
def Positions.mapMwith {α β m} [Monad m] [Inhabited β] (f : α → Array β → m γ)
    (positions : Positions) (ys : Array α) (xs : Array β) : m (Array γ) := do
  assert! positions.size = ys.size
  assert! positions.numIndices = xs.size
  ys.zipWithM (bs := positions) fun y poss => f y (poss.map (xs[·]!))

end Lean.Elab.Structural

builtin_initialize
  Lean.registerTraceClass `Elab.definition.structural
```
