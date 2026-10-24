# matrixDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3909822276a3bf6f3345754bf8f46f6332c5a84ba91ceb904f4d8a7b2bb052e3",
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
  "slug": "matrixdensity--aac21e0c571fef17717af6a0",
  "source": {
    "blob": "e2605988f6decd246b07acaaf5d27ad193dafb23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 215,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aac21e0c571fef17717af6a085ba7690e1ced4d10b581bbcd0ff7dfae602839b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3909822276a3bf6f3345754bf8f46f6332c5a84ba91ceb904f4d8a7b2bb052e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–225.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2605988f6decd246b07acaaf5d27ad193dafb23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
