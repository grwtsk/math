# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Varianted4f13f393238d9f3fb6d0659c3434c77acd439c5e7821b0b0c18c378ccb755e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6296db4cdb09551942836a1f14b70c124e383b41` · SHA-256 `abc6a5752771d41281408d315b121cd148d917b399f967dfa72df96128b14ad7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subarray.Variant8f8b873b92e60be4cd99ff4e1844d84f9c0f99cecf8dc2749a64672c6f259d2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f8b873b92e60be4cd99ff4e1844d84f9c0f99cecf8dc2749a64672c6f259d2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Subarray.Variant8f8b873b92e60be4cd99ff4e1844d84f9c0f99cecf8dc2749a64672c6f259d2e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8f8b873b92e60be4cd99ff4e1844d84f9c0f99cecf8dc2749a64672c6f259d2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Slice/Array/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Array.Subarray
public import Init.Data.Slice.Notation
public import Init.Data.Range.Polymorphic.Nat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subarray.Variant8f8b873b92e60be4cd99ff4e1844d84f9c0f99cecf8dc2749a64672c6f259d2e

public section

/-!
This module provides slice notation for array slices (a.k.a. `Subarray`) and implements an iterator
for those slices.
-/

open Std Slice PRange

variable {α : Type u}

instance : Rcc.Sliceable (Array α) Nat (Subarray α) where
  mkSlice xs range :=
    xs.toSubarray range.lower (range.upper + 1)

instance : Rco.Sliceable (Array α) Nat (Subarray α) where
  mkSlice xs range :=
    xs.toSubarray range.lower range.upper

instance : Rci.Sliceable (Array α) Nat (Subarray α) where
  mkSlice xs range :=
    let halfOpenRange := Rci.HasRcoIntersection.intersection range 0...<xs.size
    xs.toSubarray halfOpenRange.lower halfOpenRange.upper

instance : Roc.Sliceable (Array α) Nat (Subarray α) where
  mkSlice xs range :=
    xs.toSubarray (range.lower + 1) (range.upper + 1)

instance : Roo.Sliceable (Array α) Nat (Subarray α) where
  mkSlice xs range :=
    xs.toSubarray (range.lower + 1) range.upper

instance : Roi.Sliceable (Array α) Nat (Subarray α) where
  mkSlice xs range :=
    let halfOpenRange := Roi.HasRcoIntersection.intersection range 0...<xs.size
    xs.toSubarray halfOpenRange.lower halfOpenRange.upper

instance : Ric.Sliceable (Array α) Nat (Subarray α) where
  mkSlice xs range :=
    xs.toSubarray 0 (range.upper + 1)

instance : Rio.Sliceable (Array α) Nat (Subarray α) where
  mkSlice xs range :=
    xs.toSubarray 0 range.upper

instance : Rii.Sliceable (Array α) Nat (Subarray α) where
  mkSlice xs _ :=
    xs.toSubarray 0 xs.size

instance : Rcc.Sliceable (Subarray α) Nat (Subarray α) where
  mkSlice xs range :=
    let halfOpenRange := Rcc.HasRcoIntersection.intersection range 0...<xs.size
    xs.array[(halfOpenRange.lower + xs.start)...(halfOpenRange.upper + xs.start)]

instance : Rco.Sliceable (Subarray α) Nat (Subarray α) where
  mkSlice xs range :=
    let halfOpenRange := Rco.HasRcoIntersection.intersection range 0...<xs.size
    xs.array[(halfOpenRange.lower + xs.start)...(halfOpenRange.upper + xs.start)]

instance : Rci.Sliceable (Subarray α) Nat (Subarray α) where
  mkSlice xs range :=
    let halfOpenRange := Rci.HasRcoIntersection.intersection range 0...<xs.size
    xs.array[(halfOpenRange.lower + xs.start)...(halfOpenRange.upper + xs.start)]

instance : Roc.Sliceable (Subarray α) Nat (Subarray α) where
  mkSlice xs range :=
    let halfOpenRange := Roc.HasRcoIntersection.intersection range 0...<xs.size
    xs.array[(halfOpenRange.lower + xs.start)...(halfOpenRange.upper + xs.start)]

instance : Roo.Sliceable (Subarray α) Nat (Subarray α) where
  mkSlice xs range :=
    let halfOpenRange := Roo.HasRcoIntersection.intersection range 0...<xs.size
    xs.array[(halfOpenRange.lower + xs.start)...(halfOpenRange.upper + xs.start)]

instance : Roi.Sliceable (Subarray α) Nat (Subarray α) where
  mkSlice xs range :=
    let halfOpenRange := Roi.HasRcoIntersection.intersection range 0...<xs.size
    xs.array[(halfOpenRange.lower + xs.start)...(halfOpenRange.upper + xs.start)]

instance : Ric.Sliceable (Subarray α) Nat (Subarray α) where
  mkSlice xs range :=
    let halfOpenRange := Ric.HasRcoIntersection.intersection range 0...<xs.size
    xs.array[(halfOpenRange.lower + xs.start)...(halfOpenRange.upper + xs.start)]

instance : Rio.Sliceable (Subarray α) Nat (Subarray α) where
  mkSlice xs range :=
    let halfOpenRange := Rio.HasRcoIntersection.intersection range 0...<xs.size
    xs.array[(halfOpenRange.lower + xs.start)...(halfOpenRange.upper + xs.start)]

instance : Rii.Sliceable (Subarray α) Nat (Subarray α) where
  mkSlice xs _ :=
    xs
```
