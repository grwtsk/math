# ϕ_circ_bound_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50977929-3072-ad54-5458-f207f0b1a5f2",
  "kind": "theorem",
  "lexical_name": "ϕ_circ_bound_right",
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
  "slug": "circ-bound-right--a25988e34bac19bf7e8984ec",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2342,
    "line": 2274,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a25988e34bac19bf7e8984ecef3ba2eb01039ddda2f74c254b71a822c0e2e5a6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50977929-3072-ad54-5458-f207f0b1a5f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2274–2342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ϕ_circ_bound_right (ν₀ ν₁ ε c : ℝ) (hc : c > -ν₀ / (2 * π)) :
    ∃ C : ℝ, ∀ ν ∈ Set.Icc ν₀ ν₁, ∀ z : ℂ, z.im ≥ c → ‖Phi_circ ν ε z‖ ≤ C := by
  let κ := Real.pi * c + ν₀ / 2
  have hκ : κ > 0 := by
    norm_num +zetaDelta at *
    rw [div_lt_iff₀] at hc <;> nlinarith [Real.pi_pos]
  have hcoth_bound : ∀ u : ℂ, u.re ≥ κ → ‖(Complex.tanh u)⁻¹‖ ≤ (Real.tanh κ)⁻¹ := by
    intros u hu
    have htanh_sq : ‖Complex.tanh u‖ ^ 2 ≥ (Real.sinh u.re / Real.cosh u.re) ^ 2 := by
      have htanh_sq : ‖Complex.tanh u‖ ^ 2 = (Real.sinh u.re ^ 2 + Real.sin u.im ^ 2) /
          (Real.cosh u.re ^ 2 - Real.sin u.im ^ 2) := by
        norm_num [Complex.normSq, Complex.norm_def, Complex.exp_re, Complex.exp_im,
          Complex.sinh, Complex.cosh, Complex.tanh]
        field_simp
        rw [Real.sq_sqrt <| by positivity, Real.sq_sqrt <| by positivity]
        rw [Real.sinh_eq, Real.cosh_eq]; ring_nf
        norm_num [Real.sin_sq, Real.exp_neg]; ring_nf
        rw [show (-2 + Real.cos u.im ^ 2 * 4 + Real.exp u.re ^ 2 + (Real.exp u.re)⁻¹ ^ 2) =
          (-1 / 2 + Real.cos u.im ^ 2 + Real.exp u.re ^ 2 * (1 / 4) +
            (Real.exp u.re)⁻¹ ^ 2 * (1 / 4)) * 4 by ring]
        norm_num; ring
      field_simp
      rw [htanh_sq, mul_div]
      rw [le_div_iff₀]
      · nlinarith only [Real.sin_sq_le_one u.im, Real.sinh_sq u.re]
      · nlinarith only [Real.sin_sq_add_cos_sq u.im, Real.cosh_sq' u.re,
          Real.sinh_pos_iff.mpr (show 0 < u.re by nlinarith [Real.pi_pos])]
    have htanh_ge_tanhκ : Real.sinh u.re / Real.cosh u.re ≥ Real.sinh κ / Real.cosh κ := by
      have htanh_ge_tanhκ : ∀ u v : ℝ, 0 ≤ u → u ≤ v →
          Real.sinh u / Real.cosh u ≤ Real.sinh v / Real.cosh v := by
        intros u v hu hv
        rw [div_le_div_iff₀ (Real.cosh_pos _) (Real.cosh_pos _)]; ring_nf
        rw [show v = u + (v - u) by ring, Real.sinh_add, Real.cosh_add]
        ring_nf; norm_num [Real.sinh_sq]; ring_nf; aesop
      exact htanh_ge_tanhκ _ _ hκ.le hu
    simp_all only [ge_iff_le, norm_inv, Real.tanh_eq_sinh_div_cosh]
    apply inv_anti₀ (div_pos (Real.sinh_pos_iff.mpr hκ) (Real.cosh_pos _))
    calc Real.sinh κ / Real.cosh κ
        _ ≤ Real.sinh u.re / Real.cosh u.re := htanh_ge_tanhκ
        _ ≤ ‖Complex.tanh u‖ := by
            rw [← Real.sqrt_sq (div_nonneg (Real.sinh_nonneg_iff.mpr
              (hκ.le.trans hu)) (Real.cosh_pos _ |>.le))]
            exact Real.sqrt_le_sqrt (by rw [Complex.sq_norm] at htanh_sq; exact htanh_sq)
  use (1 / 2) * ((Real.tanh κ)⁻¹ + |ε|)
  intros ν hν z hz
  have h_w : ‖(Complex.tanh ((-2 * Real.pi * Complex.I * z + ν) / 2))⁻¹‖ ≤
      (Real.tanh κ)⁻¹ := by
    convert hcoth_bound _ _ using 2
    simp only [Complex.div_re, Complex.add_re, Complex.mul_re,
      Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im, Complex.add_im,
      Complex.mul_im]
    norm_num
    have h1 := hν.1
    have h2 : π * c ≤ π * z.im := mul_le_mul_of_nonneg_left hz (le_of_lt Real.pi_pos)
    change π * c + ν₀ / 2 ≤ (2 * π * z.im + ν) * 2 / 4
    linarith
  unfold Phi_circ
  norm_num [coth]
  exact le_trans (norm_add_le _ _) (add_le_add (by simpa using h_w)
    (by norm_num [Complex.norm_def, Complex.normSq]))

@[blueprint
  "phi-circ-bound-left"
  (title := "Bound on $\\Phi^{\\pm,\\circ}_\\nu$ from below")
  (statement := /--
  Let $0 < \nu_0 \leq \nu_1$ and $c < - \nu_1/2\pi$, then there exists $C$ such that for all $\nu \in [\nu_0, \nu_1]$, $\Im z \leq c$ one has $|\Phi^{\pm,\circ}_{\nu}(z)| \leq C$.
  -/)
  (proof := /-- Similar to previous lemma. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L2274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
