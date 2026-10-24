# Li_diff_pos_at_6_58

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88be1b47c741ee6510e22488953556110e8e6ff5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2737,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09fcfce7-acf3-1cf8-fcdc-ed04b1fb2b8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9584c0c9-4358-7a28-7d56-d48e134aace8",
  "kind": "theorem",
  "lexical_name": "Li_diff_pos_at_6_58",
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
  "slug": "li-diff-pos-at-6-58--80a853ddc30ff0e755800ca8",
  "source": {
    "blob": "88be1b47c741ee6510e22488953556110e8e6ff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2763,
    "line": 2737,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80a853ddc30ff0e755800ca896c35108ff4bcabcae3a12ff2ba154c2a3a5f4c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9584c0c9-4358-7a28-7d56-d48e134aace8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2737–2763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Li_diff_pos_at_6_58 : Li 6.58 - 6.58 / log 6.58 > 0 := by
  have hli2 : li 2 ≤ (1.0452 : ℝ) := (li.two_approx).2
  have hll : (0.633415 : ℝ) ≤ Real.log (Real.log 6.58) := by linarith [LogTables.log_log_6_58_gt]
  have hdiv : 6.58 / Real.log 6.58 ≤ (3.492506 : ℝ) := by
    have hlog : (1.884034 : ℝ) ≤ Real.log 6.58 := by linarith [LogTables.log_6_58_gt]
    have hlogpos : 0 < Real.log 6.58 := by linarith
    rw [div_le_iff₀ hlogpos]
    nlinarith
  have hli : (4.537729 : ℝ) < li 6.58 := by
    rw [li_eq_eulerMascheroni_add_log_log_add_tsum (show (1 : ℝ) < 6.58 by norm_num)]
    linarith [hγ_lo, hll, li_series_658_lower]
  have hLi : Li 6.58 = li 6.58 - li 2 := by
    linarith [li.sub_Li 6.58 (show (2 : ℝ) ≤ 6.58 by norm_num)]
  rw [hLi]
  linarith

/- [FIX]: This fixes a typo in the original paper https://arxiv.org/pdf/2206.12557. -/
@[blueprint
  "fks2-lemma-20b"
  (title := "FKS2 Lemma 20b")
  (statement := /--
  Assume $x > 6.58$. Then
  $\Li(x) - \frac{x}{\log x} > \frac{x-6.58}{\log^2 x} > 0$.
  -/)
  (proof := /-- This follows from Lemma \ref{fks2-lemma-20a} and the mean value theorem. -/)
  (latexEnv := "lemma")
  (discussion := 714)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean#L2737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88be1b47c741ee6510e22488953556110e8e6ff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
