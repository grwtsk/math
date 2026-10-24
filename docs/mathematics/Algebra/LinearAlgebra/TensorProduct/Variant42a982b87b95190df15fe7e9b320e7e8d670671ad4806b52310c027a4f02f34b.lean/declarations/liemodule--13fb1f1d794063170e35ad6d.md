# lieModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d5021683c7eeaf56ff91737b65689628344b28a46d829c60d093e15f0b32621",
  "kind": "instance",
  "lexical_name": "lieModule",
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
  "slug": "liemodule--13fb1f1d794063170e35ad6d",
  "source": {
    "blob": "c98782cf659799977b317b398241a3d6f0e16fad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13fb1f1d794063170e35ad6defe7be5fe5a28871db5edaf274ade5a9d2d2c74b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d5021683c7eeaf56ff91737b65689628344b28a46d829c60d093e15f0b32621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance lieModule : LieModule R L (M ⊗[R] N) where
  smul_lie c x t := by
    change hasBracketAux (c • x) _ = c • hasBracketAux _ _
    simp only [hasBracketAux, smul_add, LinearMap.rTensor_smul, LinearMap.smul_apply,
      LinearMap.lTensor_smul, LieHom.map_smul, LinearMap.add_apply]
  lie_smul c _ := LinearMap.map_smul _ c

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98782cf659799977b317b398241a3d6f0e16fad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
