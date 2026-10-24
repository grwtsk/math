# Complete source: GRWTSK.Analysis.MeasureTheory.Lattice.Variant0d661ff97e938639afaec52006189c9cfd1acedb2f114339952d5d063e75e4c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98ca17dd7e4566c0f62585e31e884dd7e01cb650` · SHA-256 `e5bcf69d3c9a71e0d73fc7d97234cfa0ebd098a62e4e71e77ca33e17943329ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableOneLePart.Variantc0e9180fe42d6db79d2358e94d496343f17cee19918736c6d65613189e184afd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0e9180fe42d6db79d2358e94d496343f17cee19918736c6d65613189e184afd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableOneLePart.Variantc0e9180fe42d6db79d2358e94d496343f17cee19918736c6d65613189e184afd","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"c0e9180fe42d6db79d2358e94d496343f17cee19918736c6d65613189e184afd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Order/Group/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot
-/
module

public import Mathlib.MeasureTheory.Group.Arithmetic
public import Mathlib.MeasureTheory.Order.Lattice

/-!
# Measurability results on groups with a lattice structure.

## Tags

measurable function, group, lattice operation
-/


namespace GRWTSK.Analysis.MeasureTheory.MeasurableOneLePart.Variantc0e9180fe42d6db79d2358e94d496343f17cee19918736c6d65613189e184afd

public section

variable {α β : Type*} [Lattice α] [MeasurableSpace α] [MeasurableSpace β] {f : β → α}

section DivInvMonoid

variable [DivInvMonoid α] [MeasurableSup α]

@[to_additive]
theorem measurable_oneLePart : Measurable (oneLePart : α → α) :=
  measurable_sup_const _

@[to_fun (attr := to_additive (attr := fun_prop))]
protected theorem Measurable.oneLePart (hf : Measurable f) :
    Measurable f⁺ᵐ := measurable_oneLePart.comp hf

@[to_fun (attr := to_additive (attr := fun_prop))]
protected theorem AEMeasurable.oneLePart {μ : MeasureTheory.Measure β} (hf : AEMeasurable f μ) :
    AEMeasurable f⁺ᵐ μ := hf.sup_const 1

variable [MeasurableInv α]

@[to_additive]
theorem measurable_leOnePart : Measurable (leOnePart : α → α) :=
  (measurable_sup_const _).comp measurable_inv

@[to_fun (attr := to_additive (attr := fun_prop))]
protected theorem Measurable.leOnePart (hf : Measurable f) :
    Measurable f⁻ᵐ := measurable_leOnePart.comp hf

@[to_fun (attr := to_additive (attr := fun_prop))]
protected theorem AEMeasurable.leOnePart {μ : MeasureTheory.Measure β} (hf : AEMeasurable f μ) :
    AEMeasurable f⁻ᵐ μ := hf.inv.sup_const 1

end DivInvMonoid

section Group

variable [Group α] [MeasurableInv α] [MeasurableSup₂ α]

@[to_additive]
theorem measurable_mabs : Measurable (mabs : α → α) :=
  measurable_id'.sup measurable_inv

@[to_additive (attr := fun_prop)]
protected theorem Measurable.mabs (hf : Measurable f) : Measurable fun x ↦ mabs (f x) :=
  measurable_mabs.comp hf

@[to_additive (attr := fun_prop)]
protected theorem AEMeasurable.mabs {μ : MeasureTheory.Measure β} (hf : AEMeasurable f μ) :
    AEMeasurable (fun x ↦ mabs (f x)) μ :=
  measurable_mabs.comp_aemeasurable hf

end Group
```
