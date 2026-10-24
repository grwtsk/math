# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ENNReal.Variante9d710a8ad1f26352b6b79ba2c94a6717c3c5f25c3be7ab08deae1264a5a076c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c611b576d8ca14ca374687c4ac79cb6742ffba75` · SHA-256 `d637df63b9f4d170b6bb401a5b7f9a584b845c09a750ec91d6806a3e3d166be9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.TsumSetOne.Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.TsumSetOne.Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/InfiniteSum/ENNReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Edward van de Meent. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Edward van de Meent
-/
import Mathlib.Data.Real.ENatENNReal
import Mathlib.Data.Set.Card
import Mathlib.Topology.Instances.ENNReal.Lemmas

/-!
# Infinite sums of ENNReal and Set.encard

This file provides lemmas relating sums of constants to the cardinality of the domain of these sums.

## TODO

+ Once we have a topology on `ENat`, provide an `ENat` valued version
+ Once we replace `PartENat` entirely with `ENat` (and replace `PartENat.card` with a `ENat.card`),
  provide versions which sum over the whole type.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.TsumSetOne.Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5

open Set Function

variable {α : Type*} (s : Set α)

namespace ENNReal

lemma tsum_set_one : ∑' _ : s, (1 : ℝ≥0∞) = s.encard := by
  obtain (hfin | hinf) := Set.finite_or_infinite s
  · lift s to Finset α using hfin
    simp [tsum_fintype]
  · have : Infinite s := infinite_coe_iff.mpr hinf
    rw [tsum_const_eq_top_of_ne_zero one_ne_zero, encard_eq_top hinf, ENat.toENNReal_top]

lemma tsum_set_const (c : ℝ≥0∞) : ∑' _ : s, c = s.encard * c := by
  simp [← tsum_set_one, ← ENNReal.tsum_mul_right]

@[deprecated (since := "2025-02-06")] alias tsum_set_one_eq := tsum_set_one
@[deprecated (since := "2025-02-06")] alias tsum_set_const_eq := tsum_set_const

@[simp]
lemma tsum_one : ∑' _ : α, (1 : ℝ≥0∞) = ENat.card α := by
  rw [← tsum_univ]; simpa [encard_univ] using tsum_set_one univ

@[simp]
lemma tsum_const (c : ℝ≥0∞) : ∑' _ : α, c = ENat.card α * c := by
  rw [← tsum_univ]; simpa [encard_univ] using tsum_set_const univ c

end ENNReal
```
