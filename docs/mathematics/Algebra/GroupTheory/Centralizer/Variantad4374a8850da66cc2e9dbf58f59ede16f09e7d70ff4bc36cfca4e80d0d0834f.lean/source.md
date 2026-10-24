# Complete source: GRWTSK.Algebra.GroupTheory.Centralizer.Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6be972432ef45f016c1e513ff23d844530c7ba5` · SHA-256 `c20011f7aad1a69a4ccb0e0c0ff49f9db74d80c92a90fe3192b4ee938138ee6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Centralizer.Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Centralizer.Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9","mathematical_subject":"Algebra.Groups","original_sha256":"631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/GroupTheory/Submonoid/Centralizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
module

public import Mathlib.GroupTheory.Subsemigroup.Centralizer
public import Mathlib.GroupTheory.Submonoid.Center

/-!
# Centralizers of magmas and monoids

## Main definitions

* `Submonoid.centralizer`: the centralizer of a subset of a monoid
* `AddSubmonoid.centralizer`: the centralizer of a subset of an additive monoid

We provide `Subgroup.centralizer`, `AddSubgroup.centralizer` in other files.
-/


namespace GRWTSK.Algebra.GroupTheory.Centralizer.Variant631d219390ececc0f11ff8c2c88433b92724170aebaa504212363bcfec6827b9

@[expose] public section

-- Guard against import creep
assert_not_exists Finset

variable {M : Type*} {S T : Set M}

namespace Submonoid

section

variable [Monoid M] (S)

/-- The centralizer of a subset of a monoid `M`. -/
@[to_additive /-- The centralizer of a subset of an additive monoid. -/]
def centralizer : Submonoid M where
  carrier := S.centralizer
  one_mem' := S.one_mem_centralizer
  mul_mem' := Set.mul_mem_centralizer

@[to_additive (attr := simp, norm_cast)]
theorem coe_centralizer : ↑(centralizer S) = S.centralizer :=
  rfl

@[to_additive AddSubmonoid.centralizer_toAddSubsemigroup]
theorem centralizer_toSubsemigroup : (centralizer S).toSubsemigroup = Subsemigroup.centralizer S :=
  rfl

variable {S}

@[to_additive]
theorem mem_centralizer_iff {z : M} : z ∈ centralizer S ↔ ∀ g ∈ S, g * z = z * g :=
  Iff.rfl

@[to_additive]
theorem center_le_centralizer (s) : center M ≤ centralizer s :=
  s.center_subset_centralizer

@[to_additive]
instance decidableMemCentralizer (a) [Decidable <| ∀ b ∈ S, b * a = a * b] :
    Decidable (a ∈ centralizer S) :=
  decidable_of_iff' _ mem_centralizer_iff

@[to_additive]
theorem centralizer_le (h : S ⊆ T) : centralizer T ≤ centralizer S :=
  Set.centralizer_subset h

@[to_additive (attr := simp)]
theorem centralizer_eq_top_iff_subset {s : Set M} : centralizer s = ⊤ ↔ s ⊆ center M :=
  SetLike.ext'_iff.trans Set.centralizer_eq_top_iff_subset

variable (M)

@[to_additive (attr := simp)]
theorem centralizer_univ : centralizer Set.univ = center M :=
  SetLike.ext' (Set.centralizer_univ M)

@[to_additive]
lemma le_centralizer_centralizer {s : Submonoid M} : s ≤ centralizer (centralizer (s : Set M)) :=
  Set.subset_centralizer_centralizer

@[to_additive (attr := simp)]
lemma centralizer_centralizer_centralizer {s : Set M} :
    centralizer s.centralizer.centralizer = centralizer s := by
  apply SetLike.coe_injective
  simp only [coe_centralizer, Set.centralizer_centralizer_centralizer]

variable {M} in
@[to_additive]
lemma closure_le_centralizer_centralizer (s : Set M) :
    closure s ≤ centralizer (centralizer s) :=
  closure_le.mpr Set.subset_centralizer_centralizer

/-- If all the elements of a set `s` commute, then `closure s` is a commutative monoid. -/
@[to_additive
/-- If all the elements of a set `s` commute, then `closure s` forms an additive
commutative monoid. -/]
theorem isMulCommutative_closure {s : Set M} (hcomm : s.Pairwise Commute) :
    IsMulCommutative (closure s) :=
  have := closure_le_centralizer_centralizer s
  .of_setLike_mul_comm fun _ h₁ _ h₂ ↦
    Set.centralizer_centralizer_comm_of_comm hcomm _ (this h₁) _ (this h₂)

open scoped IsMulCommutative
/-- If all the elements of a set `s` commute, then `closure s` is a commutative monoid. -/
@[to_additive (attr := deprecated isMulCommutative_closure (since := "2026-03-09"))
/-- If all the elements of a set `s` commute, then `closure s` forms an additive
commutative monoid. -/]
abbrev closureCommMonoidOfComm {s : Set M} (hcomm : s.Pairwise Commute) :
    CommMonoid (closure s) :=
  haveI := isMulCommutative_closure _ hcomm
  inferInstance

@[to_additive]
instance instIsMulCommutative_closure {S : Type*} [SetLike S M] [MulMemClass S M] (s : S)
    [IsMulCommutative s] : IsMulCommutative (closure (s : Set M)) :=
  isMulCommutative_closure _ fun _ h₁ _ h₂ _ => setLike_mul_comm h₁ h₂

end

end Submonoid
```
