# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BirthdayProblem.Variantddc167c43b0e59145c80b4d6119b806386631fcb457bd4f2332e2fdd99467811

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `597755b6cfe6ad697462bd0d57abcb1933bdaa2c` · SHA-256 `3c3f673dd50c877de4e40ed4676791188dd73ca72f7cb453a41a053720e17c97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Birthday.Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Birthday.Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Archive/Wiedijk100Theorems/BirthdayProblem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/
import Mathlib.Data.Fintype.CardEmbedding
import Mathlib.Probability.UniformOn
import Mathlib.Probability.Notation

/-!
# Birthday Problem

This file proves Theorem 93 from the [100 Theorems List](https://www.cs.ru.nl/~freek/100/).

As opposed to the standard probabilistic statement, we instead state the birthday problem
in terms of injective functions. The general result about `Fintype.card (α ↪ β)` which this proof
uses is `Fintype.card_embedding_eq`.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Birthday.Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d

namespace Theorems100

local notation "|" x "|" => Finset.card x

local notation "‖" x "‖" => Fintype.card x

/-- **Birthday Problem**: set cardinality interpretation. -/
theorem birthday :
    2 * ‖Fin 23 ↪ Fin 365‖ < ‖Fin 23 → Fin 365‖ ∧ 2 * ‖Fin 22 ↪ Fin 365‖ > ‖Fin 22 → Fin 365‖ := by
  simp only [Fintype.card_fin, Fintype.card_embedding_eq, Fintype.card_fun]
  decide

section MeasureTheory

open MeasureTheory ProbabilityTheory

open scoped ProbabilityTheory ENNReal

variable {n m : ℕ}

/- In order for Lean to understand that we can take probabilities in `Fin 23 → Fin 365`, we must
tell Lean that there is a `MeasurableSpace` structure on the space. Note that this instance
is only for `Fin m` - Lean automatically figures out that the function space `Fin n → Fin m`
is _also_ measurable, by using `MeasurableSpace.pi`, and furthermore that all sets are measurable,
from `MeasurableSingletonClass.pi`. -/
instance : MeasurableSpace (Fin m) :=
  ⊤

instance : MeasurableSingletonClass (Fin m) :=
  ⟨fun _ => trivial⟩

/- We then endow the space with a canonical measure, which is called ℙ.
We define this to be the conditional counting measure. -/
noncomputable instance measureSpace : MeasureSpace (Fin n → Fin m) :=
  ⟨uniformOn Set.univ⟩

-- The canonical measure on `Fin n → Fin m` is a probability measure (except on an empty space).
instance : IsProbabilityMeasure (ℙ : Measure (Fin n → Fin (m + 1))) :=
  uniformOn_isProbabilityMeasure Set.finite_univ Set.univ_nonempty

theorem FinFin.measure_apply {s : Set <| Fin n → Fin m} :
    ℙ s = |s.toFinite.toFinset| / ‖Fin n → Fin m‖ := by
  rw [volume, measureSpace, uniformOn_univ, Measure.count_apply_finite]

/-- **Birthday Problem**: first probabilistic interpretation. -/
theorem birthday_measure :
    ℙ ({f | (Function.Injective f)} : Set ((Fin 23) → (Fin 365))) < 1 / 2 := by
  rw [FinFin.measure_apply]
  generalize_proofs hfin
  have : |hfin.toFinset| = 42200819302092359872395663074908957253749760700776448000000 := by
    trans ‖Fin 23 ↪ Fin 365‖
    · rw [← Fintype.card_coe]
      apply Fintype.card_congr
      rw [Set.Finite.coeSort_toFinset, Set.coe_setOf]
      exact Equiv.subtypeInjectiveEquivEmbedding _ _
    · rw [Fintype.card_embedding_eq, Fintype.card_fin, Fintype.card_fin]
      rfl
  rw [this, ENNReal.lt_div_iff_mul_lt, mul_comm, mul_div, ENNReal.div_lt_iff]
  all_goals
    simp only [Fintype.card_pi, Fintype.card_fin, Finset.prod_const, Finset.card_univ]
    norm_num

end MeasureTheory

end Theorems100
```
