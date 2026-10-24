# thetaPhiJetPrefix7_signedRegularThrough_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d11a721428184c7f563b4bd131fab280e65b1fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ac2291f2cce0b5d45f2c2a1ac818da0f2a70e7e5c7697d10b9714b9053ddd70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f83c5e5-106a-ea07-f44a-00e6a2cab4a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5377e2d4-938e-0447-71b1-bc2f6a8a9fe6",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetPrefix7_signedRegularThrough_four",
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
  "slug": "thetaphijetprefix7-signedregularthrough-four--484700929c513feef0294b19",
  "source": {
    "blob": "7d11a721428184c7f563b4bd131fab280e65b1fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variant6ac2291f2cce0b5d45f2c2a1ac818da0f2a70e7e5c7697d10b9714b9053ddd70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:484700929c513feef0294b19f31a5a536392af7488f0b2080c644cc0d5a7f901",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variant6ac2291f2cce0b5d45f2c2a1ac818da0f2a70e7e5c7697d10b9714b9053ddd70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5377e2d4-938e-0447-71b1-bc2f6a8a9fe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetPrefix7_signedRegularThrough_four
    {t : ℝ} (ht : 0 ≤ t) :
    SignedJetRegularThrough 4 (thetaPhiJetPrefix7 t) := by
  intro k hk
  interval_cases k
  · rw [signedJetDet_zero]
    norm_num
  · exact (thetaPhiJetPrefix7_signedJetDet_one_pos ht).le
  · exact (thetaPhiJetPrefix7_signedJetDet_two_pos ht).le
  · exact (thetaPhiJetPrefix7_signedJetDet_three_pos ht).le
  · exact (thetaPhiJetPrefix7_signedJetDet_four_pos ht).le

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variant6ac2291f2cce0b5d45f2c2a1ac818da0f2a70e7e5c7697d10b9714b9053ddd70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variant6ac2291f2cce0b5d45f2c2a1ac818da0f2a70e7e5c7697d10b9714b9053ddd70.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d11a721428184c7f563b4bd131fab280e65b1fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
