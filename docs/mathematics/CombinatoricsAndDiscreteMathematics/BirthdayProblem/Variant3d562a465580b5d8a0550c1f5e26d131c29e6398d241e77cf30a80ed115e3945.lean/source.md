# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BirthdayProblem.Variant3d562a465580b5d8a0550c1f5e26d131c29e6398d241e77cf30a80ed115e3945

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `019450b25e60c06b51ea49b5ff10270d92f239c8` · SHA-256 `3f6c5f4a8b9a0afec4090da4c7ff54414ec97d10a2abe416fe726c2c807369b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Birthday.Variant651d56c3209635cb47a59c245201a6ea9358ca18d764ab16bcb76b85bcb2c009","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"651d56c3209635cb47a59c245201a6ea9358ca18d764ab16bcb76b85bcb2c009","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Birthday.Variant651d56c3209635cb47a59c245201a6ea9358ca18d764ab16bcb76b85bcb2c009","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"651d56c3209635cb47a59c245201a6ea9358ca18d764ab16bcb76b85bcb2c009","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Wiedijk100Theorems/BirthdayProblem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/
module

public import Mathlib.Data.Fintype.CardEmbedding
public import Mathlib.Probability.UniformOn
public import Mathlib.Probability.Notation

/-!
# Birthday Problem

This file proves Theorem 93 from the [100 Theorems List](https://www.cs.ru.nl/~freek/100/).

As opposed to the standard probabilistic statement, we instead state the birthday problem
in terms of injective functions. The general result about `Fintype.card (α ↪ β)` which this proof
uses is `Fintype.card_embedding_eq`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Birthday.Variant651d56c3209635cb47a59c245201a6ea9358ca18d764ab16bcb76b85bcb2c009

@[expose] public section

namespace Theorems100

local notation "|" x "|" => Finset.card x
local notation "‖" x "‖" => Fintype.card x

/-- **Birthday Problem**: set cardinality interpretation. -/
theorem birthday :
    2 * ‖Fin 23 ↪ Fin 365‖ < ‖Fin 23 → Fin 365‖ ∧ 2 * ‖Fin 22 ↪ Fin 365‖ > ‖Fin 22 → Fin 365‖ := by
  simp only [Fintype.card_fin, Fintype.card_embedding_eq, Fintype.card_fun]
  decide

open MeasureTheory ProbabilityTheory

variable {n m : ℕ}

/- We then endow the space with a canonical measure, which is called ℙ.
We define this to be the conditional counting measure. -/
noncomputable instance measureSpace : MeasureSpace (Fin n → Fin m) :=
  ⟨uniformOn Set.univ⟩

theorem Fin.measure_apply {s : Set <| Fin n → Fin m} :
    ℙ s = |s.toFinite.toFinset| / ‖Fin n → Fin m‖ := by
  rw [volume, measureSpace, uniformOn_univ, Measure.count_apply_finite]

/-- **Birthday Problem**: first probabilistic interpretation. -/
theorem birthday_measure :
    ℙ ({f | f.Injective} : Set (Fin 23 → Fin 365)) < 1 / 2 := by
  rw [Fin.measure_apply]
  generalize_proofs hfin
  have : |hfin.toFinset| = 42200819302092359872395663074908957253749760700776448000000 := by
    trans ‖Fin 23 ↪ Fin 365‖
    · rw [← Fintype.card_coe]
      apply Fintype.card_congr
      rw [Set.Finite.coeSort_toFinset, Set.coe_ofPred]
      exact Equiv.subtypeInjectiveEquivEmbedding _ _
    · rw [Fintype.card_embedding_eq, Fintype.card_fin, Fintype.card_fin]
      rfl
  rw [this, ENNReal.lt_div_iff_mul_lt, mul_comm, mul_div, ENNReal.div_lt_iff]
  all_goals
    simp only [Fintype.card_pi, Fintype.card_fin, Finset.prod_const, Finset.card_univ]
    norm_num

end Theorems100
```
