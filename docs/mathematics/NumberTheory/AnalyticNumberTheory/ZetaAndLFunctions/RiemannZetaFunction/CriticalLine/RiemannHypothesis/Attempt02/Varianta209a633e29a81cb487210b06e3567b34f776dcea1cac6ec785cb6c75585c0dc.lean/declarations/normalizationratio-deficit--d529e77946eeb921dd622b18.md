# normalizationRatio_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9aee27c1-bdb6-a079-3c61-b926cdaf9551",
  "kind": "theorem",
  "lexical_name": "normalizationRatio_deficit",
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
  "slug": "normalizationratio-deficit--d529e77946eeb921dd622b18",
  "source": {
    "blob": "48d54e63620bc5d8dbb11b3b385cb1b94debda8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Varianta209a633e29a81cb487210b06e3567b34f776dcea1cac6ec785cb6c75585c0dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d529e77946eeb921dd622b1871c4aaddd057980b7775a5fda4579d69e8bb0ec0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Varianta209a633e29a81cb487210b06e3567b34f776dcea1cac6ec785cb6c75585c0dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aee27c1-bdb6-a079-3c61-b926cdaf9551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizationRatio_deficit {A : ℝ} (hA : 1 ≤ A) :
    1-normalizationRatio A ≤
      (65536/45045+196608/5005)/(2*(4096/109395)*A^2) := by
  let s := Real.sqrt (sourceNormalization A)
  let s0 := Real.sqrt (4096/109395 : ℝ)
  have hs : 0 < s := Real.sqrt_pos.mpr (source_normalization_pos A hA)
  have hs0 : 0 < s0 := Real.sqrt_pos.mpr (by norm_num)
  have hss : s0 ≤ s := Real.sqrt_le_sqrt (normalization_bounds hA).1
  have hsq : s^2 = sourceNormalization A := Real.sq_sqrt (source_normalization_pos A hA).le
  have hsq0 : s0^2 = (4096/109395 : ℝ) := Real.sq_sqrt (by norm_num)
  have hden : 2*(4096/109395 : ℝ) ≤ s*(s+s0) := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hss) hs0.le]
  have he : 1-normalizationRatio A =
      (sourceNormalization A-(4096/109395 : ℝ))/(s*(s+s0)) := by
    unfold normalizationRatio
    change 1-s0/s = _
    rw [← hsq,← hsq0]
    field_simp
    ring
  rw [he]
  calc
    _ ≤ (sourceNormalization A-(4096/109395 : ℝ))/(2*(4096/109395)) := by
      apply div_le_div_of_nonneg_left
      · exact sub_nonneg.mpr (normalization_bounds hA).1
      · norm_num
      · exact hden
    _ ≤ ((65536/45045+196608/5005)/A^2)/(2*(4096/109395)) := by
      gcongr
      exact (normalization_bounds hA).2
    _ = _ := by ring

end ContinuousResearch.ComplexBoundaryRate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Varianta209a633e29a81cb487210b06e3567b34f776dcea1cac6ec785cb6c75585c0dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Varianta209a633e29a81cb487210b06e3567b34f776dcea1cac6ec785cb6c75585c0dc.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48d54e63620bc5d8dbb11b3b385cb1b94debda8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
