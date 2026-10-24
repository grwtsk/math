# withDensitySMulLI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0844d7a3cff5ac795f51a360ccf4c47e28019ef5d60af30c04442b432457ae15",
  "kind": "def",
  "lexical_name": "withDensitySMulLI",
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
  "slug": "withdensitysmulli--848e51dd07a0f769f753c136",
  "source": {
    "blob": "0098a333798425739d5938cd1c1f1a85403eef06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 974,
    "line": 926,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L1Space/Variant13a350c81105471232a906d8dea92370640950b8b90d5ab8e3d9f5f774e0c9e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:848e51dd07a0f769f753c13685425ea22231a3c445b14f4db8603ed9ae93f5d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L1Space/Variant13a350c81105471232a906d8dea92370640950b8b90d5ab8e3d9f5f774e0c9e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0844d7a3cff5ac795f51a360ccf4c47e28019ef5d60af30c04442b432457ae15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 926–974.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def withDensitySMulLI {f : α → ℝ≥0} (f_meas : Measurable f) :
    Lp E 1 (μ.withDensity fun x => f x) →ₗᵢ[ℝ] Lp E 1 μ where
  toFun u := (memℒ1_smul_of_L1_withDensity f_meas u).toLp _
  map_add' := by
    intro u v
    ext1
    filter_upwards [(memℒ1_smul_of_L1_withDensity f_meas u).coeFn_toLp,
      (memℒ1_smul_of_L1_withDensity f_meas v).coeFn_toLp,
      (memℒ1_smul_of_L1_withDensity f_meas (u + v)).coeFn_toLp,
      Lp.coeFn_add ((memℒ1_smul_of_L1_withDensity f_meas u).toLp _)
        ((memℒ1_smul_of_L1_withDensity f_meas v).toLp _),
      (ae_withDensity_iff f_meas.coe_nnreal_ennreal).1 (Lp.coeFn_add u v)]
    intro x hu hv huv h' h''
    rw [huv, h', Pi.add_apply, hu, hv]
    rcases eq_or_ne (f x) 0 with (hx | hx)
    · simp only [hx, zero_smul, add_zero]
    · rw [h'' _, Pi.add_apply, smul_add]
      simpa only [Ne.def, ENNReal.coe_eq_zero] using hx
  map_smul' := by
    intro r u
    ext1
    filter_upwards [(ae_withDensity_iff f_meas.coe_nnreal_ennreal).1 (Lp.coeFn_smul r u),
      (memℒ1_smul_of_L1_withDensity f_meas (r • u)).coeFn_toLp,
      Lp.coeFn_smul r ((memℒ1_smul_of_L1_withDensity f_meas u).toLp _),
      (memℒ1_smul_of_L1_withDensity f_meas u).coeFn_toLp]
    intro x h h' h'' h'''
    rw [RingHom.id_apply, h', h'', Pi.smul_apply, h''']
    rcases eq_or_ne (f x) 0 with (hx | hx)
    · simp only [hx, zero_smul, smul_zero]
    · rw [h _, smul_comm, Pi.smul_apply]
      simpa only [Ne.def, ENNReal.coe_eq_zero] using hx
  norm_map' := by
    intro u
    -- Porting note: Lean can't infer types of `AddHom.coe_mk`.
    simp only [snorm, LinearMap.coe_mk,
      AddHom.coe_mk (M := Lp E 1 (μ.withDensity fun x => f x)) (N := Lp E 1 μ), Lp.norm_toLp,
      one_ne_zero, ENNReal.one_ne_top, ENNReal.one_toReal, if_false, snorm', ENNReal.rpow_one,
      _root_.div_one, Lp.norm_def]
    rw [lintegral_withDensity_eq_lintegral_mul_non_measurable _ f_meas.coe_nnreal_ennreal
        (Filter.eventually_of_forall fun x => ENNReal.coe_lt_top)]
    congr 1
    apply lintegral_congr_ae
    filter_upwards [(memℒ1_smul_of_L1_withDensity f_meas u).coeFn_toLp] with x hx
    rw [hx, Pi.mul_apply]
    change (‖(f x : ℝ) • u x‖₊ : ℝ≥0∞) = (f x : ℝ≥0∞) * (‖u x‖₊ : ℝ≥0∞)
    simp only [nnnorm_smul, NNReal.nnnorm_eq, ENNReal.coe_mul]
#align measure_theory.with_density_smul_li MeasureTheory.withDensitySMulLI

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L1Space/Variant13a350c81105471232a906d8dea92370640950b8b90d5ab8e3d9f5f774e0c9e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L1Space/Variant13a350c81105471232a906d8dea92370640950b8b90d5ab8e3d9f5f774e0c9e3.lean#L926).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0098a333798425739d5938cd1c1f1a85403eef06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
