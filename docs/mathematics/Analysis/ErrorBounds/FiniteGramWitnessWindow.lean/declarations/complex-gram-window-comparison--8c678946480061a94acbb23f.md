# complex_gram_window_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95c5d8df-5720-ae29-9f2e-d1d3112faffa",
  "kind": "theorem",
  "lexical_name": "complex_gram_window_comparison",
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
  "slug": "complex-gram-window-comparison--8c678946480061a94acbb23f",
  "source": {
    "blob": "c109fc6c3687a5a15667fa0957e51f48d09239bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 150,
    "path": "GRWTSK/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c678946480061a94acbb23fae55bf64d072ecce82c4e04a881af2c33ffcff28",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95c5d8df-5720-ae29-9f2e-d1d3112faffa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_gram_window_comparison
    (weight : ∀ n, I n → ℝ) (source : ∀ n, I n × I n → ℂ)
    (feature : ∀ n, K n → I n → ℂ) (gain : ∀ n, I (n + 1) → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ)
    (N k : ℕ) (rate forcing : ℕ → ℝ) (initial actual tail tailBound : ℝ)
    (test : I (N + k) → ℂ)
    (weightsNonnegative : ∀ j, j ≤ k → ∀ i, 0 ≤ weight (N + j) i)
    (rateNonnegative : ∀ j, j < k → 0 ≤ rate j)
    (initialBound : modulusResidualMass weight source feature N ≤ initial)
    (columnBound : ∀ j, j < k → ∀ i,
      (∑ a, weight (N + j + 1) a * ‖gain (N + j) a i‖) ≤ rate j * weight (N + j) i)
    (modelUpdate : ∀ j, j < k → ∀ p, complexGram (feature (N + j + 1)) p =
      complexTransport (gain (N + j)) (complexGram (feature (N + j))) p + injection (N + j) p)
    (mismatchBound : ∀ j, j < k →
      modulusMass (pairWeight (weight (N + j + 1)))
        (complexMismatch gain source injection (N + j)) ≤ forcing j)
    (testBound : ∀ i, ‖test i‖ ≤ weight (N + k) i)
    (sourceReadout : actual = (complexReadout test (source (N + k))).re + tail)
    (tailEstimate : |tail| ≤ tailBound) :
    |actual - (complexReadout test (complexGram (feature (N + k)))).re| ≤
      windowMajorant (fun j => rate j * rate j) forcing initial k + tailBound := by
  have step (j : ℕ) (hj : j < k) :
      modulusResidualMass weight source feature (N + (j + 1)) ≤
        (rate j * rate j) * modulusResidualMass weight source feature (N + j) + forcing j := by
    have nextWeights : ∀ i, 0 ≤ weight (N + j + 1) i := by
      convert weightsNonnegative (j + 1) (by omega) using 1
      rfl
    have bound := modulus_residual_step (weight (N + j)) (weight (N + j + 1))
      (gain (N + j)) (source (N + j)) (complexGram (feature (N + j)))
      (source (N + j + 1)) (complexGram (feature (N + j + 1))) (injection (N + j))
      (rate j) (weightsNonnegative j (Nat.le_of_lt hj)) nextWeights
      (rateNonnegative j hj) (columnBound j hj) (modelUpdate j hj)
    have charged := bound.trans (add_le_add_right (mismatchBound j hj)
      ((rate j * rate j) * modulusResidualMass weight source feature (N + j)))
    convert charged using 1 <;> rfl
  have endpoint := window_majorant_bound_from (modulusResidualMass weight source feature)
    (fun j => rate j * rate j) forcing N k initial initialBound
    (fun j hj => mul_nonneg (rateNonnegative j hj) (rateNonnegative j hj)) step
  have comparison := readout_with_tail_bound (weight (N + k)) test (source (N + k))
    (feature (N + k)) actual tail (weightsNonnegative k le_rfl) testBound sourceReadout
  exact comparison.trans (add_le_add endpoint tailEstimate)

end Window

/-- A supplied finite comparison and a strict margin exclude the negative witness.
The comparison may be obtained from the local window theorem; positivity is from the SAME Gram. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c109fc6c3687a5a15667fa0957e51f48d09239bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
