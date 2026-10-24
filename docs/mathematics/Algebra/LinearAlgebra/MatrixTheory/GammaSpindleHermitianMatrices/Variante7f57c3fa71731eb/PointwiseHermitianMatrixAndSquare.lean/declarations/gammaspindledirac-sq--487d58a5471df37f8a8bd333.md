# gammaSpindleDirac_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b444ec6-4ed6-750a-9a6f-4ca7620bc2ed",
  "kind": "theorem",
  "lexical_name": "gammaSpindleDirac_sq",
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
  "slug": "gammaspindledirac-sq--487d58a5471df37f8a8bd333",
  "source": {
    "blob": "f0ef3cbc42dec04cce02c7f9a72ed3ee3252d1f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:487d58a5471df37f8a8bd333140886f2a94109e3882ad783a488107be06e3736",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b444ec6-4ed6-750a-9a6f-4ca7620bc2ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaSpindleDirac_sq
    (chi : PrimitiveCharacter) (t : ℝ) :
    GammaSpindleDirac chi t * GammaSpindleDirac chi t =
      !![((t ^ 2 + (gammaSpindleProfile chi t) ^ 2 : ℝ) : ℂ), 0;
         0, ((t ^ 2 + (gammaSpindleProfile chi t) ^ 2 : ℝ) : ℂ)] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [GammaSpindleDirac, Matrix.mul_apply, Fin.sum_univ_two]
  all_goals
    calc
      _ = (t : ℂ) ^ 2 - (Complex.I * Complex.I) *
          (gammaSpindleProfile chi t : ℂ) ^ 2 := by ring
      _ = _ := by rw [Complex.I_mul_I]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixTheory/GammaSpindleHermitianMatrices/Variante7f57c3fa71731eb/PointwiseHermitianMatrixAndSquare.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0ef3cbc42dec04cce02c7f9a72ed3ee3252d1f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
