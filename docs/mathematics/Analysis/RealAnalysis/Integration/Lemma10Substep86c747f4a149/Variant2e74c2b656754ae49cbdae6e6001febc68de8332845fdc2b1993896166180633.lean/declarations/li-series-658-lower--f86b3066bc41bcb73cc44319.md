# li_series_658_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2710,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8c71328-90c5-422a-b07b-e8d9a6ab18e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a98c3a99-f91b-21ce-53e2-1749a5555e92",
  "kind": "lemma",
  "lexical_name": "li_series_658_lower",
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
  "slug": "li-series-658-lower--f86b3066bc41bcb73cc44319",
  "source": {
    "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2736,
    "line": 2710,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f86b3066bc41bcb73cc44319f9b75b7e243ee57c527660baac8ee0f988c32734",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a98c3a99-f91b-21ce-53e2-1749a5555e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2710–2736.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma li_series_658_lower : (3.32710 : ℝ) ≤
    ∑' n : ℕ, (Real.log 6.58) ^ (n + 1) /
      ((↑(n + 1) : ℝ) * ↑(n + 1).factorial) := by
  have h_sum_le_tsum :
      (∑ n ∈ Finset.range 10, (Real.log 6.58) ^ (n + 1) /
        ((↑(n + 1) : ℝ) * ↑(n + 1).factorial)) ≤
        ∑' n : ℕ, (Real.log 6.58) ^ (n + 1) /
          ((↑(n + 1) : ℝ) * ↑(n + 1).factorial) :=
    Summable.sum_le_tsum _ (fun _ _ => div_nonneg (by positivity) (by positivity))
      summable_li_series_658
  have h_partial : (3.32710 : ℝ) ≤
      ∑ n ∈ Finset.range 10, (Real.log 6.58) ^ (n + 1) /
        ((↑(n + 1) : ℝ) * ↑(n + 1).factorial) := by
    have hlog : (1.884034 : ℝ) ≤ Real.log 6.58 := by linarith [LogTables.log_6_58_gt]
    have h_const : (3.32710 : ℝ) ≤
        ∑ n ∈ Finset.range 10, (1.884034 : ℝ) ^ (n + 1) /
          ((↑(n + 1) : ℝ) * ↑(n + 1).factorial) := by
      norm_num [Finset.sum_range_succ, Nat.factorial]
    have h_const_le_partial :
        (∑ n ∈ Finset.range 10, (1.884034 : ℝ) ^ (n + 1) /
          ((↑(n + 1) : ℝ) * ↑(n + 1).factorial)) ≤
        ∑ n ∈ Finset.range 10, (Real.log 6.58) ^ (n + 1) /
          ((↑(n + 1) : ℝ) * ↑(n + 1).factorial) := by
      gcongr with n hn
    exact le_trans h_const h_const_le_partial
  exact le_trans h_partial h_sum_le_tsum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean#L2710).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdccd0a48781b270841d4381607ac6c992b7e0df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
