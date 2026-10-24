# Complete source: GRWTSK.Algebra.GroupTheory.Centralizer.Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c93781c3a874fa951213bc204c8f0d6c4b1a61b` · SHA-256 `714fa2c3917d48483ba5143017b1ab0aafd68257ea67c30f876c53c40e9e9821`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Centralizer.Variant6b6cac2b4ccea7fcdca79efb4a8853bbd9c90cc2817bdd33f5c77e4e184600ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b6cac2b4ccea7fcdca79efb4a8853bbd9c90cc2817bdd33f5c77e4e184600ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Centralizer.Variant6b6cac2b4ccea7fcdca79efb4a8853bbd9c90cc2817bdd33f5c77e4e184600ba","mathematical_subject":"Algebra.Groups","original_sha256":"6b6cac2b4ccea7fcdca79efb4a8853bbd9c90cc2817bdd33f5c77e4e184600ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/GroupTheory/Subsemigroup/Centralizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning, Jireh Loreaux
-/
module

public import Mathlib.Algebra.Group.Center
public import Mathlib.Algebra.Group.IsCommutative
public import Mathlib.Algebra.Group.Subsemigroup.Basic
public import Mathlib.GroupTheory.Subsemigroup.Center

/-!
# Centralizers in semigroups, as subsemigroups.

## Main definitions

* `Subsemigroup.centralizer`: the centralizer of a subset of a semigroup
* `AddSubsemigroup.centralizer`: the centralizer of a subset of an additive semigroup

We provide `Monoid.centralizer`, `AddMonoid.centralizer`, `Subgroup.centralizer`, and
`AddSubgroup.centralizer` in other files.
-/


namespace GRWTSK.Algebra.GroupTheory.Centralizer.Variant6b6cac2b4ccea7fcdca79efb4a8853bbd9c90cc2817bdd33f5c77e4e184600ba

@[expose] public section

-- Guard against import creep
assert_not_exists Finset

variable {M : Type*} {S T : Set M}
namespace Subsemigroup

section

variable [Semigroup M] (S)

/-- The centralizer of a subset of a semigroup `M`. -/
@[to_additive /-- The centralizer of a subset of an additive semigroup. -/]
def centralizer : Subsemigroup M where
  carrier := S.centralizer
  mul_mem' := Set.mul_mem_centralizer

@[to_additive (attr := simp, norm_cast)]
theorem coe_centralizer : ↑(centralizer S) = S.centralizer :=
  rfl

variable {S}

@[to_additive]
theorem mem_centralizer_iff {z : M} : z ∈ centralizer S ↔ ∀ g ∈ S, g * z = z * g :=
  Iff.rfl

@[to_additive]
instance decidableMemCentralizer (a) [Decidable <| ∀ b ∈ S, b * a = a * b] :
    Decidable (a ∈ centralizer S) :=
  decidable_of_iff' _ mem_centralizer_iff

@[to_additive]
theorem center_le_centralizer (S) : center M ≤ centralizer S :=
  S.center_subset_centralizer

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

variable {M} in
@[to_additive]
lemma closure_le_centralizer_centralizer (s : Set M) :
    closure s ≤ centralizer (centralizer s) :=
  closure_le.mpr Set.subset_centralizer_centralizer

/-- If all the elements of a set `s` commute, then `closure s` is commutative. -/
@[to_additive
/-- If all the elements of a set `s` commute, then `closure s` is commutative. -/]
theorem isMulCommutative_closure {s : Set M} (hcomm : s.Pairwise Commute) :
    IsMulCommutative (closure s) :=
  have := closure_le_centralizer_centralizer s
  .of_setLike_mul_comm fun _ h₁ _ h₂ ↦
    Set.centralizer_centralizer_comm_of_comm hcomm _ (this h₁) _ (this h₂)

open scoped IsMulCommutative in
/-- If all the elements of a set `s` commute, then `closure s` is a commutative semigroup. -/
@[to_additive (attr := deprecated isMulCommutative_closure (since := "2026-03-09"))
/-- If all the elements of a set `s` commute, then `closure s` forms an additive
commutative semigroup. -/]
abbrev closureCommSemigroupOfComm {s : Set M} (hcomm : s.Pairwise Commute) :
    CommSemigroup (closure s) :=
  haveI := isMulCommutative_closure M hcomm
  inferInstance

@[to_additive]
instance instIsMulCommutative_closure {S : Type*} [SetLike S M] [MulMemClass S M] (s : S)
    [IsMulCommutative s] : IsMulCommutative (closure (s : Set M)) :=
  isMulCommutative_closure _ fun _ h₁ _ h₂ _ => setLike_mul_comm h₁ h₂

end

end Subsemigroup
```
