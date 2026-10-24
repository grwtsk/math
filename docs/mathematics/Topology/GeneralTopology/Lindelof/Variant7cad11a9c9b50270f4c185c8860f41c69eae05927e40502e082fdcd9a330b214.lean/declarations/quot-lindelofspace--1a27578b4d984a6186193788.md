# Quot.LindelofSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e174d6fe9208edb9fb77affb75c063407fe9528f6dfc3ada726d601b8676f31",
  "kind": "instance",
  "lexical_name": "Quot.LindelofSpace",
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
  "slug": "quot-lindelofspace--1a27578b4d984a6186193788",
  "source": {
    "blob": "04e5d59fcc04eecb88714f3048cd71b043396086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 696,
    "line": 692,
    "path": "GRWTSK/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a27578b4d984a6186193788889d4e3782ecf532cc788c14832617986423d748",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e174d6fe9208edb9fb77affb75c063407fe9528f6dfc3ada726d601b8676f31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Quot.LindelofSpace {r : X → X → Prop} [LindelofSpace X] : LindelofSpace (Quot r) where
  isLindelof_univ := by
    rw [← range_quot_mk]
    exact isLindelof_range continuous_quot_mk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lindelof/Variant7cad11a9c9b50270f4c185c8860f41c69eae05927e40502e082fdcd9a330b214.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04e5d59fcc04eecb88714f3048cd71b043396086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
