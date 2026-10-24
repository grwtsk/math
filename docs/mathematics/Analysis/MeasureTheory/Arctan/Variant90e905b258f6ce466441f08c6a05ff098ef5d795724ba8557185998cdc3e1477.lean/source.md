# Complete source: GRWTSK.Analysis.MeasureTheory.Arctan.Variant90e905b258f6ce466441f08c6a05ff098ef5d795724ba8557185998cdc3e1477

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dff35e376ae6ef7324e4401737a7c268cbaca39` · SHA-256 `5eaf61bf09f30c05be8f05c0c396756e5e5d6694fee088c2634272d28fc9d396`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableArctan.Variant83b985b6594939fa6a684f7bab7cb58226cc424f4cab80feeeeebff2f11a4b25","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"83b985b6594939fa6a684f7bab7cb58226cc424f4cab80feeeeebff2f11a4b25","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableArctan.Variant83b985b6594939fa6a684f7bab7cb58226cc424f4cab80feeeeebff2f11a4b25","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"83b985b6594939fa6a684f7bab7cb58226cc424f4cab80feeeeebff2f11a4b25","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Function/SpecialFunctions/Arctan.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic

/-!
# Measurability of arctan

-/



namespace GRWTSK.Analysis.MeasureTheory.MeasurableArctan.Variant83b985b6594939fa6a684f7bab7cb58226cc424f4cab80feeeeebff2f11a4b25

namespace Real

@[measurability]
theorem measurable_arctan : Measurable arctan :=
  continuous_arctan.measurable

end Real

section RealComposition

open Real

variable {α : Type*} {m : MeasurableSpace α} {f : α → ℝ}

@[measurability, fun_prop]
theorem Measurable.arctan (hf : Measurable f) : Measurable fun x => arctan (f x) :=
  measurable_arctan.comp hf

end RealComposition
```
