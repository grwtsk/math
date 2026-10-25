# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.145.Variantf2a63a36613894d5a93ff850fc99faf97c9ff177998e7ef85a7a4bb2aadf49ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7353c75e92753e8f623a8137d3ad013cfc0a7bfe` · SHA-256 `26f1628b4be295b05c79b89fca7cd594cb7ed5068d6b8752b3baa2f5a8654ef4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S.Variant7f8a12cbd22896ebccd0176dd3898d1de6b61a260661e1d05f94f2a3e8cba78b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f8a12cbd22896ebccd0176dd3898d1de6b61a260661e1d05f94f2a3e8cba78b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.S.Variant7f8a12cbd22896ebccd0176dd3898d1de6b61a260661e1d05f94f2a3e8cba78b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"7f8a12cbd22896ebccd0176dd3898d1de6b61a260661e1d05f94f2a3e8cba78b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/unknown/.build/erdos-source-review/145.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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
# Erdős Problem 145

*Reference:* [erdosproblems.com/145](https://www.erdosproblems.com/145)
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S.Variant7f8a12cbd22896ebccd0176dd3898d1de6b61a260661e1d05f94f2a3e8cba78b

@[expose] public section

namespace Erdos145

open Filter
open scoped Topology

/-- Let $s_1 < s_2 < \cdots$ be the sequence of squarefree numbers. -/
noncomputable abbrev s (n : ℕ) : ℕ := Nat.nth Squarefree n

/-- Let $A(x)$ denote the set of indices $n$ for which $s_n \leq x$. -/
noncomputable abbrev A (x : ℝ) : Finset ℕ :=
  (Finset.Icc 0 ⌊x⌋₊).preimage s (Nat.nth_injective Nat.squarefree_infinite).injOn

/--
Let $s_1 < s_2 < \cdots$ be the sequence of squarefree numbers. Is it true that, for any
$\alpha\geq 0$,
$$
\lim_{x\to\infty} \frac{1}{x}\sum_{s_n\leq x}(s_{n+1}-s_n)^\alpha
$$
exists?
-/
@[category research open, AMS 11]
theorem erdos_145 :
    answer(sorry) ↔ ∀ α ≥ (0 : ℝ), ∃ β : ℝ,
      atTop.Tendsto (fun x : ℝ ↦ 1 / x * ∑ n ∈ A x, (s (n + 1) - s n : ℝ) ^ α) (𝓝 β) := by
  sorry

/--
Erdős [Er51] proved this for all $0\leq \alpha\leq 2$.

[Er51] Erdös, P., Some problems and results in elementary number theory.
  Publ. Math. Debrecen (1951), 103-109.
-/
@[category research solved, AMS 11]
theorem erdos_145.variants.le_two {α : ℝ} (hα : α ∈ Set.Icc 0 2) :
    ∃ β : ℝ,
      atTop.Tendsto (fun x : ℝ ↦ 1 / x * ∑ n ∈ A x, (s (n + 1) - s n : ℝ) ^ α) (𝓝 β) := by
  sorry

/--
Hooley [Ho73] extended this to all $0 \leq \alpha\leq 3$.

[Ho73] Hooley, Christopher, On the intervals between consecutive terms of sequences. Proc. Symp. Pure Math, vol. 24, pp. 129-140. 1973.
-/
@[category research solved, AMS 11]
theorem erdos_145.variants.le_three {α : ℝ} (hα : α ∈ Set.Icc 0 3) :
    ∃ β : ℝ,
      atTop.Tendsto (fun x : ℝ ↦ 1 / x * ∑ n ∈ A x, (s (n + 1) - s n : ℝ) ^ α) (𝓝 β) := by
  sorry

/--
Greaves, Harman, and Huxley showed (in Chapter 11 of [GHH97]) that this is true for
$0 \leq \alpha < 11/3$.

[GHH97] Greaves, G. R. H. and Harman, G. and Huxley, M. N., Sieve Methods, Exponential Sums, and
  their Applications in Number Theory. (1997).
-/
@[category research solved, AMS 11]
theorem erdos_145.variants.lt_eleven_thirds {α : ℝ} (hα : α ∈ Set.Ico 0 (11 / 3)) :
    ∃ β : ℝ,
      atTop.Tendsto (fun x : ℝ ↦ 1 / x * ∑ n ∈ A x, (s (n + 1) - s n : ℝ) ^ α) (𝓝 β) := by
  sorry

end Erdos145
```
