# Complete source: GRWTSK.Topology.MetricTopology.Pi.Variant028abc5e1d4945450ccfb1a09cac898084d8b81e8ace17671dd1334587b66d3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1dd30d3b9abeaff33c4f24751a17b03f6944fa1` · SHA-256 `30288a9a6c7b85e40249f8b1f0bb18bf0ff183383f49157f2c58af0aa9a4c0ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.Pi.Variant284787fb2a4785d23fc183ef623711532dfa88c976c3c3b406f51ad85b5e2a3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"284787fb2a4785d23fc183ef623711532dfa88c976c3c3b406f51ad85b5e2a3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.Pi.Variant284787fb2a4785d23fc183ef623711532dfa88c976c3c3b406f51ad85b5e2a3f","mathematical_subject":"Topology.MetricSpaces","original_sha256":"284787fb2a4785d23fc183ef623711532dfa88c976c3c3b406f51ad85b5e2a3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/MetricSpace/Ultra/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Topology.MetricSpace.Pseudo.Pi
import Mathlib.Topology.MetricSpace.Ultra.Basic

/-!
# Ultrametric distances on pi types

This file contains results on the behavior of ultrametrics in products of ultrametric spaces.

## Main results

* `Pi.instIsUltrametricDist`: a product of ultrametric spaces is ultrametric.


ultrametric, nonarchimedean
-/


namespace GRWTSK.Topology.MetricTopology.Pi.Variant284787fb2a4785d23fc183ef623711532dfa88c976c3c3b406f51ad85b5e2a3f

instance Pi.instIsUltrametricDist {ι : Type*} {X : ι → Type*} [Fintype ι]
    [(i : ι) → PseudoMetricSpace (X i)] [(i : ι) → IsUltrametricDist (X i)] :
    IsUltrametricDist ((i : ι) → X i) := by
  constructor
  intro f g h
  simp only [dist_pi_def, ← NNReal.coe_max, NNReal.coe_le_coe, ← Finset.sup_sup]
  exact Finset.sup_mono_fun fun i _ ↦ IsUltrametricDist.dist_triangle_max (f i) (g i) (h i)
```
