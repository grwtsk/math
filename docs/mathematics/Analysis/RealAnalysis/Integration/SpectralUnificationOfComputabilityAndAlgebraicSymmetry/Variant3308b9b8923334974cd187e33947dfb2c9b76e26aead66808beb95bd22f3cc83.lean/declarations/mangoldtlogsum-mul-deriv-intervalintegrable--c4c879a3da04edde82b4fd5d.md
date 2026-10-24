# mangoldtLogSum_mul_deriv_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45c160c33c1f7be7de4255fea1045560def77484",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65ed0bd1-171b-44e4-f239-38f2fc5c59b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50058c50-bbbe-0a5f-d565-f5ba885db8db",
  "kind": "theorem",
  "lexical_name": "mangoldtLogSum_mul_deriv_intervalIntegrable",
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
  "slug": "mangoldtlogsum-mul-deriv-intervalintegrable--c4c879a3da04edde82b4fd5d",
  "source": {
    "blob": "45c160c33c1f7be7de4255fea1045560def77484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4c879a3da04edde82b4fd5d72cb2b148a7aaef11a9986483299d948d886c8f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50058c50-bbbe-0a5f-d565-f5ba885db8db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogSum_mul_deriv_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ mangoldtLogSum (Real.exp (t / 2)) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) volume 0 (2 * A) := by
  have hA0 : 0 ≤ 2 * A := by linarith
  have hC := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hi : IntervalIntegrable (∑ n ∈ primePowerInventory A, fun t : ℝ ↦
      (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
        (if 2 * Real.log n ≤ t then deriv (sourceCorrelation explicitSecondDerivative A) t else 0))
      volume 0 (2 * A) :=
    IntervalIntegrable.sum (primePowerInventory A) (fun n _ ↦
      (intervalIntegrable_closed_step 0 (2 * A) (2 * Real.log n) _
        (hC.continuous_deriv_one.intervalIntegrable _ _)).const_mul _)
  have heq : (∑ n ∈ primePowerInventory A, fun t : ℝ ↦
      (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
        (if 2 * Real.log n ≤ t then
          deriv (sourceCorrelation explicitSecondDerivative A) t else 0)) =
      (fun t ↦ ∑ n ∈ primePowerInventory A, (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
        (if 2 * Real.log n ≤ t then
          deriv (sourceCorrelation explicitSecondDerivative A) t else 0)) := by
    funext t
    simp only [Finset.sum_apply]
  rw [heq] at hi
  apply hi.congr
  intro t ht
  exact (mangoldtLogSum_mul_eq_steps A t _ ((uIoc_of_le hA0 ▸ ht).2)).symm

/-- The closed upper atom is retained and then vanishes by the actual source endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c160c33c1f7be7de4255fea1045560def77484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
