# thetaPhiNormalizedJet7_det_pos_of_modeA_le_twelve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:867572c5-c93f-0373-1273-bddaefe11876",
  "kind": "theorem",
  "lexical_name": "thetaPhiNormalizedJet7_det_pos_of_modeA_le_twelve",
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
  "slug": "thetaphinormalizedjet7-det-pos-of-modea-le-twelve--e25e90764a494610b7fcc388",
  "source": {
    "blob": "5de3301d35bd878a95b962575f2f5fa0064cfda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 390,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e25e90764a494610b7fcc3883d5d4800ab5008fa9419db2206e765b6d87102a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:867572c5-c93f-0373-1273-bddaefe11876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiNormalizedJet7_det_pos_of_modeA_le_twelve
    {t : ℝ} (ht : 0 ≤ t)
    (hhi : thetaModeA t ≤ 12) :
    0 < thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) := by
  have he : 1 ≤ Real.exp (4 * t) :=
    Real.one_le_exp (by linarith)
  have hA : 3 ≤ thetaModeA t := by
    unfold thetaModeA
    exact (le_of_lt Real.pi_gt_three).trans
      (le_mul_of_one_le_right Real.pi_pos.le he)
  have hpi : (157 / 50 : ℝ) < Real.pi := by
    have h := Real.pi_gt_d2
    norm_num at h ⊢
    exact h
  have hlo :
      (157 / 50 : ℝ) ≤ thetaModeA t := by
    unfold thetaModeA
    exact hpi.le.trans
      (le_mul_of_one_le_right Real.pi_pos.le he)
  have hw20 :
      Real.exp (-8 * thetaModeA t) ≤ 1 / 20 ^ 8 :=
    thetaGaussian_exp_neg_eight_le hA
  have hz0 :
      0 ≤ Real.exp (-3 * thetaModeA t) :=
    Real.exp_nonneg _
  have hwsq :
      Real.exp (-8 * thetaModeA t) ≤
        Real.exp (-3 * thetaModeA t) ^ 2 :=
    thetaExpNegEight_le_sq_expNegThree (by linarith)
  by_cases h1 : thetaModeA t ≤ (167 / 50 : ℝ)
  · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
      ht hA (l := 7 / 50) (u := 17 / 50)
      (r := 1 / 12000) (s := 1 / 20 ^ 8)
      (U := 167 / 50)
      (by norm_num) (by linarith) (by linarith) h1
      (thetaExpNegThree_le_inv_12000 hlo) (by norm_num)
      hw20 (by norm_num)
      (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
        thetaPhiJetDet4Majorant,
        thetaPhiThreeModeCoordinateCoefficient,
        thetaPhiThreeModeTailErrorCoefficient])
      (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
        thetaPhiJetDet4Majorant,
        thetaPhiThreeModeCoordinateCoefficient,
        thetaPhiThreeModeTailErrorCoefficient,
        thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
        thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
        thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
        thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
  · have hlo2 : (167 / 50 : ℝ) ≤ thetaModeA t :=
      le_of_lt (lt_of_not_ge h1)
    by_cases h2 : thetaModeA t ≤ (71 / 20 : ℝ)
    · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
        ht hA (l := 17 / 50) (u := 11 / 20)
        (r := 1 / 20000) (s := 1 / 20 ^ 8)
        (U := 71 / 20)
        (by norm_num) (by linarith) (by linarith) h2
        (thetaExpNegThree_le_inv_20000 hlo2) (by norm_num)
        hw20 (by norm_num)
        (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
          thetaPhiJetDet4Majorant,
          thetaPhiThreeModeCoordinateCoefficient,
          thetaPhiThreeModeTailErrorCoefficient])
        (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
          thetaPhiJetDet4Majorant,
          thetaPhiThreeModeCoordinateCoefficient,
          thetaPhiThreeModeTailErrorCoefficient,
          thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
          thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
          thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
          thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
    · have hlo3 : (71 / 20 : ℝ) ≤ thetaModeA t :=
        le_of_lt (lt_of_not_ge h2)
      by_cases h3 : thetaModeA t ≤ (19 / 5 : ℝ)
      · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
          ht hA (l := 11 / 20) (u := 4 / 5)
          (r := 1 / 35000) (s := 1 / 20 ^ 8)
          (U := 19 / 5)
          (by norm_num) (by linarith) (by linarith) h3
          (thetaExpNegThree_le_inv_35000 hlo3) (by norm_num)
          hw20 (by norm_num)
          (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
            thetaPhiJetDet4Majorant,
            thetaPhiThreeModeCoordinateCoefficient,
            thetaPhiThreeModeTailErrorCoefficient])
          (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
            thetaPhiJetDet4Majorant,
            thetaPhiThreeModeCoordinateCoefficient,
            thetaPhiThreeModeTailErrorCoefficient,
            thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
            thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
            thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
            thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
      · have hlo4 : (19 / 5 : ℝ) ≤ thetaModeA t :=
          le_of_lt (lt_of_not_ge h3)
        by_cases h4 : thetaModeA t ≤ (4 : ℝ)
        · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
            ht hA (l := 4 / 5) (u := 1)
            (r := 1 / 80000) (s := 1 / 20 ^ 8)
            (U := 4)
            (by norm_num) (by linarith) (by linarith) h4
            (thetaExpNegThree_le_inv_80000 hlo4) (by norm_num)
            hw20 (by norm_num)
            (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
              thetaPhiJetDet4Majorant,
              thetaPhiThreeModeCoordinateCoefficient,
              thetaPhiThreeModeTailErrorCoefficient])
            (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
              thetaPhiJetDet4Majorant,
              thetaPhiThreeModeCoordinateCoefficient,
              thetaPhiThreeModeTailErrorCoefficient,
              thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
              thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
              thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
              thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
        · have hlo5 : (4 : ℝ) ≤ thetaModeA t :=
            le_of_lt (lt_of_not_ge h4)
          by_cases h5 : thetaModeA t ≤ (9 / 2 : ℝ)
          · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
              ht hA (l := 1) (u := 3 / 2)
              (r := 1 / 160000) (s := 1 / 20 ^ 8)
              (U := 9 / 2)
              (by norm_num) (by linarith) (by linarith) h5
              (thetaExpNegThree_le_inv_160000 hlo5) (by norm_num)
              hw20 (by norm_num)
              (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                thetaPhiJetDet4Majorant,
                thetaPhiThreeModeCoordinateCoefficient,
                thetaPhiThreeModeTailErrorCoefficient])
              (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                thetaPhiJetDet4Majorant,
                thetaPhiThreeModeCoordinateCoefficient,
                thetaPhiThreeModeTailErrorCoefficient,
                thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
                thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
                thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
                thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
          · have hlo6 : (9 / 2 : ℝ) ≤ thetaModeA t :=
              le_of_lt (lt_of_not_ge h5)
            have hz6 := thetaExpNegThree_le_inv_700000 hlo6
            have hw6 :
                Real.exp (-8 * thetaModeA t) ≤
                  (1 / 700000 : ℝ) ^ 2 :=
              hwsq.trans (pow_le_pow_left₀ hz0 hz6 2)
            by_cases h6 : thetaModeA t ≤ (5 : ℝ)
            · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
                ht hA (l := 3 / 2) (u := 2)
                (r := 1 / 700000)
                (s := (1 / 700000 : ℝ) ^ 2)
                (U := 5)
                (by norm_num) (by linarith) (by linarith) h6
                hz6 (by norm_num) hw6 (by norm_num)
                (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                  thetaPhiJetDet4Majorant,
                  thetaPhiThreeModeCoordinateCoefficient,
                  thetaPhiThreeModeTailErrorCoefficient])
                (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                  thetaPhiJetDet4Majorant,
                  thetaPhiThreeModeCoordinateCoefficient,
                  thetaPhiThreeModeTailErrorCoefficient,
                  thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
                  thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
                  thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
                  thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
            · have hlo7 : (5 : ℝ) ≤ thetaModeA t :=
                le_of_lt (lt_of_not_ge h6)
              have hz7 := thetaExpNegThree_le_inv_3200000 hlo7
              have hw7 :
                  Real.exp (-8 * thetaModeA t) ≤
                    (1 / 3200000 : ℝ) ^ 2 :=
                hwsq.trans (pow_le_pow_left₀ hz0 hz7 2)
              by_cases h7 : thetaModeA t ≤ (6 : ℝ)
              · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
                  ht hA (l := 2) (u := 3)
                  (r := 1 / 3200000)
                  (s := (1 / 3200000 : ℝ) ^ 2)
                  (U := 6)
                  (by norm_num) (by linarith) (by linarith) h7
                  hz7 (by norm_num) hw7 (by norm_num)
                  (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                    thetaPhiJetDet4Majorant,
                    thetaPhiThreeModeCoordinateCoefficient,
                    thetaPhiThreeModeTailErrorCoefficient])
                  (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                    thetaPhiJetDet4Majorant,
                    thetaPhiThreeModeCoordinateCoefficient,
                    thetaPhiThreeModeTailErrorCoefficient,
                    thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
                    thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
                    thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
                    thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
              · have hlo8 : (6 : ℝ) ≤ thetaModeA t :=
                  le_of_lt (lt_of_not_ge h7)
                have hz8 := thetaExpNegThree_le_inv_64000000 hlo8
                have hw8 :
                    Real.exp (-8 * thetaModeA t) ≤
                      (1 / 64000000 : ℝ) ^ 2 :=
                  hwsq.trans (pow_le_pow_left₀ hz0 hz8 2)
                exact thetaPhiNormalizedJet7_det_pos_of_compact_box
                  ht hA (l := 3) (u := 9)
                  (r := 1 / 64000000)
                  (s := (1 / 64000000 : ℝ) ^ 2)
                  (U := 12)
                  (by norm_num) (by linarith) (by linarith) hhi
                  hz8 (by norm_num) hw8 (by norm_num)
                  thetaPhiThreeModeTailDetErrorScalar_last_box_nonneg
                  thetaPhiThreeModeTailDetErrorScalar_last_box_lt_margin

/-- The literal rank-four source Wronskian is positive whenever its mode
coordinate remains below the asymptotic threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5de3301d35bd878a95b962575f2f5fa0064cfda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
