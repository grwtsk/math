# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variant5365798320459910ab6146f326cb51d0a03b54a86b92e1be0310eaf6cd218f54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `020e8bfeb2a2d52fdf16095ce9561abd520c7e66` · SHA-256 `0a6cd42300f5dcb841ba78cc0ac807e4c1c76d28bcfb0cb115afc6ff2df437e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.VectorIterFromIdx.Variante69ce09e8a89ae2fd0bfd173989784a2c0941503d13bc47d75b4dcfda22920ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e69ce09e8a89ae2fd0bfd173989784a2c0941503d13bc47d75b4dcfda22920ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.VectorIterFromIdx.Variante69ce09e8a89ae2fd0bfd173989784a2c0941503d13bc47d75b4dcfda22920ba","mathematical_subject":"Computation.DataStructures","original_sha256":"e69ce09e8a89ae2fd0bfd173989784a2c0941503d13bc47d75b4dcfda22920ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Producers/Vector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Vector.Basic
public import Std.Data.Iterators.Producers.Array


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.VectorIterFromIdx.Variante69ce09e8a89ae2fd0bfd173989784a2c0941503d13bc47d75b4dcfda22920ba

set_option doc.verso true

/-!
# Vector iterator

This module provides an iterator for vectors that is accessible via
{name (scope := "Std.Data.Iterators.Producers.Vector")}`Vector.iter`.
-/

@[expose] public section

open Std Std.Iterators

/--
Returns a finite iterator for the given vector starting at the given index.
The iterator yields the elements of the vector in order and then terminates.

The monadic version of this iterator is
{name (scope := "Std.Data.Iterators.Producers.Monadic.Vector")}`Vector.iterFromIdxM`.

**Termination properties:**

* {name}`Finite` instance: always
* {name}`Productive` instance: always
-/
@[always_inline, inline]
def Vector.iterFromIdx {α : Type w} (xs : Vector α n) (pos : Nat) :=
  (xs.toArray.iterFromIdx pos : Iter α)

/--
Returns a finite iterator for the given vector.
The iterator yields the elements of the vector in order and then terminates.

The monadic version of this iterator is
{name (scope := "Std.Data.Iterators.Producers.Monadic.Vector")}`Vector.iterM`.

**Termination properties:**

* {name}`Finite` instance: always
* {name}`Productive` instance: always
-/
@[always_inline, inline]
def Vector.iter {α : Type w} (xs : Vector α n) :=
  (xs.toArray.iter : Iter α)
```
