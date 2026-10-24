# retainedPrimeDiagonal_integral_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6692c49-7cc4-dd8f-68ba-093da26015da",
  "kind": "theorem",
  "lexical_name": "retainedPrimeDiagonal_integral_error",
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
  "slug": "retainedprimediagonal-integral-error--721178c740b212c6460142d8",
  "source": {
    "blob": "57bdfac74a0d1356f7bad6bcdaf6efecfd046c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceDiagonalPrimeAbel/Variantff6a66afb7380abfa727d5ce2b68e18633a709c1f322baf8aa67c5c93b84b704.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:721178c740b212c6460142d8850681719197447e8e54bae76336f49b6ca39917",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceDiagonalPrimeAbel/Variantff6a66afb7380abfa727d5ce2b68e18633a709c1f322baf8aa67c5c93b84b704.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6692c49-7cc4-dd8f-68ba-093da26015da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem retainedPrimeDiagonal_integral_error :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |retainedPrimeDiagonal A +
        (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := primeLogWindow_uniform_error_le
  refine ⟨11 * C, by positivity, ?_⟩
  intro A hA
  have hbounds := floor_square_log_bounds A hA
  have hg := diagonalCorrelation_contDiff A (by linarith)
  have he := hC (Real.log (⌊A ^ 2⌋₊ : ℝ)) A hbounds.1 hbounds.2 (diagonalCorrelation A) hg
  have hvar := diagonalCorrelation_variation_le A (Real.log (⌊A ^ 2⌋₊ : ℝ)) A hA
    hbounds.1 hbounds.2 le_rfl
  have hlo := diagonalCorrelation_abs_le_one A (Real.log (⌊A ^ 2⌋₊ : ℝ)) hA
  rw [diagonalCorrelation_at_upper A (by linarith), abs_zero, add_zero] at he
  rw [retainedPrimeDiagonal_eq_window A hA]
  have he' : |-primeLogWindow (Real.log (⌊A ^ 2⌋₊ : ℝ)) A (diagonalCorrelation A) +
      (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| =
      |primeLogWindow (Real.log (⌊A ^ 2⌋₊ : ℝ)) A (diagonalCorrelation A) -
        (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| := by
    rw [← abs_neg]
    congr 1
    ring
  rw [he']
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceDiagonalPrimeAbel/Variantff6a66afb7380abfa727d5ce2b68e18633a709c1f322baf8aa67c5c93b84b704.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceDiagonalPrimeAbel/Variantff6a66afb7380abfa727d5ce2b68e18633a709c1f322baf8aa67c5c93b84b704.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bdfac74a0d1356f7bad6bcdaf6efecfd046c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
