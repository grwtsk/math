# thetaPhiNormalizedJet7_det_pos_of_compact_box

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c298382c-3616-07b4-d1e5-1e17af672fbc",
  "kind": "theorem",
  "lexical_name": "thetaPhiNormalizedJet7_det_pos_of_compact_box",
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
  "slug": "thetaphinormalizedjet7-det-pos-of-compact-box--8d3fa18a619663038920bffe",
  "source": {
    "blob": "5de3301d35bd878a95b962575f2f5fa0064cfda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 252,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d3fa18a619663038920bffecd838064a598c2f450c9dcc8bf8657f8d252c72a",
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

Occurrence: `result:c298382c-3616-07b4-d1e5-1e17af672fbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem thetaPhiNormalizedJet7_det_pos_of_compact_box
    {t l u r s U : ℝ}
    (ht : 0 ≤ t)
    (hA : 3 ≤ thetaModeA t)
    (hl0 : 0 ≤ l)
    (hl : l ≤ thetaModeA t - 3)
    (hu : thetaModeA t - 3 ≤ u)
    (hAU : thetaModeA t ≤ U)
    (hz : Real.exp (-3 * thetaModeA t) ≤ r)
    (hr0 : 0 ≤ r)
    (hw : Real.exp (-8 * thetaModeA t) ≤ s)
    (hs0 : 0 ≤ s)
    (hscalar0 :
      0 ≤ thetaPhiThreeModeTailDetErrorScalar
        r s (r ^ 5))
    (hnum :
      U ^ 10 *
          thetaPhiThreeModeTailDetErrorScalar
            r s (r ^ 5) <
        201326592 *
          thetaPhiThreeModeBoxMargin l u r s) :
    0 < thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) := by
  have hz0 :
      0 ≤ Real.exp (-3 * thetaModeA t) :=
    Real.exp_nonneg _
  have hw0 :
      0 ≤ Real.exp (-8 * thetaModeA t) :=
    Real.exp_nonneg _
  have hv :
      Real.exp (-15 * thetaModeA t) ≤ r ^ 5 := by
    rw [thetaExpNegFifteen_eq_fifth_expNegThree]
    exact pow_le_pow_left₀ hz0 hz 5
  have hv0 : 0 ≤ r ^ 5 := pow_nonneg hr0 5
  have ha (k : Fin 7) :
      |thetaPhiThreeModeJet7
          (thetaModeA t)
          (Real.exp (-3 * thetaModeA t))
          (Real.exp (-8 * thetaModeA t)) k| ≤
        thetaPhiThreeModeCoordinateBox
          (thetaModeA t) r s k :=
    thetaPhiThreeModeJet7_abs_le_box
      k hA hz0 hz hr0 hw0 hw hs0
  have he (k : Fin 7) :
      |thetaPhiThreeModeRemainderJet7 t k| ≤
        thetaPhiThreeModeTailCoordinateBox
          (thetaModeA t) (r ^ 5) k :=
    thetaPhiThreeModeRemainderJet7_abs_le_box
      k ht hv hv0
  have hbox :=
    thetaPhiJetDet4_perturbation_bound
      (thetaPhiThreeModeJet7
        (thetaModeA t)
        (Real.exp (-3 * thetaModeA t))
        (Real.exp (-8 * thetaModeA t)))
      (thetaPhiThreeModeRemainderJet7 t)
      (thetaPhiThreeModeCoordinateBox
        (thetaModeA t) r s)
      (thetaPhiThreeModeTailCoordinateBox
        (thetaModeA t) (r ^ 5))
      ha he
  rw [thetaPhiThreeModeTail_box_majorant_identity] at hbox
  have hdecomp :
      thetaPhiNormalizedJet7 t =
        fun k =>
          thetaPhiThreeModeJet7
              (thetaModeA t)
              (Real.exp (-3 * thetaModeA t))
              (Real.exp (-8 * thetaModeA t)) k +
            thetaPhiThreeModeRemainderJet7 t k := by
    funext k
    exact thetaPhiNormalizedJet7_eq_three_mode_add_remainder
      t k
  have herror :
      |thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) -
          thetaPhiJetDet4
            (thetaPhiThreeModeJet7
              (thetaModeA t)
              (Real.exp (-3 * thetaModeA t))
              (Real.exp (-8 * thetaModeA t)))| ≤
        thetaModeA t ^ 16 *
          thetaPhiThreeModeTailDetErrorScalar
            r s (r ^ 5) := by
    rw [hdecomp]
    exact hbox
  have hA0 : 0 ≤ thetaModeA t := by linarith
  have hpow10 :=
    pow_le_pow_left₀ hA0 hAU 10
  have hscaled :
      thetaModeA t ^ 16 *
          thetaPhiThreeModeTailDetErrorScalar
            r s (r ^ 5) <
        201326592 * thetaModeA t ^ 6 *
          thetaPhiThreeModeBoxMargin l u r s := by
    calc
      _ =
          thetaModeA t ^ 6 *
            (thetaModeA t ^ 10 *
              thetaPhiThreeModeTailDetErrorScalar
                r s (r ^ 5)) := by ring
      _ ≤
          thetaModeA t ^ 6 *
            (U ^ 10 *
              thetaPhiThreeModeTailDetErrorScalar
                r s (r ^ 5)) := by
        exact mul_le_mul_of_nonneg_left
          (mul_le_mul_of_nonneg_right
            hpow10 hscalar0)
          (by positivity)
      _ <
          thetaModeA t ^ 6 *
            (201326592 *
              thetaPhiThreeModeBoxMargin l u r s) :=
        mul_lt_mul_of_pos_left hnum (by positivity)
      _ =
          201326592 * thetaModeA t ^ 6 *
            thetaPhiThreeModeBoxMargin l u r s := by
        ring
  have hdet :=
    thetaPhiJetDet4_three_mode_ge_box_margin
      hA hl0 hl hu hz hw
  have herrdet :
      |thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) -
          thetaPhiJetDet4
            (thetaPhiThreeModeJet7
              (thetaModeA t)
              (Real.exp (-3 * thetaModeA t))
              (Real.exp (-8 * thetaModeA t)))| <
        thetaPhiJetDet4
          (thetaPhiThreeModeJet7
            (thetaModeA t)
            (Real.exp (-3 * thetaModeA t))
            (Real.exp (-8 * thetaModeA t))) :=
    lt_of_le_of_lt herror (hscaled.trans_le hdet)
  have hlower := (abs_lt.mp herrdet).1
  linarith

/-- The full normalized rank-four determinant is positive throughout the
compact source regime A <= 12. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5de3301d35bd878a95b962575f2f5fa0064cfda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
