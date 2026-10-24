# ordered_density_assignment_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97612452108d954148753d6de71ea73e66200f26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:234a8102-8d41-4fba-f1de-6efdb0546b56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a36b4c88-5618-4587-7d1f-08ff01052f6f",
  "kind": "theorem",
  "lexical_name": "ordered_density_assignment_product",
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
  "slug": "ordered-density-assignment-product--dd5e15ce3c4a2d4eab788be5",
  "source": {
    "blob": "97612452108d954148753d6de71ea73e66200f26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd5e15ce3c4a2d4eab788be58ac538049be094e423dd472b06f7abacbe3c4837",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a36b4c88-5618-4587-7d1f-08ff01052f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordered_density_assignment_product (P : Finset ℕ) :
    (∑ U ∈ P.powerset, ∑ V ∈ (P\U).powerset,
      (∏ p ∈ U, -Real.sqrt (p:ℝ)/((p:ℝ)+1)) *
      (∏ p ∈ V, -Real.sqrt (p:ℝ)/((p:ℝ)+1))) =
      ∏ p ∈ P, primeDensityFactor (p:ℝ) := by
  rw [PrimeRatioProduct.ordered_disjoint_assignment_product]
  apply prod_congr rfl
  intro p _
  rw [primeDensityFactor_eq p (Nat.cast_nonneg p)]
  ring

end
end FiniteDensityProductScratch

#print FiniteDensityProductScratch.primeDensityFactor
#print axioms FiniteDensityProductScratch.primeDensityFactor
#print FiniteDensityProductScratch.primeDensityFactor_eq
#print axioms FiniteDensityProductScratch.primeDensityFactor_eq
#print FiniteDensityProductScratch.primeDensityFactor_nonneg
#print axioms FiniteDensityProductScratch.primeDensityFactor_nonneg
#print FiniteDensityProductScratch.primeDensityFactor_le_exp
#print axioms FiniteDensityProductScratch.primeDensityFactor_le_exp
#print FiniteDensityProductScratch.finite_prime_density_product_le_exp
#print axioms FiniteDensityProductScratch.finite_prime_density_product_le_exp
#print FiniteDensityProductScratch.ordered_density_assignment_product
#print axioms FiniteDensityProductScratch.ordered_density_assignment_product
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97612452108d954148753d6de71ea73e66200f26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
