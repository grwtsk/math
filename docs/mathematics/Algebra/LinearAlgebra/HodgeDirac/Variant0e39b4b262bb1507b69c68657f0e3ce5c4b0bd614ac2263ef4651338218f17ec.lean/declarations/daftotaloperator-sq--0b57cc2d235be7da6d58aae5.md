# dafTotalOperator_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "891413593d21691ff8e18fd8c16eb586f79b8242",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18461121-d715-d2ef-d80d-a26080d3a960",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b46779de-a27e-8d4e-3a80-1bfc41c6c748",
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
  "slug": "daftotaloperator-sq--0b57cc2d235be7da6d58aae5",
  "source": {
    "blob": "891413593d21691ff8e18fd8c16eb586f79b8242",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b57cc2d235be7da6d58aae5174a2d9c4922fada50c25664280464dde4790fa7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b46779de-a27e-8d4e-3a80-1bfc41c6c748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–109.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `891413593d21691ff8e18fd8c16eb586f79b8242` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
