# matrixDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69f9acd12cc2aaa40633344c62f891c46932073a842135facae60b88327a5b29",
  "kind": "def",
  "lexical_name": "matrixDensity",
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
  "slug": "matrixdensity--d2d91076302c1b03dff6b43d",
  "source": {
    "blob": "3c69651a98e85e7dca8cbdfdb953b1a414638811",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 207,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2d91076302c1b03dff6b43d7cd773f8d1762a9a5b137b5079fc13de28a181ed",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69f9acd12cc2aaa40633344c62f891c46932073a842135facae60b88327a5b29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matrixDensity
    (M : Carrier.BinaryMatrix) : ℝ :=
  if _h : M.cellCount = 0 then
    0
  else
    matrixMass M / (M.cellCount : ℝ)

/--
Extract a `scale x scale` block from a matrix at coarse coordinate `(i, j)`.
Out-of-bounds subcells are read as zero, so the definition is total.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c69651a98e85e7dca8cbdfdb953b1a414638811` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
