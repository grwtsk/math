# Complete source: GRWTSK.Analysis.MeasureTheory.Topology.Variante1883a0feeb21a12a1c0d02f5356ce20219469e8469c73fa8aaef6abacf46758

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6d284297c878d48586c47554d716e47dd2f27b6` · SHA-256 `e1a4953e25f84e3f170ef5f65891952a0e93bf1949099481eade5341a26b9c55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.AeRestrictLeCodiscreteWithin.Variantd119cbcc9fd0c3e2924a48a61b6770e6d86ccac0c84421e6b7eb1c199a633248","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d119cbcc9fd0c3e2924a48a61b6770e6d86ccac0c84421e6b7eb1c199a633248","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.AeRestrictLeCodiscreteWithin.Variantd119cbcc9fd0c3e2924a48a61b6770e6d86ccac0c84421e6b7eb1c199a633248","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"d119cbcc9fd0c3e2924a48a61b6770e6d86ccac0c84421e6b7eb1c199a633248","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Topology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

namespace GRWTSK.Analysis.MeasureTheory.AeRestrictLeCodiscreteWithin.Variantd119cbcc9fd0c3e2924a48a61b6770e6d86ccac0c84421e6b7eb1c199a633248

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
