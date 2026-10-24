# not_differentiableWithinAt_of_deriv_tendsto_atTop_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55b20dad-b96e-9ad0-ee82-c1aa4485e5ca",
  "kind": "theorem",
  "lexical_name": "not_differentiableWithinAt_of_deriv_tendsto_atTop_Ioi",
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
  "slug": "not-differentiablewithinat-of-deriv-tendsto-attop-ioi--cee6dce3559903632ba1fb53",
  "source": {
    "blob": "45e3c72e110f0b67c4ff32bdd38e43ccf64acdda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 167,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cee6dce3559903632ba1fb534b1a9ec19d5333aeb0af772dc3c860dbf1195045",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55b20dad-b96e-9ad0-ee82-c1aa4485e5ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_differentiableWithinAt_of_deriv_tendsto_atTop_Ioi (f : ℝ → ℝ) {a : ℝ}
    (hf : Tendsto (deriv f) (𝓝[>] a) atTop) : ¬ DifferentiableWithinAt ℝ f (Ioi a) a := by
  replace hf : Tendsto (derivWithin f (Ioi a)) (𝓝[>] a) atTop := by
    refine hf.congr' ?_
    filter_upwards [eventually_mem_nhdsWithin] with x hx
    have : Ioi a ∈ 𝓝 x := by simp [← mem_interior_iff_mem_nhds, hx]
    exact (derivWithin_of_mem_nhds this).symm
  by_cases hcont_at_a : ContinuousWithinAt f (Ici a) a
  case neg =>
    intro hcontra
    have := hcontra.continuousWithinAt
    rw [← ContinuousWithinAt.diff_iff this] at hcont_at_a
    simp at hcont_at_a
  case pos =>
    intro hdiff
    replace hdiff := hdiff.hasDerivWithinAt
    rw [hasDerivWithinAt_iff_tendsto_slope, Set.diff_singleton_eq_self notMem_Ioi_self] at hdiff
    have h₀ : ∀ᶠ b in 𝓝[>] a,
        ∀ x ∈ Ioc a b, max (derivWithin f (Ioi a) a + 1) 0 < derivWithin f (Ioi a) x := by
      rw [(nhdsGT_basis a).eventually_iff]
      rw [(nhdsGT_basis a).tendsto_left_iff] at hf
      obtain ⟨b, hab, hb⟩ := hf (Ioi (max (derivWithin f (Ioi a) a + 1) 0)) (Ioi_mem_atTop _)
      refine ⟨b, hab, fun x hx z hz => ?_⟩
      simp only [MapsTo, mem_Ioo, mem_Ioi, and_imp] at hb
      exact hb hz.1 <| hz.2.trans_lt hx.2
    have h₁ : ∀ᶠ b in 𝓝[>] a, slope f a b < derivWithin f (Ioi a) a + 1 := by
      rw [(nhds_basis_Ioo _).tendsto_right_iff] at hdiff
      specialize hdiff ⟨derivWithin f (Ioi a) a - 1, derivWithin f (Ioi a) a + 1⟩ <| by simp
      filter_upwards [hdiff] with z hz using hz.2
    have hcontra : ∀ᶠ _ in 𝓝[>] a, False := by
      filter_upwards [h₀, h₁, eventually_mem_nhdsWithin] with b hb hslope (hab : a < b)
      have hdiff' : DifferentiableOn ℝ f (Ioc a b) := fun z hz => by
        refine DifferentiableWithinAt.mono (t := Ioi a) ?_ Ioc_subset_Ioi_self
        have : derivWithin f (Ioi a) z ≠ 0 := ne_of_gt <| by
          simp_all only [mem_Ioo, and_imp, mem_Ioc, max_lt_iff]
        exact differentiableWithinAt_of_derivWithin_ne_zero this
      have hcont_Ioc : ∀ z ∈ Ioc a b, ContinuousWithinAt f (Icc a b) z := by
        intro z hz''
        refine (hdiff'.continuousOn z hz'').mono_of_mem_nhdsWithin ?_
        have hfinal : 𝓝[Ioc a b] z = 𝓝[Icc a b] z := by
          refine nhdsWithin_eq_nhdsWithin' (s := Ioi a) (Ioi_mem_nhds hz''.1) ?_
          simp only [Ioc_inter_Ioi, le_refl, sup_of_le_left]
          ext y
          exact ⟨fun h => ⟨mem_Icc_of_Ioc h, mem_of_mem_inter_left h⟩, fun ⟨H1, H2⟩ => ⟨H2, H1.2⟩⟩
        rw [← hfinal]
        exact self_mem_nhdsWithin
      have hcont : ContinuousOn f (Icc a b) := by
        intro z hz
        by_cases hz' : z = a
        · rw [hz']
          exact hcont_at_a.mono Icc_subset_Ici_self
        · exact hcont_Ioc z ⟨lt_of_le_of_ne hz.1 (Ne.symm hz'), hz.2⟩
      obtain ⟨x, hx₁, hx₂⟩ :=
        exists_deriv_eq_slope' f hab hcont (hdiff'.mono (Ioo_subset_Ioc_self))
      specialize hb x ⟨hx₁.1, le_of_lt hx₁.2⟩
      replace hx₂ : derivWithin f (Ioi a) x = slope f a b := by
        have : Ioi a ∈ 𝓝 x := by simp [← mem_interior_iff_mem_nhds, hx₁.1]
        rwa [derivWithin_of_mem_nhds this]
      rw [hx₂, max_lt_iff] at hb
      linarith
    simp [Filter.eventually_false_iff_eq_bot, ← notMem_closure_iff_nhdsWithin_eq_bot] at hcontra

/-- A real function whose derivative tends to minus infinity from the right at a point is not
differentiable on the right at that point -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e3c72e110f0b67c4ff32bdd38e43ccf64acdda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
