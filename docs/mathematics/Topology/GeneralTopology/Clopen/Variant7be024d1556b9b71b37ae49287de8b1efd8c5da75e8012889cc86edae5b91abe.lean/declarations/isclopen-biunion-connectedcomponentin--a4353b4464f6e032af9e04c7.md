# IsClopen.biUnion_connectedComponentIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e787b66f-3c98-f842-9e9d-483c4c6cb611",
  "kind": "lemma",
  "lexical_name": "IsClopen.biUnion_connectedComponentIn",
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
  "slug": "isclopen-biunion-connectedcomponentin--a4353b4464f6e032af9e04c7",
  "source": {
    "blob": "2b2f2955f5c4efc78bcb03ca8be607e7e431e698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 372,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4353b4464f6e032af9e04c7fdfa172dd949436175e5e2fefd76af48c17a7116",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e787b66f-3c98-f842-9e9d-483c4c6cb611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsClopen.biUnion_connectedComponentIn {X : Type*} [TopologicalSpace X] {u v : Set X}
    (hu : IsClopen (v ↓∩ u)) (huv₁ : u ⊆ v) :
    u = ⋃ x ∈ u, connectedComponentIn v x := by
  have := congr(((↑) : Set v → Set X) $(hu.biUnion_connectedComponent_eq.symm))
  simp only [Subtype.image_preimage_coe, mem_preimage, iUnion_coe_set, image_val_iUnion,
    inter_eq_right.mpr huv₁] at this
  nth_rw 1 [this]
  congr! 2 with x hx
  simp only [← connectedComponentIn_eq_image]
  exact le_antisymm (iUnion_subset fun _ ↦ le_rfl) <|
    iUnion_subset fun hx ↦ subset_iUnion₂_of_subset (huv₁ hx) hx le_rfl

variable [TopologicalSpace β] {f : α → β}

/-- The preimage of a connected component is preconnected if the function has connected fibers
and a subset is closed iff the preimage is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2f2955f5c4efc78bcb03ca8be607e7e431e698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
