# tendsto_normSq_coprime_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9df97e3b-32fb-7abf-386a-ca3d1c3823dd",
  "kind": "theorem",
  "lexical_name": "tendsto_normSq_coprime_pair",
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
  "slug": "tendsto-normsq-coprime-pair--16d15a2c500524bdc4172496",
  "source": {
    "blob": "0b65e86e231f39c0a13cd4f3f817f39ac55e169e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16d15a2c500524bdc41724966dfc90cbb7d57e080dd0d4a84458e5bbe429a4a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9df97e3b-32fb-7abf-386a-ca3d1c3823dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_normSq_coprime_pair :
    Filter.Tendsto (fun p : Fin 2 → ℤ => normSq ((p 0 : ℂ) * z + p 1)) cofinite atTop := by
  -- using this instance rather than the automatic `Function.module` makes unification issues in
  -- `LinearEquiv.isClosedEmbedding_of_injective` less bad later in the proof.
  letI : Module ℝ (Fin 2 → ℝ) := NormedSpace.toModule
  let π₀ : (Fin 2 → ℝ) →ₗ[ℝ] ℝ := LinearMap.proj 0
  let π₁ : (Fin 2 → ℝ) →ₗ[ℝ] ℝ := LinearMap.proj 1
  let f : (Fin 2 → ℝ) →ₗ[ℝ] ℂ := π₀.smulRight (z : ℂ) + π₁.smulRight 1
  have f_def : ⇑f = fun p : Fin 2 → ℝ => (p 0 : ℂ) * ↑z + p 1 := by
    ext1
    dsimp only [π₀, π₁, f, LinearMap.coe_proj, real_smul, LinearMap.coe_smulRight,
      LinearMap.add_apply]
    rw [mul_one]
  have :
    (fun p : Fin 2 → ℤ => normSq ((p 0 : ℂ) * ↑z + ↑(p 1))) =
      normSq ∘ f ∘ fun p : Fin 2 → ℤ => ((↑) : ℤ → ℝ) ∘ p := by
    ext1
    rw [f_def]
    dsimp only [Function.comp_def]
    rw [ofReal_intCast, ofReal_intCast]
  rw [this]
  have hf : LinearMap.ker f = ⊥ := by
    let g : ℂ →ₗ[ℝ] Fin 2 → ℝ :=
      LinearMap.pi ![imLm, imLm.comp ((z : ℂ) • ((conjAe : ℂ →ₐ[ℝ] ℂ) : ℂ →ₗ[ℝ] ℂ))]
    suffices ((z : ℂ).im⁻¹ • g).comp f = LinearMap.id by exact LinearMap.ker_eq_bot_of_inverse this
    apply LinearMap.ext
    intro c
    have hz : (z : ℂ).im ≠ 0 := z.2.ne'
    rw [LinearMap.comp_apply, LinearMap.smul_apply, LinearMap.id_apply]
    ext i
    dsimp only [Pi.smul_apply, LinearMap.pi_apply, smul_eq_mul]
    fin_cases i
    · show (z : ℂ).im⁻¹ * (f c).im = c 0
      rw [f_def, add_im, im_ofReal_mul, ofReal_im, add_zero, mul_left_comm, inv_mul_cancel₀ hz,
        mul_one]
    · show (z : ℂ).im⁻¹ * ((z : ℂ) * conj (f c)).im = c 1
      rw [f_def, RingHom.map_add, RingHom.map_mul, mul_add, mul_left_comm, mul_conj, conj_ofReal,
        conj_ofReal, ← ofReal_mul, add_im, ofReal_im, zero_add, inv_mul_eq_iff_eq_mul₀ hz]
      simp only [ofReal_im, ofReal_re, mul_im, zero_add, mul_zero]
  have hf' : IsClosedEmbedding f := f.isClosedEmbedding_of_injective hf
  have h₂ : Tendsto (fun p : Fin 2 → ℤ => ((↑) : ℤ → ℝ) ∘ p) cofinite (cocompact _) := by
    convert Tendsto.pi_map_coprodᵢ fun _ => Int.tendsto_coe_cofinite
    · rw [coprodᵢ_cofinite]
    · rw [coprodᵢ_cocompact]
  exact tendsto_normSq_cocompact_atTop.comp (hf'.tendsto_cocompact.comp h₂)

/-- Given `coprime_pair` `p=(c,d)`, the matrix `[[a,b],[*,*]]` is sent to `a*c+b*d`.
  This is the linear map version of this operation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b65e86e231f39c0a13cd4f3f817f39ac55e169e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
