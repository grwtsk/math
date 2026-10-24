-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ENat.Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.ENat.Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b","mathematical_subject":"Algebra.OrderTheory","original_sha256":"400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/ENat/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Simon Hudon, Yury Kudryashov
-/

import Mathlib.Data.Nat.Notation
import Mathlib.Order.TypeTags

/-! # Definition and notation for extended natural numbers -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ENat.Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b

/-- Extended natural numbers `ℕ∞ = WithTop ℕ`. -/
def ENat : Type := WithTop ℕ deriving Top, Inhabited

@[inherit_doc] notation "ℕ∞" => ENat

namespace ENat

instance instNatCast : NatCast ℕ∞ := ⟨WithTop.some⟩

/-- Recursor for `ENat` using the preferred forms `⊤` and `↑a`. -/
@[elab_as_elim, induction_eliminator, cases_eliminator]
def recTopCoe {C : ℕ∞ → Sort*} (top : C ⊤) (coe : ∀ a : ℕ, C a) : ∀ n : ℕ∞, C n
  | none => top
  | Option.some a => coe a

@[simp]
theorem recTopCoe_top {C : ℕ∞ → Sort*} (d : C ⊤) (f : ∀ a : ℕ, C a) :
    @recTopCoe C d f ⊤ = d :=
  rfl

@[simp]
theorem recTopCoe_coe {C : ℕ∞ → Sort*} (d : C ⊤) (f : ∀ a : ℕ, C a) (x : ℕ) :
    @recTopCoe C d f ↑x = f x :=
  rfl

end ENat
