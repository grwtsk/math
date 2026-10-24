# classMean_two_insertions_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d85a7e5413f0dd23799d93307307e26cb60d6845",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58de7758-367d-dc0f-8ebb-844ac2c8cdc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc643890-aec6-0f3d-12e9-81cb3636594d",
  "kind": "theorem",
  "lexical_name": "classMean_two_insertions_eq",
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
  "slug": "classmean-two-insertions-eq--ef9b1ed79a91f4f19c32eb61",
  "source": {
    "blob": "d85a7e5413f0dd23799d93307307e26cb60d6845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef9b1ed79a91f4f19c32eb61aa7a0aa77873fb7c7304bf0f08a6508f3feab2d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc643890-aec6-0f3d-12e9-81cb3636594d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classMean_two_insertions_eq (A : ℝ) (u v : ℕ)
    (hu : 1 ≤ u) (hv : 1 ≤ v) (hodd : Nat.Coprime 2 (u * v)) :
    let N := ⌊Real.exp A⌋₊
    let h := u * v
    let G := N / max u v
    let leftCutoff := N / max (2 * u) v
    let rightCutoff := N / max u (2 * v)
    let a := SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt G)
    let b := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt leftCutoff)
    let c := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt rightCutoff)
    let κ := FiniteDensityInsertion.twoDensityFactor
    RatioClassVariation.classMean A u v + RatioClassVariation.classMean A (2 * u) v +
      RatioClassVariation.classMean A u (2 * v) - κ * RatioClassVariation.classMean A u v =
      (ArithmeticFunction.moebius h : ℝ) *
        ((a - (Real.sqrt 2 / 2) * (b + c) - κ * a) * classKernelSum A h G +
          (Real.sqrt 2 / 2) * b *
            (classScaleDifference A h leftCutoff + classKernelTail A h leftCutoff G) +
          (Real.sqrt 2 / 2) * c *
            (classScaleDifference A h rightCutoff + classKernelTail A h rightCutoff G)) := by
  dsimp only
  have hL := (RatioInsertionCutoffs.commonScale_two_left_bounds ⌊Real.exp A⌋₊ u v hu).2
  have hR := (RatioInsertionCutoffs.commonScale_two_right_bounds ⌊Real.exp A⌋₊ u v hv).2
  rw [← classKernelSum_two_difference_eq A (u * v) _ _ hL,
    ← classKernelSum_two_difference_eq A (u * v) _ _ hR]
  have hμ : (ArithmeticFunction.moebius (2 * (u * v)) : ℝ) =
      -(ArithmeticFunction.moebius (u * v) : ℝ) := by
    rw [TwoInsertionBoundary.moebius_two_mul, if_pos hodd.symm]
  have hr : u * (2 * v) = 2 * (u * v) := by ring
  simp only [classMean_eq_kernelSum, Nat.mul_assoc, hr, hμ]
  simpa only [sub_eq_add_neg, neg_mul] using three_means_algebra
    (ArithmeticFunction.moebius (u * v) : ℝ)
    (SquarefreeCount.finiteSquarefreeDensity (u * v) (Nat.sqrt (⌊Real.exp A⌋₊ / max u v)))
    (SquarefreeCount.finiteSquarefreeDensity (2 * (u * v))
      (Nat.sqrt (⌊Real.exp A⌋₊ / max (2 * u) v)))
    (SquarefreeCount.finiteSquarefreeDensity (2 * (u * v))
      (Nat.sqrt (⌊Real.exp A⌋₊ / max u (2 * v)))) FiniteDensityInsertion.twoDensityFactor
    (classKernelSum A (u * v) (⌊Real.exp A⌋₊ / max u v))
    (classKernelSum A (2 * (u * v)) (⌊Real.exp A⌋₊ / max (2 * u) v))
    (classKernelSum A (2 * (u * v)) (⌊Real.exp A⌋₊ / max u (2 * v)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85a7e5413f0dd23799d93307307e26cb60d6845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
