# Complete source: GRWTSK.Topology.GeneralTopology.NonUnitalAlgebra.Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79e8e6c2bff5091aa0453770e5d2a40e7e2ead4e` · SHA-256 `49f6bf8cfada526210f8021d550d59198a4dd0b02bad782c59aeb049dd92c8f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TopologicalClosure.Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TopologicalClosure.Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/NonUnitalAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
module

public import Mathlib.Algebra.Algebra.NonUnitalSubalgebra
public import Mathlib.Topology.Algebra.Module.Basic

/-!
# Non-unital topological (sub)algebras

A non-unital topological algebra over a topological semiring `R` is a topological (non-unital)
semiring with a compatible continuous scalar multiplication by elements of `R`. We reuse
typeclass `ContinuousSMul` to express the latter condition.

## Results

Any non-unital subalgebra of a non-unital topological algebra is itself a non-unital
topological algebra, and its closure is again a non-unital subalgebra.

-/


namespace GRWTSK.Topology.GeneralTopology.TopologicalClosure.Variant4d80367bd49392b2a90804dc71181dce41756d1fde3431aa354f4fad354ca038

@[expose] public section

namespace NonUnitalSubalgebra

section Semiring

variable {R A B : Type*} [CommSemiring R] [TopologicalSpace A]
variable [NonUnitalSemiring A] [Module R A]
variable [ContinuousConstSMul R A]

instance instIsTopologicalSemiring [IsTopologicalSemiring A] (s : NonUnitalSubalgebra R A) :
    IsTopologicalSemiring s :=
  s.toNonUnitalSubsemiring.instIsTopologicalSemiring

instance instIsSemitopologicalSemiring [IsSemitopologicalSemiring A] (s : NonUnitalSubalgebra R A) :
    IsSemitopologicalSemiring s :=
  s.toNonUnitalSubsemiring.instIsSemitopologicalSemiring

variable [IsSemitopologicalSemiring A]

/-- The (topological) closure of a non-unital subalgebra of a non-unital topological algebra is
itself a non-unital subalgebra. -/
def topologicalClosure (s : NonUnitalSubalgebra R A) : NonUnitalSubalgebra R A :=
  { s.toNonUnitalSubsemiring.topologicalClosure, s.toSubmodule.topologicalClosure with
    carrier := _root_.closure (s : Set A) }

theorem le_topologicalClosure (s : NonUnitalSubalgebra R A) : s ≤ s.topologicalClosure :=
  subset_closure

theorem isClosed_topologicalClosure (s : NonUnitalSubalgebra R A) :
    IsClosed (s.topologicalClosure : Set A) := isClosed_closure

theorem topologicalClosure_minimal {s t : NonUnitalSubalgebra R A}
    (h : s ≤ t) (ht : IsClosed (t : Set A)) : s.topologicalClosure ≤ t :=
  closure_minimal h ht

@[gcongr]
theorem topologicalClosure_mono {s t : NonUnitalSubalgebra R A} (h : s ≤ t) :
    s.topologicalClosure ≤ t.topologicalClosure :=
  closure_mono h

instance isMulCommutative_topologicalClosure [T2Space A] (s : NonUnitalSubalgebra R A)
    [IsMulCommutative s] : IsMulCommutative s.topologicalClosure :=
  s.toSubsemigroup.isMulCommutative_topologicalClosure

open scoped IsMulCommutative in
/-- If a non-unital subalgebra of a non-unital topological algebra is commutative, then so is its
topological closure.

See note [reducible non-instances]. -/
@[deprecated isMulCommutative_topologicalClosure (since := "2026-07-29")]
abbrev nonUnitalCommSemiringTopologicalClosure [T2Space A] (s : NonUnitalSubalgebra R A)
    (hs : ∀ x y : s, x * y = y * x) : NonUnitalCommSemiring s.topologicalClosure :=
  fast_instance%
  haveI : IsMulCommutative s := ⟨⟨hs⟩⟩
  inferInstance

variable [TopologicalSpace B] [NonUnitalSemiring B] [Module R B] [IsTopologicalSemiring B]
    [ContinuousConstSMul R B] (s : NonUnitalSubalgebra R A) {φ : A →ₙₐ[R] B}

lemma map_topologicalClosure_le (hφ : Continuous φ) :
    map φ s.topologicalClosure ≤ (map φ s).topologicalClosure :=
  image_closure_subset_closure_image hφ

lemma topologicalClosure_map_le (hφ : IsClosedMap φ) :
    (map φ s).topologicalClosure ≤ map φ s.topologicalClosure :=
  hφ.closure_image_subset _

lemma topologicalClosure_map (hφ : IsClosedMap φ) (hφ' : Continuous φ) :
    (map φ s).topologicalClosure = map φ s.topologicalClosure :=
  SetLike.coe_injective <| hφ.closure_image_eq_of_continuous hφ' _

variable (R) in
open NonUnitalAlgebra in
lemma topologicalClosure_adjoin_le_centralizer_centralizer
    [IsScalarTower R A A] [SMulCommClass R A A] [T2Space A] (s : Set A) :
    (adjoin R s).topologicalClosure ≤ centralizer R (centralizer R s) :=
  topologicalClosure_minimal (adjoin_le_centralizer_centralizer R s) (Set.isClosed_centralizer _)

end Semiring

section Ring

variable {R A : Type*} [CommRing R] [TopologicalSpace A]
variable [NonUnitalRing A] [Module R A]
variable [ContinuousConstSMul R A]

instance instIsTopologicalRing [IsTopologicalRing A] (s : NonUnitalSubalgebra R A) :
    IsTopologicalRing s :=
  s.toNonUnitalSubring.instIsTopologicalRing

instance instIsSemitopologicalRing [IsSemitopologicalRing A] (s : NonUnitalSubalgebra R A) :
    IsSemitopologicalRing s :=
  s.toNonUnitalSubring.instIsSemitopologicalRing

variable [IsSemitopologicalRing A]

open scoped IsMulCommutative in
/-- If a non-unital subalgebra of a non-unital topological algebra is commutative, then so is its
topological closure.

See note [reducible non-instances]. -/
@[deprecated isMulCommutative_topologicalClosure (since := "2026-07-29")]
abbrev nonUnitalCommRingTopologicalClosure [T2Space A] (s : NonUnitalSubalgebra R A)
    (hs : ∀ x y : s, x * y = y * x) : NonUnitalCommRing s.topologicalClosure :=
  haveI : IsMulCommutative s := ⟨⟨hs⟩⟩
  inferInstance

end Ring

end NonUnitalSubalgebra

namespace NonUnitalAlgebra

open NonUnitalSubalgebra

variable (R : Type*) {A : Type*} [CommSemiring R] [NonUnitalSemiring A]
variable [Module R A] [IsScalarTower R A A] [SMulCommClass R A A]
variable [TopologicalSpace A] [IsSemitopologicalSemiring A] [ContinuousConstSMul R A]

/-- The topological closure of the non-unital subalgebra generated by a single element. -/
def elemental (x : A) : NonUnitalSubalgebra R A :=
  adjoin R {x} |>.topologicalClosure

namespace elemental

@[simp, aesop safe (rule_sets := [SetLike])]
theorem self_mem (x : A) : x ∈ elemental R x :=
  le_topologicalClosure _ <| self_mem_adjoin_singleton R x

variable {R} in
theorem le_of_mem {x : A} {s : NonUnitalSubalgebra R A} (hs : IsClosed (s : Set A)) (hx : x ∈ s) :
    elemental R x ≤ s :=
  topologicalClosure_minimal (adjoin_le <| by simpa using hx) hs

variable {R} in
theorem le_iff_mem {x : A} {s : NonUnitalSubalgebra R A} (hs : IsClosed (s : Set A)) :
    elemental R x ≤ s ↔ x ∈ s :=
  ⟨fun h ↦ h (self_mem R x), fun h ↦ le_of_mem hs h⟩

instance isClosed (x : A) : IsClosed (elemental R x : Set A) :=
  isClosed_topologicalClosure _

instance [T2Space A] {x : A} : IsMulCommutative (elemental R x) :=
  isMulCommutative_topologicalClosure _

instance {A : Type*} [UniformSpace A] [CompleteSpace A] [NonUnitalSemiring A]
    [IsSemitopologicalSemiring A] [Module R A] [IsScalarTower R A A]
    [SMulCommClass R A A] [ContinuousConstSMul R A] (x : A) :
    CompleteSpace (elemental R x) :=
  isClosed_closure.completeSpace_coe

/-- The coercion from an elemental algebra to the full algebra is a `IsClosedEmbedding`. -/
theorem isClosedEmbedding_coe (x : A) : Topology.IsClosedEmbedding ((↑) : elemental R x → A) where
  eq_induced := rfl
  injective := Subtype.coe_injective
  isClosed_range := by simpa using isClosed R x

lemma le_centralizer_centralizer [T2Space A] (x : A) :
    elemental R x ≤ centralizer R (centralizer R {x}) :=
  topologicalClosure_adjoin_le_centralizer_centralizer R {x}

end elemental

end NonUnitalAlgebra
```
