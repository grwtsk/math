# hasFPowerSeriesAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd9ae3d4-312b-7916-61a9-09f7fb8ae17f",
  "kind": "theorem",
  "lexical_name": "hasFPowerSeriesAt_iff",
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
  "slug": "hasfpowerseriesat-iff--b4d4e33ecb5131a46cfd5487",
  "source": {
    "blob": "57ccc08fe35d34400d35e11fbe19643732a90dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1459,
    "line": 1438,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d4e33ecb5131a46cfd5487a01b92463731aae0efb763937ae16b72063d2040",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd9ae3d4-312b-7916-61a9-09f7fb8ae17f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1438–1459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFPowerSeriesAt_iff :
    HasFPowerSeriesAt f p z₀ ↔ ∀ᶠ z in 𝓝 0, HasSum (fun n => z ^ n • p.coeff n) (f (z₀ + z)) := by
  refine ⟨fun ⟨r, _, r_pos, h⟩ =>
    eventually_of_mem (EMetric.ball_mem_nhds 0 r_pos) fun _ => by simpa using h, ?_⟩
  simp only [Metric.eventually_nhds_iff]
  rintro ⟨r, r_pos, h⟩
  refine ⟨p.radius ⊓ r.toNNReal, by simp, ?_, ?_⟩
  · simp only [r_pos.lt, lt_inf_iff, ENNReal.coe_pos, Real.toNNReal_pos, and_true]
    obtain ⟨z, z_pos, le_z⟩ := NormedField.exists_norm_lt 𝕜 r_pos.lt
    have : (‖z‖₊ : ENNReal) ≤ p.radius := by
      simp only [dist_zero_right] at h
      apply FormalMultilinearSeries.le_radius_of_tendsto
      convert tendsto_norm.comp (h le_z).summable.tendsto_atTop_zero
      simp [norm_smul, mul_comm]
    refine lt_of_lt_of_le ?_ this
    simp only [ENNReal.coe_pos]
    exact zero_lt_iff.mpr (nnnorm_ne_zero_iff.mpr (norm_pos_iff.mp z_pos))
  · simp only [EMetric.mem_ball, lt_inf_iff, edist_lt_coe, apply_eq_pow_smul_coeff, and_imp,
      dist_zero_right] at h ⊢
    refine fun {y} _ hyr => h ?_
    simpa [nndist_eq_nnnorm, Real.lt_toNNReal_iff_coe_lt] using hyr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean#L1438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ccc08fe35d34400d35e11fbe19643732a90dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
