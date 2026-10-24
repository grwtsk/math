# long_divisor_row_thirty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f1067ed-9aa2-6e73-46d8-2ed2c7952b2a",
  "kind": "theorem",
  "lexical_name": "long_divisor_row_thirty",
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
  "slug": "long-divisor-row-thirty--905eab1fd45a530e93edc1be",
  "source": {
    "blob": "d6a18318e73faa14ad4fe0f652bf6164ab501da2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant16897c8c243edabc5859438cde3cdec77e0018408e27288738802022d3824ecb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:905eab1fd45a530e93edc1bed620340194d9e71720f17f7d4b03d5798795a923",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant16897c8c243edabc5859438cde3cdec77e0018408e27288738802022d3824ecb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f1067ed-9aa2-6e73-46d8-2ed2c7952b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem long_divisor_row_thirty (U : ℕ) (hU : 1 ≤ U) :
    longDivisorRow U 30 =
      (if U < 2 then -1 else 0) + (if U < 3 then -1 else 0) +
      (if U < 5 then -1 else 0) + (if U < 6 then 1 else 0) +
      (if U < 10 then 1 else 0) + (if U < 15 then 1 else 0) +
      (if U < 30 then -1 else 0) := by
  have hone : ¬ U < 1 := by omega
  simp [longDivisorRow, divisors_thirty, Finset.sum_filter, hone,
    moebius_apply_prime (by norm_num : Nat.Prime 2),
    moebius_apply_prime (by norm_num : Nat.Prime 3),
    moebius_apply_prime (by norm_num : Nat.Prime 5),
    mu_six, mu_ten, mu_fifteen, mu_thirty]
  ring

/-- The natural supremum envelope is exactly two before the row leaves. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant16897c8c243edabc5859438cde3cdec77e0018408e27288738802022d3824ecb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant16897c8c243edabc5859438cde3cdec77e0018408e27288738802022d3824ecb.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a18318e73faa14ad4fe0f652bf6164ab501da2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
