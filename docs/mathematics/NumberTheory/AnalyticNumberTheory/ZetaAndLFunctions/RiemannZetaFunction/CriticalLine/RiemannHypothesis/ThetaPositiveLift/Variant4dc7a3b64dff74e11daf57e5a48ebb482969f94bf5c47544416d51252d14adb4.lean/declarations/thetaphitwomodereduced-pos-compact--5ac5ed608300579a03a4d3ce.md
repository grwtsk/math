# thetaPhiTwoModeReduced_pos_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4615f492f459c95b8d6a729d5e9ffd1ab37eb1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 342,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dc7a3b64dff74e11daf57e5a48ebb482969f94bf5c47544416d51252d14adb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12b2a3b3-1dfa-1ce4-cd81-2e662d4765c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc30b49b-4bbb-fc9a-d6d1-a1120d18478f",
  "kind": "theorem",
  "lexical_name": "thetaPhiTwoModeReduced_pos_compact",
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
  "slug": "thetaphitwomodereduced-pos-compact--5ac5ed608300579a03a4d3ce",
  "source": {
    "blob": "b4615f492f459c95b8d6a729d5e9ffd1ab37eb1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 342,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4dc7a3b64dff74e11daf57e5a48ebb482969f94bf5c47544416d51252d14adb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ac5ed608300579a03a4d3ce325fc2c084fbaaf0e5a1e99d950f6921bf9ce1da",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4dc7a3b64dff74e11daf57e5a48ebb482969f94bf5c47544416d51252d14adb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc30b49b-4bbb-fc9a-d6d1-a1120d18478f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiTwoModeReduced_pos_compact
    {A : ℝ} (hlo : (157 / 50 : ℝ) ≤ A) (hhi : A ≤ 12) :
    0 < thetaPhiTwoModeReduced (A - 3) (Real.exp (-3 * A)) := by
  have hz0 : 0 ≤ Real.exp (-3 * A) := Real.exp_nonneg _
  by_cases h1 : A ≤ (167 / 50 : ℝ)
  · exact thetaPhiTwoModeReduced_pos_of_box
      (l := 7 / 50) (u := 17 / 50) (r := 1 / 12000)
      (by norm_num) (by linarith) (by linarith) hz0
      (thetaExpNegThree_le_inv_12000 hlo) (by norm_num)
      (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
  · have hlo2 : (167 / 50 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h1)
    by_cases h2 : A ≤ (71 / 20 : ℝ)
    · exact thetaPhiTwoModeReduced_pos_of_box
        (l := 17 / 50) (u := 11 / 20) (r := 1 / 20000)
        (by norm_num) (by linarith) (by linarith) hz0
        (thetaExpNegThree_le_inv_20000 hlo2) (by norm_num)
        (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
    · have hlo3 : (71 / 20 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h2)
      by_cases h3 : A ≤ (19 / 5 : ℝ)
      · exact thetaPhiTwoModeReduced_pos_of_box
          (l := 11 / 20) (u := 4 / 5) (r := 1 / 35000)
          (by norm_num) (by linarith) (by linarith) hz0
          (thetaExpNegThree_le_inv_35000 hlo3) (by norm_num)
          (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
      · have hlo4 : (19 / 5 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h3)
        by_cases h4 : A ≤ (4 : ℝ)
        · exact thetaPhiTwoModeReduced_pos_of_box
            (l := 4 / 5) (u := 1) (r := 1 / 80000)
            (by norm_num) (by linarith) (by linarith) hz0
            (thetaExpNegThree_le_inv_80000 hlo4) (by norm_num)
            (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
        · have hlo5 : (4 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h4)
          by_cases h5 : A ≤ (9 / 2 : ℝ)
          · exact thetaPhiTwoModeReduced_pos_of_box
              (l := 1) (u := 3 / 2) (r := 1 / 160000)
              (by norm_num) (by linarith) (by linarith) hz0
              (thetaExpNegThree_le_inv_160000 hlo5) (by norm_num)
              (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
          · have hlo6 : (9 / 2 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h5)
            by_cases h6 : A ≤ (5 : ℝ)
            · exact thetaPhiTwoModeReduced_pos_of_box
                (l := 3 / 2) (u := 2) (r := 1 / 700000)
                (by norm_num) (by linarith) (by linarith) hz0
                (thetaExpNegThree_le_inv_700000 hlo6) (by norm_num)
                (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
            · have hlo7 : (5 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h6)
              by_cases h7 : A ≤ (6 : ℝ)
              · exact thetaPhiTwoModeReduced_pos_of_box
                  (l := 2) (u := 3) (r := 1 / 3200000)
                  (by norm_num) (by linarith) (by linarith) hz0
                  (thetaExpNegThree_le_inv_3200000 hlo7) (by norm_num)
                  (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1,
                    thetaPhiTwoModeQ3])
              · have hlo8 : (6 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h7)
                exact thetaPhiTwoModeReduced_pos_of_box
                  (l := 3) (u := 9) (r := 1 / 64000000)
                  (by norm_num) (by linarith) (by linarith) hz0
                  (thetaExpNegThree_le_inv_64000000 hlo8) (by norm_num)
                  (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1,
                    thetaPhiTwoModeQ3])

/-- Strict positivity of the exact first-two-mode determinant on the compact
A-range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4dc7a3b64dff74e11daf57e5a48ebb482969f94bf5c47544416d51252d14adb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4dc7a3b64dff74e11daf57e5a48ebb482969f94bf5c47544416d51252d14adb4.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4615f492f459c95b8d6a729d5e9ffd1ab37eb1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
