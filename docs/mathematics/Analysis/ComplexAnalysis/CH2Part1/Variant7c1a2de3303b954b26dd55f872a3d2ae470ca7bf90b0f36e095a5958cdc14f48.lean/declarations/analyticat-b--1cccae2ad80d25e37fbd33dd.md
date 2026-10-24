# analyticAt_B

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1646,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04099198-248e-ae4d-c85b-b6742a91e183",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:597902d9-2a22-a5aa-489a-62927d3b3f27",
  "kind": "theorem",
  "lexical_name": "analyticAt_B",
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
  "slug": "analyticat-b--1cccae2ad80d25e37fbd33dd",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1721,
    "line": 1646,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cccae2ad80d25e37fbd33dd2ed18c3184a6594034a3a820dfe552948628dc32",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:597902d9-2a22-a5aa-489a-62927d3b3f27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1646–1721.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticAt_B (ε : ℝ) (z₀ : ℂ) (h_not_pole : ∀ n : ℤ, n ≠ 0 → z₀ ≠ 2 * π * I * n) :
    AnalyticAt ℂ (B ε) z₀ := by
  apply analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
  · obtain ⟨V, hV_nhds, b, hb, hV_anal⟩ := (meromorphicAt_B ε z₀).eventually_analyticAt
    filter_upwards [nhdsWithin_le_nhds hV_nhds, self_mem_nhdsWithin] with w hw hne
    have : w ∈ V ∩ b := ⟨hw, hb hne⟩
    have h_an : AnalyticAt ℂ (B ε) w := by rwa [← hV_anal] at this
    exact h_an.differentiableAt
  · unfold B
    by_cases h0 : z₀ = 0
    · subst h0
      have h_lim : Filter.Tendsto (fun s ↦ s * (coth (s / 2) + ε) / 2) (nhdsWithin 0 {0}ᶜ) (nhds 1) := by
        have h1 : Filter.Tendsto (fun s ↦ (s / 2) / Complex.sinh (s / 2)) (nhdsWithin 0 {0}ᶜ) (nhds 1) := by
          have h_deriv : HasDerivAt (fun s ↦ Complex.sinh (s / 2)) (1 / 2) 0 := by
            have h := (Complex.hasDerivAt_sinh (0 / 2)).comp 0 ((hasDerivAt_id (0 : ℂ)).div_const 2)
            simp only [zero_div, Complex.cosh_zero, id_eq] at h
            convert h using 1; ring
          rw [hasDerivAt_iff_tendsto_slope] at h_deriv
          rw [slope_fun_def_field] at h_deriv
          simp only [Complex.sinh_zero, sub_zero, zero_div] at h_deriv
          have h_inv := h_deriv.inv₀ (by norm_num)
          field_simp [mul_comm] at h_inv
          convert h_inv.div_const 2 using 1
          · ext s; field_simp
          · simp
        have h_lim' : Filter.Tendsto (fun s ↦ ((s / 2) / Complex.sinh (s / 2)) * Complex.cosh (s / 2) + s * ε / 2) (nhdsWithin 0 {0}ᶜ) (nhds (1 * 1 + 0 * ε / 2)) := by
          apply Filter.Tendsto.add
          · apply Filter.Tendsto.mul h1
            have : Filter.Tendsto (fun s ↦ Complex.cosh (s / 2)) (nhds 0) (nhds (Complex.cosh (0 / 2))) := by
              apply (Complex.continuous_cosh.continuousAt.comp (continuous_id.div_const 2).continuousAt).tendsto
            simp only [zero_div, Complex.cosh_zero] at this
            exact this.mono_left nhdsWithin_le_nhds
          · apply Filter.Tendsto.div_const
            apply Filter.Tendsto.mul (Filter.tendsto_id.mono_left nhdsWithin_le_nhds) tendsto_const_nhds
        simp only [mul_one, zero_mul, zero_div, add_zero] at h_lim'
        refine h_lim'.congr' ?_
        filter_upwards [self_mem_nhdsWithin] with s hs
        rw [coth, Complex.tanh_eq_sinh_div_cosh]
        field_simp
      rw [continuousAt_iff_punctured_nhds]
      simp only [↓reduceIte]
      apply h_lim.congr'
      · filter_upwards [self_mem_nhdsWithin] with s hs
        split_ifs with h
        · contradiction
        · rfl
    · have h_eq : (fun s ↦ if s = 0 then 1 else s * (coth (s / 2) + ε) / 2) =ᶠ[nhds z₀]
          (fun s ↦ s * (coth (s / 2) + ε) / 2) := by
        filter_upwards [continuous_id.continuousAt.eventually_ne h0] with s hs
        split_ifs with h_s0
        · contradiction
        · rfl
      apply ContinuousAt.congr_of_eventuallyEq _ h_eq
      apply ContinuousAt.div_const
      apply ContinuousAt.mul continuousAt_id
      apply ContinuousAt.add _ continuousAt_const
      apply ContinuousAt.coth (continuousAt_id.div_const 2)
      intro hc
      rw [sinh_zero_iff] at hc
      obtain ⟨n, hn⟩ := hc
      have : z₀ = 2 * π * I * n := by
        simp only [id_eq] at hn
        field_simp [hn]
        linear_combination 2 * hn
      by_cases hn0 : n = 0
      · subst hn0; simp at this; contradiction
      · exact h_not_pole n hn0 this


@[blueprint
  "Phi-star-mero"
  (title := "$\\Phi^{\\pm,\\ast}_\\nu$ meromorphic")
  (statement := /--
  $$\Phi^{\pm,\ast}_\nu(z)$$ is meromorphic.
  -/)
  (proof := /-- This follows from the definition of $\Phi^{\pm,\ast}_\nu$ and the properties of the $B^\pm$ function. -/), fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L1646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
