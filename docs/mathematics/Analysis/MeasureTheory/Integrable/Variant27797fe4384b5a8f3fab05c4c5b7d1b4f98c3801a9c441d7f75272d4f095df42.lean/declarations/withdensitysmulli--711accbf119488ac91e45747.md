# withDensitySMulLI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8d7c3bd716dc515ba134eb478806b621fa7f040bb0d9f5cabc42e9f8517a0ab",
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
  "slug": "withdensitysmulli--711accbf119488ac91e45747",
  "source": {
    "blob": "2ad180afca8fb23408d5408050a8965089375ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 908,
    "line": 863,
    "path": "GRWTSK/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:711accbf119488ac91e45747af4470a09081572e91e890184d6768707b4446a4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8d7c3bd716dc515ba134eb478806b621fa7f040bb0d9f5cabc42e9f8517a0ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 863–908.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def withDensitySMulLI {f : α → ℝ≥0} (f_meas : Measurable f) :
    Lp E 1 (μ.withDensity fun x => f x) →ₗᵢ[ℝ] Lp E 1 μ where
  toFun u := (memL1_smul_of_L1_withDensity f_meas u).toLp _
  map_add' := by
    intro u v
    ext1
    filter_upwards [(memL1_smul_of_L1_withDensity f_meas u).coeFn_toLp,
      (memL1_smul_of_L1_withDensity f_meas v).coeFn_toLp,
      (memL1_smul_of_L1_withDensity f_meas (u + v)).coeFn_toLp,
      Lp.coeFn_add ((memL1_smul_of_L1_withDensity f_meas u).toLp _)
        ((memL1_smul_of_L1_withDensity f_meas v).toLp _),
      (ae_withDensity_iff f_meas.coe_nnreal_ennreal).1 (Lp.coeFn_add u v)]
    intro x hu hv huv h' h''
    rw [huv, h', Pi.add_apply, hu, hv]
    rcases eq_or_ne (f x) 0 with (hx | hx)
    · simp only [hx, zero_smul, add_zero]
    · rw [h'' _, Pi.add_apply, smul_add]
      simpa only [Ne, ENNReal.coe_eq_zero] using hx
  map_smul' := by
    intro r u
    ext1
    filter_upwards [(ae_withDensity_iff f_meas.coe_nnreal_ennreal).1 (Lp.coeFn_smul r u),
      (memL1_smul_of_L1_withDensity f_meas (r • u)).coeFn_toLp,
      Lp.coeFn_smul r ((memL1_smul_of_L1_withDensity f_meas u).toLp _),
      (memL1_smul_of_L1_withDensity f_meas u).coeFn_toLp]
    intro x h h' h'' h'''
    rw [RingHom.id_apply, h', h'', Pi.smul_apply, h''']
    rcases eq_or_ne (f x) 0 with (hx | hx)
    · simp only [hx, zero_smul, smul_zero]
    · rw [h _, smul_comm, Pi.smul_apply]
      simpa only [Ne, ENNReal.coe_eq_zero] using hx
  norm_map' := by
    intro u
    change ‖(memL1_smul_of_L1_withDensity f_meas u).toLp (fun x => f x • u x)‖ = ‖u‖
    rw [Lp.norm_toLp, Lp.norm_def]
    congr 1
    rw [eLpNorm_one_eq_lintegral_enorm
      (memL1_smul_of_L1_withDensity f_meas u).aestronglyMeasurable,
      eLpNorm_one_eq_lintegral_enorm (Lp.aestronglyMeasurable u)]
    rw [lintegral_withDensity_eq_lintegral_mul_non_measurable _ f_meas.coe_nnreal_ennreal
        (Filter.Eventually.of_forall fun x => ENNReal.coe_lt_top)]
    apply lintegral_congr_ae
    filter_upwards with x
    simp [NNReal.smul_def, enorm_smul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean#L863).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ad180afca8fb23408d5408050a8965089375ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
