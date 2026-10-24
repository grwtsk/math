# IsTopologicalGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65118cb03156dddc103776d82365b7978062c33075a6d08376edd933a6afc50e",
  "kind": "class",
  "lexical_name": "IsTopologicalGroup",
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
  "slug": "istopologicalgroup--0b113081745e6eccf7a96701",
  "source": {
    "blob": "6d2b14095b2baf9160d6bbae247f172de19a8935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 117,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b113081745e6eccf7a96701fcce97f648ad73810542270a5a6eb302d9fc880e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65118cb03156dddc103776d82365b7978062c33075a6d08376edd933a6afc50e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsTopologicalGroup (G : Type*) [TopologicalSpace G] [Group G] : Prop
    extends ContinuousMul G, ContinuousInv G

@[deprecated (since := "2025-02-14")] alias TopologicalGroup :=
  IsTopologicalGroup

/-- A typeclass saying that `p : G × G ↦ p.1 - p.2` is a continuous function. This property
automatically holds for topological additive groups but it also holds, e.g., for `ℝ≥0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2b14095b2baf9160d6bbae247f172de19a8935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
