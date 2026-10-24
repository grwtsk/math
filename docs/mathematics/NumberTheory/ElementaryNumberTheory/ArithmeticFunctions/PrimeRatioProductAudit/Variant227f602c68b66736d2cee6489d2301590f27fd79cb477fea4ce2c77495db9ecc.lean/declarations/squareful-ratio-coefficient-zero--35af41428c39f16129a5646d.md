# squareful_ratio_coefficient_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e54cb65b2a9266db537dc0a3a147ffb6af6f6909",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7987d9e7-0b37-36c6-e08c-0e0a52b5ee7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17a5ad80-4d04-87d0-715e-94d42f32030d",
  "kind": "theorem",
  "lexical_name": "squareful_ratio_coefficient_zero",
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
  "slug": "squareful-ratio-coefficient-zero--35af41428c39f16129a5646d",
  "source": {
    "blob": "e54cb65b2a9266db537dc0a3a147ffb6af6f6909",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 149,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35af41428c39f16129a5646d39af918fdf76702d512d7465e69126feb94536ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17a5ad80-4d04-87d0-715e-94d42f32030d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareful_ratio_coefficient_zero (g u v : ℕ) (huv : Nat.Coprime u v)
    (hsq : ¬Squarefree (u * v)) :
    (ArithmeticFunction.moebius (g * u) : ℝ) * (ArithmeticFunction.moebius (g * v) : ℝ) = 0 := by
  rw [FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio.moebius_ratio_identity g u v huv,
    ArithmeticFunction.moebius_eq_zero_of_not_squarefree hsq]
  simp

end
end PrimeRatioProductScratch

#print axioms PrimeRatioProductScratch.ordered_disjoint_assignment_product
#print axioms PrimeRatioProductScratch.reciprocal_sqrt_product
#print axioms PrimeRatioProductScratch.reciprocal_sqrt_products
#print axioms PrimeRatioProductScratch.prime_product_squarefree
#print axioms PrimeRatioProductScratch.assignments
#print axioms PrimeRatioProductScratch.joinAssignment
#print axioms PrimeRatioProductScratch.supportedPairs
#print axioms PrimeRatioProductScratch.assignment_subsets
#print axioms PrimeRatioProductScratch.assignment_primeFactors
#print axioms PrimeRatioProductScratch.joinAssignment_injOn
#print axioms PrimeRatioProductScratch.mem_supportedPairs_iff
#print axioms PrimeRatioProductScratch.supportedPairs_weight_sum
#print axioms PrimeRatioProductScratch.supportedPairs_moebius_weight_sum
#print axioms PrimeRatioProductScratch.squareful_ratio_coefficient_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54cb65b2a9266db537dc0a3a147ffb6af6f6909` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
