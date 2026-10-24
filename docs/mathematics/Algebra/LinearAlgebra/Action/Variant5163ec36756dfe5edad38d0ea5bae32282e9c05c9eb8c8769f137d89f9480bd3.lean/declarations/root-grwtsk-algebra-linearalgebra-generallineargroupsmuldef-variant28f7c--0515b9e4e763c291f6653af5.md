# _root_.GRWTSK.Algebra.LinearAlgebra.GeneralLinearGroupSmulDef.Variant28f7c48a505f2a49de077dd94561f2d93997e2dea1c491c4391e1e4381699335.Matrix.ProjectiveSpecialLinearGroup.smul_proj_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb6245cb-869f-d3bf-444f-aef56328d158",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.GeneralLinearGroupSmulDef.Variant28f7c48a505f2a49de077dd94561f2d93997e2dea1c491c4391e1e4381699335.Matrix.ProjectiveSpecialLinearGroup.smul_proj_mk",
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
  "slug": "root-grwtsk-algebra-linearalgebra-generallineargroupsmuldef-variant28f7c--0515b9e4e763c291f6653af5",
  "source": {
    "blob": "b388a66f9f626cefad06cbe0dfbfd9e31c62480d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 230,
    "path": "GRWTSK/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0515b9e4e763c291f6653af56a935ad9570ec5a76a18fd457c3d07b0ba789ef5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb6245cb-869f-d3bf-444f-aef56328d158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.GeneralLinearGroupSmulDef.Variant28f7c48a505f2a49de077dd94561f2d93997e2dea1c491c4391e1e4381699335.Matrix.ProjectiveSpecialLinearGroup.smul_proj_mk (g : Matrix.SpecialLinearGroup ι K)
    (p : ℙ K (ι → K)) : (g : Matrix.ProjectiveSpecialLinearGroup ι K) • p = g • p := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b388a66f9f626cefad06cbe0dfbfd9e31c62480d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
