# Complete source: GRWTSK.Analysis.MeasureTheory.ContinuousLinearMap.Variantdaa9e26fb54ba772a4454e37d098883e6900d731b369568447bbbe6f9ea1d351

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `849b96854337f959297d8d30e4cf5613ce2b2977` · SHA-256 `c27e95c5563d83966c88fffdf026f6fe997c3f34448a98a03c8010af35cf0563`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.Measurable.Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.Measurable.Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Constructions/BorelSpace/ContinuousLinearMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
import Mathlib.Analysis.NormedSpace.OperatorNorm.Bilinear
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic
import Mathlib.Topology.Algebra.Module.FiniteDimension

/-!
# Measurable functions in normed spaces

-/



namespace GRWTSK.Analysis.MeasureTheory.Measurable.Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638

open MeasureTheory

variable {α : Type*} [MeasurableSpace α]

namespace ContinuousLinearMap

variable {R E F : Type*} [Semiring R]
  [SeminormedAddCommGroup E] [Module R E] [MeasurableSpace E] [OpensMeasurableSpace E]
  [SeminormedAddCommGroup F] [Module R F] [MeasurableSpace F] [BorelSpace F]

@[fun_prop, measurability]
protected theorem measurable (L : E →L[R] F) : Measurable L :=
  L.continuous.measurable

@[fun_prop]
theorem measurable_comp (L : E →L[R] F) {φ : α → E} (φ_meas : Measurable φ) :
    Measurable fun a : α => L (φ a) :=
  L.measurable.comp φ_meas

end ContinuousLinearMap

namespace ContinuousLinearMap

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] {F : Type*} [NormedAddCommGroup F]
  [NormedSpace 𝕜 F]

instance instMeasurableSpace : MeasurableSpace (E →L[𝕜] F) :=
  borel _

instance instBorelSpace : BorelSpace (E →L[𝕜] F) :=
  ⟨rfl⟩

@[fun_prop, measurability]
theorem measurable_apply [MeasurableSpace F] [BorelSpace F] (x : E) :
    Measurable fun f : E →L[𝕜] F => f x :=
  (apply 𝕜 F x).continuous.measurable

@[measurability]
theorem measurable_apply' [MeasurableSpace E] [OpensMeasurableSpace E] [MeasurableSpace F]
    [BorelSpace F] : Measurable fun (x : E) (f : E →L[𝕜] F) => f x :=
  measurable_pi_lambda _ fun f => f.measurable

@[measurability]
theorem measurable_coe [MeasurableSpace F] [BorelSpace F] :
    Measurable fun (f : E →L[𝕜] F) (x : E) => f x :=
  measurable_pi_lambda _ measurable_apply

end ContinuousLinearMap

section ContinuousLinearMapNontriviallyNormedField

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] [MeasurableSpace E] [BorelSpace E]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]

@[fun_prop, measurability]
theorem Measurable.apply_continuousLinearMap {φ : α → F →L[𝕜] E} (hφ : Measurable φ) (v : F) :
    Measurable fun a => φ a v :=
  (ContinuousLinearMap.apply 𝕜 E v).measurable.comp hφ

@[measurability]
theorem AEMeasurable.apply_continuousLinearMap {φ : α → F →L[𝕜] E} {μ : Measure α}
    (hφ : AEMeasurable φ μ) (v : F) : AEMeasurable (fun a => φ a v) μ :=
  (ContinuousLinearMap.apply 𝕜 E v).measurable.comp_aemeasurable hφ

end ContinuousLinearMapNontriviallyNormedField

section NormedSpace

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] [CompleteSpace 𝕜] [MeasurableSpace 𝕜]
variable [BorelSpace 𝕜] {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] [MeasurableSpace E]
  [BorelSpace E]

theorem measurable_smul_const {f : α → 𝕜} {c : E} (hc : c ≠ 0) :
    (Measurable fun x => f x • c) ↔ Measurable f :=
  (isClosedEmbedding_smul_left hc).measurableEmbedding.measurable_comp_iff

theorem aemeasurable_smul_const {f : α → 𝕜} {μ : Measure α} {c : E} (hc : c ≠ 0) :
    AEMeasurable (fun x => f x • c) μ ↔ AEMeasurable f μ :=
  (isClosedEmbedding_smul_left hc).measurableEmbedding.aemeasurable_comp_iff

end NormedSpace
```
