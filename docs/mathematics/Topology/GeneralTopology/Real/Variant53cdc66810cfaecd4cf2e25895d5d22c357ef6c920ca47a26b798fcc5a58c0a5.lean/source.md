# Complete source: GRWTSK.Topology.GeneralTopology.Real.Variant53cdc66810cfaecd4cf2e25895d5d22c357ef6c920ca47a26b798fcc5a58c0a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2f58dc9618df3f5389451a18e8898145dd8ebb7` · SHA-256 `cfcdd1bb69ea3e63dbcbb3844a36fb86e63745cd8ad37367194bb29d98f7d584`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Star.Variant384ff185f80e96845793bbcb3a46221bbc9f8e84d8cb1af1f466390db613f18f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"384ff185f80e96845793bbcb3a46221bbc9f8e84d8cb1af1f466390db613f18f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Star.Variant384ff185f80e96845793bbcb3a46221bbc9f8e84d8cb1af1f466390db613f18f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"384ff185f80e96845793bbcb3a46221bbc9f8e84d8cb1af1f466390db613f18f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Star/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Data.NNReal.Star
import Mathlib.Topology.Algebra.Star
import Mathlib.Topology.MetricSpace.Pseudo.Constructions

/-!
# Topological properties of conjugation on ℝ
-/


namespace GRWTSK.Topology.GeneralTopology.Star.Variant384ff185f80e96845793bbcb3a46221bbc9f8e84d8cb1af1f466390db613f18f

assert_not_exists IsTopologicalRing UniformContinuousConstSMul UniformOnFun

noncomputable section

instance : ContinuousStar ℝ := ⟨continuous_id⟩

namespace NNReal

instance : ContinuousStar ℝ≥0 where
  continuous_star := continuous_id

end NNReal
```
