# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:383f544b6df1dc49dc1e49f0c90ddca7db3f50ea666b765e7bcebada46807fa7",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1fa3e6b23fd149c37dc0b1c3",
  "source": {
    "blob": "e1f61359042c76f263993d92092e202eafef5e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 184,
    "path": "GRWTSK/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fa3e6b23fd149c37dc0b1c319f3ad09c717e44544db11da277af6e2b69bf9a3",
  "verification": {
    "reference": "docs/verification/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:383f544b6df1dc49dc1e49f0c90ddca7db3f50ea666b765e7bcebada46807fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : BoundarylessManifold I M where
  isInteriorPoint' x := by
    rw [isInteriorPoint_iff, extChartAt, (chartAt H x).isOpen_extend_target.interior_eq]
    exact PartialEquiv.map_source _ (mem_extChartAt_source _)

end Boundaryless

section BoundarylessManifold

/-- The empty manifold is boundaryless. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f61359042c76f263993d92092e202eafef5e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
