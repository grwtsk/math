# dampedDivisorCoefficient_zero_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ccf6c71a6d1f2e4ad6898f5436ddb3950e7a8cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6e99f44b3307c6e90fdd9c8e3c113e4c14b24d8fab0dd47de13cfce41d707ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:627fad6f-20c5-1c63-ef4b-4eb48525b857",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6b1c13f-4767-30b8-eec0-4e60fb26505e",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_zero_ne_zero_iff",
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
  "slug": "dampeddivisorcoefficient-zero-ne-zero-iff--984e21fac7ae317465b43e81",
  "source": {
    "blob": "2ccf6c71a6d1f2e4ad6898f5436ddb3950e7a8cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 112,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variantd6e99f44b3307c6e90fdd9c8e3c113e4c14b24d8fab0dd47de13cfce41d707ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:984e21fac7ae317465b43e816fd1a28aed378c0fb9ba15c4d38b326fa003f9e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variantd6e99f44b3307c6e90fdd9c8e3c113e4c14b24d8fab0dd47de13cfce41d707ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b1c13f-4767-30b8-eec0-4e60fb26505e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_zero_ne_zero_iff (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient 0 n ≠ 0 ↔ n = 1 := by
  rw [dampedDivisorCoefficient_zero n hn]
  split_ifs <;> simp_all

end
end DampedDivisorCoefficientScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient_eq_primeFactors_prod
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient_eq_primeFactors_prod
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient_eq_primeFactors_prod
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient_nonneg
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient_nonneg
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient_nonneg
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient_le_one
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient_le_one
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient_le_one
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero
#check @DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero_ne_zero_iff
#print DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero_ne_zero_iff
#print axioms DampedDivisorCoefficientScratch.dampedDivisorCoefficient_zero_ne_zero_iff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variantd6e99f44b3307c6e90fdd9c8e3c113e4c14b24d8fab0dd47de13cfce41d707ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variantd6e99f44b3307c6e90fdd9c8e3c113e4c14b24d8fab0dd47de13cfce41d707ca.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ccf6c71a6d1f2e4ad6898f5436ddb3950e7a8cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
