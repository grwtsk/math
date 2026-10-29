-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsLeastFind.Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.IsLeastFind.Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d","mathematical_subject":"Algebra.OrderTheory","original_sha256":"aea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Data.Nat.Find
import Mathlib.Order.BoundedOrder.Basic
import Mathlib.Order.Bounds.Defs

/-!
# The natural numbers form a linear order

This file contains the linear order instance on the natural numbers.

See note [foundational algebra order theory].

## TODO

Move the `LinearOrder ℕ` instance here (https://github.com/leanprover-community/mathlib4/pull/13092).
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsLeastFind.Variantaea6ae256705d14a5df3ce227b848f0ae95ddae32c3e8429b6d1d7bcdddfaa7d

namespace Nat

instance instOrderBot : OrderBot ℕ where
  bot := 0
  bot_le := zero_le

instance instNoMaxOrder : NoMaxOrder ℕ where
  exists_gt n := ⟨n + 1, n.lt_succ_self⟩

/-! ### Miscellaneous lemmas -/

@[simp high] protected lemma bot_eq_zero : ⊥ = 0 := rfl

/-- `Nat.find` is the minimum natural number satisfying a predicate `p`. -/
lemma isLeast_find {p : ℕ → Prop} [DecidablePred p] (hp : ∃ n, p n) :
    IsLeast {n | p n} (Nat.find hp) :=
  ⟨Nat.find_spec hp, fun _ ↦ Nat.find_min' hp⟩

end Nat

/-- `Nat.find` is the minimum element of a nonempty set of natural numbers. -/
lemma Set.Nonempty.isLeast_natFind {s : Set ℕ} [DecidablePred (· ∈ s)] (hs : s.Nonempty) :
    IsLeast s (Nat.find hs) :=
  Nat.isLeast_find hs
