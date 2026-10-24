# thetaPhiJetDet4_two_mode_pos_of_modeA_le_twelve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23c7e44d-9990-9823-6d9e-b71e2cf92ade",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet4_two_mode_pos_of_modeA_le_twelve",
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
  "slug": "thetaphijetdet4-two-mode-pos-of-modea-le-twelve--80dc8e4761cc13a7654f9917",
  "source": {
    "blob": "120baca1a0c56951e5c98cc0f7e67b3798ad6c62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 424,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant18044b38f776b650f373b13bcae8235db0ca204329da593fea3763baa405443f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80dc8e4761cc13a7654f991703f0e9f7f69a7408a1769ff08a352970548f534d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant18044b38f776b650f373b13bcae8235db0ca204329da593fea3763baa405443f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23c7e44d-9990-9823-6d9e-b71e2cf92ade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetDet4_two_mode_pos_of_modeA_le_twelve
    {t : ℝ} (ht : 0 ≤ t) (hhi : thetaModeA t ≤ 12) :
    0 < thetaPhiJetDet4
      (thetaPhiTwoModeJet7 (thetaModeA t)
        (Real.exp (-3 * thetaModeA t))) := by
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by linarith)
  have hpi : (157 / 50 : ℝ) < Real.pi := by
    have h := Real.pi_gt_d2
    norm_num at h ⊢
    exact h
  have hlo : (157 / 50 : ℝ) ≤ thetaModeA t := by
    unfold thetaModeA
    exact hpi.le.trans
      (le_mul_of_one_le_right Real.pi_pos.le he)
  exact thetaPhiJetDet4_two_mode_pos_compact hlo hhi

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant18044b38f776b650f373b13bcae8235db0ca204329da593fea3763baa405443f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant18044b38f776b650f373b13bcae8235db0ca204329da593fea3763baa405443f.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `120baca1a0c56951e5c98cc0f7e67b3798ad6c62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
