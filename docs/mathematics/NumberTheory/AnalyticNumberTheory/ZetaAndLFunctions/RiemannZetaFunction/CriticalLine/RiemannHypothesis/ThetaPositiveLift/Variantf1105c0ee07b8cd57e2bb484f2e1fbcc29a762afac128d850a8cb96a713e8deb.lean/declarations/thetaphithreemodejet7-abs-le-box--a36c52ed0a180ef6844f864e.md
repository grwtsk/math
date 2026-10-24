# thetaPhiThreeModeJet7_abs_le_box

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9406fc24-8b96-9674-c2e6-febd77106be3",
  "kind": "theorem",
  "lexical_name": "thetaPhiThreeModeJet7_abs_le_box",
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
  "slug": "thetaphithreemodejet7-abs-le-box--a36c52ed0a180ef6844f864e",
  "source": {
    "blob": "5de3301d35bd878a95b962575f2f5fa0064cfda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a36c52ed0a180ef6844f864ed07e63a003e0c760015a86433532dd7de32c3b2c",
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

Occurrence: `result:9406fc24-8b96-9674-c2e6-febd77106be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiThreeModeJet7_abs_le_box
    (k : Fin 7) {A z w r s : ℝ}
    (hA : 3 ≤ A)
    (hz0 : 0 ≤ z) (hz : z ≤ r) (_hr0 : 0 ≤ r)
    (hw0 : 0 ≤ w) (hw : w ≤ s) (_hs0 : 0 ≤ s) :
    |thetaPhiThreeModeJet7 A z w k| ≤
      thetaPhiThreeModeCoordinateBox A r s k := by
  have hp1 :=
    thetaPhiJetPolynomial7_abs_le k hA
  have hp4 :=
    thetaPhiJetPolynomial7_abs_le k
      (y := 4 * A) (by nlinarith)
  have hp9 :=
    thetaPhiJetPolynomial7_abs_le k
      (y := 9 * A) (by nlinarith)
  have hsecond :
      |4 * z * thetaPhiJetPolynomial7 k (4 * A)| ≤
        4 * r *
          (2 * 4 ^ k.val *
            (4 * A) ^ (k.val + 1)) := by
    rw [abs_mul, abs_mul,
      abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 4),
      abs_of_nonneg hz0]
    gcongr
  have hthird :
      |9 * w * thetaPhiJetPolynomial7 k (9 * A)| ≤
        9 * s *
          (2 * 4 ^ k.val *
            (9 * A) ^ (k.val + 1)) := by
    rw [abs_mul, abs_mul,
      abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 9),
      abs_of_nonneg hw0]
    gcongr
  unfold thetaPhiThreeModeJet7 thetaPhiTwoModeJet7
  calc
    _ ≤
        |thetaPhiJetPolynomial7 k A +
          4 * z * thetaPhiJetPolynomial7 k (4 * A)| +
        |9 * w * thetaPhiJetPolynomial7 k (9 * A)| :=
      abs_add_le _ _
    _ ≤
        (|thetaPhiJetPolynomial7 k A| +
          |4 * z * thetaPhiJetPolynomial7 k (4 * A)|) +
        |9 * w * thetaPhiJetPolynomial7 k (9 * A)| := by
      gcongr
      exact abs_add_le _ _
    _ ≤
        (2 * 4 ^ k.val * A ^ (k.val + 1) +
          4 * r *
            (2 * 4 ^ k.val *
              (4 * A) ^ (k.val + 1))) +
        9 * s *
          (2 * 4 ^ k.val *
            (9 * A) ^ (k.val + 1)) := by
      gcongr
    _ = thetaPhiThreeModeCoordinateBox A r s k := by
      unfold thetaPhiThreeModeCoordinateBox
        thetaPhiThreeModeCoordinateCoefficient
      rw [mul_pow, mul_pow]
      ring

/-- The n >= 4 source remainder is controlled by any scalar upper bound for
its exponential factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5de3301d35bd878a95b962575f2f5fa0064cfda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
