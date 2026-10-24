# integrableOn_exp_neg_div_Ioi_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b53ae8d3-e651-b3b1-aa26-dd33e78c3fce",
  "kind": "lemma",
  "lexical_name": "integrableOn_exp_neg_div_Ioi_one",
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
  "slug": "integrableon-exp-neg-div-ioi-one--af22e1578c75729934745b55",
  "source": {
    "blob": "89ef6f525685569b90716827903f2340987df587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 222,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af22e1578c75729934745b5572e28b7e47d807864afc42cc6dd778184fee50c0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b53ae8d3-e651-b3b1-aa26-dd33e78c3fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrableOn_exp_neg_div_Ioi_one :
    IntegrableOn (fun t => exp (-t) / t) (Set.Ioi 1) := by
  have hg : IntegrableOn (fun t => exp (-t)) (Set.Ioi 1) := by
    have := (GammaIntegral_convergent (s := 1) (by norm_num : (0 : ℝ) < 1)).mono_set
      (Set.Ioi_subset_Ioi zero_le_one)
    apply this.congr
    filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with t ht
    simp only [Set.mem_Ioi] at ht
    rw [show (1 : ℝ) - 1 = 0 from by norm_num, rpow_zero, mul_one]
  rw [IntegrableOn] at hg ⊢
  exact hg.mono
    ((continuous_exp.comp continuous_neg).measurable.div measurable_id).aestronglyMeasurable.restrict
    (by filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with t ht
        simp only [Set.mem_Ioi] at ht
        have ht0 : (0 : ℝ) < t := lt_trans zero_lt_one ht
        rw [norm_div, Real.norm_eq_abs, Real.norm_eq_abs, abs_of_pos (exp_pos _), abs_of_pos ht0]
        exact div_le_self (le_of_lt (exp_pos _)) (le_of_lt ht))

/-! ## IBP on `(1, ∞)`: `∫₁^∞ log(t) exp(-t) dt = ∫₁^∞ exp(-t)/t dt` -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ef6f525685569b90716827903f2340987df587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
