# prime_square_green_weak_discrepancy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c95a94fe-b518-9344-8cd7-d1c482183619",
  "kind": "theorem",
  "lexical_name": "prime_square_green_weak_discrepancy",
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
  "slug": "prime-square-green-weak-discrepancy--786758d39a8b4aecab01f4f3",
  "source": {
    "blob": "4542eb0b4186a5eaebfb61486e77f54a792ee7e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 155,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:786758d39a8b4aecab01f4f387fdfafd8e637820377f57fbafdad29a5ba09cac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c95a94fe-b518-9344-8cd7-d1c482183619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_square_green_weak_discrepancy (A : ℝ) (hA : 1 ≤ A)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    (∫ t, primeSquareGreenResidual A t * poleSquaredDifferentialOperator f t) =
      lowerPowerDiscrepancy A ⟨f, hf.continuous⟩ := by
  have ha : Integrable (fun t ↦ ∑ n ∈ lowerPowerInventory A,
      primeWeight n * (poleSquaredGreenKernel (t - Real.log n) *
        poleSquaredDifferentialOperator f t)) :=
    integrable_finsetSum _ (fun n _ ↦
      (translated_green_operator_integrable f hf hcf (Real.log n)).const_mul (primeWeight n))
  have he (t : ℝ) : primeSquareGreenResidual A t * poleSquaredDifferentialOperator f t =
      (∑ n ∈ lowerPowerInventory A, primeWeight n *
        (poleSquaredGreenKernel (t - Real.log n) * poleSquaredDifferentialOperator f t)) -
        (∫ x in (0 : ℝ)..2 * A, Real.exp (x / 2) * poleSquaredGreenKernel (t - x)) *
          poleSquaredDifferentialOperator f t := by
    simp [primeSquareGreenResidual, sub_mul, Finset.sum_mul, mul_assoc]
  simp_rw [he]
  rw [integral_sub ha (continuum_green_operator_integrable A hA f hf hcf),
    integral_finsetSum (lowerPowerInventory A) (fun (n : ℕ) _ ↦
      (translated_green_operator_integrable f hf hcf (Real.log n)).const_mul (primeWeight n))]
  simp_rw [integral_const_mul, translated_green_operator_integral f hf hcf]
  rw [continuum_green_operator_integral A hA f hf hcf]
  rfl

/-- The actual inverse/source pairing is genuinely integrable before its evaluation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4542eb0b4186a5eaebfb61486e77f54a792ee7e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
