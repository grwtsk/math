-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootVectorIterFromIdxM.Variantce5132ce85fdb42b2dfabe0d84278a6ed35233d7ebad58730704412d2124c323","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce5132ce85fdb42b2dfabe0d84278a6ed35233d7ebad58730704412d2124c323","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RootVectorIterFromIdxM.Variantce5132ce85fdb42b2dfabe0d84278a6ed35233d7ebad58730704412d2124c323","mathematical_subject":"Computation.DataStructures","original_sha256":"ce5132ce85fdb42b2dfabe0d84278a6ed35233d7ebad58730704412d2124c323","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Producers/Monadic/Vector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Vector.Basic
public import Std.Data.Iterators.Producers.Monadic.Array


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootVectorIterFromIdxM.Variantce5132ce85fdb42b2dfabe0d84278a6ed35233d7ebad58730704412d2124c323

set_option doc.verso true

/-!
# Vector iterator

This module provides an iterator for vectors that is accessible via
{name (scope := "Std.Data.Iterators.Producers.Monadic.Vector")}`Vector.iterM`.
-/

@[expose] public section

open Std Std.Iterators

/--
Returns a finite monadic iterator for the given vector starting at the given index.
The iterator yields the elements of the vector in order and then terminates.

The pure version of this iterator is
{name (scope := "Std.Data.Iterators.Producers.Vector")}`Vector.iterFromIdx`.

**Termination properties:**

* {name}`Finite` instance: always
* {name}`Productive` instance: always
-/
@[always_inline, inline, match_pattern]
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootVectorIterFromIdxM.Variantce5132ce85fdb42b2dfabe0d84278a6ed35233d7ebad58730704412d2124c323.Vector.iterFromIdxM (xs : Vector α n) (m : Type w → Type w')
    (pos : Nat) [Pure m] :=
  (xs.toArray.iterFromIdxM m pos : IterM m α)

/--
Returns a finite monadic iterator for the given vector.
The iterator yields the elements of the vector in order and then terminates. There are no side
effects.

The pure version of this iterator is
{name (scope := "Std.Data.Iterators.Producers.Vector")}`Vector.iter`.

**Termination properties:**

* {name}`Finite` instance: always
* {name}`Productive` instance: always
-/
@[inline]
def Vector.iterM (xs : Vector α n) (m : _) [Pure m] :=
  (xs.toArray.iterM m : IterM m α)
