# Complete source: GRWTSK.Analysis.MeasureTheory.Inner.Variant0903e49f2bfbe7c59b78e90227fda68b5a73f546315c0f2f759634b722b16641

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4672f3779e53c73391e6a182386717b5b8ce6147` · SHA-256 `755e3313ce69d7d4b722de03e69962f55c748b9a12301b1fa069290fa8b3c75e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableInner.Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableInner.Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Function/SpecialFunctions/Inner.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.InnerProductSpace.Continuous
import Mathlib.MeasureTheory.Constructions.BorelSpace.Complex

/-!
# Measurability of scalar products
-/



namespace GRWTSK.Analysis.MeasureTheory.MeasurableInner.Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c

variable {α : Type*} {𝕜 : Type*} {E : Type*}
variable [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

local notation "⟪" x ", " y "⟫" => inner 𝕜 x y

@[aesop safe 20 apply (rule_sets := [Measurable]), fun_prop]
theorem Measurable.inner {_ : MeasurableSpace α} [MeasurableSpace E] [OpensMeasurableSpace E]
    [SecondCountableTopology E] {f g : α → E} (hf : Measurable f)
    (hg : Measurable g) : Measurable fun t => ⟪f t, g t⟫ :=
  Continuous.measurable2 continuous_inner hf hg

@[measurability, fun_prop]
theorem Measurable.const_inner {_ : MeasurableSpace α} [MeasurableSpace E] [OpensMeasurableSpace E]
    [SecondCountableTopology E] {c : E} {f : α → E} (hf : Measurable f) :
    Measurable fun t => ⟪c, f t⟫ :=
  Measurable.inner measurable_const hf

@[measurability, fun_prop]
theorem Measurable.inner_const {_ : MeasurableSpace α} [MeasurableSpace E] [OpensMeasurableSpace E]
    [SecondCountableTopology E] {c : E} {f : α → E} (hf : Measurable f) :
    Measurable fun t => ⟪f t, c⟫ :=
  Measurable.inner hf measurable_const

@[aesop safe 20 apply (rule_sets := [Measurable]), fun_prop]
theorem AEMeasurable.inner {m : MeasurableSpace α} [MeasurableSpace E] [OpensMeasurableSpace E]
    [SecondCountableTopology E] {μ : MeasureTheory.Measure α} {f g : α → E}
    (hf : AEMeasurable f μ) (hg : AEMeasurable g μ) : AEMeasurable (fun x => ⟪f x, g x⟫) μ := by
  refine ⟨fun x => ⟪hf.mk f x, hg.mk g x⟫, hf.measurable_mk.inner hg.measurable_mk, ?_⟩
  refine hf.ae_eq_mk.mp (hg.ae_eq_mk.mono fun x hxg hxf => ?_)
  dsimp only
  congr

@[measurability, fun_prop]
theorem AEMeasurable.const_inner {m : MeasurableSpace α} [MeasurableSpace E]
    [OpensMeasurableSpace E] [SecondCountableTopology E]
    {μ : MeasureTheory.Measure α} {f : α → E} {c : E} (hf : AEMeasurable f μ) :
    AEMeasurable (fun x => ⟪c, f x⟫) μ :=
  AEMeasurable.inner aemeasurable_const hf

@[measurability, fun_prop]
theorem AEMeasurable.inner_const {m : MeasurableSpace α} [MeasurableSpace E]
    [OpensMeasurableSpace E] [SecondCountableTopology E]
    {μ : MeasureTheory.Measure α} {f : α → E} {c : E} (hf : AEMeasurable f μ) :
    AEMeasurable (fun x => ⟪f x, c⟫) μ :=
  AEMeasurable.inner hf aemeasurable_const
```
