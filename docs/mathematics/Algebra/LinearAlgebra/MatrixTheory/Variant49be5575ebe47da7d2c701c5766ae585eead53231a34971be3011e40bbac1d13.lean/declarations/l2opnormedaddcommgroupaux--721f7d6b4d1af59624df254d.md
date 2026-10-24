# l2OpNormedAddCommGroupAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:104101f80cfc061e4d4717a73f0b4a2b533107bce091400b4dd4014290c9438a",
  "kind": "def",
  "lexical_name": "l2OpNormedAddCommGroupAux",
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
  "slug": "l2opnormedaddcommgroupaux--721f7d6b4d1af59624df254d",
  "source": {
    "blob": "d429f61bc7c296bd85ba94fbda9ca2395031d93f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:721f7d6b4d1af59624df254dd5b7839029116dd29227e3fbd29526bd4f35c042",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:104101f80cfc061e4d4717a73f0b4a2b533107bce091400b4dd4014290c9438a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def l2OpNormedAddCommGroupAux : NormedAddCommGroup (Matrix m n 𝕜) :=
  @NormedAddCommGroup.induced ((Matrix m n 𝕜) ≃ₗ[𝕜] (EuclideanSpace 𝕜 n →L[𝕜] EuclideanSpace 𝕜 m)) _
    _ _ _ ContinuousLinearMap.toNormedAddCommGroup.toNormedAddGroup _ _ <|
    (toEuclideanLin.trans toContinuousLinearMap).injective

/-- An auxiliary definition used only to construct the true `NormedRing` (and `Metric`) structure
provided by `Matrix.instMetricSpaceL2Op` and `Matrix.instNormedRingL2Op`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d429f61bc7c296bd85ba94fbda9ca2395031d93f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
