# Complete source: GRWTSK.Topology.GeneralTopology.208.Variant2d08686a622d64ca1a674999284f84ff000a924a9f3578eb3928ce5b8c650649

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `587c9ef7fb4731fbda0cc97faadae945793b7891` · SHA-256 `86068ad49aa57ff4bf22bb579a016a7d32384191f7786d027761ddfa6ec49460`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Erdos208S.Variantf1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Erdos208S.Variantf1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1","mathematical_subject":"Topology.GeneralTopology","original_sha256":"f1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/unknown/.build/erdos-source-review/208.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright 2025 The Formal Conjectures Authors.

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
# Erdős Problem 208
*Reference:* [erdosproblems.com/208](https://www.erdosproblems.com/208)
-/


namespace GRWTSK.Topology.GeneralTopology.Erdos208S.Variantf1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1

@[expose] public section

open Filter Real

namespace Erdos208

/-- The sequence of squarefree numbers, denoted by `s` as in Erdős problem 208. -/
noncomputable def erdos208.s : ℕ → ℕ := Nat.nth Squarefree

open erdos208

/--
Let $s_1 < s_2 < \dots$ be the sequence of squarefree numbers. Is it true that
for any $\epsilon > 0$ and large $n$, $s_{n+1} - s_n \ll_\epsilon s_n^\epsilon$?
-/
@[category research open, AMS 11]
theorem erdos_208.parts.i : answer(sorry) ↔
    ∀ ε > (0 : ℝ), (fun n => (s (n + 1) - s n : ℝ)) =O[atTop] (fun n => (s n : ℝ)^ε) := by sorry

/--
Let $s_1 < s_2 < \dots$ be the sequence of squarefree numbers. Is it true that
$s_{n + 1} - s_n \le (1 + o(1)) \cdot (\pi^2 / 6) \cdot \log (s_n) / \log (\log (s_n))$?
-/
@[category research open, AMS 11]
theorem erdos_208.parts.ii : answer(sorry) ↔ ∃ (c : ℕ → ℝ), (c =o[atTop] (1 : ℕ → ℝ)) ∧ ∀ᶠ n in atTop,
      s (n + 1) - s n ≤ (1 + (c n)) * (π^2 / 6) * log (s n) / log (log (s n)) := by
  sorry

/--
In [Er79] Erdős says perhaps $s_{n+1} - s_n \ll \log s_n$, but he is 'very doubtful'.

[Er79] Erdős, Paul, __Some unconventional problems in number theory__. Math. Mag. (1979), 67-70.
-/
@[category research open, AMS 11]
theorem erdos_208.variants.log_bound :
    (fun n ↦ (s (n + 1) - s n : ℝ)) =O[atTop] fun n ↦ log (s n) := by sorry

end Erdos208
```
