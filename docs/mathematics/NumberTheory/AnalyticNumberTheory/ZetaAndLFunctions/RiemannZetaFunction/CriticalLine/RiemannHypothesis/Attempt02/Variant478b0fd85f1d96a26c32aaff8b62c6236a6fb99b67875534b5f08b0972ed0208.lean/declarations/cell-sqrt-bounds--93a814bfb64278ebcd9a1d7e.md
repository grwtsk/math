# cell_sqrt_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b9d5b6b-1c2d-ad92-88f0-03d38238eb49",
  "kind": "theorem",
  "lexical_name": "cell_sqrt_bounds",
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
  "slug": "cell-sqrt-bounds--93a814bfb64278ebcd9a1d7e",
  "source": {
    "blob": "feb1dfe8bc09d4668911dc59fd95f648e92ae61b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant478b0fd85f1d96a26c32aaff8b62c6236a6fb99b67875534b5f08b0972ed0208.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93a814bfb64278ebcd9a1d7e1cbccf3a1afe4d3f8590f3114fc1cc2d0fbbea29",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant478b0fd85f1d96a26c32aaff8b62c6236a6fb99b67875534b5f08b0972ed0208.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b9d5b6b-1c2d-ad92-88f0-03d38238eb49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cell_sqrt_bounds {N : ℕ} {Y : ℝ}
    (hN : 1 ≤ N) (hY : (N : ℝ) ≤ Y) (hYs : Y ≤ (N + 1 : ℕ)) :
    0 ≤ Real.sqrt Y - Real.sqrt (N : ℝ) ∧
      Real.sqrt Y - Real.sqrt (N : ℝ) ≤ 1 / Real.sqrt (N : ℝ) ∧
      0 ≤ 1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y ∧
      1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y ≤
        1 / ((N : ℝ) * Real.sqrt (N : ℝ)) := by
  have hn : 0 < (N : ℝ) := by exact_mod_cast (show 0 < N by omega)
  have hy : 0 < Y := hn.trans_le hY
  have hsnp : 0 < Real.sqrt (N : ℝ) := Real.sqrt_pos.2 hn
  have hsyp : 0 < Real.sqrt Y := Real.sqrt_pos.2 hy
  have hsle : Real.sqrt (N : ℝ) ≤ Real.sqrt Y := Real.sqrt_le_sqrt hY
  have hsn := Real.sq_sqrt hn.le
  have hsy := Real.sq_sqrt hy.le
  have hdiff : Y - N ≤ 1 := by
    have hys : Y ≤ (N : ℝ) + 1 := by simpa using hYs
    linarith
  have hdb : Real.sqrt Y - Real.sqrt (N : ℝ) ≤ 1 / Real.sqrt (N : ℝ) := by
    apply (le_div_iff₀ hsnp).2
    nlinarith
  refine ⟨sub_nonneg.mpr hsle, hdb, ?_, ?_⟩
  · exact sub_nonneg.mpr (one_div_le_one_div_of_le hsnp hsle)
  · apply (le_div_iff₀ (mul_pos hn hsnp)).2
    field_simp
    nlinarith

/-- Genuine single-cell primitive oscillation decays; it does not bound its long signed average. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant478b0fd85f1d96a26c32aaff8b62c6236a6fb99b67875534b5f08b0972ed0208.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant478b0fd85f1d96a26c32aaff8b62c6236a6fb99b67875534b5f08b0972ed0208.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feb1dfe8bc09d4668911dc59fd95f648e92ae61b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
