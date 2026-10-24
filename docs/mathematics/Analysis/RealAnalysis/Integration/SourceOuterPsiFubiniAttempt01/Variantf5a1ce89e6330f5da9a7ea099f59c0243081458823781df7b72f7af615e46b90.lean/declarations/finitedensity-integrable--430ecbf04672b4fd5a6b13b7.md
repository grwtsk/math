# finiteDensity_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b10b96a7-bc49-45fe-a574-213021b04dc9",
  "kind": "theorem",
  "lexical_name": "finiteDensity_integrable",
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
  "slug": "finitedensity-integrable--430ecbf04672b4fd5a6b13b7",
  "source": {
    "blob": "d22f12413e000705f7644c2a6884a1559f0531c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:430ecbf04672b4fd5a6b13b715f214eb5f0f47b6f68b410380c9d12b3afa3231",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b10b96a7-bc49-45fe-a574-213021b04dc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteDensity_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (finiteDensity A)
      ((volume.restrict (Ioc (Real.log 2) (2 * A))).prod
        (volume.restrict (Ioc 2 (Real.exp (2 * A))))) := by
  let μt := volume.restrict (Ioc (Real.log 2) (2 * A))
  let μy := volume.restrict (Ioc 2 (Real.exp (2 * A)))
  let clamp : ℝ → ℝ := fun y => max 2 y
  let g : ℝ × ℝ → ℝ := fun p => literalXiWeight p.1 (clamp p.2) *
    deriv (deriv (cesaroWeight A)) p.1
  have hAp : 0 < A := by linarith
  have hX : 2 ≤ Real.exp (2 * A) := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using
      Real.exp_le_exp.mpr (threshold_order A hA)
  have hcl : Continuous clamp := continuous_const.max continuous_id
  have hcp (y : ℝ) : 0 < clamp y := by dsimp only [clamp]; linarith [le_max_left (2 : ℝ) y]
  have hg : Continuous g := by
    have hp : Continuous (fun p : ℝ × ℝ => clamp p.2) := hcl.comp continuous_snd
    have hl : Continuous (fun p : ℝ × ℝ => Real.log (clamp p.2)) := hp.log (fun p => (hcp p.2).ne')
    have hr : Continuous (fun p : ℝ × ℝ => clamp p.2 ^ (3 / 2 : ℝ)) :=
      hp.rpow_const (fun p => Or.inl (hcp p.2).ne')
    have he : Continuous (fun p : ℝ × ℝ => 4 * Real.exp (p.1 / 2)) := by fun_prop
    unfold g literalXiWeight
    exact ((he.div (hp.pow 2)
      (fun p => pow_ne_zero 2 (hcp p.2).ne')).sub
        (((continuous_fst.sub hl).add continuous_const).div hr
          (fun p => (Real.rpow_pos_of_pos (hcp p.2) _).ne'))).mul
      ((cesaroWeight_second_deriv_continuous A hAp).comp continuous_fst)
  have hXi : Integrable shiftedActualChebyshev μy := by
    have hi := shiftedActualChebyshev_mul_intervalIntegrable (Real.exp (2 * A)) hX
      (fun _ => (1 : ℝ)) continuousOn_const
    simpa only [mul_one, IntegrableOn, μy] using hi.1
  let box := Icc (Real.log 2) (2 * A) ×ˢ Icc 2 (Real.exp (2 * A))
  obtain ⟨C, hC⟩ := (isCompact_Icc.prod isCompact_Icc).exists_bound_of_continuousOn
    (show ContinuousOn g box from hg.continuousOn)
  have hcarrier : ∀ᵐ p ∂μt.prod μy,
      p ∈ Ioc (Real.log 2) (2 * A) ×ˢ Ioc 2 (Real.exp (2 * A)) := by
    dsimp only [μt, μy]
    rw [Measure.prod_restrict]
    exact ae_restrict_mem (measurableSet_Ioc.prod measurableSet_Ioc)
  have hb : ∀ᵐ p ∂μt.prod μy, ‖g p‖ ≤ C := by
    filter_upwards [hcarrier] with p hp
    exact hC p ⟨⟨hp.1.1.le, hp.1.2⟩, ⟨hp.2.1.le, hp.2.2⟩⟩
  have hi := (hXi.comp_snd μt).mul_bdd hg.aestronglyMeasurable hb
  have hm : MeasurableSet {p : ℝ × ℝ | p.2 ≤ Real.exp p.1} :=
    (isClosed_le continuous_snd (Real.continuous_exp.comp continuous_fst)).measurableSet
  apply (hi.indicator hm).congr
  filter_upwards [hcarrier] with p hp
  have hc : clamp p.2 = p.2 := max_eq_right hp.2.1.le
  by_cases hd : p.2 ≤ Real.exp p.1
  · simp only [finiteDensity, hd, if_pos, indicator_of_mem hd, g, hc]
    ring
  · simp only [finiteDensity, hd, if_neg, indicator_of_notMem hd]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d22f12413e000705f7644c2a6884a1559f0531c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
