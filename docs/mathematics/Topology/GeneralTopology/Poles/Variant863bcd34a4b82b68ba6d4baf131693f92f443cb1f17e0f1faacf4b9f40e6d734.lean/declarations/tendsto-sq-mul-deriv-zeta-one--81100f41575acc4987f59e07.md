# tendsto_sq_mul_deriv_zeta_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edc5c5039aad733ad0afb8dda12029f6595dc25c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2da5c63-9154-0ebd-f282-f58fdbd25135",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3f2c5ff-79b8-e5f9-e279-d8ba19780d81",
  "kind": "theorem",
  "lexical_name": "tendsto_sq_mul_deriv_zeta_one",
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
  "slug": "tendsto-sq-mul-deriv-zeta-one--81100f41575acc4987f59e07",
  "source": {
    "blob": "edc5c5039aad733ad0afb8dda12029f6595dc25c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81100f41575acc4987f59e07354e4d297034cf50f27157be42d3e3a2426ac8ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3f2c5ff-79b8-e5f9-e279-d8ba19780d81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_sq_mul_deriv_zeta_one :
    Tendsto (fun s : ℂ => (s - 1) ^ 2 * deriv riemannZeta s) (𝓝[≠] 1) (𝓝 (-1)) := by
  -- derivative of the polar part H := G/(s−1) off 1
  have hH : ∀ s : ℂ, s ≠ 1 → deriv (fun z => invGammaℝ z / (z - 1)) s
      = (deriv invGammaℝ s * (s - 1) - invGammaℝ s) / (s - 1) ^ 2 := by
    intro s hs
    have h := (differentiable_invGammaℝ s).hasDerivAt.div
      ((hasDerivAt_id s).sub_const (1:ℂ)) (sub_ne_zero.mpr hs)
    have e : (fun z : ℂ => invGammaℝ z / (z - 1)) = (invGammaℝ / fun x => id x - 1) := rfl
    rw [e, h.deriv]
    simp only [id]
    ring
  have hev : ∀ᶠ s in 𝓝[≠] (1:ℂ), (s - 1) ^ 2 * deriv riemannZeta s
      = (s - 1) ^ 2 * deriv zetaReg s + (deriv invGammaℝ s * (s - 1) - invGammaℝ s) := by
    filter_upwards [self_mem_nhdsWithin, mem_nhdsWithin_of_mem_nhds eventually_Gammaℝ_ne_zero_nhds_one]
      with s hs hΓ
    have hdz := zetaReg_differentiableAt hs hΓ
    have hdH : DifferentiableAt ℂ (fun z => invGammaℝ z / (z - 1)) s :=
      (differentiable_invGammaℝ s).div (differentiableAt_id.sub (differentiableAt_const _)) (sub_ne_zero.mpr hs)
    rw [riemannZeta_eq_zetaReg_add]
    rw [show (fun s => zetaReg s + invGammaℝ s / (s - 1)) = zetaReg + fun z => invGammaℝ z / (z - 1) from rfl,
      deriv_add hdz hdH, hH s hs, mul_add, mul_div_cancel₀ _ (pow_ne_zero 2 (sub_ne_zero.mpr hs))]
  -- limits of the three pieces
  have hcont : ContinuousAt (deriv zetaReg) 1 := zetaReg_analyticAt_one.deriv.continuousAt
  have hl1 : Tendsto (fun s : ℂ => (s - 1) ^ 2 * deriv zetaReg s) (𝓝[≠] 1) (𝓝 0) := by
    have h : Tendsto (fun s : ℂ => (s - 1) ^ 2 * deriv zetaReg s) (𝓝 1) (𝓝 ((1 - 1) ^ 2 * deriv zetaReg 1)) :=
      (((tendsto_id (x := 𝓝 (1:ℂ))).sub_const 1).pow 2).mul hcont.tendsto
    have h' := h.mono_left (nhdsWithin_le_nhds (s := {(1:ℂ)}ᶜ))
    simpa using h'
  have hl2 : Tendsto (fun s : ℂ => deriv invGammaℝ s * (s - 1) - invGammaℝ s) (𝓝[≠] 1) (𝓝 (0 - 1)) := by
    have hG1 : invGammaℝ 1 = 1 := by rw [invGammaℝ, Gammaℝ_one, inv_one]
    have hd : ContinuousAt (deriv invGammaℝ) 1 := (analyticAt_invGammaℝ 1).deriv.continuousAt
    have h1 : Tendsto (fun s : ℂ => deriv invGammaℝ s * (s - 1)) (𝓝 1) (𝓝 0) := by
      have : Tendsto (fun s : ℂ => deriv invGammaℝ s * (s - 1)) (𝓝 1) (𝓝 (deriv invGammaℝ 1 * (1 - 1))) :=
        hd.tendsto.mul ((tendsto_id (x := 𝓝 (1:ℂ))).sub_const 1)
      simpa using this
    have h2 : Tendsto invGammaℝ (𝓝 1) (𝓝 1) := by
      have := (differentiable_invGammaℝ.continuous.continuousAt (x := (1:ℂ))).tendsto
      rwa [hG1] at this
    exact (h1.sub h2).mono_left nhdsWithin_le_nhds
  have hlim := hl1.add hl2
  rw [show (-1 : ℂ) = 0 + (0 - 1) by ring]
  exact hlim.congr' (hev.mono fun _ h => h.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc5c5039aad733ad0afb8dda12029f6595dc25c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
