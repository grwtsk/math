# truncated_three_six_le_neg_quarter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff821df0a4f6ef337c8c82adc0bc918466d517f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4d6a2ee13411985f5632da2a64ca8eeacf45ee8db1ba270ac4c8c25d8d0f6fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66ff87a9-83f9-4f79-70d8-881d92b8ce62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55cd9209-b143-cda3-35b5-0ad1c50905cb",
  "kind": "theorem",
  "lexical_name": "truncated_three_six_le_neg_quarter",
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
  "slug": "truncated-three-six-le-neg-quarter--11527df109e4292132843f2d",
  "source": {
    "blob": "ff821df0a4f6ef337c8c82adc0bc918466d517f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignAudit/Variantb4d6a2ee13411985f5632da2a64ca8eeacf45ee8db1ba270ac4c8c25d8d0f6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11527df109e4292132843f2d2d8b4d43a322e9729769e299b93c7b299e35ca1b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignAudit/Variantb4d6a2ee13411985f5632da2a64ca8eeacf45ee8db1ba270ac4c8c25d8d0f6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55cd9209-b143-cda3-35b5-0ad1c50905cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncated_three_six_le_neg_quarter (ε : ℝ) (hε : 0 ≤ ε) (hsmall : ε ≤ 1 / 4) :
    truncatedDivisorCoefficient 3 ε 6 ≤ -(1 / 4 : ℝ) := by
  rw [truncated_three_six]
  have hl2 : Real.log 2 ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hl3 : Real.log 3 ≤ 2 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 3)]
  have h2 := Real.add_one_le_exp (-ε * Real.log 2)
  have h3 := Real.add_one_le_exp (-ε * Real.log 3)
  have hp2 := mul_le_mul_of_nonneg_left hl2 hε
  have hp3 := mul_le_mul_of_nonneg_left hl3 hε
  nlinarith

end
end TruncatedDivisorSignScratch

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#print TruncatedDivisorSignScratch.truncated_three_six
#print axioms TruncatedDivisorSignScratch.truncated_three_six
#print TruncatedDivisorSignScratch.truncated_three_six_le_neg_quarter
#print axioms TruncatedDivisorSignScratch.truncated_three_six_le_neg_quarter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignAudit/Variantb4d6a2ee13411985f5632da2a64ca8eeacf45ee8db1ba270ac4c8c25d8d0f6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignAudit/Variantb4d6a2ee13411985f5632da2a64ca8eeacf45ee8db1ba270ac4c8c25d8d0f6fb.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff821df0a4f6ef337c8c82adc0bc918466d517f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
