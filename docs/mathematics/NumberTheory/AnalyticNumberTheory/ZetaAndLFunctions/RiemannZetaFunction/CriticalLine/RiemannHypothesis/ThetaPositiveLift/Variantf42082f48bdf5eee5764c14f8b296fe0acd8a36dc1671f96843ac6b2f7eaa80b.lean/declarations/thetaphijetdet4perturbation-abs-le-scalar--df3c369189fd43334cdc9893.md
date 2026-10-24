# thetaPhiJetDet4Perturbation_abs_le_scalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81e770407f13829d4031059c9ab07b18ca41aeac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 270,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05db7fd3-0275-5f40-59e7-45bdd5fe7350",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f3c8e52-8aa0-1c09-6d43-31273a720b77",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet4Perturbation_abs_le_scalar",
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
  "slug": "thetaphijetdet4perturbation-abs-le-scalar--df3c369189fd43334cdc9893",
  "source": {
    "blob": "81e770407f13829d4031059c9ab07b18ca41aeac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 270,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df3c369189fd43334cdc9893c2736f622dcd14d68f509dd0688e9d21fae8d526",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f3c8e52-8aa0-1c09-6d43-31273a720b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetDet4Perturbation_abs_le_scalar
    {t : ℝ} (ht : 0 ≤ t) :
    |thetaPhiJetDet4Perturbation t| ≤
      thetaModeA t ^ 16 *
        (372373664563200 * Real.exp (-3 * thetaModeA t) +
         2242106519174774784 * Real.exp (-3 * thetaModeA t) ^ 2 +
         1561848350772088012800 * Real.exp (-3 * thetaModeA t) ^ 3 +
         113336795588871485128704 * Real.exp (-3 * thetaModeA t) ^ 4) := by
  have heA : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by linarith)
  have hA : 3 ≤ thetaModeA t := by
    unfold thetaModeA
    exact (le_of_lt Real.pi_gt_three).trans
      (le_mul_of_one_le_right Real.pi_pos.le heA)
  have ha (k : Fin 7) :
      |thetaPhiDominantJet7 t k| ≤ thetaPhiJet7DominantBox (thetaModeA t) k := by
    change |thetaPhiJetPolynomial7 k (thetaModeA t)| ≤
      2 * 4 ^ k.val * thetaModeA t ^ (k.val + 1)
    exact thetaPhiJetPolynomial7_abs_le k hA
  have hr (k : Fin 7) :
      |thetaPhiRemainderJet7 t k| ≤
        thetaPhiJet7RemainderBox (thetaModeA t)
          (Real.exp (-3 * thetaModeA t)) k := by
    change |thetaPhiRemainderJet7 t k| ≤
      thetaPhiJet7RemainderErrorCoefficient k *
        thetaModeA t ^ (k.val + 1) *
          Real.exp (-3 * thetaModeA t)
    exact thetaPhiRemainderJet7_abs_le k ht
  have hbox := thetaPhiJetDet4_perturbation_bound
    (thetaPhiDominantJet7 t) (thetaPhiRemainderJet7 t)
    (thetaPhiJet7DominantBox (thetaModeA t))
    (thetaPhiJet7RemainderBox (thetaModeA t)
      (Real.exp (-3 * thetaModeA t))) ha hr
  have hdecomp :
      thetaPhiNormalizedJet7 t =
        fun k => thetaPhiDominantJet7 t k + thetaPhiRemainderJet7 t k := by
    funext k
    exact thetaPhiNormalizedJet7_eq_dominant_add_remainder t k
  unfold thetaPhiJetDet4Perturbation
  rw [hdecomp]
  rw [thetaPhiJetDet4_box_majorant_identity] at hbox
  exact hbox

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e770407f13829d4031059c9ab07b18ca41aeac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
