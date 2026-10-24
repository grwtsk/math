# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartialSups.Variant99b620d3505c7681835110ad513ef4c104281f14b276dd8e1264146ed1507ffc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5cd182949773eed4c801f7cd50a540f08437b56` · SHA-256 `af274d273d762c856d5e83063d9236e8a71f3bee47348e91398a6df6540f5fab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartialSupsAddOne.Variantee27807e624994e0940c5f2e5c73c49fd744a510cceaac727fcb7ddfaa08a5b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee27807e624994e0940c5f2e5c73c49fd744a510cceaac727fcb7ddfaa08a5b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.PartialSupsAddOne.Variantee27807e624994e0940c5f2e5c73c49fd744a510cceaac727fcb7ddfaa08a5b5","mathematical_subject":"Algebra.OrderTheory","original_sha256":"ee27807e624994e0940c5f2e5c73c49fd744a510cceaac727fcb7ddfaa08a5b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/SuccPred/PartialSups.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Oliver Butterley, Lua Viana Reis
-/
module

public import Mathlib.Algebra.Order.SuccPred
public import Mathlib.Order.PartialSups
public import Mathlib.Order.SuccPred.LinearLocallyFinite

/-!
# `PartialSups` in a `SuccAddOrder`

Basic results concerning `PartialSups` which follow with minimal assumptions beyond the fact that
the `PartialSup` is defined over a `SuccAddOrder`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartialSupsAddOne.Variantee27807e624994e0940c5f2e5c73c49fd744a510cceaac727fcb7ddfaa08a5b5

public section

variable {α ι : Type*} [SemilatticeSup α] [LinearOrder ι]

@[simp]
lemma partialSups_add_one [Add ι] [One ι] [LocallyFiniteOrderBot ι] [SuccAddOrder ι]
    (f : ι → α) (i : ι) : partialSups f (i + 1) = partialSups f i ⊔ f (i + 1) :=
  Order.succ_eq_add_one i ▸ partialSups_succ f i

/-- See `partialSups_succ` for another decomposition of `(partialSups f) (Order.succ i)`. -/
lemma partialSups_succ' {α : Type*} [SemilatticeSup α] [LocallyFiniteOrder ι]
    [SuccOrder ι] [OrderBot ι] (f : ι → α) (i : ι) :
    (partialSups f) (Order.succ i) = f ⊥ ⊔ (partialSups (f ∘ Order.succ)) i := by
  refine Succ.rec (by simp) (fun j _ h ↦ ?_) (bot_le (a := i))
  have : (partialSups (f ∘ Order.succ)) (Order.succ j) =
      ((partialSups (f ∘ Order.succ)) j ⊔ (f ∘ Order.succ) (Order.succ j)) := by simp
  simp [this, h, sup_assoc]

/-- See `partialSups_add_one` for another decomposition of `partialSups f (i + 1)`. -/
lemma partialSups_add_one' [Add ι] [One ι] [OrderBot ι] [LocallyFiniteOrder ι]
    [SuccAddOrder ι] (f : ι → α) (i : ι) :
    partialSups f (i + 1) = f ⊥ ⊔ partialSups (f ∘ (fun k ↦ k + 1)) i := by
  simpa [← Order.succ_eq_add_one] using partialSups_succ' f i
```
