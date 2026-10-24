# det_realEmbeddingMatrix_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9326869e-fe0c-3a24-0425-cc31826ed029",
  "kind": "theorem",
  "lexical_name": "det_realEmbeddingMatrix_ne_zero",
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
  "slug": "det-realembeddingmatrix-ne-zero--0a02cfba7208e6728e363e15",
  "source": {
    "blob": "ba778c311687f285edd2a8c02f895e8a9d9059bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 68,
    "path": "GRWTSK/NumberTheory/NumberField/TotallyRealSignApproximation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a02cfba7208e6728e363e15fdb695e61c0b20692b995e1ea9d7bfea6f67b5f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9326869e-fe0c-3a24-0425-cc31826ed029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_realEmbeddingMatrix_ne_zero
    (b : Module.Basis (Fin n) ℚ K)
    (σ : EmbeddingOrder K n) :
    (realEmbeddingMatrix (fun i => b i) σ).det ≠ 0 := by
  have hdisc : (algebraMap ℚ ℂ) (Algebra.discr ℚ b) ≠ 0 := by
    intro h
    apply Algebra.discr_not_zero_of_basis ℚ b
    apply (algebraMap ℚ ℂ).injective
    simpa only [map_zero] using h
  have heq := Algebra.discr_eq_det_embeddingsMatrixReindex_pow_two ℚ ℂ b σ
  have hdet : (Algebra.embeddingsMatrixReindex ℚ ℂ b σ).det ≠ 0 := by
    intro h
    apply hdisc
    rw [heq, h, zero_pow (by decide : (2 : ℕ) ≠ 0)]
  intro hreal
  apply hdet
  rw [← realEmbeddingMatrix_complex (fun i => b i) σ]
  change (Complex.ofRealHom.mapMatrix
      (realEmbeddingMatrix (fun i => b i) σ)).det = 0
  rw [← RingHom.map_det, hreal, map_zero]

/-- The diagonal real embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/NumberField/TotallyRealSignApproximation.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba778c311687f285edd2a8c02f895e8a9d9059bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
