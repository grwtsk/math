# LinearOrderedCommGroup.closure_equiv_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afa9e4cdc1d9882a235e037df82409ab1607b1e406fef7ca5e9a1ddb8e7d930d",
  "kind": "def",
  "lexical_name": "LinearOrderedCommGroup.closure_equiv_closure",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "linearorderedcommgroup-closure-equiv-closure--73f04860bd54fd8d60ce6221",
  "source": {
    "blob": "ae1e95500e6d8ee2f6082fbc22e2ab945ac27a31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 116,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73f04860bd54fd8d60ce62213e42bfa588ff9ced414d6acdf3d01dc4311471be",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afa9e4cdc1d9882a235e037df82409ab1607b1e406fef7ca5e9a1ddb8e7d930d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def LinearOrderedCommGroup.closure_equiv_closure {G G' : Type*}
    [CommGroup G] [LinearOrder G] [IsOrderedMonoid G]
    [CommGroup G'] [LinearOrder G'] [IsOrderedMonoid G'] (x : G) (y : G') (hxy : x = 1 ↔ y = 1) :
    closure ({x} : Set G) ≃*o closure ({y} : Set G') :=
  if hx : x = 1 then by
    refine ⟨⟨⟨fun _ ↦ ⟨1, by simp [hxy.mp hx]⟩, fun _ ↦ ⟨1, by simp [hx]⟩, ?_, ?_⟩, ?_⟩, ?_⟩
    · intro ⟨a, ha⟩
      simpa [hx, closure_singleton_one, eq_comm] using ha
    · intro ⟨a, ha⟩
      simpa [hxy.mp hx, closure_singleton_one, eq_comm] using ha
    · intros
      simp
    · intro ⟨a, ha⟩ ⟨b, hb⟩
      simp only [hx, closure_singleton_one, mem_bot] at ha hb
      simp [ha, hb]
  else by
    set x' := max x x⁻¹ with hx'
    have xpos : 1 < x' := by
      simp [hx', eq_comm, hx]
    set y' := max y y⁻¹ with hy'
    have ypos : 1 < y' := by
      simp [hy', eq_comm, ← hxy, hx]
    have hxc : closure {x} = closure {x'} := by rcases max_cases x x⁻¹ <;> simp_all
    have hyc : closure {y} = closure {y'} := by rcases max_cases y y⁻¹ <;> simp_all
    have Hx : ∀ (z : closure {x}), z ∈ zpowers ⟨x', by simp [hxc]⟩ := by
      simp_rw [Subtype.forall, hxc, ← zpowers_eq_closure, mem_zpowers_iff, Subtype.ext_iff,
        SubgroupClass.coe_zpow, imp_self, implies_true]
    have Hy : ∀ (z : closure {y}), z ∈ zpowers ⟨y', by simp [hyc]⟩ := by
      simp_rw [Subtype.forall, hyc, ← zpowers_eq_closure, mem_zpowers_iff, Subtype.ext_iff,
        SubgroupClass.coe_zpow, imp_self, implies_true]
    refine OrderMonoidIso.mk (mulEquivOfOrderOfEq Hx Hy ?_) ?_
    · rw [orderOf_mk, orderOf_mk]
      grind [orderOf_eq_one_iff, IsMulTorsionFree.orderOf_le_one]
    · intro a b
      obtain ⟨m, rfl⟩ := Hx a
      obtain ⟨n, rfl⟩ := Hx b
      simp only [MulEquiv.toEquiv_eq_coe, Equiv.toFun_as_coe, EquivLike.coe_coe, map_zpow,
        mulEquivOfOrderOfEq_apply_gen]
      simp_all [zpow_le_zpow_iff_right, ← Subtype.coe_lt_coe]

variable {G : Type*} [CommGroup G] [LinearOrder G] [IsOrderedMonoid G] [MulArchimedean G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae1e95500e6d8ee2f6082fbc22e2ab945ac27a31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
