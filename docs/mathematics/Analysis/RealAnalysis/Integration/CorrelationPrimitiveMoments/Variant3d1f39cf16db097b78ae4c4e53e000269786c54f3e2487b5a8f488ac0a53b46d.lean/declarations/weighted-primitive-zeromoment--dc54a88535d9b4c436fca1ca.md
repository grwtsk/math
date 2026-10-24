# weighted_primitive_zeroMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ad5aa36e39afa3a4367c4b63ae75e432a2408b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:756b9d92-4fc1-c5ad-88e0-cf39c6dc5da9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3eb0f2fd-6523-4dd6-3713-6b00b2150441",
  "kind": "theorem",
  "lexical_name": "weighted_primitive_zeroMoment",
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
  "slug": "weighted-primitive-zeromoment--dc54a88535d9b4c436fca1ca",
  "source": {
    "blob": "5ad5aa36e39afa3a4367c4b63ae75e432a2408b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc54a88535d9b4c436fca1ca63579912df3da37ae0495c59280f02a5cad1615b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eb0f2fd-6523-4dd6-3713-6b00b2150441`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_primitive_zeroMoment (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * correlationPrimitive A t) = 0 := by
  have hC1 : Integrable (fun t : ℝ ↦ t *
      (Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t)) := by
    simpa only [one_div, inv_mul_eq_div, mul_assoc] using
      weighted_correlation_firstMoment_integrable A (1 / 2) hA
  have hH0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) * correlationPrimitive A t) := by
    simpa only [pow_zero, one_mul] using weighted_primitive_integrable A 0 hA
  have hH1 : Integrable (fun t : ℝ ↦ t *
      (Real.exp (t / 2) * correlationPrimitive A t)) := by
    simpa only [pow_one, mul_assoc] using weighted_primitive_integrable A 1 hA
  have hb : (∫ t : ℝ, t * (Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t)) =
      -(∫ t : ℝ, (1 : ℝ) * (Real.exp (t / 2) * correlationPrimitive A t)) := by
    apply integral_mul_deriv_eq_deriv_mul_of_integrable
      (fun t _ ↦ hasDerivAt_id t) (fun t _ ↦ weighted_primitive_hasDerivAt A t hA)
      hC1 (by
        apply hH0.congr
        filter_upwards [] with t
        simp) hH1
  have hz := full_correlation_firstMoment_zero A hA
  simp only [← mul_assoc, one_mul] at hb
  rw [hz] at hb
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ad5aa36e39afa3a4367c4b63ae75e432a2408b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
