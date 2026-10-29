-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IdealQuotientFactorKer.Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IdealQuotientFactorKer.Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Ideal/Quotient/PowTransition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jiedong Jiang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nailin Guan, Jiedong Jiang
-/
import Mathlib.LinearAlgebra.Quotient.Basic
import Mathlib.RingTheory.Ideal.Quotient.Defs
import Mathlib.Algebra.Algebra.Operations
import Mathlib.RingTheory.Ideal.Operations
import Mathlib.RingTheory.Ideal.Maps

/-!
# The quotient map from `R ⧸ I ^ m` to `R ⧸ I ^ n` where `m ≥ n`
In this file we define the canonical quotient linear map from
`M ⧸ I ^ m • ⊤` to `M ⧸ I ^ n • ⊤` and canonical quotient ring map from
`R ⧸ I ^ m` to `R ⧸ I ^ n`. These definitions will be used in theorems
related to `IsAdicComplete` to find a lift element from compatible sequences in the quotients.
We also include results about the relation between quotients of submodules and quotients of
ideals here.
## Main definitions
- `Submodule.factorPow`: the linear map from `M ⧸ I ^ m • ⊤` to `M ⧸ I ^ n • ⊤` induced by
the natural inclusion `I ^ n • ⊤ → I ^ m • ⊤`.
- `Ideal.Quotient.factorPow`: the ring homomorphism from `R ⧸ I ^ m`
to `R ⧸ I ^ n` induced by the natural inclusion `I ^ n → I ^ m`.
## Main results
-/

/- Since `Mathlib/LinearAlgebra/Quotient/Basic.lean` and
`Mathlib/RingTheory/Ideal/Quotient/Defs.lean` do not import each other, and the first file that
imports both of them is `Mathlib/RingTheory/Ideal/Quotient/Operations.lean`, which has already
established the first isomophism theorem and Chinese remainder theorem, we put these pure technical
lemmas that involves both `Submodule.mapQ` and `Ideal.Quotient.factor` in this file. -/


namespace GRWTSK.Algebra.IdealQuotientFactorKer.Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654

open Ideal Quotient

variable {R : Type*} [Ring R] {I J K : Ideal R}
    {M : Type*} [AddCommGroup M] [Module R M]

lemma Ideal.Quotient.factor_ker (H : I ≤ J) [I.IsTwoSided] [J.IsTwoSided] :
    RingHom.ker (factor H) = J.map (Ideal.Quotient.mk I) := by
  ext x
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · rcases Ideal.Quotient.mk_surjective x with ⟨r, hr⟩
    rw [← hr] at h ⊢
    simp only [factor, RingHom.mem_ker, lift_mk, eq_zero_iff_mem] at h
    exact Ideal.mem_map_of_mem _ h
  · rcases mem_image_of_mem_map_of_surjective _ Ideal.Quotient.mk_surjective h with ⟨r, hr, eq⟩
    simpa [← eq, Ideal.Quotient.eq_zero_iff_mem] using hr

lemma Ideal.map_mk_comap_factor [J.IsTwoSided] [K.IsTwoSided] (hIJ : J ≤ I) (hJK : K ≤ J) :
    (I.map (mk J)).comap (factor hJK) = I.map (mk K) := by
  ext x
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · rcases mem_image_of_mem_map_of_surjective (mk J) Quotient.mk_surjective h with ⟨r, hr, eq⟩
    have : x - ((mk K) r) ∈ J.map (mk K) := by
      simp [← factor_ker hJK, ← eq]
    rcases mem_image_of_mem_map_of_surjective (mk K) Quotient.mk_surjective this with ⟨s, hs, eq'⟩
    rw [← add_sub_cancel ((mk K) r) x, ← eq', ← map_add]
    exact mem_map_of_mem (mk K) (Submodule.add_mem _ hr (hIJ hs))
  · rcases mem_image_of_mem_map_of_surjective (mk K) Quotient.mk_surjective h with ⟨r, hr, eq⟩
    simpa only [← eq] using mem_map_of_mem (mk J) hr

namespace Submodule

open Submodule

section

@[simp]
theorem mapQ_eq_factor (h : I ≤ J) (x : R ⧸ I) :
    mapQ I J LinearMap.id h x = factor h x := rfl

end

variable (I M)

lemma pow_smul_top_le {m n : ℕ} (h : m ≤ n) : (I ^ n • ⊤ : Submodule R M) ≤ I ^ m • ⊤ :=
  smul_mono_left (Ideal.pow_le_pow_right h)

/--
The linear map from `M ⧸ I ^ m • ⊤` to `M ⧸ I ^ n • ⊤` induced by
the natural inclusion `I ^ n • ⊤ → I ^ m • ⊤`.

To future contributors: Before adding lemmas related to `Submodule.factorPow`, please
check whether it can be generalized to `Submodule.factor` and whether the
corresponding (more general) lemma for `Submodule.factor` already exists.
-/
abbrev factorPow {m n : ℕ} (le : m ≤ n) :
    M ⧸ (I ^ n • ⊤ : Submodule R M) →ₗ[R] M ⧸ (I ^ m • ⊤ : Submodule R M) :=
  factor (smul_mono_left (Ideal.pow_le_pow_right le))

/-- `factorPow` for `n = m + 1` -/
abbrev factorPowSucc (m : ℕ) : M ⧸ (I ^ (m + 1) • ⊤ : Submodule R M) →ₗ[R]
    M ⧸ (I ^ m • ⊤ : Submodule R M) := factorPow I M (Nat.le_succ m)

end Submodule

namespace Ideal

namespace Quotient

variable [I.IsTwoSided]

variable (I)

/--
The ring homomorphism from `R ⧸ I ^ m`
to `R ⧸ I ^ n` induced by the natural inclusion `I ^ n → I ^ m`.

To future contributors: Before adding lemmas related to `Ideal.factorPow`, please
check whether it can be generalized to `Ideal.factor` and whether the corresponding
(more general) lemma for `Ideal.factor` already exists.
-/
abbrev factorPow {m n : ℕ} (le : n ≤ m) : R ⧸ I ^ m →+* R ⧸ I ^ n :=
  factor (pow_le_pow_right le)

/-- `factorPow` for `m = n + 1` -/
abbrev factorPowSucc (n : ℕ) : R ⧸ I ^ (n + 1) →+* R ⧸ I ^ n :=
  factorPow I (Nat.le_succ n)

end Quotient

end Ideal

variable {R : Type*} [CommRing R] (I : Ideal R)

lemma Ideal.map_mk_comap_factorPow {a b : ℕ} (apos : 0 < a) (le : a ≤ b) :
    (I.map (mk (I ^ a))).comap (factorPow I le) = I.map (mk (I ^ b))  := by
  apply Ideal.map_mk_comap_factor
  exact pow_le_self (Nat.ne_zero_of_lt apos)

variable {I} in
lemma factorPowSucc.isUnit_of_isUnit_image {n : ℕ} (npos : n > 0) {a : R ⧸ I ^ (n + 1)}
    (h : IsUnit (factorPow I n.le_succ a)) : IsUnit a := by
  rcases isUnit_iff_exists.mp h with ⟨b, hb, _⟩
  rcases factor_surjective (pow_le_pow_right n.le_succ) b with ⟨b', hb'⟩
  rw [← hb', ← map_one (factorPow I n.le_succ), ← map_mul] at hb
  apply (RingHom.sub_mem_ker_iff (factorPow I n.le_succ)).mpr at hb
  rw [factor_ker (pow_le_pow_right n.le_succ)] at hb
  rcases Ideal.mem_image_of_mem_map_of_surjective (Ideal.Quotient.mk (I ^ (n + 1)))
    Ideal.Quotient.mk_surjective hb with ⟨c, hc, eq⟩
  apply isUnit_of_mul_eq_one _ (b' * (1 - ((Ideal.Quotient.mk (I ^ (n + 1))) c)))
  calc
    _ = (a * b' - 1) * (1 - ((Ideal.Quotient.mk (I ^ (n + 1))) c)) +
        (1 - ((Ideal.Quotient.mk (I ^ (n + 1))) c)) := by ring
    _ = 1 := by
      rw [← eq, mul_sub, mul_one, sub_add_sub_cancel', sub_eq_self, ← map_mul,
        Ideal.Quotient.eq_zero_iff_mem, pow_add]
      apply Ideal.mul_mem_mul hc (Ideal.mul_le_left (I := I ^ (n - 1)) _)
      simpa only [← pow_add, Nat.sub_add_cancel npos] using hc
