# abs_response_le_kernelMass_mul_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:baeb2a03-6aab-ba2b-255d-2aa83446ff61",
  "kind": "theorem",
  "lexical_name": "abs_response_le_kernelMass_mul_sq",
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
  "slug": "abs-response-le-kernelmass-mul-sq--5ca49fe0c58c2ed960a5a41d",
  "source": {
    "blob": "ad7d7b67d02eea6513a45adf610333123db10ed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 95,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ca49fe0c58c2ed960a5a41d55a2358812adaad801f69699f82179b0cb72d1be",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baeb2a03-6aab-ba2b-255d-2aa83446ff61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_response_le_kernelMass_mul_sq
    {X : ℕ} (stage : PrimeThetaQuadraticKernelStage X)
    {A : ℝ} (hA : 0 ≤ A)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ A)
    (v : ℝ) :
    |stage.response v| ≤ stage.kernelMass v * A^2 := by
  unfold response kernelMass
  calc
    |∑ p ∈ thetaPrimeWindow X,
        ∑ q ∈ thetaPrimeWindow X,
          stage.kernel v p q *
            (|thetaError (p : ℝ)| + 1) *
            (|thetaError (q : ℝ)| + 1)|
        ≤ ∑ p ∈ thetaPrimeWindow X,
            |∑ q ∈ thetaPrimeWindow X,
              stage.kernel v p q *
                (|thetaError (p : ℝ)| + 1) *
                (|thetaError (q : ℝ)| + 1)| := by
          exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ thetaPrimeWindow X,
          ∑ q ∈ thetaPrimeWindow X,
            |stage.kernel v p q *
              (|thetaError (p : ℝ)| + 1) *
              (|thetaError (q : ℝ)| + 1)| := by
          apply Finset.sum_le_sum
          intro p hp
          exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ thetaPrimeWindow X,
          ∑ q ∈ thetaPrimeWindow X,
            |stage.kernel v p q| * A^2 := by
          apply Finset.sum_le_sum
          intro p hp
          apply Finset.sum_le_sum
          intro q hq
          have hpBound :=
            henvelope (p : ℝ)
              (thetaPrimeWindow_mem_octave hp)
          have hqBound :=
            henvelope (q : ℝ)
              (thetaPrimeWindow_mem_octave hq)
          have hp0 :
              0 ≤ |thetaError (p : ℝ)| + 1 := by positivity
          have hq0 :
              0 ≤ |thetaError (q : ℝ)| + 1 := by positivity
          have hproduct :
              (|thetaError (p : ℝ)| + 1) *
                  (|thetaError (q : ℝ)| + 1) ≤
                A * A :=
            mul_le_mul hpBound hqBound hq0 hA
          have hmul :=
            mul_le_mul_of_nonneg_left hproduct
              (abs_nonneg (stage.kernel v p q))
          simpa only [abs_mul, abs_of_nonneg hp0,
            abs_of_nonneg hq0, pow_two, mul_assoc] using hmul
    _ = (∑ p ∈ thetaPrimeWindow X,
          ∑ q ∈ thetaPrimeWindow X,
            |stage.kernel v p q|) * A^2 := by
          rw [Finset.sum_mul]
          apply Finset.sum_congr rfl
          intro p hp
          rw [Finset.sum_mul]

end PrimeThetaQuadraticKernelStage

/-- A source-faithful finite prime-pair majorant sufficient for one nonlinear
threshold step.  Existence of the stages and all three estimates remains an
arithmetic proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad7d7b67d02eea6513a45adf610333123db10ed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
