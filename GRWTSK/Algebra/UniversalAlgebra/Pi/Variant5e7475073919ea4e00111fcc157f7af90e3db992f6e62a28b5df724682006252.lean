-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Pi.Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Pi.Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"f04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Algebra/Subalgebra/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies, Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Andrew Yang
-/
import Mathlib.Algebra.Algebra.Pi
import Mathlib.Algebra.Algebra.Subalgebra.Lattice
import Mathlib.LinearAlgebra.Pi

/-!
# Products of subalgebras

In this file we define the product of subalgebras as a subalgebra of the product algebra.

## Main definitions

* `Subalgebra.pi`: the product of subalgebras.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Pi.Variantf04b5a2bd3edca5b3c87eeb127c73fe45582be14b8fdb0a4af22d1bef37572d2

open Algebra

namespace Subalgebra
variable {ι R : Type*} {S : ι → Type*} [CommSemiring R] [∀ i, Semiring (S i)] [∀ i, Algebra R (S i)]
  {s : Set ι} {t t₁ t₂ : ∀ i, Subalgebra R (S i)} {x : ∀ i, S i}

/-- The product of subalgebras as a subalgebra. -/
@[simps coe toSubsemiring]
def pi (s : Set ι) (t : ∀ i, Subalgebra R (S i)) : Subalgebra R (Π i, S i) where
  __ := Submodule.pi s fun i ↦ (t i).toSubmodule
  mul_mem' hx hy i hi := (t i).mul_mem (hx i hi) (hy i hi)
  algebraMap_mem' _ i _ := (t i).algebraMap_mem _

@[simp] lemma mem_pi : x ∈ pi s t ↔ ∀ i ∈ s, x i ∈ t i := .rfl

open Subalgebra in
@[simp] lemma pi_toSubmodule : toSubmodule (pi s t) = .pi s fun i ↦ (t i).toSubmodule := rfl

@[simp]
lemma pi_top (s : Set ι) : pi s (fun i ↦ (⊤ : Subalgebra R (S i))) = ⊤ :=
  SetLike.coe_injective <| Set.pi_univ _

@[gcongr] lemma pi_mono (h : ∀ i ∈ s, t₁ i ≤ t₂ i) : pi s t₁ ≤ pi s t₂ := Set.pi_mono h

end Subalgebra
