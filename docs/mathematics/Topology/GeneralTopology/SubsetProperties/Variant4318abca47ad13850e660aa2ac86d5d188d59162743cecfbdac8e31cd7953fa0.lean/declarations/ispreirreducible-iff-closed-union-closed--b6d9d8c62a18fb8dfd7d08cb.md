# isPreirreducible_iff_closed_union_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25a78b99-84ca-b060-8a13-4314a38ba472",
  "kind": "theorem",
  "lexical_name": "isPreirreducible_iff_closed_union_closed",
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
  "slug": "ispreirreducible-iff-closed-union-closed--b6d9d8c62a18fb8dfd7d08cb",
  "source": {
    "blob": "f5e0367211eb19de17f150b351bf3e9f89559257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1959,
    "line": 1948,
    "path": "GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant4318abca47ad13850e660aa2ac86d5d188d59162743cecfbdac8e31cd7953fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6d9d8c62a18fb8dfd7d08cbb0e6d832d70b5b89911e638fb69d8732cf168b63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SubsetProperties/Variant4318abca47ad13850e660aa2ac86d5d188d59162743cecfbdac8e31cd7953fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25a78b99-84ca-b060-8a13-4314a38ba472`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1948–1959.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreirreducible_iff_closed_union_closed {s : Set α} :
    IsPreirreducible s ↔
      ∀ z₁ z₂ : Set α, IsClosed z₁ → IsClosed z₂ → s ⊆ z₁ ∪ z₂ → s ⊆ z₁ ∨ s ⊆ z₂ := by
  refine compl_surjective.forall.trans <| forall_congr' fun z₁ => compl_surjective.forall.trans <|
    forall_congr' fun z₂ => ?_
  simp only [isOpen_compl_iff, ← compl_union, inter_compl_nonempty_iff]
  refine forall₂_congr fun _ _ => ?_
  rw [← and_imp, ← not_or, not_imp_not]
#align is_preirreducible_iff_closed_union_closed isPreirreducible_iff_closed_union_closed

/-- A set is irreducible if and only if for every cover by a finite collection of closed sets, it is
contained in one of the members of the collection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SubsetProperties/Variant4318abca47ad13850e660aa2ac86d5d188d59162743cecfbdac8e31cd7953fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant4318abca47ad13850e660aa2ac86d5d188d59162743cecfbdac8e31cd7953fa0.lean#L1948).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5e0367211eb19de17f150b351bf3e9f89559257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
