# thetaPhiThreeModeRemainderJet7_abs_le_box

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dee64131-fa2a-8ece-b25a-d4dc453f4be3",
  "kind": "theorem",
  "lexical_name": "thetaPhiThreeModeRemainderJet7_abs_le_box",
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
  "slug": "thetaphithreemoderemainderjet7-abs-le-box--f69d032f60cd03acf0152674",
  "source": {
    "blob": "5de3301d35bd878a95b962575f2f5fa0064cfda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f69d032f60cd03acf01526743a781472d663b82715eda3968c1309f87024fdd2",
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

Occurrence: `result:dee64131-fa2a-8ece-b25a-d4dc453f4be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiThreeModeRemainderJet7_abs_le_box
    (k : Fin 7) {t v : ℝ} (ht : 0 ≤ t)
    (hv : Real.exp (-15 * thetaModeA t) ≤ v)
    (_hv0 : 0 ≤ v) :
    |thetaPhiThreeModeRemainderJet7 t k| ≤
      thetaPhiThreeModeTailCoordinateBox
        (thetaModeA t) v k := by
  have h :=
    thetaPhiThreeModeRemainderJet7_abs_le k ht
  have hA0 : 0 ≤ thetaModeA t := by
    unfold thetaModeA
    positivity
  have hcoeff :
      0 ≤ thetaPhiThreeModeTailErrorCoefficient k *
        thetaModeA t ^ (k.val + 1) := by
    unfold thetaPhiThreeModeTailErrorCoefficient
    positivity
  unfold thetaPhiThreeModeTailCoordinateBox
  exact h.trans
    (mul_le_mul_of_nonneg_left hv hcoeff)

/-- Scalar quartic error majorant after the common A^16 factor has been
removed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf1105c0ee07b8cd57e2bb484f2e1fbcc29a762afac128d850a8cb96a713e8deb.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5de3301d35bd878a95b962575f2f5fa0064cfda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
