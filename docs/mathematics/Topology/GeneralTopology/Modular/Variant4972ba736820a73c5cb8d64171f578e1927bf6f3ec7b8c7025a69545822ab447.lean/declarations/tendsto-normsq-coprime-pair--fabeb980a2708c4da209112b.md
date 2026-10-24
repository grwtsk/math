# tendsto_normSq_coprime_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4cff71f-d1ca-cce6-3aef-c3179b0733d7",
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
  "slug": "tendsto-normsq-coprime-pair--fabeb980a2708c4da209112b",
  "source": {
    "blob": "7c6ff5e0ef6481aedbc362481a943158f1515c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fabeb980a2708c4da209112b01c26368135663fd30a8336829d8357936cde871",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4cff71f-d1ca-cce6-3aef-c3179b0733d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_normSq_coprime_pair :
    Filter.Tendsto (fun p : Fin 2 → ℤ => normSq ((p 0 : ℂ) * z + p 1)) cofinite atTop := by
  -- using this instance rather than the automatic `Function.module` makes unification issues in
  -- `LinearEquiv.isClosedEmbedding_of_injective` less bad later in the proof.
  let : Module ℝ (Fin 2 → ℝ) := NormedSpace.toModule
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
    · change (z : ℂ).im⁻¹ * (f c).im = c 0
      rw [f_def, add_im, im_ofReal_mul, ofReal_im, add_zero, mul_left_comm, inv_mul_cancel₀ hz,
        mul_one]
    · change (z : ℂ).im⁻¹ * ((z : ℂ) * conj (f c)).im = c 1
      rw [f_def, map_add, map_mul, mul_add, mul_left_comm, mul_conj, conj_ofReal,
        conj_ofReal, ← ofReal_mul, add_im, ofReal_im, zero_add, inv_mul_eq_iff_eq_mul₀ hz]
      simp only [ofReal_im, ofReal_re, mul_im, zero_add, mul_zero]
  have hf' : IsClosedEmbedding f := f.isClosedEmbedding_of_injective hf
  have h₂ : Tendsto (fun p : Fin 2 → ℤ => ((↑) : ℤ → ℝ) ∘ p) cofinite (cocompact _) := by
    convert! Tendsto.pi_map_coprodᵢ fun _ => Int.tendsto_coe_cofinite
    · rw [coprodᵢ_cofinite]
    · rw [coprodᵢ_cocompact]
  exact tendsto_normSq_cocompact_atTop.comp (hf'.tendsto_cocompact.comp h₂)

/-- Given `coprime_pair` `p=(c,d)`, the matrix `[[a,b],[*,*]]` is sent to `a*c+b*d`.
  This is the linear map version of this operation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6ff5e0ef6481aedbc362481a943158f1515c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
