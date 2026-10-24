# ShortWeierstrassCurve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:792bfb974f3a7d7e3b615b0493b9342591a295aed9ac1fb2c1e7a3846c3aec7a",
  "kind": "structure",
  "lexical_name": "ShortWeierstrassCurve",
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
  "slug": "shortweierstrasscurve--beab4db1ae912cb2a742c27e",
  "source": {
    "blob": "db618342901fe77595b894975e907e65c5846226",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17,
    "line": 12,
    "path": "GRWTSK/Topology/MetricTopology/Curve/Variant08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:beab4db1ae912cb2a742c27e2a3632973509e163c3d87eff4f0755b595e7c33a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Curve/Variant08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:792bfb974f3a7d7e3b615b0493b9342591a295aed9ac1fb2c1e7a3846c3aec7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–17.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ShortWeierstrassCurve where
  a : ℝ
  b : ℝ
  discriminant : ℝ
  nonsingular : Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Curve/Variant08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Curve/Variant08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db618342901fe77595b894975e907e65c5846226` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
