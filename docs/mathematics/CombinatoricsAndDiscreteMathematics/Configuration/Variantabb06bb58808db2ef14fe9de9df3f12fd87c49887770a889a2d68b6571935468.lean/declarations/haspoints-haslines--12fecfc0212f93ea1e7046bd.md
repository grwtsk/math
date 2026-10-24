# HasPoints.hasLines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5641a544be9fa5450e07e66b2d3edeef73d87e7957e37eea1c9fe4d98f11566",
  "kind": "def",
  "lexical_name": "HasPoints.hasLines",
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
  "slug": "haspoints-haslines--12fecfc0212f93ea1e7046bd",
  "source": {
    "blob": "90fe22ae0eab72724e4a79c792addc7d76d1f5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 364,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12fecfc0212f93ea1e7046bdf360b23065dc0c948eebb45e1b1f716bcdee671f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5641a544be9fa5450e07e66b2d3edeef73d87e7957e37eea1c9fe4d98f11566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def HasPoints.hasLines [HasPoints P L] [Fintype P] [Fintype L]
    (h : Fintype.card P = Fintype.card L) : HasLines P L :=
  let this := @HasLines.hasPoints (Dual L) (Dual P) _ _ _ _ h.symm
  { ‹HasPoints P L› with
    mkLine := @fun _ _ => this.mkPoint
    mkLine_ax := @fun _ _ => this.mkPoint_ax }
#align configuration.has_points.has_lines Configuration.HasPoints.hasLines

variable (P L)

/-- A projective plane is a nondegenerate configuration in which every pair of lines has
  an intersection point, every pair of points has a line through them,
  and which has three points in general position. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90fe22ae0eab72724e4a79c792addc7d76d1f5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
