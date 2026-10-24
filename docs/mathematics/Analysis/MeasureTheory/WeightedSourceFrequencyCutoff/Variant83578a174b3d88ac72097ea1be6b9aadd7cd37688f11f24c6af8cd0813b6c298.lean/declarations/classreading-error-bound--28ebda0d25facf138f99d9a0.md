# classReading_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a138b39-2943-4b60-d183-cd428793b898",
  "kind": "theorem",
  "lexical_name": "classReading_error_bound",
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
  "slug": "classreading-error-bound--28ebda0d25facf138f99d9a0",
  "source": {
    "blob": "fea4b740c518f8a6b51aba9c717dd4fcedd9cdc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 175,
    "path": "GRWTSK/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant83578a174b3d88ac72097ea1be6b9aadd7cd37688f11f24c6af8cd0813b6c298.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28ebda0d25facf138f99d9a0c2754ceec534c3a06bc6cbda3117948b20048176",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant83578a174b3d88ac72097ea1be6b9aadd7cd37688f11f24c6af8cd0813b6c298.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a138b39-2943-4b60-d183-cd428793b898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classReading_error_bound {A : ℝ} (hA : 1 ≤ A) (f g : ComplexSourceL2) :
    |classReading A f - classReading A g| ≤ massDecoder * ‖f - g‖ := by
  have hi : |(⟪windowTest A, f - g⟫_ℂ).re| ≤ ‖windowTest A‖ * ‖f - g‖ :=
    (Complex.abs_re_le_norm _).trans (norm_inner_le_norm _ _)
  have hs := pow_le_pow_left₀ (abs_nonneg _) hi 2
  rw [mul_pow, windowTest_norm_squared hA] at hs
  have hc := mass_decoder_of_square_bound hA (sq_nonneg ‖f - g‖) hs
  rw [Real.sqrt_sq (norm_nonneg _)] at hc
  simpa only [classReading, inner_sub_right, Complex.sub_re, sub_div] using hc


/-- The concrete frequency multiplier is an idempotent orthogonal projection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant83578a174b3d88ac72097ea1be6b9aadd7cd37688f11f24c6af8cd0813b6c298.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant83578a174b3d88ac72097ea1be6b9aadd7cd37688f11f24c6af8cd0813b6c298.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fea4b740c518f8a6b51aba9c717dd4fcedd9cdc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
