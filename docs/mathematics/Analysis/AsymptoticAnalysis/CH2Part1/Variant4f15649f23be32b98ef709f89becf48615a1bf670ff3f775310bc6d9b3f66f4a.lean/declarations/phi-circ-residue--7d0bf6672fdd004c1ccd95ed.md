# Phi_circ.residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f5b121e-1272-49d9-1bbf-9f351258561a",
  "kind": "theorem",
  "lexical_name": "Phi_circ.residue",
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
  "slug": "phi-circ-residue--7d0bf6672fdd004c1ccd95ed",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1507,
    "line": 1443,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d0bf6672fdd004c1ccd95ed8372fd324395cc23503a162d9fc5ce09291ffda3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f5b121e-1272-49d9-1bbf-9f351258561a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1443–1507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Phi_circ.residue (ν ε : ℝ) (_hν : ν > 0) (n : ℤ) :
    (nhdsWithin (n - I * ν / (2 * π)) {n - I * ν / (2 * π)}ᶜ).Tendsto (fun z ↦ (z - (n - I * ν / (2 * π))) * Phi_circ ν ε z) (nhds (I / (2 * π))) := by
  set z₀ : ℂ := n - I * ν / (2 * π)
  set w : ℂ → ℂ := fun z ↦ -2 * π * I * z + ν
  set s : ℂ → ℂ := fun z ↦ w z / 2
  have h_s_z₀ : s z₀ = -n * π * I := by
    dsimp [s, w, z₀]
    field_simp [pi_ne_zero]
    ring_nf
    simp [I_sq]
  have h_cosh_z₀ : Complex.cosh (s z₀) = (-1)^n := by
    rw [h_s_z₀, show -n * π * I = -(n * π * I) by ring, Complex.cosh_neg, Complex.cosh_mul_I]
    norm_cast
    push_cast [Real.cos_int_mul_pi]
    rfl
  have h_sinh_z₀ : Complex.sinh (s z₀) = 0 := by
    rw [h_s_z₀, show -n * π * I = -(n * π * I) by ring, Complex.sinh_neg,
        Complex.sinh_mul_I, Complex.sin_int_mul_pi]
    simp
  have h_s_deriv : HasDerivAt s (-π * I) z₀ := by
    dsimp [s, w]
    have h := (((hasDerivAt_id z₀).const_mul (-2 * π * I)).add
                (hasDerivAt_const z₀ (ν : ℂ))).div_const 2
    convert h using 1; simp only [mul_one, add_zero]; ring
  have h_sinh_deriv : HasDerivAt (fun z ↦ Complex.sinh (s z)) (-π * I * Complex.cosh (s z₀)) z₀ := by
    convert (Complex.hasDerivAt_sinh (s z₀)).comp z₀ h_s_deriv using 1; ring
  have h_slope2 : Filter.Tendsto (fun z => Complex.sinh (s z) / (z - z₀)) (nhdsWithin z₀ {z₀}ᶜ) (nhds (-π * I * Complex.cosh (s z₀))) := by
    have h_eq : slope (fun z => Complex.sinh (s z)) z₀ = fun z => Complex.sinh (s z) / (z - z₀) := by
      ext z; simp [slope, h_sinh_z₀, div_eq_inv_mul]
    have h_slope := h_sinh_deriv.tendsto_slope
    rwa [h_eq] at h_slope
  have h_lim_sinh : Filter.Tendsto (fun z ↦ (z - z₀) / Complex.sinh (s z)) (nhdsWithin z₀ {z₀}ᶜ) (nhds (-π * I * Complex.cosh (s z₀))⁻¹) := by
    simpa [inv_div] using h_slope2.inv₀ (by
      rw [h_cosh_z₀]
      exact mul_ne_zero (by simp [pi_ne_zero, I_ne_zero]) (zpow_ne_zero n (by norm_num)))
  have h_lim_eps : Filter.Tendsto (fun z ↦ (1 / 2 : ℂ) * ε * (z - z₀)) (nhdsWithin z₀ {z₀}ᶜ) (nhds 0) := by
    have h : Filter.Tendsto (fun z => z - z₀) (nhds z₀) (nhds (z₀ - z₀)) :=
      Filter.Tendsto.sub Filter.tendsto_id tendsto_const_nhds
    rw [sub_self] at h
    have h2 := Filter.Tendsto.const_mul ((1 / 2 : ℂ) * ε) h
    rw [mul_zero] at h2
    exact h2.mono_left nhdsWithin_le_nhds
  have h_lim_cosh : Filter.Tendsto (fun z ↦ Complex.cosh (s z)) (nhdsWithin z₀ {z₀}ᶜ) (nhds (Complex.cosh (s z₀))) :=
    (by dsimp [s, w]; fun_prop : Continuous (fun z ↦ Complex.cosh (s z))).continuousAt.tendsto.mono_left nhdsWithin_le_nhds
  rw [show (I / (2 * π) : ℂ) = (1 / 2 : ℂ) * (-π * I * Complex.cosh (s z₀))⁻¹ * Complex.cosh (s z₀) + 0 by
    rw [add_zero, mul_inv]
    field_simp [show Complex.cosh (s z₀) ≠ 0 by rw [h_cosh_z₀]; exact zpow_ne_zero n (by norm_num),
      show (-π * I : ℂ) ≠ 0 by simp [pi_ne_zero, I_ne_zero]]
    ring_nf; simp]
  refine Filter.Tendsto.congr (fun z => ?_) ((h_lim_sinh.const_mul (1 / 2 : ℂ)).mul h_lim_cosh |>.add h_lim_eps)
  rw [Phi_circ, coth]
  dsimp [s, w]
  rw [Complex.tanh_eq_sinh_div_cosh]
  simp [one_div]
  ring

@[blueprint
  "Phi-circ-poles-simple"
  (title := "$\\Phi^{\\pm,\\circ}_\\nu$ poles simple")
  (statement := /--
  The poles of $$\Phi^{\pm,\circ}_\nu(z)$$ are all simple.
  -/)
  (proof := /-- This follows from the definition of $\Phi^{\pm,\circ}_\nu$ and the properties of the $\coth$ function. -/)
  (latexEnv := "lemma")
  (discussion := 1070)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L1443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
