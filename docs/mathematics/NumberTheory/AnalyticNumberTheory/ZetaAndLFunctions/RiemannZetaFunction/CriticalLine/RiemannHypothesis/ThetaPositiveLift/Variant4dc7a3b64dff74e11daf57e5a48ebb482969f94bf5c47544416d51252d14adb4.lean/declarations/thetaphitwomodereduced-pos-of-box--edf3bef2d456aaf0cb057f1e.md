# thetaPhiTwoModeReduced_pos_of_box

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
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dc7a3b64dff74e11daf57e5a48ebb482969f94bf5c47544416d51252d14adb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfd80e66-47b9-5462-b5e8-97703d3694bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:579b0e76-4262-70b2-5f68-236a6ad0558e",
  "kind": "theorem",
  "lexical_name": "thetaPhiTwoModeReduced_pos_of_box",
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
  "slug": "thetaphitwomodereduced-pos-of-box--edf3bef2d456aaf0cb057f1e",
  "source": {
    "blob": "b4615f492f459c95b8d6a729d5e9ffd1ab37eb1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 171,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4dc7a3b64dff74e11daf57e5a48ebb482969f94bf5c47544416d51252d14adb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edf3bef2d456aaf0cb057f1e1441b9adbeb99f13f09242d2d4808a7042e73768",
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

Occurrence: `result:579b0e76-4262-70b2-5f68-236a6ad0558e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem thetaPhiTwoModeReduced_pos_of_box
    {x z l u r : ℝ}
    (hl0 : 0 ≤ l) (hl : l ≤ x) (hu : x ≤ u)
    (hz0 : 0 ≤ z) (hz : z ≤ r) (_hr0 : 0 ≤ r)
    (hnum :
      thetaPhiTwoModeQ1 u * r +
        thetaPhiTwoModeQ3 u * r ^ 3 <
      thetaPhiTwoModeQ0 l) :
    0 < thetaPhiTwoModeReduced x z := by
  have hx0 : 0 ≤ x := hl0.trans hl
  have hu0 : 0 ≤ u := hx0.trans hu
  have hq0 := thetaPhiTwoModeQ0_mono hl0 hl
  have hq1 := thetaPhiTwoModeQ1_mono hx0 hu
  have hq3 := thetaPhiTwoModeQ3_mono hx0 hu
  have hz3 := pow_le_pow_left₀ hz0 hz 3
  have hneg1 :
      thetaPhiTwoModeQ1 x * z ≤ thetaPhiTwoModeQ1 u * r :=
    mul_le_mul hq1 hz hz0 (thetaPhiTwoModeQ1_nonneg hu0)
  have hneg3 :
      thetaPhiTwoModeQ3 x * z ^ 3 ≤ thetaPhiTwoModeQ3 u * r ^ 3 :=
    mul_le_mul hq3 hz3 (pow_nonneg hz0 3) (thetaPhiTwoModeQ3_nonneg hu0)
  have hpos2 :
      0 ≤ thetaPhiTwoModeQ2 x * z ^ 2 :=
    mul_nonneg (thetaPhiTwoModeQ2_nonneg hx0) (pow_nonneg hz0 2)
  have hpos4 :
      0 ≤ thetaPhiTwoModeQ4 x * z ^ 4 :=
    mul_nonneg (thetaPhiTwoModeQ4_nonneg hx0) (pow_nonneg hz0 4)
  unfold thetaPhiTwoModeReduced
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4dc7a3b64dff74e11daf57e5a48ebb482969f94bf5c47544416d51252d14adb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4dc7a3b64dff74e11daf57e5a48ebb482969f94bf5c47544416d51252d14adb4.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4615f492f459c95b8d6a729d5e9ffd1ab37eb1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
