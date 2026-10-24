# lintegral_nnnorm_condExpL2_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c186573a-a545-269f-e09b-2a5e6fee66ba",
  "kind": "theorem",
  "lexical_name": "lintegral_nnnorm_condExpL2_le",
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
  "slug": "lintegral-nnnorm-condexpl2-le--8d3783a25a28c205f82af7a9",
  "source": {
    "blob": "96a900cf434d68b2e8dbaf77a9a36cb726b92f85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 153,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d3783a25a28c205f82af7a9792fe1924122786dcc27956fcc8023ae5b84b79f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c186573a-a545-269f-e09b-2a5e6fee66ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_nnnorm_condExpL2_le (hs : MeasurableSet[m] s) (hμs : μ s ≠ ∞) (f : Lp ℝ 2 μ) :
    ∫⁻ x in s, ‖(condExpL2 ℝ ℝ hm f : α → ℝ) x‖₊ ∂μ ≤ ∫⁻ x in s, ‖f x‖₊ ∂μ := by
  let h_meas := lpMeas.aestronglyMeasurable (condExpL2 ℝ ℝ hm f)
  let g := h_meas.choose
  have hg_meas : StronglyMeasurable[m] g := h_meas.choose_spec.1
  have hg_eq : g =ᵐ[μ] condExpL2 ℝ ℝ hm f := h_meas.choose_spec.2.symm
  have hg_eq_restrict : g =ᵐ[μ.restrict s] condExpL2 ℝ ℝ hm f := ae_restrict_of_ae hg_eq
  have hg_nnnorm_eq : (fun x => (‖g x‖₊ : ℝ≥0∞)) =ᵐ[μ.restrict s] fun x =>
      (‖(condExpL2 ℝ ℝ hm f : α → ℝ) x‖₊ : ℝ≥0∞) := by
    refine hg_eq_restrict.mono fun x hx => ?_
    dsimp only
    simp_rw [hx]
  rw [lintegral_congr_ae hg_nnnorm_eq.symm]
  refine lintegral_enorm_le_of_forall_fin_meas_integral_eq
    hm (Lp.stronglyMeasurable f) ?_ ?_ ?_ ?_ hs hμs
  · exact integrableOn_Lp_of_measure_ne_top f fact_one_le_two_ennreal.elim hμs
  · exact hg_meas
  · rw [IntegrableOn, integrable_congr hg_eq_restrict]
    exact integrableOn_condExpL2_of_measure_ne_top hm hμs f
  · intro t ht hμt
    rw [← integral_condExpL2_eq_of_fin_meas_real (hm := hm) f ht hμt.ne]
    exact setIntegral_congr_ae (hm t ht) (hg_eq.mono fun x hx _ => hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a900cf434d68b2e8dbaf77a9a36cb726b92f85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
