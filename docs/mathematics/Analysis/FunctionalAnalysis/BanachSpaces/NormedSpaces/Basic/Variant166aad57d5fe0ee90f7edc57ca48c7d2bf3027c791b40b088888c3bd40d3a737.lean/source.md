# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Basic.Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0490c6f9fbdbffb626a9e2b8622ffbc1c9e0251e` · SHA-256 `166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
