# actual_prime_record_is_greatest_causal_response

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0471da6-06a1-a652-e6d1-b2cb0d59f83f",
  "kind": "theorem",
  "lexical_name": "actual_prime_record_is_greatest_causal_response",
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
  "slug": "actual-prime-record-is-greatest-causal-response--a8c32c67c54bab55524e09b1",
  "source": {
    "blob": "f898e4d486c67b83fd2fb9a0fbf08b411eea982b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AttainedCausalDuality/Variant90426e2152c9f8333bf54b99048c87171ad0c39e7b5119eddf421a59cfa3bac7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8c32c67c54bab55524e09b1634f0d699e27b4771b4380a348b38ca15026157c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AttainedCausalDuality/Variant90426e2152c9f8333bf54b99048c87171ad0c39e7b5119eddf421a59cfa3bac7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0471da6-06a1-a652-e6d1-b2cb0d59f83f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_record_is_greatest_causal_response {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    IsGreatest {r : ℝ | ∃ weight : ℕ → ℝ, CausalTest weight K ∧
      (∑ j ∈ Finset.range K, weight j * actualPrimeWork N j) = r} (primeRecordLevel N K) := by
  rw [actual_prime_record_eq_maximum hN]
  exact maximum_is_greatest_causal_response _ K

end
end GRWTSK.RiemannHypothesis.Conversation.AttainedCausalDuality
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AttainedCausalDuality/Variant90426e2152c9f8333bf54b99048c87171ad0c39e7b5119eddf421a59cfa3bac7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AttainedCausalDuality/Variant90426e2152c9f8333bf54b99048c87171ad0c39e7b5119eddf421a59cfa3bac7.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f898e4d486c67b83fd2fb9a0fbf08b411eea982b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
