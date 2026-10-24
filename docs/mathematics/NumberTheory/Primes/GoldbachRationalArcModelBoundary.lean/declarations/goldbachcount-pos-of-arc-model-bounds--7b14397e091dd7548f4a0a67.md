# goldbachCount_pos_of_arc_model_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:176446df-265b-64cf-3380-be1fa0a693fe",
  "kind": "theorem",
  "lexical_name": "goldbachCount_pos_of_arc_model_bounds",
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
  "slug": "goldbachcount-pos-of-arc-model-bounds--7b14397e091dd7548f4a0a67",
  "source": {
    "blob": "69e435dc1e311e5968d3a801dc598e52257d836d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 149,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b14397e091dd7548f4a0a672d227b99ba8d17f8fc80b135007c923a19ab81b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:176446df-265b-64cf-3380-be1fa0a693fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCount_pos_of_arc_model_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1)
    (model : (ℕ × ℕ) → ℝ → ℂ)
    (arcError : (ℕ × ℕ) → ℝ)
    (modelLower minorError : ℝ)
    (hmodel : modelLower ≤
      (goldbachArcModelMajorSum Q N model).re)
    (herror : ∀ aq ∈ goldbachRationalArcIndices Q,
      ‖goldbachArcModelResidual Q N aq model‖ ≤ arcError aq)
    (hminor :
      ‖goldbachRationalMinorContribution Q N‖ ≤ minorError)
    (hmargin :
      (∑ aq ∈ goldbachRationalArcIndices Q, arcError aq) +
          minorError < modelLower) :
    0 < goldbachCount N := by
  let totalArcError : ℝ :=
    ∑ aq ∈ goldbachRationalArcIndices Q, arcError aq
  have hresNorm :
      ‖goldbachArcModelResidualSum Q N model‖ ≤ totalArcError := by
    simpa [totalArcError] using
      (goldbachArcModelResidualSum_norm_le
        (Q := Q) (N := N) (model := model)
        (arcError := arcError) herror)
  have hresReAbs :
      |(goldbachArcModelResidualSum Q N model).re| ≤
        totalArcError :=
    (Complex.abs_re_le_norm
      (goldbachArcModelResidualSum Q N model)).trans hresNorm
  have hresReLower :
      -totalArcError ≤
        (goldbachArcModelResidualSum Q N model).re :=
    (abs_le.mp hresReAbs).1
  have hexact :=
    goldbachRationalArcSum_eq_model_add_residual Q N model
  have hmain :
      modelLower - totalArcError ≤
        (∑ aq ∈ goldbachRationalArcIndices Q,
          goldbachSingleRationalArcContribution Q N aq).re := by
    rw [hexact, Complex.add_re]
    linarith
  apply goldbachCount_pos_of_rational_arc_sum_bounds
    hscale (modelLower - totalArcError) minorError
    hmain hminor
  simpa [totalArcError] using (show
    minorError < modelLower - totalArcError by linarith)

/-- A truncated local main scale may be compared to the finite arc model only
with a separate model error, all per-arc residual errors, and the complete
signed minor error. Every error is charged once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e435dc1e311e5968d3a801dc598e52257d836d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
