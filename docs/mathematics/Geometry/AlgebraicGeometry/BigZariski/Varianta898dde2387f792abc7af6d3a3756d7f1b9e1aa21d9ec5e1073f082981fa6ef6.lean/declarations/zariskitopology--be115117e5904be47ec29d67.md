# zariskiTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2051ef1f2188e4183d76bac2079684ecf78429c0efea9b5ddeb4b420b3ef8cbe",
  "kind": "abbrev",
  "lexical_name": "zariskiTopology",
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
  "slug": "zariskitopology--be115117e5904be47ec29d67",
  "source": {
    "blob": "bddd0d15c0b4cc9dbcf66730f2fc5e3c43124699",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 58,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Varianta898dde2387f792abc7af6d3a3756d7f1b9e1aa21d9ec5e1073f082981fa6ef6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be115117e5904be47ec29d6739da8a2c5a2e350168e8c8e602e4add518cafe3b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/BigZariski/Varianta898dde2387f792abc7af6d3a3756d7f1b9e1aa21d9ec5e1073f082981fa6ef6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2051ef1f2188e4183d76bac2079684ecf78429c0efea9b5ddeb4b420b3ef8cbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev zariskiTopology : GrothendieckTopology Scheme.{u} :=
  grothendieckTopology IsOpenImmersion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/BigZariski/Varianta898dde2387f792abc7af6d3a3756d7f1b9e1aa21d9ec5e1073f082981fa6ef6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Varianta898dde2387f792abc7af6d3a3756d7f1b9e1aa21d9ec5e1073f082981fa6ef6.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bddd0d15c0b4cc9dbcf66730f2fc5e3c43124699` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
