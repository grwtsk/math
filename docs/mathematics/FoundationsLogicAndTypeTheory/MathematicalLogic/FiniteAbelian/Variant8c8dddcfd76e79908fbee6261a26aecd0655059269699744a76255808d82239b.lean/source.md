# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteAbelian.Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20af28b463b2ae6cfe0fb7e900c3385cd3905833` · SHA-256 `7cfae8825d679161aa196500a5e247c8753fa12fd0087c6d194efd0c086d316c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteOfFgTorsion.Variantcacaa892fb4b2219b3d9009f9578fd4d8f27578aebd7309fb86c51e394ed74f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cacaa892fb4b2219b3d9009f9578fd4d8f27578aebd7309fb86c51e394ed74f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.FiniteOfFgTorsion.Variantcacaa892fb4b2219b3d9009f9578fd4d8f27578aebd7309fb86c51e394ed74f5","mathematical_subject":"Logic.Foundations","original_sha256":"cacaa892fb4b2219b3d9009f9578fd4d8f27578aebd7309fb86c51e394ed74f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/GroupTheory/FiniteAbelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Pierre-Alexandre Bazin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Pierre-Alexandre Bazin
-/
import Mathlib.Algebra.Module.PID
import Mathlib.Data.ZMod.Quotient


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteOfFgTorsion.Variantcacaa892fb4b2219b3d9009f9578fd4d8f27578aebd7309fb86c51e394ed74f5

#align_import group_theory.finite_abelian from "leanprover-community/mathlib"@"879155bff5af618b9062cbb2915347dafd749ad6"

/-!
# Structure of finite(ly generated) abelian groups

* `AddCommGroup.equiv_free_prod_directSum_zmod` : Any finitely generated abelian group is the
  product of a power of `ℤ` and a direct sum of some `ZMod (p i ^ e i)` for some prime powers
  `p i ^ e i`.
* `AddCommGroup.equiv_directSum_zmod_of_fintype` : Any finite abelian group is a direct sum of
  some `ZMod (p i ^ e i)` for some prime powers `p i ^ e i`.

-/


open scoped DirectSum

universe u

namespace Module

variable (M : Type u)

theorem finite_of_fg_torsion [AddCommGroup M] [Module ℤ M] [Module.Finite ℤ M]
    (hM : Module.IsTorsion ℤ M) : _root_.Finite M := by
  rcases Module.equiv_directSum_of_isTorsion hM with ⟨ι, _, p, h, e, ⟨l⟩⟩
  haveI : ∀ i : ι, NeZero (p i ^ e i).natAbs := fun i =>
    ⟨Int.natAbs_ne_zero.mpr <| pow_ne_zero (e i) (h i).ne_zero⟩
  haveI : ∀ i : ι, _root_.Finite <| ℤ ⧸ Submodule.span ℤ {p i ^ e i} := fun i =>
    Finite.of_equiv _ (p i ^ e i).quotientSpanEquivZMod.symm.toEquiv
  haveI : _root_.Finite (⨁ i, ℤ ⧸ (Submodule.span ℤ {p i ^ e i} : Submodule ℤ ℤ)) :=
    Finite.of_equiv _ DFinsupp.equivFunOnFintype.symm
  exact Finite.of_equiv _ l.symm.toEquiv
#align module.finite_of_fg_torsion Module.finite_of_fg_torsion

end Module

variable (G : Type u)

namespace AddCommGroup

variable [AddCommGroup G]

/-- **Structure theorem of finitely generated abelian groups** : Any finitely generated abelian
group is the product of a power of `ℤ` and a direct sum of some `ZMod (p i ^ e i)` for some
prime powers `p i ^ e i`. -/
theorem equiv_free_prod_directSum_zmod [hG : AddGroup.FG G] :
    ∃ (n : ℕ) (ι : Type) (_ : Fintype ι) (p : ι → ℕ) (_ : ∀ i, Nat.Prime <| p i) (e : ι → ℕ),
      Nonempty <| G ≃+ (Fin n →₀ ℤ) × ⨁ i : ι, ZMod (p i ^ e i) := by
  obtain ⟨n, ι, fι, p, hp, e, ⟨f⟩⟩ :=
    @Module.equiv_free_prod_directSum _ _ _ _ _ _ _ (Module.Finite.iff_addGroup_fg.mpr hG)
  refine' ⟨n, ι, fι, fun i => (p i).natAbs, fun i => _, e, ⟨_⟩⟩
  · rw [← Int.prime_iff_natAbs_prime, ← GCDMonoid.irreducible_iff_prime]; exact hp i
  exact
    f.toAddEquiv.trans
      ((AddEquiv.refl _).prodCongr <|
        DFinsupp.mapRange.addEquiv fun i =>
          ((Int.quotientSpanEquivZMod _).trans <|
              ZMod.ringEquivCongr <| (p i).natAbs_pow _).toAddEquiv)
#align add_comm_group.equiv_free_prod_direct_sum_zmod AddCommGroup.equiv_free_prod_directSum_zmod

/-- **Structure theorem of finite abelian groups** : Any finite abelian group is a direct sum of
some `ZMod (p i ^ e i)` for some prime powers `p i ^ e i`. -/
theorem equiv_directSum_zmod_of_fintype [Finite G] :
    ∃ (ι : Type) (_ : Fintype ι) (p : ι → ℕ) (_ : ∀ i, Nat.Prime <| p i) (e : ι → ℕ),
      Nonempty <| G ≃+ ⨁ i : ι, ZMod (p i ^ e i) := by
  cases nonempty_fintype G
  obtain ⟨n, ι, fι, p, hp, e, ⟨f⟩⟩ := equiv_free_prod_directSum_zmod G
  cases' n with n
  · have : Unique (Fin Nat.zero →₀ ℤ) :=
      { uniq := by simp only [Nat.zero_eq, eq_iff_true_of_subsingleton] }
    exact ⟨ι, fι, p, hp, e, ⟨f.trans AddEquiv.uniqueProd⟩⟩
  · haveI := @Fintype.prodLeft _ _ _ (Fintype.ofEquiv G f.toEquiv) _
    exact
      (Fintype.ofSurjective (fun f : Fin n.succ →₀ ℤ => f 0) fun a =>
            ⟨Finsupp.single 0 a, Finsupp.single_eq_same⟩).false.elim
#align add_comm_group.equiv_direct_sum_zmod_of_fintype AddCommGroup.equiv_directSum_zmod_of_fintype

theorem finite_of_fg_torsion [hG' : AddGroup.FG G] (hG : AddMonoid.IsTorsion G) : Finite G :=
  @Module.finite_of_fg_torsion _ _ _ (Module.Finite.iff_addGroup_fg.mpr hG') <|
    AddMonoid.isTorsion_iff_isTorsion_int.mp hG
#align add_comm_group.finite_of_fg_torsion AddCommGroup.finite_of_fg_torsion

end AddCommGroup

namespace CommGroup

theorem finite_of_fg_torsion [CommGroup G] [Group.FG G] (hG : Monoid.IsTorsion G) : Finite G :=
  @Finite.of_equiv _ _ (AddCommGroup.finite_of_fg_torsion (Additive G) hG) Multiplicative.ofAdd
#align comm_group.finite_of_fg_torsion CommGroup.finite_of_fg_torsion

end CommGroup
```
