# T2Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93a07bd1c6568a8d4f3deacf7081b8a922f6a73ae55726d1f28df3608b91143f",
  "kind": "class",
  "lexical_name": "T2Space",
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
  "slug": "t2space--bbe17bfbc8116a1a30a5a12d",
  "source": {
    "blob": "ddf72e60d14630eb308d655c326bf191e5bdd935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbe17bfbc8116a1a30a5a12d1b046bc53d88bf78ff74d9925eee9268ff5762f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93a07bd1c6568a8d4f3deacf7081b8a922f6a73ae55726d1f28df3608b91143f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class T2Space (X : Type u) [TopologicalSpace X] : Prop where
  /-- Every two points in a Hausdorff space admit disjoint open neighbourhoods. -/
  t2 : Pairwise fun x y => ∃ u v : Set X, IsOpen u ∧ IsOpen v ∧ x ∈ u ∧ y ∈ v ∧ Disjoint u v

/-- Two different points can be separated by open sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddf72e60d14630eb308d655c326bf191e5bdd935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
