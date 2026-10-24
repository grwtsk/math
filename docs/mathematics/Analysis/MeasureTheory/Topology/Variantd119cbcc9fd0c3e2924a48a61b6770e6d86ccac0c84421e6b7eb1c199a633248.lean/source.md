# Complete source: GRWTSK.Analysis.MeasureTheory.Topology.Variantd119cbcc9fd0c3e2924a48a61b6770e6d86ccac0c84421e6b7eb1c199a633248

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `009b7183f69e458e3c0d2493cd028a23e9708eae` · SHA-256 `d119cbcc9fd0c3e2924a48a61b6770e6d86ccac0c84421e6b7eb1c199a633248`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Stefan Kebekus. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stefan Kebekus
-/
import Mathlib.MeasureTheory.Measure.Typeclasses.NoAtoms
import Mathlib.Topology.DiscreteSubset

/-!
# Theorems combining measure theory and topology

This file gathers theorems that combine measure theory and topology, and cannot easily be added to
the existing files without introducing massive dependencies between the subjects.
-/
open Filter MeasureTheory

/-- Under reasonable assumptions, sets that are codiscrete within `U` are contained in the “almost
everywhere” filter of co-null sets. -/
theorem ae_restrict_le_codiscreteWithin
    {α : Type*} [MeasurableSpace α] [TopologicalSpace α] [SecondCountableTopology α]
    {μ : Measure α} [NoAtoms μ] {U : Set α} (hU : MeasurableSet U) :
    ae (μ.restrict U) ≤ codiscreteWithin U := by
  intro s hs
  have := discreteTopology_of_codiscreteWithin hs
  rw [mem_ae_iff, Measure.restrict_apply' hU]
  apply Set.Countable.measure_zero (TopologicalSpace.separableSpace_iff_countable.1 inferInstance)
```
