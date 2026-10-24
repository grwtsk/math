# reflected_mixed_kernel_eq_negative_products

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7854b641065a84a906b5d3ccefa70d327f6ae964",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ee54df2aebf5e410152b123100532c19912f78f1f157c8f37031fa5c2e83823.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14730da4-e885-08af-6d9b-5bc6443c6e83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0485b427-6166-a5a5-537e-989ab2bc4694",
  "kind": "theorem",
  "lexical_name": "reflected_mixed_kernel_eq_negative_products",
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
  "slug": "reflected-mixed-kernel-eq-negative-products--767a9c0897a0c30689fc6eb9",
  "source": {
    "blob": "7854b641065a84a906b5d3ccefa70d327f6ae964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 196,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant4ee54df2aebf5e410152b123100532c19912f78f1f157c8f37031fa5c2e83823.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:767a9c0897a0c30689fc6eb96e78c0d6f7afe3f0203e0498f27872d8f8285ea1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant4ee54df2aebf5e410152b123100532c19912f78f1f157c8f37031fa5c2e83823.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0485b427-6166-a5a5-537e-989ab2bc4694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem reflected_mixed_kernel_eq_negative_products
    {A : ℝ} (hA : 0 < A) (t u : ℝ) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u) -
        sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 4 =
      -(∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v - t) *
        deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u)) -
      (1 / 4 : ℝ) * (∫ v : ℝ, normalizedTest explicitSecondDerivative A (v - t) *
        normalizedTest explicitSecondDerivative A (v + Real.log u)) := by
  have h := actual_mixed_curvature_finite_cross_eq_neg_products
    ({()} : Finset Unit) ({()} : Finset Unit) (fun _ => (1 : ℝ))
    (fun _ => Real.log u) (fun _ => (1 : ℝ)) (fun _ => -t) hA
  simpa only [Finset.sum_singleton, one_mul, add_neg_eq_sub, sub_neg_eq_add,
    add_comm, mul_comm] using h

end
end FormalResearch.RiemannHypothesis.SourceActualMixedWorkFubini
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant4ee54df2aebf5e410152b123100532c19912f78f1f157c8f37031fa5c2e83823.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant4ee54df2aebf5e410152b123100532c19912f78f1f157c8f37031fa5c2e83823.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7854b641065a84a906b5d3ccefa70d327f6ae964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
