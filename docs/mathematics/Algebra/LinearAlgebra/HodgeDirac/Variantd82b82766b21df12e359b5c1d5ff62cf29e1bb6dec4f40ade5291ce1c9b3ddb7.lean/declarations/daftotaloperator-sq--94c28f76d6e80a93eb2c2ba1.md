# dafTotalOperator_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b5a8716-9a67-0949-18e5-364f9c5663b5",
  "kind": "theorem",
  "lexical_name": "dafTotalOperator_sq",
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
  "slug": "daftotaloperator-sq--94c28f76d6e80a93eb2c2ba1",
  "source": {
    "blob": "c10912dc6d1ad867f6094ac91914a0a7ab587ff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94c28f76d6e80a93eb2c2ba1a5025a40505a74d2e1ce6656a61af9d055b2e6bc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b5a8716-9a67-0949-18e5-364f9c5663b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dafTotalOperator_sq
    {SpindleIndex : Type v}
    [Fintype SpindleIndex] [DecidableEq SpindleIndex]
    (terrain : GradedTerrainComplex Index)
    (spindle : FiniteOperator SpindleIndex SpindleIndex) :
    terrain.DAFTotalOperator spindle * terrain.DAFTotalOperator spindle =
      (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) ⊗ₖ
          (1 : Matrix SpindleIndex SpindleIndex ℂ) +
        (1 : Matrix Index Index ℂ) ⊗ₖ (spindle * spindle) := by
  let D := terrain.complex.hodgeDirac
  let G := terrain.grading
  let S := spindle
  calc
    terrain.DAFTotalOperator spindle * terrain.DAFTotalOperator spindle =
        (D ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ)) *
            (D ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ)) +
          (D ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ)) * (G ⊗ₖ S) +
          (G ⊗ₖ S) * (D ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ)) +
          (G ⊗ₖ S) * (G ⊗ₖ S) := by
            simp only [DAFTotalOperator, D, G, S]
            noncomm_ring
    _ = (D * D) ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ) +
          (D * G + G * D) ⊗ₖ S +
          (G * G) ⊗ₖ (S * S) := by
      rw [← Matrix.mul_kronecker_mul, Matrix.mul_one,
        ← Matrix.mul_kronecker_mul, Matrix.one_mul,
        ← Matrix.mul_kronecker_mul, Matrix.mul_one,
        ← Matrix.mul_kronecker_mul]
      rw [Matrix.add_kronecker]
      abel
    _ = (D * D) ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ) +
          (1 : Matrix Index Index ℂ) ⊗ₖ (S * S) := by
      rw [show D * G + G * D = 0 from terrain.grading_anticommutes,
        Matrix.zero_kronecker]
      simp only [add_zero]
      rw [show G * G = 1 from terrain.grading_square]
    _ = _ := rfl

/-- The exact Gamma-spindle specialization of the total square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c10912dc6d1ad867f6094ac91914a0a7ab587ff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
