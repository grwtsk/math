# actualMangoldtHalfClosedPrefix_split_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86a2ee0c-57d1-7f9a-7438-305ce6c095fe",
  "kind": "theorem",
  "lexical_name": "actualMangoldtHalfClosedPrefix_split_seven",
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
  "slug": "actualmangoldthalfclosedprefix-split-seven--e4ef8712bd934cf61ea2d3e1",
  "source": {
    "blob": "8bcb6bea41edae2844d0f9e548a1211f143e1103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 238,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7808e6d083934a3fd476a082b3baba8577dc7dd82d503bb5c46ed42d980f9c75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4ef8712bd934cf61ea2d3e16a9e76b6dbb3c03b7f5c5944e9566fea249102a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7808e6d083934a3fd476a082b3baba8577dc7dd82d503bb5c46ed42d980f9c75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86a2ee0c-57d1-7f9a-7438-305ce6c095fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtHalfClosedPrefix_split_seven {t : ℝ} (ht : Real.log 7 ≤ t) :
    actualMangoldtHalfClosedPrefix t =
      (∑ n ∈ Finset.Ioc 0 7, (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) +
        actualMangoldtHalfWindowSeven (Real.exp t) := by
  have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num)).trans ht
  have hreal : (7 : ℝ) ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht
  have h7 : 7 ≤ Nat.floor (Real.exp t) := Nat.le_floor (by
    norm_num only [Nat.cast_ofNat]
    linarith)
  have hu : Finset.Ioc 0 (Nat.floor (Real.exp t)) =
      Finset.Ioc 0 7 ∪ Finset.Ioc 7 (Nat.floor (Real.exp t)) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_union]
    omega
  have hd : Disjoint (Finset.Ioc 0 7) (Finset.Ioc 7 (Nat.floor (Real.exp t))) := by
    rw [Finset.disjoint_left]
    intro n hn hm
    simp only [Finset.mem_Ioc] at hn hm
    omega
  unfold actualMangoldtHalfClosedPrefix actualMangoldtHalfWindowSeven
  rw [hu, Finset.sum_union hd]

/-- The same signed actual J is a difference of finite actual-error convolutions and full heads. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7808e6d083934a3fd476a082b3baba8577dc7dd82d503bb5c46ed42d980f9c75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7808e6d083934a3fd476a082b3baba8577dc7dd82d503bb5c46ed42d980f9c75.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bcb6bea41edae2844d0f9e548a1211f143e1103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
