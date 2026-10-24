# MeshFace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72d6aa0e3321dfe06ca5ddcdcc20d7d161d9394bb7c2580248fd7b634dc1aa7c",
  "kind": "structure",
  "lexical_name": "MeshFace",
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
  "slug": "meshface--37b8aca30d3402d41d5876cb",
  "source": {
    "blob": "9f99bd999f74dbbdfd6e581cbb82da4e3f4c59cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant28ecd5ea5066b21137e831ca76fcb10d30c82247dc3fac2288b5a5a89cb2588a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37b8aca30d3402d41d5876cb75aa23d4399628d56a3354ed1b3d5458211a216c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant28ecd5ea5066b21137e831ca76fcb10d30c82247dc3fac2288b5a5a89cb2588a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72d6aa0e3321dfe06ca5ddcdcc20d7d161d9394bb7c2580248fd7b634dc1aa7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MeshFace where
  faceId : Nat
  kind : MeshFaceKind
  sourceHash : Nat
  binaryRow : Nat
  binaryCol : Nat
  identityHash : Nat
  theoremResolution : Option CertificateResolutionRecord
  authorityBoundaryHash : Nat
  energy : Int

/-- Finite analytic mesh metadata. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant28ecd5ea5066b21137e831ca76fcb10d30c82247dc3fac2288b5a5a89cb2588a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant28ecd5ea5066b21137e831ca76fcb10d30c82247dc3fac2288b5a5a89cb2588a.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f99bd999f74dbbdfd6e581cbb82da4e3f4c59cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
