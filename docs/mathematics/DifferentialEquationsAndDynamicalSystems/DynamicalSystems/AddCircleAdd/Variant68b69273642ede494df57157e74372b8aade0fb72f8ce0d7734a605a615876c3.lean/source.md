# Complete source: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.AddCircleAdd.Variant68b69273642ede494df57157e74372b8aade0fb72f8ce0d7734a605a615876c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc374f9f75b4cc1192c881216cfcb8185946b52d` · SHA-256 `8b5237cbd337e16588e50888fb72d39e00077fd1d91b41c217295edfb6164596`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: DifferentialEquationsAndDynamicalSystems.DynamicalSystems
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ErgodicAddLeft.Variant7c204b0c6971077d729e8f386b075dbcf091e1dbf63a1ea91e223101e346339e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c204b0c6971077d729e8f386b075dbcf091e1dbf63a1ea91e223101e346339e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.DynamicalSystems.SourceCorpus.ErgodicAddLeft.Variant7c204b0c6971077d729e8f386b075dbcf091e1dbf63a1ea91e223101e346339e","mathematical_subject":"Analysis.DynamicalSystems","original_sha256":"7c204b0c6971077d729e8f386b075dbcf091e1dbf63a1ea91e223101e346339e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Dynamics/Ergodic/AddCircleAdd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Dynamics.Ergodic.Action.OfMinimal
import Mathlib.Topology.Instances.AddCircle.DenseSubgroup
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic

/-!
# Ergodicity of an irrational rotation

In this file we prove that rotation of `AddCircle p` by `a` is ergodic
if and only if `a` has infinite order (in other words, if `a / p` is irrational).
-/


namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ErgodicAddLeft.Variant7c204b0c6971077d729e8f386b075dbcf091e1dbf63a1ea91e223101e346339e

open Metric MeasureTheory AddSubgroup
open scoped Pointwise

namespace AddCircle

variable {p : ℝ} [Fact (0 < p)]

theorem ergodic_add_left {a : AddCircle p} : Ergodic (a + ·) ↔ addOrderOf a = 0 := by
  rw [← denseRange_zsmul_iff, ergodic_add_left_iff_denseRange_zsmul]

theorem ergodic_add_right {a : AddCircle p} : Ergodic (· + a) ↔ addOrderOf a = 0 := by
  simp only [add_comm, ← ergodic_add_left]

end AddCircle
```
