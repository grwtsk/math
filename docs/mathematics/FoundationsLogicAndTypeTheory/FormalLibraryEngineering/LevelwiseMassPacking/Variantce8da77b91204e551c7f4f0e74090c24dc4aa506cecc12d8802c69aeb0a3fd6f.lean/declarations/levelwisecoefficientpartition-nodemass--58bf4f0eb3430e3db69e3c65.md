# LevelwiseCoefficientPartition.nodeMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b52be79b74828ac1fe9fce921b83c949945893f31f45f7aff33ea3f467d37f0d",
  "kind": "def",
  "lexical_name": "LevelwiseCoefficientPartition.nodeMass",
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
  "slug": "levelwisecoefficientpartition-nodemass--58bf4f0eb3430e3db69e3c65",
  "source": {
    "blob": "26d9b17fb0d0e7666410412a4acff183c8fc621a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58bf4f0eb3430e3db69e3c6516dc0b69519e3dcf57232eb620115cda9ab4a85b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b52be79b74828ac1fe9fce921b83c949945893f31f45f7aff33ea3f467d37f0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LevelwiseCoefficientPartition.nodeMass
    {Depth Left Right : Type*} [Fintype Depth]
    [Fintype Left] [Fintype Right]
    (partition : LevelwiseCoefficientPartition Depth Left Right)
    (left : EuclideanSpace ℂ Left) (right : EuclideanSpace ℂ Right)
    (depth : Depth) (node : partition.Node depth) : ℝ :=
  letI := partition.nodeFintype depth
  letI := partition.nodeDecidableEq depth
  (partition.atDepth depth).childMass left right node

/-- At every depth, the sum of active node masses is bounded by the root
coefficient mass. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26d9b17fb0d0e7666410412a4acff183c8fc621a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
