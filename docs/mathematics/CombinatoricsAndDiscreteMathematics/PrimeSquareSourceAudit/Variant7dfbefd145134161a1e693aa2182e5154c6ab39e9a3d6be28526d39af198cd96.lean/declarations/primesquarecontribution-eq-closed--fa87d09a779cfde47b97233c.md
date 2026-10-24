# primeSquareContribution_eq_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f665fb2c6457dca848725e645649845c68dedfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ded53a89-eaa2-21da-a675-56f01ea34334",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4015316-d89d-ae06-1c24-74dfa10e98c8",
  "kind": "theorem",
  "lexical_name": "primeSquareContribution_eq_closed",
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
  "slug": "primesquarecontribution-eq-closed--fa87d09a779cfde47b97233c",
  "source": {
    "blob": "2f665fb2c6457dca848725e645649845c68dedfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa87d09a779cfde47b97233c96f8d16ee9fc6e144b437d27bf4e312b760fb991",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4015316-d89d-ae06-1c24-74dfa10e98c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSquareContribution_eq_closed (A : ℝ) (hA : 1 ≤ A) :
    primeSquareContribution A = ∑ p ∈ closedPrimeRoots A,
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ)) := by
  rw [primeSquareContribution_eq_strict]
  exact Finset.sum_subset (Finset.filter_subset _ _)
    (fun p hp hnot => prime_root_endpoint_summand_zero A hA p hp hnot)

end
end PrimeSquareSourceScratch

set_option pp.universes true
#print PrimeSquareSourceScratch.IsPrimeSquare
#print axioms PrimeSquareSourceScratch.IsPrimeSquare
#print PrimeSquareSourceScratch.primeSquareIndices
#print axioms PrimeSquareSourceScratch.primeSquareIndices
#print PrimeSquareSourceScratch.closedPrimeRoots
#print axioms PrimeSquareSourceScratch.closedPrimeRoots
#print PrimeSquareSourceScratch.strictPrimeRoots
#print axioms PrimeSquareSourceScratch.strictPrimeRoots
#print PrimeSquareSourceScratch.primeSquareContribution
#print axioms PrimeSquareSourceScratch.primeSquareContribution
#print PrimeSquareSourceScratch.mem_closedPrimeRoots_iff
#print axioms PrimeSquareSourceScratch.mem_closedPrimeRoots_iff
#print PrimeSquareSourceScratch.mem_strictPrimeRoots_iff
#print axioms PrimeSquareSourceScratch.mem_strictPrimeRoots_iff
#print PrimeSquareSourceScratch.prime_square_cutoff_iff
#print axioms PrimeSquareSourceScratch.prime_square_cutoff_iff
#print PrimeSquareSourceScratch.primeSquareIndices_eq_image
#print axioms PrimeSquareSourceScratch.primeSquareIndices_eq_image
#print PrimeSquareSourceScratch.four_mem_primeSquareIndices_iff
#print axioms PrimeSquareSourceScratch.four_mem_primeSquareIndices_iff
#print PrimeSquareSourceScratch.prime_square_summand
#print axioms PrimeSquareSourceScratch.prime_square_summand
#print PrimeSquareSourceScratch.primeSquareContribution_eq_strict
#print axioms PrimeSquareSourceScratch.primeSquareContribution_eq_strict
#print PrimeSquareSourceScratch.prime_root_endpoint_summand_zero
#print axioms PrimeSquareSourceScratch.prime_root_endpoint_summand_zero
#print PrimeSquareSourceScratch.primeSquareContribution_eq_closed
#print axioms PrimeSquareSourceScratch.primeSquareContribution_eq_closed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f665fb2c6457dca848725e645649845c68dedfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
