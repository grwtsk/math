# Complete source: GRWTSK.Analysis.MeasureTheory.Instances.Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45f4a5ba0c0557ea71a71e3f3ee2b8cc189779d1` · SHA-256 `ea4ceed39b03d71505ea143a7df0c51a115d2cb1e55808b22189235102dda572`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableSpace.Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.MeasurableSpace.Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/MeasurableSpace/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.MeasureTheory.MeasurableSpace.Defs
import Mathlib.GroupTheory.GroupAction.IterateAct
import Mathlib.Data.Rat.Init
import Mathlib.Data.ZMod.Defs

/-!
# Measurable-space typeclass instances

This file provides measurable-space instances for a selection of standard countable types,
in each case defining the Σ-algebra to be `⊤` (the discrete measurable-space structure).
-/


namespace GRWTSK.Analysis.MeasureTheory.MeasurableSpace.Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7

instance Empty.instMeasurableSpace : MeasurableSpace Empty := ⊤

instance PUnit.instMeasurableSpace : MeasurableSpace PUnit := ⊤

instance Bool.instMeasurableSpace : MeasurableSpace Bool := ⊤

instance Prop.instMeasurableSpace : MeasurableSpace Prop := ⊤

instance Nat.instMeasurableSpace : MeasurableSpace ℕ := ⊤

instance ENat.instMeasurableSpace : MeasurableSpace ℕ∞ := ⊤

instance Fin.instMeasurableSpace (n : ℕ) : MeasurableSpace (Fin n) := ⊤

instance ZMod.instMeasurableSpace (n : ℕ) : MeasurableSpace (ZMod n) := ⊤

instance Int.instMeasurableSpace : MeasurableSpace ℤ := ⊤

instance Rat.instMeasurableSpace : MeasurableSpace ℚ := ⊤

@[to_additive]
instance IterateMulAct.instMeasurableSpace {α : Type*} {f : α → α} :
    MeasurableSpace (IterateMulAct f) := ⊤

@[to_additive]
instance IterateMulAct.instDiscreteMeasurableSpace {α : Type*} {f : α → α} :
    DiscreteMeasurableSpace (IterateMulAct f) := inferInstance

instance (priority := 100) Subsingleton.measurableSingletonClass
    {α} [MeasurableSpace α] [Subsingleton α] : MeasurableSingletonClass α := by
  refine ⟨fun i => ?_⟩
  convert MeasurableSet.univ
  simp [Set.eq_univ_iff_forall, eq_iff_true_of_subsingleton]

instance Bool.instMeasurableSingletonClass : MeasurableSingletonClass Bool := ⟨fun _ => trivial⟩

instance Prop.instMeasurableSingletonClass : MeasurableSingletonClass Prop := ⟨fun _ => trivial⟩

instance Nat.instMeasurableSingletonClass : MeasurableSingletonClass ℕ := ⟨fun _ => trivial⟩

instance ENat.instDiscreteMeasurableSpace : DiscreteMeasurableSpace ℕ∞ := ⟨fun _ ↦ trivial⟩

instance ENat.instMeasurableSingletonClass : MeasurableSingletonClass ℕ∞ := inferInstance

instance Fin.instMeasurableSingletonClass (n : ℕ) : MeasurableSingletonClass (Fin n) :=
  ⟨fun _ => trivial⟩

instance ZMod.instMeasurableSingletonClass (n : ℕ) : MeasurableSingletonClass (ZMod n) :=
  ⟨fun _ => trivial⟩

instance Int.instMeasurableSingletonClass : MeasurableSingletonClass ℤ := ⟨fun _ => trivial⟩

instance Rat.instMeasurableSingletonClass : MeasurableSingletonClass ℚ := ⟨fun _ => trivial⟩
```
