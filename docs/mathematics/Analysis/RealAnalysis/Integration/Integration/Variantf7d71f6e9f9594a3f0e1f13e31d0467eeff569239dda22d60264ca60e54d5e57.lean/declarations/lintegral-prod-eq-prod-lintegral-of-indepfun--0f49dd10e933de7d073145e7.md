# lintegral_prod_eq_prod_lintegral_of_indepFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "086aa988b14ec0f3ccc6a1ecb63843e8b14b2db4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c197b01-c09a-0673-41ef-a61418035b21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84a9d639-3ab8-1949-4d89-1d0aefde82a4",
  "kind": "theorem",
  "lexical_name": "lintegral_prod_eq_prod_lintegral_of_indepFun",
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
  "slug": "lintegral-prod-eq-prod-lintegral-of-indepfun--0f49dd10e933de7d073145e7",
  "source": {
    "blob": "086aa988b14ec0f3ccc6a1ecb63843e8b14b2db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f49dd10e933de7d073145e74e2492543bf9b650f5ba3cd855a6e7b18628a627",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84a9d639-3ab8-1949-4d89-1d0aefde82a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_prod_eq_prod_lintegral_of_indepFun {ι : Type*}
    (s : Finset ι) (X : ι → Ω → ℝ≥0∞) (hX : iIndepFun X μ)
    (x_mea : ∀ i, Measurable (X i)) :
    ∫⁻ ω, ∏ i ∈ s, (X i ω) ∂μ = ∏ i ∈ s, ∫⁻ ω, X i ω ∂μ := by
  have : IsProbabilityMeasure μ := hX.isProbabilityMeasure
  induction s using Finset.cons_induction with
  | empty => simp only [Finset.prod_empty, lintegral_const, measure_univ, mul_one]
  | cons j s hj ihs =>
    simp only [← Finset.prod_apply, Finset.prod_cons, ← ihs]
    apply lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun'
    · exact (x_mea j).aemeasurable
    · exact s.aemeasurable_prod' (fun i _ ↦ (x_mea i).aemeasurable)
    · exact (iIndepFun.indepFun_finset_prod_of_notMem hX x_mea hj).symm

/-- The product of two independent, integrable, real-valued random variables is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `086aa988b14ec0f3ccc6a1ecb63843e8b14b2db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
