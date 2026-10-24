# primeContribution_add_remainder_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b111b688992e3b15c161c4b605b22d6dbb11d6cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09d116b9-cea2-b2dc-48c9-b233f9ba15f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcedff12-17ef-97d7-fdce-02f26a56d1e3",
  "kind": "theorem",
  "lexical_name": "primeContribution_add_remainder_abs_le",
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
  "slug": "primecontribution-add-remainder-abs-le--374f0c7ae77b3a8e49a88d84",
  "source": {
    "blob": "b111b688992e3b15c161c4b605b22d6dbb11d6cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 189,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:374f0c7ae77b3a8e49a88d846341fa5bc64c686dec4e4bd97b43cbd7aebdc938",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcedff12-17ef-97d7-fdce-02f26a56d1e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeContribution_add_remainder_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |primeContribution A + firstPrimeRemainder A - thetaConstant| ≤ 2 := by
  rw [primeContribution_eq_remainder A hA]
  have he : thetaConstant - firstPrimeDecayingMain A - firstPrimeRemainder A +
      firstPrimeRemainder A - thetaConstant = -firstPrimeDecayingMain A := by ring
  rw [he, abs_neg]
  exact firstPrimeDecayingMain_abs_le A hA

end
end FirstPrimeAbelScratch

set_option pp.universes true
#print FirstPrimeAbelScratch.firstPrimeWeight
#print axioms FirstPrimeAbelScratch.firstPrimeWeight
#print FirstPrimeAbelScratch.firstPrimeRemainder
#print axioms FirstPrimeAbelScratch.firstPrimeRemainder
#print FirstPrimeAbelScratch.firstPrimeDecayingMain
#print axioms FirstPrimeAbelScratch.firstPrimeDecayingMain
#print FirstPrimeAbelScratch.firstPrimeWeight_hasDerivAt
#print axioms FirstPrimeAbelScratch.firstPrimeWeight_hasDerivAt
#print FirstPrimeAbelScratch.firstPrimeWeight_contDiff
#print axioms FirstPrimeAbelScratch.firstPrimeWeight_contDiff
#print FirstPrimeAbelScratch.firstPrimeWeight_zero_endpoint
#print axioms FirstPrimeAbelScratch.firstPrimeWeight_zero_endpoint
#print FirstPrimeAbelScratch.firstPrimeWeight_at_zero
#print axioms FirstPrimeAbelScratch.firstPrimeWeight_at_zero
#print FirstPrimeAbelScratch.first_prime_summand
#print axioms FirstPrimeAbelScratch.first_prime_summand
#print FirstPrimeAbelScratch.primeContribution_eq_closed
#print axioms FirstPrimeAbelScratch.primeContribution_eq_closed
#print FirstPrimeAbelScratch.firstPrimeWeight_intervalIntegrable
#print axioms FirstPrimeAbelScratch.firstPrimeWeight_intervalIntegrable
#print FirstPrimeAbelScratch.firstPrimeRemainder_intervalIntegrable
#print axioms FirstPrimeAbelScratch.firstPrimeRemainder_intervalIntegrable
#print FirstPrimeAbelScratch.primeContribution_centered_abel
#print axioms FirstPrimeAbelScratch.primeContribution_centered_abel
#print FirstPrimeAbelScratch.firstPrimeWeight_integral_eq_neg
#print axioms FirstPrimeAbelScratch.firstPrimeWeight_integral_eq_neg
#print FirstPrimeAbelScratch.primeContribution_eq_remainder
#print axioms FirstPrimeAbelScratch.primeContribution_eq_remainder
#print FirstPrimeAbelScratch.firstPrimeDecayingMain_intervalIntegrable
#print axioms FirstPrimeAbelScratch.firstPrimeDecayingMain_intervalIntegrable
#print FirstPrimeAbelScratch.firstPrimeDecayingMain_abs_le
#print axioms FirstPrimeAbelScratch.firstPrimeDecayingMain_abs_le
#print FirstPrimeAbelScratch.firstPrimeWeight_derivative_abs_le
#print axioms FirstPrimeAbelScratch.firstPrimeWeight_derivative_abs_le
#print FirstPrimeAbelScratch.primeContribution_add_remainder_abs_le
#print axioms FirstPrimeAbelScratch.primeContribution_add_remainder_abs_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b111b688992e3b15c161c4b605b22d6dbb11d6cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
