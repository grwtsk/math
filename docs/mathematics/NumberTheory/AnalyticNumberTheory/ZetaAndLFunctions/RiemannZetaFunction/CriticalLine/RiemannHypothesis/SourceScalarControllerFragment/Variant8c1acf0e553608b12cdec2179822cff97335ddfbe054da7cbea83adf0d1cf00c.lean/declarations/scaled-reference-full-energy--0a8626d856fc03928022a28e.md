# scaled_reference_full_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac233378-6d6e-0c23-936c-73d171656205",
  "kind": "theorem",
  "lexical_name": "scaled_reference_full_energy",
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
  "slug": "scaled-reference-full-energy--0a8626d856fc03928022a28e",
  "source": {
    "blob": "0bd64abd78bf893c069511a334594c7e4eefbf6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerFragment/Variant8c1acf0e553608b12cdec2179822cff97335ddfbe054da7cbea83adf0d1cf00c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a8626d856fc03928022a28eee77dbf22dad41d0938dd618052449f341d752e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerFragment/Variant8c1acf0e553608b12cdec2179822cff97335ddfbe054da7cbea83adf0d1cf00c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac233378-6d6e-0c23-936c-73d171656205`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_reference_full_energy (c α : ℝ) :
    ‖referenceVector - sourceOperator ((c : ℂ) • referenceVector)‖ ^ 2 +
      α * ‖(c : ℂ) • referenceVector‖ ^ 2 =
      1 / 2 - c * kappa + c ^ 2 * (‖sourceOperator referenceVector‖ ^ 2 + α / 2) := by
  rw [map_smul, norm_sub_sq (𝕜 := ℂ), referenceVector_norm_sq,
    inner_smul_right]
  change (1 / 2 - 2 * (((c : ℂ) * inner ℂ referenceVector
      (sourceOperator referenceVector)).re) + ‖(c : ℂ) •
      sourceOperator referenceVector‖ ^ 2) + α * ‖(c : ℂ) • referenceVector‖ ^ 2 = _
  simp only [Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero]
  rw [reference_source_inner_re]
  simp only [norm_smul, Complex.norm_real, Real.norm_eq_abs, mul_pow, sq_abs,
    referenceVector_norm_sq]
  ring

/-- A single genuine reference controller, with the complete source operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerFragment/Variant8c1acf0e553608b12cdec2179822cff97335ddfbe054da7cbea83adf0d1cf00c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerFragment/Variant8c1acf0e553608b12cdec2179822cff97335ddfbe054da7cbea83adf0d1cf00c.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bd64abd78bf893c069511a334594c7e4eefbf6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
