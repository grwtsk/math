# Complete source: GRWTSK.Algebra.GroupTheory.Centralizer.Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a06f3c9b1e91ddcaf946160030376667632cd56` · SHA-256 `2d51bd5e9d1fe36d54aabfe8f125df540a6f070b3f3cb70f19fa84216c6aa749`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Centralizer.Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Centralizer.Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc","mathematical_subject":"Algebra.Groups","original_sha256":"ff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Subgroup/Centralizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kexing Ying. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kexing Ying
-/
import Mathlib.Algebra.Group.Action.End
import Mathlib.GroupTheory.Subgroup.Center
import Mathlib.GroupTheory.Submonoid.Centralizer

/-!
# Centralizers of subgroups
-/


namespace GRWTSK.Algebra.GroupTheory.Centralizer.Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc

assert_not_exists MonoidWithZero

variable {G G' : Type*} [Group G] [Group G']

namespace Subgroup

variable {H K : Subgroup G}

/-- The `centralizer` of `s` is the subgroup of `g : G` commuting with every `h : s`. -/
@[to_additive
      "The `centralizer` of `s` is the additive subgroup of `g : G` commuting with every `h : s`."]
def centralizer (s : Set G) : Subgroup G :=
  { Submonoid.centralizer s with
    carrier := Set.centralizer s
    inv_mem' := Set.inv_mem_centralizer }

@[to_additive]
theorem mem_centralizer_iff {g : G} {s : Set G} : g ∈ centralizer s ↔ ∀ h ∈ s, h * g = g * h :=
  Iff.rfl

@[to_additive]
theorem mem_centralizer_iff_commutator_eq_one {g : G} {s : Set G} :
    g ∈ centralizer s ↔ ∀ h ∈ s, h * g * h⁻¹ * g⁻¹ = 1 := by
  simp only [mem_centralizer_iff, mul_inv_eq_iff_eq_mul, one_mul]

@[to_additive]
lemma mem_centralizer_singleton_iff {g k : G} :
    k ∈ Subgroup.centralizer {g} ↔ k * g = g * k := by
  simp only [mem_centralizer_iff, Set.mem_singleton_iff, forall_eq]
  exact eq_comm

@[to_additive]
theorem centralizer_univ : centralizer Set.univ = center G :=
  SetLike.ext' (Set.centralizer_univ G)

@[to_additive]
theorem le_centralizer_iff : H ≤ centralizer K ↔ K ≤ centralizer H :=
  ⟨fun h x hx _y hy => (h hy x hx).symm, fun h x hx _y hy => (h hy x hx).symm⟩

@[to_additive]
theorem center_le_centralizer (s) : center G ≤ centralizer s :=
  Set.center_subset_centralizer s

@[to_additive]
theorem centralizer_le {s t : Set G} (h : s ⊆ t) : centralizer t ≤ centralizer s :=
  Submonoid.centralizer_le h

@[to_additive (attr := simp)]
theorem centralizer_eq_top_iff_subset {s : Set G} : centralizer s = ⊤ ↔ s ⊆ center G :=
  SetLike.ext'_iff.trans Set.centralizer_eq_top_iff_subset

@[to_additive]
theorem map_centralizer_le_centralizer_image (s : Set G) (f : G →* G') :
    (Subgroup.centralizer s).map f ≤ Subgroup.centralizer (f '' s) := by
  rintro - ⟨g, hg, rfl⟩ - ⟨h, hh, rfl⟩
  rw [← map_mul, ← map_mul, hg h hh]

@[to_additive]
instance Centralizer.characteristic [hH : H.Characteristic] :
    (centralizer (H : Set G)).Characteristic := by
  refine Subgroup.characteristic_iff_comap_le.mpr fun ϕ g hg h hh => ϕ.injective ?_
  rw [map_mul, map_mul]
  exact hg (ϕ h) (Subgroup.characteristic_iff_le_comap.mp hH ϕ hh)

@[to_additive]
theorem le_centralizer_iff_isMulCommutative : K ≤ centralizer K ↔ IsMulCommutative K :=
  ⟨fun h => ⟨⟨fun x y => Subtype.ext (h y.2 x x.2)⟩⟩,
    fun h x hx y hy => congr_arg Subtype.val (h.1.1 ⟨y, hy⟩ ⟨x, hx⟩)⟩

@[deprecated (since := "2025-04-09")] alias le_centralizer_iff_isCommutative :=
  le_centralizer_iff_isMulCommutative
@[deprecated (since := "2025-04-09")] alias _root_.AddSubgroup.le_centralizer_iff_isCommutative :=
  AddSubgroup.le_centralizer_iff_isAddCommutative

variable (H)

@[to_additive]
theorem le_centralizer [h : IsMulCommutative H] : H ≤ centralizer H :=
  le_centralizer_iff_isMulCommutative.mpr h

variable {H} in
@[to_additive]
lemma closure_le_centralizer_centralizer (s : Set G) :
    closure s ≤ centralizer (centralizer s) :=
  closure_le _ |>.mpr Set.subset_centralizer_centralizer

/-- If all the elements of a set `s` commute, then `closure s` is a commutative group. -/
@[to_additive
      "If all the elements of a set `s` commute, then `closure s` is an additive
      commutative group."]
abbrev closureCommGroupOfComm {k : Set G} (hcomm : ∀ x ∈ k, ∀ y ∈ k, x * y = y * x) :
    CommGroup (closure k) :=
  { (closure k).toGroup with
    mul_comm := fun ⟨_, h₁⟩ ⟨_, h₂⟩ ↦
      have := closure_le_centralizer_centralizer k
      Subtype.ext <| Set.centralizer_centralizer_comm_of_comm hcomm _ (this h₁) _ (this h₂) }

/-- The conjugation action of N(H) on H. -/
@[simps]
instance : MulDistribMulAction H.normalizer H where
  smul g h := ⟨g * h * g⁻¹, (g.2 h).mp h.2⟩
  one_smul g := by simp [HSMul.hSMul]
  mul_smul := by simp [HSMul.hSMul, mul_assoc]
  smul_one := by simp [HSMul.hSMul]
  smul_mul := by simp [HSMul.hSMul]

/-- The homomorphism N(H) → Aut(H) with kernel C(H). -/
@[simps!]
def normalizerMonoidHom : H.normalizer →* MulAut H :=
  MulDistribMulAction.toMulAut H.normalizer H

theorem normalizerMonoidHom_ker :
    H.normalizerMonoidHom.ker = (Subgroup.centralizer H).subgroupOf H.normalizer := by
  simp [Subgroup.ext_iff, DFunLike.ext_iff, Subtype.ext_iff,
    mem_subgroupOf, mem_centralizer_iff, eq_mul_inv_iff_mul_eq, eq_comm]

end Subgroup
```
