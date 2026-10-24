# truncated_three_six

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27c804fba6c2d0bf277ca44cc2186cee3b104bda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca7b89011b4d2b1e98ab9d233b516added555c71d5be6ce8f05033929e5f564d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0851b7ba-e3e0-1be3-a1de-8bedd6c76c9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d215ef6b-9f31-e3dc-763d-b3b96a1f20d2",
  "kind": "theorem",
  "lexical_name": "truncated_three_six",
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
  "slug": "truncated-three-six--37d0b484d857cf3138815506",
  "source": {
    "blob": "27c804fba6c2d0bf277ca44cc2186cee3b104bda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 18,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignCombined/Variantca7b89011b4d2b1e98ab9d233b516added555c71d5be6ce8f05033929e5f564d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37d0b484d857cf3138815506ce85b752f310a589050f76ea0f66cd67456f6478",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignCombined/Variantca7b89011b4d2b1e98ab9d233b516added555c71d5be6ce8f05033929e5f564d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d215ef6b-9f31-e3dc-763d-b3b96a1f20d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncated_three_six (ε : ℝ) :
    truncatedDivisorCoefficient 3 ε 6 =
      1 - Real.exp (-ε * Real.log 2) - Real.exp (-ε * Real.log 3) := by
  have hd : (Nat.divisors 6).filter (fun d => d ≤ 3) = {1, 2, 3} := by decide
  unfold truncatedDivisorCoefficient
  rw [hd]
  norm_num [Finset.sum_insert, Finset.sum_singleton,
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  ring

/-- The actual partial divisor sum is uniformly negative on the entire permitted damping range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignCombined/Variantca7b89011b4d2b1e98ab9d233b516added555c71d5be6ce8f05033929e5f564d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignCombined/Variantca7b89011b4d2b1e98ab9d233b516added555c71d5be6ce8f05033929e5f564d.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27c804fba6c2d0bf277ca44cc2186cee3b104bda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
