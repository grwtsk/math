# Complete source: GRWTSK.Algebra.GroupTheory.Saturated.Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b8e0f8bb625d5f792c891f81637379b0d1522e2` · SHA-256 `ffeeb9fe530a4e1667a716bf1ec35f81e7a061be0889343830878520da79d518`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Saturated.Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"defb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Saturated.Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668","mathematical_subject":"Algebra.Groups","original_sha256":"defb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Subgroup/Saturated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.Group.Subgroup.Ker
import Mathlib.Algebra.NoZeroSMulDivisors.Defs

/-!
# Saturated subgroups

## Tags
subgroup, subgroups

-/



namespace GRWTSK.Algebra.GroupTheory.Saturated.Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668

namespace Subgroup

variable {G : Type*} [Group G]

/-- A subgroup `H` of `G` is *saturated* if for all `n : ℕ` and `g : G` with `g^n ∈ H`
we have `n = 0` or `g ∈ H`. -/
@[to_additive
      "An additive subgroup `H` of `G` is *saturated* if for all `n : ℕ` and `g : G` with `n•g ∈ H`
      we have `n = 0` or `g ∈ H`."]
def Saturated (H : Subgroup G) : Prop :=
  ∀ ⦃n g⦄, g ^ n ∈ H → n = 0 ∨ g ∈ H

@[to_additive]
theorem saturated_iff_npow {H : Subgroup G} :
    Saturated H ↔ ∀ (n : ℕ) (g : G), g ^ n ∈ H → n = 0 ∨ g ∈ H :=
  Iff.rfl

@[to_additive]
theorem saturated_iff_zpow {H : Subgroup G} :
    Saturated H ↔ ∀ (n : ℤ) (g : G), g ^ n ∈ H → n = 0 ∨ g ∈ H := by
  constructor
  · intros hH n g hgn
    cases n with
    | ofNat n =>
      simp only [Int.natCast_eq_zero, Int.ofNat_eq_coe, zpow_natCast] at hgn ⊢
      exact hH hgn
    | negSucc n =>
      suffices g ^ (n + 1) ∈ H by
        refine (hH this).imp ?_ id
        simp only [IsEmpty.forall_iff, Nat.succ_ne_zero]
      simpa only [inv_mem_iff, zpow_negSucc] using hgn
  · intro h n g hgn
    specialize h n g
    simp only [Int.natCast_eq_zero, zpow_natCast] at h
    apply h hgn

end Subgroup

namespace AddSubgroup

theorem ker_saturated {A₁ A₂ : Type*} [AddGroup A₁] [AddMonoid A₂] [NoZeroSMulDivisors ℕ A₂]
    (f : A₁ →+ A₂) : f.ker.Saturated := by
  intro n g hg
  simpa only [f.mem_ker, nsmul_eq_smul, f.map_nsmul, smul_eq_zero] using hg

end AddSubgroup
```
