# Wreg_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2a4d40f-706c-d54a-d17b-5b2169ce5537",
  "kind": "theorem",
  "lexical_name": "Wreg_analyticAt",
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
  "slug": "wreg-analyticat--c069068bb8fa54658f6c1a14",
  "source": {
    "blob": "925679930916da474288c858474ee4c850cb760a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 275,
    "path": "GRWTSK/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c069068bb8fa54658f6c1a14ea6f24f5400ef7fcce856bc5e80ef670d12a62a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2a4d40f-706c-d54a-d17b-5b2169ce5537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Wreg_analyticAt {s : ℂ} (hre : -2 < s.re) (hre' : s.re < 3) : AnalyticAt ℂ Wreg s := by
  -- the strip condition is open
  have hstrip : ∀ᶠ z in 𝓝 s, -2 < z.re ∧ z.re < 3 := by
    filter_upwards [(continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds (show s ∈ re ⁻¹' Ioi (-2) from hre),
      (continuous_re.isOpen_preimage _ isOpen_Iio).mem_nhds (show s ∈ re ⁻¹' Iio 3 from hre')] with z h1 h2
    exact ⟨h1, h2⟩
  -- differentiability of p·W at points of the strip off {0,1}
  have hdiff : ∀ z : ℂ, -2 < z.re → z.re < 3 → z ≠ 0 → z ≠ 1 → DifferentiableAt ℂ Wreg z := by
    intro z h1 h2 hz0 hz1
    have ha : AnalyticAt ℂ (fun z => polarPoly z * hardyW z) z :=
      (polarPoly_analyticAt z).mul (hardyW_analyticAt_of_mem ⟨h1, h2, hz0, hz1⟩)
    exact (ha.congr (Wreg_eventuallyEq hz0 hz1).symm).differentiableAt
  rcases eq_or_ne s 0 with rfl | h0
  · -- removable singularity at 0
    refine Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt ?_ ?_
    · filter_upwards [self_mem_nhdsWithin, mem_nhdsWithin_of_mem_nhds hstrip,
        mem_nhdsWithin_of_mem_nhds (isOpen_ne.mem_nhds (zero_ne_one : (0:ℂ) ≠ 1))] with z hz0 hz hz1
      exact hdiff z hz.1 hz.2 hz0 hz1
    · unfold Wreg
      rw [continuousAt_update_of_ne zero_ne_one, continuousAt_update_same]
      have h0 : Tendsto (fun z : ℂ => (z - 1) ^ 2) (𝓝 0) (𝓝 ((0 - 1) ^ 2)) :=
        ((tendsto_id (x := 𝓝 (0:ℂ))).sub_const 1).pow 2
      have h := (h0.mono_left (nhdsWithin_le_nhds (s := {(0:ℂ)}ᶜ))).mul tendsto_mul_hardyW_zero
      have e : ∀ z : ℂ, polarPoly z * hardyW z = (z - 1) ^ 2 * (z * hardyW z) := by
        intro z; rw [polarPoly]; ring
      simp_rw [e]
      convert h using 2; norm_num
  rcases eq_or_ne s 1 with rfl | h1
  · -- removable singularity at 1
    refine Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt ?_ ?_
    · filter_upwards [self_mem_nhdsWithin, mem_nhdsWithin_of_mem_nhds hstrip,
        mem_nhdsWithin_of_mem_nhds (isOpen_ne.mem_nhds (one_ne_zero : (1:ℂ) ≠ 0))] with z hz1 hz hz0
      exact hdiff z hz.1 hz.2 hz0 hz1
    · unfold Wreg
      rw [continuousAt_update_same]
      -- the inner update differs from p·W only at 0
      have hev : (fun z : ℂ => polarPoly z * hardyW z)
          =ᶠ[𝓝[≠] (1:ℂ)] Function.update (fun s : ℂ => polarPoly s * hardyW s) 0 (1 / 4) := by
        filter_upwards [mem_nhdsWithin_of_mem_nhds (isOpen_ne.mem_nhds (one_ne_zero : (1:ℂ) ≠ 0))] with z hz0
        rw [Function.update_of_ne hz0]
      refine Tendsto.congr' hev ?_
      have h := (((continuous_id).continuousAt (x := (1:ℂ))).tendsto.mono_left
        (nhdsWithin_le_nhds (s := {(1:ℂ)}ᶜ))).mul tendsto_sq_mul_hardyW_one
      have e : ∀ z : ℂ, polarPoly z * hardyW z = z * ((z - 1) ^ 2 * hardyW z) := by
        intro z; rw [polarPoly]; ring
      simp_rw [e]
      convert h using 2 <;> simp
  · exact ((polarPoly_analyticAt s).mul (hardyW_analyticAt_of_mem ⟨hre, hre', h0, h1⟩)).congr
      (Wreg_eventuallyEq h0 h1).symm

/-- off {0,1} (inside the strip) Wreg vanishes exactly where W does … -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `925679930916da474288c858474ee4c850cb760a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
