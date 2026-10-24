# fourier_Gaux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78a61f9d425c3c55b23c4ddb612b986f0bcb34f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfd4ee67-3c2b-0550-92b0-85edf751e544",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34061c06-c851-27ac-6a01-01fe9089ecda",
  "kind": "theorem",
  "lexical_name": "fourier_Gaux",
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
  "slug": "fourier-gaux--90cead640c2f35fa8de4587d",
  "source": {
    "blob": "78a61f9d425c3c55b23c4ddb612b986f0bcb34f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 189,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90cead640c2f35fa8de4587d82fd359d2fed8c12db10e9dd7713e02b7d9a1a9b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34061c06-c851-27ac-6a01-01fe9089ecda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_Gaux (hL : 0 < L) (hφc : Continuous φ)
    (hsupp : ∀ u, L / 2 ≤ |u| → φ u = 0) (w : ℝ) :
    𝓕 (Gaux φ L T τ τ') w
      = paperFT (fun u => (φ u : ℂ)) ((τ - (T + w * (2 * π / L)) : ℝ) : ℂ)
        * paperFT (fun u => (φ u : ℂ)) ((τ' - (T + w * (2 * π / L)) : ℝ) : ℂ) := by
  set α : ℝ := τ - (T + w * (2 * π / L)) with hα
  set β : ℝ := τ' - (T + w * (2 * π / L)) with hβ
  -- the integrand after multiplying in the character
  set J : ℝ → ℝ → ℂ := fun ξ u => cexp (↑(-2 * π * ξ * w) * I) * gInt φ L T τ τ' ξ u with hJ
  have hJint : Integrable (Function.uncurry J) (volume.prod volume) := by
    have hc : Continuous (Function.uncurry J) := by
      have := gInt_continuous (L := L) (T := T) (τ := τ) (τ' := τ') hφc
      simp only [hJ]
      apply Continuous.mul _ this
      fun_prop
    apply hc.integrable_of_hasCompactSupport
    apply (gInt_hasCompactSupport (T := T) (τ := τ) (τ' := τ') hL hsupp).mono
    intro p hp
    rw [Function.mem_support] at hp ⊢
    intro h0
    apply hp
    simp only [hJ, Function.uncurry] at h0 ⊢
    rw [show p = (p.1, p.2) from rfl] at h0
    simp only at h0
    rw [h0, mul_zero]
  -- Step 1: unfold 𝓕 and move the character inside
  rw [Real.fourier_real_eq_integral_exp_smul]
  have step1 : (fun ξ : ℝ => cexp (↑(-2 * π * ξ * w) * I) • Gaux φ L T τ τ' ξ)
      = fun ξ => ∫ u, J ξ u := by
    funext ξ
    rw [smul_eq_mul, Gaux, hJ]
    beta_reduce
    rw [integral_const_mul_C]
  rw [step1]
  -- Step 2: swap the integrals
  rw [integral_integral_swap hJint]
  -- Step 3: compute the inner integral
  have step3 : ∀ u : ℝ, ∫ ξ, J ξ u
      = (φ u : ℂ) * cexp (I * α * u) * paperFT (fun v => (φ v : ℂ)) β := by
    intro u
    -- F0 v := φ(v) e^{iβv};  the ξ-integrand is φ(u)e^{iαu} · L · F0(Lξ − u)
    set F0 : ℝ → ℂ := fun v => (φ v : ℂ) * cexp (I * β * (v : ℂ)) with hF0
    have hpt : ∀ ξ : ℝ, J ξ u = (φ u : ℂ) * cexp (I * α * u)
        * ((L : ℂ) * ((fun y : ℝ => F0 (y - u)) (L * ξ))) := by
      intro ξ
      simp only [hJ, gInt, hF0]
      have := cexp_bookkeeping (T := T) (τ := τ) (τ' := τ') hL.ne' ξ u w
      rw [← hα, ← hβ] at this
      calc cexp (↑(-2 * π * ξ * w) * I) * (↑L * (↑(φ u) * ↑(φ (L * ξ - u))
              * cexp (I * (↑τ * ↑u + ↑τ' * (↑L * ↑ξ - ↑u) - ↑T * ↑L * ↑ξ))))
          = ↑L * ↑(φ u) * ↑(φ (L * ξ - u)) * (cexp (I * (↑τ * ↑u + ↑τ' * (↑L * ↑ξ - ↑u)
              - ↑T * ↑L * ↑ξ)) * cexp (↑(-2 * π * ξ * w) * I)) := by ring
        _ = ↑L * ↑(φ u) * ↑(φ (L * ξ - u)) * (cexp (I * ↑α * ↑u) * cexp (I * ↑β * ↑(L * ξ - u))) := by
              rw [this]
        _ = _ := by push_cast; ring
    have hint : ∫ ξ, J ξ u = ∫ ξ, (φ u : ℂ) * cexp (I * α * u)
        * ((L : ℂ) * ((fun y : ℝ => F0 (y - u)) (L * ξ))) := by
      congr 1 with ξ; exact hpt ξ
    rw [hint, integral_const_mul_C, integral_const_mul_C,
      Measure.integral_comp_mul_left (fun y : ℝ => F0 (y - u)) L,
      integral_sub_right_eq_self F0 u, paperFT_def, abs_of_pos (inv_pos.mpr hL)]
    congr 1
    rw [← Complex.coe_smul, smul_eq_mul, ← mul_assoc, ofReal_inv,
      mul_inv_cancel₀ (ofReal_ne_zero.mpr hL.ne'), one_mul]
  simp_rw [step3]
  -- Step 4: pull the constant out of the outer integral
  rw [integral_mul_const_C, paperFT_def, paperFT_def]

/-! #### The abstract identity -/

/-- Core identity [lem:poisson], complex form, for an abstract window: `φ : ℝ → ℝ` continuous,
even, vanishing for `|u| ≥ L/2` (`L > 0`), with `|φ̂(s)|(1+s²)` bounded on ℝ.
For all real `T, τ, τ'`:  `Σ_{k∈ℤ} φ̂(τ−τ_k) φ̂(τ'−τ_k) = L · (φ²)^(τ−τ')`, `τ_k = T + k·2π/L`,
as a `HasSum`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78a61f9d425c3c55b23c4ddb612b986f0bcb34f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
