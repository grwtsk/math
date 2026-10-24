# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NcountWindow.Variantc432278fde6125b3a875c29eb469b1f10e5b677ce67e9f0e049f21c983365ce7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e107a2fe6b5b8702d8626ab73df656e23e12ace3` · SHA-256 `5e6e3c8172a596e3cfaddf7f642a0246976ce38abf6e97bb4e63c0cb17a42e26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZerosInUnion.Variantf8b4ff9a1577af9064de082d250a4433392578a96e235209214bdaaeffaf2482","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8b4ff9a1577af9064de082d250a4433392578a96e235209214bdaaeffaf2482","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ZerosInUnion.Variantf8b4ff9a1577af9064de082d250a4433392578a96e235209214bdaaeffaf2482","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f8b4ff9a1577af9064de082d250a4433392578a96e235209214bdaaeffaf2482","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/RvM/NcountWindow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/RvM/NcountWindow.lean — window arithmetic for `Ncount`.

These lemmas (window splitting, additivity and monotonicity of the zero count) live here, in the
root `Zeta23` namespace, and are used by the Riemann–von Mangoldt files.
-/
import Zeta23.Statement.SeamClosed


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZerosInUnion.Variantf8b4ff9a1577af9064de082d250a4433392578a96e235209214bdaaeffaf2482

noncomputable section

namespace Zeta23
/-! ## Window arithmetic for Ncount -/

/-- windows split: zerosIn a c = zerosIn a b ∪ zerosIn b c for a ≤ b ≤ c. -/
theorem zerosIn_union {a b c : ℝ} (h1 : a ≤ b) (h2 : b ≤ c) :
    zerosIn a c = zerosIn a b ∪ zerosIn b c := by
  ext ρ
  simp only [zerosIn, Set.mem_setOf_eq, Set.mem_union]
  constructor
  · rintro ⟨hρ, ha, hb⟩
    rcases le_or_gt ρ.im b with hle | hgt
    · exact Or.inl ⟨hρ, ha, hle⟩
    · exact Or.inr ⟨hρ, hgt, hb⟩
  · rintro (⟨hρ, ha, hb⟩ | ⟨hρ, ha, hb⟩)
    · exact ⟨hρ, ha, le_trans hb h2⟩
    · exact ⟨hρ, lt_of_le_of_lt h1 ha, hb⟩

/-- window additivity: N(a,c] = N(a,b] + N(b,c]. -/
theorem Ncount_add {a b c : ℝ} (h1 : a ≤ b) (h2 : b ≤ c) :
    Ncount a c = Ncount a b + Ncount b c := by
  unfold Ncount
  rw [zerosIn_union h1 h2]
  refine finsum_mem_union ?_ (zerosIn_finite a b) (zerosIn_finite b c)
  rw [Set.disjoint_left]
  rintro ρ ⟨_, _, hb⟩ ⟨_, ha, _⟩
  exact absurd hb (not_le.2 ha)

/-- window monotonicity: (a,b] ⊆ (c,d] ⇒ N(a,b] ≤ N(c,d]. -/
theorem Ncount_mono {a b c d : ℝ} (hca : c ≤ a) (hbd : b ≤ d) : Ncount a b ≤ Ncount c d := by
  unfold Ncount
  have hsub : zerosIn a b ⊆ zerosIn c d := by
    rintro ρ ⟨hρ, h1, h2⟩
    exact ⟨hρ, lt_of_le_of_lt hca h1, le_trans h2 hbd⟩
  rw [finsum_mem_eq_finite_toFinset_sum _ (zerosIn_finite a b),
    finsum_mem_eq_finite_toFinset_sum _ (zerosIn_finite c d)]
  apply Finset.sum_le_sum_of_subset
  intro ρ hρ
  rw [Set.Finite.mem_toFinset] at hρ ⊢
  exact hsub hρ


end Zeta23

end
```
