-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Erdos.Variant194fdc7835d3a61ae98833fbadb06af7834bc8e5265d7c2f1e6f2c2725df9785","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"194fdc7835d3a61ae98833fbadb06af7834bc8e5265d7c2f1e6f2c2725df9785","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Erdos.Variant194fdc7835d3a61ae98833fbadb06af7834bc8e5265d7c2f1e6f2c2725df9785","mathematical_subject":"Topology.GeneralTopology","original_sha256":"194fdc7835d3a61ae98833fbadb06af7834bc8e5265d7c2f1e6f2c2725df9785","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/unknown/.build/erdos-source-review/234.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright 2026 The Formal Conjectures Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-/
module

public import FormalConjecturesUtil

/-!
# Erdős Problem 234

*Reference:* [erdosproblems.com/234](https://www.erdosproblems.com/234)
-/


namespace GRWTSK.Topology.GeneralTopology.Erdos.Variant194fdc7835d3a61ae98833fbadb06af7834bc8e5265d7c2f1e6f2c2725df9785

@[expose] public section

open Real Set
open scoped NNReal

namespace Erdos234

/--
Is it true that for all `c ≥ 0`, the density `f c` of integers for which
`(p (n + 1) - p n) / log n < c` exists and is a continuous function of `c`?
-/
@[category research open, AMS 11]
theorem erdos_234 : answer(sorry) ↔ ∃ f : ℝ≥0 → ℝ, Continuous f ∧
    ∀ c : ℝ≥0, HasDensity {n : ℕ | primeGap n / log n < c} (f c) := by
  sorry

end Erdos234
