# thetaPhiJetDet4_three_mode_ge_box_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79f054b9-1dec-b965-5c02-5cd497acbbd2",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet4_three_mode_ge_box_margin",
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
  "slug": "thetaphijetdet4-three-mode-ge-box-margin--fa448d1c8582b54f389f3f5d",
  "source": {
    "blob": "5de3301d35bd878a95b962575f2f5fa0064cfda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 174,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa448d1c8582b54f389f3f5dbb29ec0ab0096e203b8a2286d624b700ab9b0d91",
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

Occurrence: `result:79f054b9-1dec-b965-5c02-5cd497acbbd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetDet4_three_mode_ge_box_margin
    {A l u r s : ℝ}
    (hA : 3 ≤ A)
    (hl0 : 0 ≤ l) (hl : l ≤ A - 3) (hu : A - 3 ≤ u)
    (hz : Real.exp (-3 * A) ≤ r)
    (hw : Real.exp (-8 * A) ≤ s) :
    201326592 * A ^ 6 *
        thetaPhiThreeModeBoxMargin l u r s ≤
      thetaPhiJetDet4
        (thetaPhiThreeModeJet7 A
          (Real.exp (-3 * A))
          (Real.exp (-8 * A))) := by
  have hx : 0 ≤ A - 3 := by linarith
  have hz0 : 0 ≤ Real.exp (-3 * A) := Real.exp_nonneg _
  have hw0 : 0 ≤ Real.exp (-8 * A) := Real.exp_nonneg _
  have htwo :=
    thetaPhiTwoModeReduced_ge_box_margin
      hl0 hl hu hz0 hz
  have hmaj :=
    thetaPhiThreeModeDeltaMajorant_mono
      hx hu hz0 hz hw0 hw
  have hdelta :=
    thetaPhiThreeModeDeltaReduced_ge_neg_majorant
      hx hz0 hw0
  have hred :
      thetaPhiThreeModeBoxMargin l u r s ≤
        thetaPhiTwoModeReduced
            (A - 3) (Real.exp (-3 * A)) +
          thetaPhiThreeModeDeltaReduced
            (A - 3) (Real.exp (-3 * A))
              (Real.exp (-8 * A)) := by
    unfold thetaPhiThreeModeBoxMargin
    linarith
  rw [thetaPhiJetDet4_three_mode_identity]
  exact mul_le_mul_of_nonneg_left hred (by positivity)

/-- Exact exponential identity used to convert a compact exp(-3A) bound into
the n >= 4 tail factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5de3301d35bd878a95b962575f2f5fa0064cfda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
