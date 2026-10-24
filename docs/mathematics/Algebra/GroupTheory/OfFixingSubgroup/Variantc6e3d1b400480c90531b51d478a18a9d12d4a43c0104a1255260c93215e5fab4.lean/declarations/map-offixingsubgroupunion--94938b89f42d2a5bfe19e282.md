# map_ofFixingSubgroupUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5ceafb4df619025749594435d7fbd912d4536217229eb07ec49bf3623af02d1",
  "kind": "def",
  "lexical_name": "map_ofFixingSubgroupUnion",
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
  "slug": "map-offixingsubgroupunion--94938b89f42d2a5bfe19e282",
  "source": {
    "blob": "0d17cebbd1ad711b2841d05d79ff69b9818206f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 333,
    "path": "GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94938b89f42d2a5bfe19e2824e1b7005f849c343a2a5b278e8efb38492de022c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5ceafb4df619025749594435d7fbd912d4536217229eb07ec49bf3623af02d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map_ofFixingSubgroupUnion :
    let ψ : fixingSubgroup M (s ∪ t) →
      fixingSubgroup (fixingSubgroup M s) (Subtype.val ⁻¹' t : Set (ofFixingSubgroup M s)) :=
      fun m ↦ ⟨⟨m, by
        let hm := m.prop
        simp only [fixingSubgroup_union, Subgroup.mem_inf] at hm
        exact hm.left⟩, by
      let hm := m.prop
      simp only [fixingSubgroup_union, Subgroup.mem_inf] at hm
      rintro ⟨⟨x, hx⟩, hx'⟩
      simp only [Set.mem_preimage] at hx'
      simp only [← SetLike.coe_eq_coe, SubMulAction.val_smul_of_tower]
      exact hm.right ⟨x, hx'⟩⟩
    ofFixingSubgroup M (s ∪ t) →ₑ[ψ]
      ofFixingSubgroup (fixingSubgroup M s) (Subtype.val ⁻¹' t : Set (ofFixingSubgroup M s)) where
  toFun x :=
    ⟨⟨x, fun hx => x.prop (Set.mem_union_left t hx)⟩,
        fun hx => x.prop (by
          apply Set.mem_union_right s
          simpa only [Set.mem_preimage, Subtype.coe_mk] using hx)⟩
  map_smul' := fun ⟨m, hm⟩ ⟨x, hx⟩ => by
    rw [← SetLike.coe_eq_coe, ← SetLike.coe_eq_coe]
    exact subgroup_smul_def ⟨m, hm⟩ x

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d17cebbd1ad711b2841d05d79ff69b9818206f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
