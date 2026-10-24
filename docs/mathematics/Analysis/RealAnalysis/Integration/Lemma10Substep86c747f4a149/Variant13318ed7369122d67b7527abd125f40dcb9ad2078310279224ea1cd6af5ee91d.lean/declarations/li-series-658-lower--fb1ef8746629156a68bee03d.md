# li_series_658_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b99db9c7-4d62-a425-3aed-e6811be522aa",
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
  "slug": "li-series-658-lower--fb1ef8746629156a68bee03d",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2744,
    "line": 2718,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb1ef8746629156a68bee03d2d63637055487147513a3a78ecf8aeb3132c8c77",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b99db9c7-4d62-a425-3aed-e6811be522aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2718–2744.

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

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L2718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
