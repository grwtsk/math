# normalized_det_nonpos_of_antitone_deriv_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41652faa-db56-ad1b-e761-059f1c4eea51",
  "kind": "theorem",
  "lexical_name": "normalized_det_nonpos_of_antitone_deriv_ratio",
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
  "slug": "normalized-det-nonpos-of-antitone-deriv-ratio--143cf3c86237440f44c45109",
  "source": {
    "blob": "f3e04a3ff3a26dab21aa087fc0c8b634e852068e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:143cf3c86237440f44c45109f292d5f08356d4d96ae2a5efe9149564ddf5fb15",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41652faa-db56-ad1b-e761-059f1c4eea51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_det_nonpos_of_antitone_deriv_ratio
    (g1 g2 d1 d2 : ℝ → ℝ) {x y z : ℝ} (hxy : x < y) (hyz : y < z)
    (hc1 : ContinuousOn g1 (Icc x z)) (hc2 : ContinuousOn g2 (Icc x z))
    (hd1 : ∀ t ∈ Ioo x z, HasDerivAt g1 (d1 t) t)
    (hd2 : ∀ t ∈ Ioo x z, HasDerivAt g2 (d2 t) t)
    (hn1 : ∀ t ∈ Ioo x z, d1 t < 0)
    (ha : AntitoneOn (fun t => d2 t / d1 t) (Ioo x z)) :
    Matrix.det !![1, 1, 1; g1 x, g1 y, g1 z; g2 x, g2 y, g2 z] ≤ 0 := by
  have hcc1 : Icc x y ⊆ Icc x z := fun _ ht => ⟨ht.1, ht.2.trans hyz.le⟩
  have hcc2 : Icc y z ⊆ Icc x z := fun _ ht => ⟨hxy.le.trans ht.1, ht.2⟩
  have hoo1 : Ioo x y ⊆ Ioo x z := fun _ ht => ⟨ht.1, ht.2.trans hyz⟩
  have hoo2 : Ioo y z ⊆ Ioo x z := fun _ ht => ⟨hxy.trans ht.1, ht.2⟩
  have hdiff1 : g1 y - g1 x < 0 := image_sub_neg_of_hasDerivAt_neg g1 d1 hxy
    (hc1.mono hcc1) (fun t ht => hd1 t (hoo1 ht)) (fun t ht => hn1 t (hoo1 ht))
  have hdiff2 : g1 z - g1 y < 0 := image_sub_neg_of_hasDerivAt_neg g1 d1 hyz
    (hc1.mono hcc2) (fun t ht => hd1 t (hoo2 ht)) (fun t ht => hn1 t (hoo2 ht))
  obtain ⟨c1, hc1', heq1⟩ := exists_ratio_hasDerivAt_eq_ratio_slope g1 d1 hxy
    (hc1.mono hcc1) (fun t ht => hd1 t (hoo1 ht)) g2 d2
    (hc2.mono hcc1) (fun t ht => hd2 t (hoo1 ht))
  obtain ⟨c2, hc2', heq2⟩ := exists_ratio_hasDerivAt_eq_ratio_slope g1 d1 hyz
    (hc1.mono hcc2) (fun t ht => hd1 t (hoo2 ht)) g2 d2
    (hc2.mono hcc2) (fun t ht => hd2 t (hoo2 ht))
  have hs1 : (g2 y - g2 x) / (g1 y - g1 x) = d2 c1 / d1 c1 := by
    apply (div_eq_div_iff (ne_of_lt hdiff1) (ne_of_lt (hn1 c1 (hoo1 hc1')))).mpr
    simpa only [mul_comm] using heq1
  have hs2 : (g2 z - g2 y) / (g1 z - g1 y) = d2 c2 / d1 c2 := by
    apply (div_eq_div_iff (ne_of_lt hdiff2) (ne_of_lt (hn1 c2 (hoo2 hc2')))).mpr
    simpa only [mul_comm] using heq2
  rw [det_fin_three_normalized_eq_secants _ _ _ _ _ _
    (ne_of_lt hdiff1) (ne_of_lt hdiff2), hs1, hs2]
  exact mul_nonpos_of_nonneg_of_nonpos (mul_nonneg_of_nonpos_of_nonpos
    hdiff1.le hdiff2.le) (sub_nonpos.mpr (ha (hoo1 hc1') (hoo2 hc2')
      (hc1'.2.trans hc2'.1).le))

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e04a3ff3a26dab21aa087fc0c8b634e852068e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
