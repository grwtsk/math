# Subtype.pseudoMetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41f28e0bed505d5f281218880a296187062d449a463e373557e591727bc17f72",
  "kind": "instance",
  "lexical_name": "Subtype.pseudoMetricSpace",
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
  "slug": "subtype-pseudometricspace--b5eb38449da668353e834c66",
  "source": {
    "blob": "c56a292096f226d7e5f5e6d944a19610440e0fae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 62,
    "path": "GRWTSK/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5eb38449da668353e834c66d75b397698dc8a464d672a3fe4f19762f8b5a83f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41f28e0bed505d5f281218880a296187062d449a463e373557e591727bc17f72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subtype.pseudoMetricSpace {p : α → Prop} : PseudoMetricSpace (Subtype p) :=
  PseudoMetricSpace.induced Subtype.val ‹_›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c56a292096f226d7e5f5e6d944a19610440e0fae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
