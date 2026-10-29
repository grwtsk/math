-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RccSliceable.Variant856e913a51635aa2e905e59c673b384b9c61d9033007cb9e60baebbd9b960a2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"856e913a51635aa2e905e59c673b384b9c61d9033007cb9e60baebbd9b960a2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RccSliceable.Variant856e913a51635aa2e905e59c673b384b9c61d9033007cb9e60baebbd9b960a2d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"856e913a51635aa2e905e59c673b384b9c61d9033007cb9e60baebbd9b960a2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Slice/Notation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Range.Polymorphic.PRange


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RccSliceable.Variant856e913a51635aa2e905e59c673b384b9c61d9033007cb9e60baebbd9b960a2d

set_option doc.verso true
set_option linter.missingDocs true

public section

/-!
# Slice notation

This module provides the means to obtain a slice from a collection and a range of indices via
slice notation.
-/

open Std PRange

namespace Std

/--
This typeclass indicates how to obtain slices of elements of {lit}`α` over ranges in the index type
{lit}`β`, the ranges being closed.

The type of the resulting slices is {lit}`γ`.
-/
class Rcc.Sliceable (α : Type u) (β : outParam (Type v)) (γ : outParam (Type w)) where
  /--
  Slices {name}`carrier` from {lean}`range.lower` to {lean}`range.upper`, both inclusive.
  -/
  mkSlice (carrier : α) (range : Rcc β) : γ

/--
This typeclass indicates how to obtain slices of elements of {lit}`α` over ranges in the index type
{lit}`β`, the ranges being left-closed right-open.

The type of the resulting slices is {lit}`γ`.
-/
class Rco.Sliceable (α : Type u) (β : outParam (Type v)) (γ : outParam (Type w)) where
  /--
  Slices {name}`carrier` from {lean}`range.lower` (inclusive) to {lean}`range.upper` (exclusive).
  -/
  mkSlice (carrier : α) (range : Rco β) : γ

/--
This typeclass indicates how to obtain slices of elements of {lit}`α` over ranges in the index type
{lit}`β`, the ranges being left-closed right-unbounded.

The type of the resulting slices is {lit}`γ`.
-/
class Rci.Sliceable (α : Type u) (β : outParam (Type v)) (γ : outParam (Type w)) where
  /--
  Slices {name}`carrier` from {lean}`range.lower` (inclusive).
  -/
  mkSlice (carrier : α) (range : Rci β) : γ

/--
This typeclass indicates how to obtain slices of elements of {lit}`α` over ranges in the index type
{lit}`β`, the ranges being left-open right-closed.

The type of the resulting slices is {lit}`γ`.
-/
class Roc.Sliceable (α : Type u) (β : outParam (Type v)) (γ : outParam (Type w)) where
  /--
  Slices {name}`carrier` from {lean}`range.lower` (exclusive) to {lean}`range.upper` (inclusive).
  -/
  mkSlice (carrier : α) (range : Roc β) : γ

/--
This typeclass indicates how to obtain slices of elements of {lit}`α` over ranges in the index type
{lit}`β`, the ranges being open.

The type of the resulting slices is {lit}`γ`.
-/
class Roo.Sliceable (α : Type u) (β : outParam (Type v)) (γ : outParam (Type w)) where
  /--
  Slices {name}`carrier` from {lean}`range.lower` to {lean}`range.upper`, both exclusive.
  -/
  mkSlice (carrier : α) (range : Roo β) : γ

/--
This typeclass indicates how to obtain slices of elements of {lit}`α` over ranges in the index type
{lit}`β`, the ranges being left-open right-unbounded.

The type of the resulting slices is {lit}`γ`.
-/
class Roi.Sliceable (α : Type u) (β : outParam (Type v)) (γ : outParam (Type w)) where
  /--
  Slices {name}`carrier` from {lean}`range.lower` (exclusive).
  -/
  mkSlice (carrier : α) (range : Roi β) : γ

/--
This typeclass indicates how to obtain slices of elements of {lit}`α` over ranges in the index type
{lit}`β`, the ranges being left-unbounded right-closed.

The type of the resulting slices is {lit}`γ`.
-/
class Ric.Sliceable (α : Type u) (β : outParam (Type v)) (γ : outParam (Type w)) where
  /--
  Slices {name}`carrier` up to {lean}`range.upper` (inclusive).
  -/
  mkSlice (carrier : α) (range : Ric β) : γ

/--
This typeclass indicates how to obtain slices of elements of {lit}`α` over ranges in the index type
{lit}`β`, the ranges being left-unbounded right-open.

The type of the resulting slices is {lit}`γ`.
-/
class Rio.Sliceable (α : Type u) (β : outParam (Type v)) (γ : outParam (Type w)) where
  /--
  Slices {name}`carrier` up to {lean}`range.upper` (exclusive).
  -/
  mkSlice (carrier : α) (range : Rio β) : γ

/--
This typeclass indicates how to obtain slices of elements of {lit}`α` over the full range in the
index type {lit}`β`.

The type of the resulting slices is {lit}`γ`.
-/
class Rii.Sliceable (α : Type u) (β : outParam (Type v)) (γ : outParam (Type w)) where
  /--
  Slices {name}`carrier` with no bounds.
  -/
  mkSlice (carrier : α) (range : Rii β) : γ

macro_rules
  | `($c[*...*]) => `(Rii.Sliceable.mkSlice $c *...*)
  | `($c[$a...*]) => `(Rci.Sliceable.mkSlice $c $a...*)
  | `($c[$a<...*]) => `(Roi.Sliceable.mkSlice $c $a<...*)
  | `($c[*...<$b]) => `(Rio.Sliceable.mkSlice $c *...<$b)
  | `($c[$a...<$b]) => `(Rco.Sliceable.mkSlice $c $a...<$b)
  | `($c[$a<...<$b]) => `(Roo.Sliceable.mkSlice $c $a<...<$b)
  | `($c[*...$b]) => `(Rio.Sliceable.mkSlice $c *...<$b)
  | `($c[$a...$b]) => `(Rco.Sliceable.mkSlice $c $a...<$b)
  | `($c[$a<...$b]) => `(Roo.Sliceable.mkSlice $c $a<...<$b)
  | `($c[*...=$b]) => `(Ric.Sliceable.mkSlice $c *...=$b)
  | `($c[$a...=$b]) => `(Rcc.Sliceable.mkSlice $c $a...=$b)
  | `($c[$a<...=$b]) => `(Roc.Sliceable.mkSlice $c $a<...=$b)

end Std
