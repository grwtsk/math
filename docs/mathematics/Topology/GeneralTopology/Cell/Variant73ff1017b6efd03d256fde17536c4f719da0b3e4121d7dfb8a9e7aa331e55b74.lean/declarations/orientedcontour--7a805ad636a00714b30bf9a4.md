# OrientedContour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97b5de4d479f79cdb2ff4c23789191d317cd5ba55b853c80d17b0af30e46fdcd",
  "kind": "structure",
  "lexical_name": "OrientedContour",
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
  "slug": "orientedcontour--7a805ad636a00714b30bf9a4",
  "source": {
    "blob": "4acaf7483d663468d0eaca51fde2d87b8aa715ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 12,
    "path": "GRWTSK/Topology/GeneralTopology/Cell/Variant73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a805ad636a00714b30bf9a4999e8768d7d42360b786f6e2d9c8b25cc289bdbf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cell/Variant73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97b5de4d479f79cdb2ff4c23789191d317cd5ba55b853c80d17b0af30e46fdcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrientedContour where
  range : Set ℂ
  piecewiseSmooth : Prop
  piecewiseSmoothProof : piecewiseSmooth
  positivelyOriented : Prop
  positivelyOrientedProof : positivelyOriented

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cell/Variant73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cell/Variant73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4acaf7483d663468d0eaca51fde2d87b8aa715ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
