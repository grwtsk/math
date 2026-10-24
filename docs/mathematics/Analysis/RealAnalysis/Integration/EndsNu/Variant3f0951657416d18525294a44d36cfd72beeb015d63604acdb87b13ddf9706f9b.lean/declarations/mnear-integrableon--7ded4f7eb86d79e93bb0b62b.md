# Mnear_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3e6875f-f55b-5ded-c3a6-656dbfc4e8ad",
  "kind": "lemma",
  "lexical_name": "Mnear_integrableOn",
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
  "slug": "mnear-integrableon--7ded4f7eb86d79e93bb0b62b",
  "source": {
    "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 405,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ded4f7eb86d79e93bb0b62bdfb4e8be77f763f3884d5f6f293ed9e8653385bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3e6875f-f55b-5ded-c3a6-656dbfc4e8ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Mnear_integrableOn (hF : LocalHypsCoreW cϱ p F) (_hT : 0 < p.T) :
    IntegrableOn (Mnear cϱ p B) (Ioc 0 (2 * p.T)) := by
  have hΨ0 : 0 ≤ ∫ r in Ioi 0, psiA cϱ p r :=
    setIntegral_nonneg measurableSet_Ioi fun r _ => psiA_nonneg_of hF r
  have hc : (0:ℝ) ≤ cϱ := by linarith [hF.four_le_cϱ]
  have hw : 0 < p.w := by linarith [hF.one_le_w]
  have hmeas : Measurable fun Δ : ℝ => min (∫ r in Ioi 0, psiA cϱ p r) (cϱ / (p.w * Δ)) :=
    measurable_const.min (measurable_const.div (measurable_const.mul measurable_id))
  have hmin : IntegrableOn (fun Δ : ℝ => min (∫ r in Ioi 0, psiA cϱ p r) (cϱ / (p.w * Δ)))
      (Ioc 0 (2 * p.T)) := by
    refine Integrable.mono' (g := fun _ => ∫ r in Ioi 0, psiA cϱ p r)
      (integrableOn_const (by rw [Real.volume_Ioc]; exact ENNReal.ofReal_ne_top))
      hmeas.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with Δ hΔ
    rw [Real.norm_eq_abs, abs_of_nonneg (le_min hΨ0 (by have := hΔ.1; positivity))]
    exact min_le_left _ _
  unfold Mnear
  exact ((hF.psi_integrable.integrableOn).add (hmin.const_mul _)).const_mul _

/-- rpow form of the far majorant on Δ > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
