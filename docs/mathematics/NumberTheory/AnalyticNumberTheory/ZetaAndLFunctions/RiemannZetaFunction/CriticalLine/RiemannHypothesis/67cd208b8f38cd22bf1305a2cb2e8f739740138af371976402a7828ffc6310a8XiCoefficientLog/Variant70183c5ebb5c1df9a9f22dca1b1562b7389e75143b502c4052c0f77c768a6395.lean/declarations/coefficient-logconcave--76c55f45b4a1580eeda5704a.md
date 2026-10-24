# coefficient_logConcave

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2eb62d6-6aaf-7dc8-0cb0-e921cdbae2ff",
  "kind": "theorem",
  "lexical_name": "coefficient_logConcave",
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
  "slug": "coefficient-logconcave--76c55f45b4a1580eeda5704a",
  "source": {
    "blob": "85c6bc2edc63c6d9a171a5621fe4abfeed599b2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant70183c5ebb5c1df9a9f22dca1b1562b7389e75143b502c4052c0f77c768a6395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76c55f45b4a1580eeda5704a29c1192a5d8c69500584d38304fead61f776b18f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant70183c5ebb5c1df9a9f22dca1b1562b7389e75143b502c4052c0f77c768a6395.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2eb62d6-6aaf-7dc8-0cb0-e921cdbae2ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_logConcave (n : ℕ) :
    coefficient n * coefficient (n + 2) ≤ coefficient (n + 1) ^ 2 := by
  have h := thetaTail_even_index_logConcave (2 * n + 1) (t := 0) le_rfl
  rw [coefficient_eq_thetaTail n, coefficient_eq_thetaTail (n + 1),
    coefficient_eq_thetaTail (n + 2)]
  have hn1 : 2 * (n + 1) + 1 = (2 * n + 1) + 2 := by omega
  have hn2 : 2 * (n + 2) + 1 = (2 * n + 1) + 4 := by omega
  rw [hn1, hn2, pow_add, pow_add]
  norm_num
  have hmul := mul_le_mul_of_nonneg_left h (show 0 ≤ 1024 * ((4 : ℝ) ^ n) ^ 2 by positivity)
  nlinarith only [hmul]
end
end FormalResearch.RiemannHypothesis.XiJensenTrace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant70183c5ebb5c1df9a9f22dca1b1562b7389e75143b502c4052c0f77c768a6395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant70183c5ebb5c1df9a9f22dca1b1562b7389e75143b502c4052c0f77c768a6395.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85c6bc2edc63c6d9a171a5621fe4abfeed599b2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
