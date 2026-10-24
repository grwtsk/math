# disjointUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1709998ab6f17d63184064ada5867af9c7e3770a58c4c133dcf0831cbbd28046",
  "kind": "def",
  "lexical_name": "disjointUnion",
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
  "slug": "disjointunion--7bebc42c60dc938879499b9c",
  "source": {
    "blob": "1ac6255f70bd0ad14b02d6a3d58c98779ca6af35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 201,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant93d321b3145f14bd1794b62e6808302042f58167689877fee78c088a900ad999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bebc42c60dc938879499b9c8864dbb4d0692b69fbaf3db90f051631734b695d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant93d321b3145f14bd1794b62e6808302042f58167689877fee78c088a900ad999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1709998ab6f17d63184064ada5867af9c7e3770a58c4c133dcf0831cbbd28046`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def disjointUnion (e e' : OpenPartialHomeomorph X Y) [∀ x, Decidable (x ∈ e.source)]
    [∀ y, Decidable (y ∈ e.target)] (Hs : Disjoint e.source e'.source)
    (Ht : Disjoint e.target e'.target) : OpenPartialHomeomorph X Y :=
  (e.piecewise e' e.source e.target e.isImage_source_target
        (e'.isImage_source_target_of_disjoint e Hs.symm Ht.symm)
        (by rw [e.open_source.inter_frontier_eq, (Hs.symm.frontier_right e'.open_source).inter_eq])
        (by
          rw [e.open_source.inter_frontier_eq]
          exact eqOn_empty _ _)).replacePartialEquiv
    (e.toPartialEquiv.disjointUnion e'.toPartialEquiv Hs Ht)
    (PartialEquiv.disjointUnion_eq_piecewise _ _ _ _).symm

end Piecewise

/-
## Post-composition

Post-composing an `OpenPartialHomeomorph` with a homeomorphism
-/
section transHomeomorph

/-- Postcompose an open partial homeomorphism with a homeomorphism.
We modify the source and target to have better definitional behavior. -/
@[simps! -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant93d321b3145f14bd1794b62e6808302042f58167689877fee78c088a900ad999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant93d321b3145f14bd1794b62e6808302042f58167689877fee78c088a900ad999.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac6255f70bd0ad14b02d6a3d58c98779ca6af35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
