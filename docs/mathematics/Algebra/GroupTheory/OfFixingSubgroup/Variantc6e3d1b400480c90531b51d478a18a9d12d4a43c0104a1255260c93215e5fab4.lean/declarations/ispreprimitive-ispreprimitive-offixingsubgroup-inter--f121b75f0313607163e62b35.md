# IsPreprimitive.isPreprimitive_ofFixingSubgroup_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8628769-da78-9c4f-efb0-9b2713a64649",
  "kind": "theorem",
  "lexical_name": "IsPreprimitive.isPreprimitive_ofFixingSubgroup_inter",
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
  "slug": "ispreprimitive-ispreprimitive-offixingsubgroup-inter--f121b75f0313607163e62b35",
  "source": {
    "blob": "0d17cebbd1ad711b2841d05d79ff69b9818206f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 508,
    "path": "GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f121b75f0313607163e62b35017009b06a09ae4439273b23f4dc7e94de63ec1d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8628769-da78-9c4f-efb0-9b2713a64649`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreprimitive.isPreprimitive_ofFixingSubgroup_inter
    [Finite α]
    (hs : IsPreprimitive (fixingSubgroup M s) (ofFixingSubgroup M s))
    {g : M} (ha : s ∪ g • s ≠ ⊤) :
    IsPreprimitive (fixingSubgroup M (s ∩ g • s)) (ofFixingSubgroup M (s ∩ g • s)) := by
  have := IsPretransitive.isPretransitive_ofFixingSubgroup_inter hs.toIsPretransitive ha
  apply IsPreprimitive.of_card_lt (f := ofFixingSubgroup_of_inclusion M Set.inter_subset_left)
  rw [show Nat.card (ofFixingSubgroup M (s ∩ g • s)) = (s ∩ g • s)ᶜ.ncard from
    Nat.card_coe_set_eq _, Set.ncard_range_of_injective ofFixingSubgroup_of_inclusion_injective,
    show Nat.card (ofFixingSubgroup M s) = sᶜ.ncard from Nat.card_coe_set_eq _, Set.compl_inter]
  refine (Set.ncard_union_lt sᶜ.toFinite (g • s)ᶜ.toFinite ?_).trans_le ?_
  · rwa [Set.disjoint_compl_right_iff_subset, Set.compl_subset_iff_union]
  · rw [← Set.smul_set_compl, Set.ncard_smul_set, two_mul]

end TwoCriteria

end SubMulAction

section Pointwise

open MulAction Set

variable (G : Type*) [Group G] {α : Type*} [MulAction G α]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d17cebbd1ad711b2841d05d79ff69b9818206f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
