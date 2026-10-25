# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Array.Variant2cbde8c64c111830e32dcd1bc162f3fd97b8bbf1e512cb4c6dff6dc117240cc4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1582ef604de094989a115e025d427d36f2de502a` · SHA-256 `605afd67e801a90108a5c7fff4f875e5279f21016366b13dd16062fa0066ff73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterPairsM.Variantf86cab0f9ac0d09c819a185f0f33ecdf99fde500596cf9b64655b36b85932e40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f86cab0f9ac0d09c819a185f0f33ecdf99fde500596cf9b64655b36b85932e40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FilterPairsM.Variantf86cab0f9ac0d09c819a185f0f33ecdf99fde500596cf9b64655b36b85932e40","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f86cab0f9ac0d09c819a185f0f33ecdf99fde500596cf9b64655b36b85932e40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Array.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

prelude
import Init.Data.Stream
public import Init.Data.Range.Polymorphic.Nat
public import Init.Data.Range.Polymorphic.Iterators


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterPairsM.Variantf86cab0f9ac0d09c819a185f0f33ecdf99fde500596cf9b64655b36b85932e40

namespace Lean.Array

/-!
This module contains utility functions involving Arrays that are useful in a few places
of the lean code base, but too specialized to live in `Init.Data.Array`, which arguably
is part of the public, user-facing standard library.
-/

/--
Compares each element of an array with all later elements using `f`. For each comparison, `f`
determines whether to keep both of its arguments. If `f` returns `false` for an argument, that
argument is removed from the array and does not participate in subsequent comparisons. Those
elements that were not discarded are returned.

This can be used to remove elements from an array where a “better” element, in some partial order,
exists in the array.

Example:
```lean example
#eval #["a", "r", "red", "x", "r"].filterPairsM fun x y =>
  pure (!(x.isPrefixOf y), true)
```
```output
#["a", "red", "x", "r"]
```
-/
public def filterPairsM {m} [Monad m] {α} (a : Array α) (f : α → α → m (Bool × Bool)) :
    m (Array α) := do
  let mut removed := Array.replicate a.size false
  let mut numRemoved := 0
  for h1 : i in *...a.size do for h2 : j in (i+1)...a.size do
    unless removed[i]! || removed[j]! do
      let xi := a[i]
      let xj := a[j]
      let (keepi, keepj) ← f xi xj
      unless keepi do
        numRemoved := numRemoved + 1
        removed := removed.set! i true
      unless keepj do
        numRemoved := numRemoved + 1
        removed := removed.set! j true
  let mut a' := Array.mkEmpty numRemoved
  for h : i in *...a.size do
    unless removed[i]! do
      a' := a'.push a[i]
  return a'

/--
`maskArray mask xs` keeps those `x` where the corresponding entry in `mask` is `true`
-/
public def mask {α} (mask : Array Bool) (xs : Array α) : Array α := Id.run do
  let mut ys := #[]
  for b in mask, x in xs do
    if b then ys := ys.push x
  return ys

/--
Inverse of `Array.mask`:
```
Array.zipMasked mask (Array.mask (mask.map not) xs) (Array.mask mask xs) == xs
```
-/
public def zipMasked {α} (mask : Array Bool) (xs ys : Array α) : Array α := Id.run do
  let mut i := 0
  let mut j := 0
  let mut zs := #[]
  for b in mask do
    if b then
      if h : j < ys.size then
        zs := zs.push ys[j]
        j := j + 1
      else
        panic! "zipMaskedArray: not enough elements in ys"
    else
      if h : i < xs.size then
        zs := zs.push xs[i]
        i := i + 1
      else
        panic! "zipMaskedArray: not enough elements in xs"
  return zs

end Lean.Array
````
