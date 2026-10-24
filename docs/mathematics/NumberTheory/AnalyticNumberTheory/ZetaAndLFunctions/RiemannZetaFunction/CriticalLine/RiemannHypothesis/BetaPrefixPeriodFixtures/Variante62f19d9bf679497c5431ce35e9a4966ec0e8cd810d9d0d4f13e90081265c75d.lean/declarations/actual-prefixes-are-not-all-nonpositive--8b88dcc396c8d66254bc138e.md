# actual_prefixes_are_not_all_nonpositive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3384b8ebeb2c8db28055c2f966dbd887f5bbeaee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e62f19d9bf679497c5431ce35e9a4966ec0e8cd810d9d0d4f13e90081265c75d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0f5ce06-4603-82cc-994b-2645ad29a3eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fa0ff28-a8d1-6a16-21c8-803177a68d2e",
  "kind": "theorem",
  "lexical_name": "actual_prefixes_are_not_all_nonpositive",
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
  "slug": "actual-prefixes-are-not-all-nonpositive--8b88dcc396c8d66254bc138e",
  "source": {
    "blob": "3384b8ebeb2c8db28055c2f966dbd887f5bbeaee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BetaPrefixPeriodFixtures/Variante62f19d9bf679497c5431ce35e9a4966ec0e8cd810d9d0d4f13e90081265c75d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b88dcc396c8d66254bc138e70e240b4951c318c1e5029a0834d3394da58d363",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BetaPrefixPeriodFixtures/Variante62f19d9bf679497c5431ce35e9a4966ec0e8cd810d9d0d4f13e90081265c75d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fa0ff28-a8d1-6a16-21c8-803177a68d2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prefixes_are_not_all_nonpositive :
    ¬ ∀ k : ℕ, 4 < k → (∑ n ∈ Finset.Ioc 4 k, centeredBeta 4 n) ≤ 0 := by
  intro h
  have h6 := h 6 (by norm_num)
  rw [prefix_four_six] at h6
  norm_num at h6

end
end FormalResearch.RiemannHypothesis.BetaPrefixPeriodFixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BetaPrefixPeriodFixtures/Variante62f19d9bf679497c5431ce35e9a4966ec0e8cd810d9d0d4f13e90081265c75d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BetaPrefixPeriodFixtures/Variante62f19d9bf679497c5431ce35e9a4966ec0e8cd810d9d0d4f13e90081265c75d.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3384b8ebeb2c8db28055c2f966dbd887f5bbeaee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
