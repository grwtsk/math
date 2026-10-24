# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Basic.Varianta1a5c4a12d9a7c751ce419b736ae358d19ee0208b5f1d342ac041bc0e3dda52e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fc13b21184cb83fedcbb360fef4ba01fd2acbac` · SHA-256 `e22b1d02b587e6f96b1d20379829bb5f009b71f3b60cc9f2512fa9c7ae0edf24`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedOrderedAddGroup.Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.NormedOrderedAddGroup.Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Order/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker, Yaël Dillies
-/
import Mathlib.Analysis.Normed.Group.Basic

/-!
# Ordered normed spaces

In this file, we define classes for fields and groups that are both normed and ordered.
These are mostly useful to avoid diamonds during type class inference.
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedOrderedAddGroup.Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737

open Filter Set

open Topology

variable {α : Type*}

set_option linter.deprecated false in
/-- A `NormedOrderedAddGroup` is an additive group that is both a `NormedAddCommGroup` and an
`OrderedAddCommGroup`. This class is necessary to avoid diamonds caused by both classes
carrying their own group structure. -/
@[deprecated "Use `[NormedAddCommGroup α] [PartialOrder α] [IsOrderedAddMonoid α]` instead."
  (since := "2025-04-10")]
structure NormedOrderedAddGroup (α : Type*) extends
    OrderedAddCommGroup α, Norm α, MetricSpace α where
  /-- The distance function is induced by the norm. -/
  dist_eq : ∀ x y, dist x y = ‖x - y‖ := by aesop

set_option linter.deprecated false in
set_option linter.existingAttributeWarning false in
/-- A `NormedOrderedGroup` is a group that is both a `NormedCommGroup` and an
`OrderedCommGroup`. This class is necessary to avoid diamonds caused by both classes
carrying their own group structure. -/
@[to_additive,
  deprecated "Use `[NormedCommGroup α] [PartialOrder α] [IsOrderedMonoid α]` instead."
  (since := "2025-04-10")]
structure NormedOrderedGroup (α : Type*) extends OrderedCommGroup α, Norm α, MetricSpace α where
  /-- The distance function is induced by the norm. -/
  dist_eq : ∀ x y, dist x y = ‖x / y‖ := by aesop

set_option linter.deprecated false in
set_option linter.existingAttributeWarning false in
/-- A `NormedLinearOrderedAddGroup` is an additive group that is both a `NormedAddCommGroup`
and a `LinearOrderedAddCommGroup`. This class is necessary to avoid diamonds caused by both
classes carrying their own group structure. -/
@[deprecated "Use `[NormedAddCommGroup α] [LinearOrder α] [IsOrderedAddMonoid α]` instead."
  (since := "2025-04-10")]
structure NormedLinearOrderedAddGroup (α : Type*) extends LinearOrderedAddCommGroup α, Norm α,
  MetricSpace α where
  /-- The distance function is induced by the norm. -/
  dist_eq : ∀ x y, dist x y = ‖x - y‖ := by aesop

set_option linter.deprecated false in
set_option linter.existingAttributeWarning false in
/-- A `NormedLinearOrderedGroup` is a group that is both a `NormedCommGroup` and a
`LinearOrderedCommGroup`. This class is necessary to avoid diamonds caused by both classes
carrying their own group structure. -/
@[to_additive,
  deprecated "Use `[NormedCommGroup α] [LinearOrder α] [IsOrderedMonoid α]` instead."
  (since := "2025-04-10")]
structure NormedLinearOrderedGroup (α : Type*) extends LinearOrderedCommGroup α, Norm α,
  MetricSpace α where
  /-- The distance function is induced by the norm. -/
  dist_eq : ∀ x y, dist x y = ‖x / y‖ := by aesop

set_option linter.deprecated false in
set_option linter.existingAttributeWarning false in
/-- A `NormedLinearOrderedField` is a field that is both a `NormedField` and a
    `LinearOrderedField`. This class is necessary to avoid diamonds. -/
@[deprecated "Use `[NormedField α] [LinearOrder α] [IsStrictOrderedRing α]` instead."
  (since := "2025-04-10")]
structure NormedLinearOrderedField (α : Type*) extends LinearOrderedField α, Norm α,
  MetricSpace α where
  /-- The distance function is induced by the norm. -/
  dist_eq : ∀ x y, dist x y = ‖x - y‖ := by aesop
  /-- The norm is multiplicative. -/
  norm_mul : ∀ x y : α, ‖x * y‖ = ‖x‖ * ‖y‖
```
