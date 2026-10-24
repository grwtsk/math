# thetaPhiJetDet4_three_mode_pos_of_box

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2b97d7b196871235d61339ef3c24ae92e8731c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfb249dd-0ff6-9c1c-4aba-071e1f9e7826",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:551e0165-9ce0-b0ee-7d6d-93020285028a",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet4_three_mode_pos_of_box",
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
  "slug": "thetaphijetdet4-three-mode-pos-of-box--6a41dc66019f2dbbf027cce2",
  "source": {
    "blob": "d2b97d7b196871235d61339ef3c24ae92e8731c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 244,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a41dc66019f2dbbf027cce22ccc8a1b3c585589aae7c8366b011934544f0548",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:551e0165-9ce0-b0ee-7d6d-93020285028a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem thetaPhiJetDet4_three_mode_pos_of_box
    {A l u r s : ℝ}
    (hA : 3 ≤ A)
    (hl0 : 0 ≤ l) (hl : l ≤ A - 3) (hu : A - 3 ≤ u)
    (hz : Real.exp (-3 * A) ≤ r)
    (hw : Real.exp (-8 * A) ≤ s)
    (hmargin :
      thetaPhiThreeModeDeltaMajorant u r s <
        thetaPhiTwoModeBoxMargin l u r) :
    0 < thetaPhiJetDet4
      (thetaPhiThreeModeJet7 A
        (Real.exp (-3 * A)) (Real.exp (-8 * A))) := by
  have hx : 0 ≤ A - 3 := by linarith
  have hz0 : 0 ≤ Real.exp (-3 * A) := Real.exp_nonneg _
  have hw0 : 0 ≤ Real.exp (-8 * A) := Real.exp_nonneg _
  have hred := thetaPhiTwoModeReduced_ge_box_margin
    hl0 hl hu hz0 hz
  have hmaj := thetaPhiThreeModeDeltaMajorant_mono
    hx hu hz0 hz hw0 hw
  have hgap :
      thetaPhiThreeModeDeltaMajorant
          (A - 3) (Real.exp (-3 * A)) (Real.exp (-8 * A)) <
        thetaPhiTwoModeReduced (A - 3) (Real.exp (-3 * A)) := by
    linarith
  have hdelta := thetaPhiThreeModeDeltaReduced_ge_neg_majorant
    hx hz0 hw0
  have hsum :
      0 <
        thetaPhiTwoModeReduced (A - 3) (Real.exp (-3 * A)) +
          thetaPhiThreeModeDeltaReduced
            (A - 3) (Real.exp (-3 * A)) (Real.exp (-8 * A)) := by
    linarith
  rw [thetaPhiJetDet4_three_mode_identity]
  exact mul_pos (by positivity) hsum

/-- The exact first-three-mode determinant is strictly positive throughout the
compact source range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b97d7b196871235d61339ef3c24ae92e8731c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
