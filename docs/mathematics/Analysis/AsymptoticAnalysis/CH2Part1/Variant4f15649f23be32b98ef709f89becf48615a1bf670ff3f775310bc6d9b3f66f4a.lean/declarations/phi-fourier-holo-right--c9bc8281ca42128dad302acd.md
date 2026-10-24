# Phi_fourier_holo_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4ce48e8-45a8-b2d5-eb7e-65b23192f9b4",
  "kind": "lemma",
  "lexical_name": "Phi_fourier_holo_right",
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
  "slug": "phi-fourier-holo-right--c9bc8281ca42128dad302acd",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3818,
    "line": 3755,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9bc8281ca42128dad302acd7d35c7837b929756aed1a5e594f35ebad4d5a98c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4ce48e8-45a8-b2d5-eb7e-65b23192f9b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3755–3818.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Phi_fourier_holo_right (ν ε x : ℝ) (hν : ν > 0) :
    ∃ g : ℂ → ℂ, (∀ U : ℝ, U ≥ 0 → HolomorphicOn g (Rectangle (1/2 : ℂ) (1 - I * U))) ∧
    Set.EqOn g (fun z ↦ (Phi_circ ν ε z + Phi_star ν ε z) * E (-z * x)) {z | z ≠ z₁_pole ν} := by
  let z₁ := z₁_pole ν
  let f_base (z : ℂ) := (Phi_circ ν ε z + Phi_star ν ε z)
  let f (z : ℂ) := f_base z * E (-z * x)
  have h_mero : MeromorphicAt f_base z₁ := (Phi_circ.meromorphic ν ε z₁).add (Phi_star.meromorphic ν ε z₁)
  have h_order : meromorphicOrderAt f_base z₁ ≥ 0 := meromorphicOrderAt_phi_add_nonneg ν ε hν
  obtain ⟨c_base, h_tendsto_base⟩ := tendsto_nhds_of_meromorphicOrderAt_nonneg h_mero h_order
  let c := c_base * E (-z₁ * x)
  let g (z : ℂ) := if z = z₁ then c else f z
  use g
  constructor
  · intro U hU z hz
    by_cases hz₁ : z = z₁
    · have h_anal_z₁ : AnalyticAt ℂ g z₁ :=
        analyticAt_removable_sing_mul_E x h_mero h_tendsto_base
      rw [hz₁]
      exact h_anal_z₁.differentiableAt.differentiableWithinAt
    · have h_not_pole : ∀ n : ℤ, z ≠ ↑n - I * ↑ν / (2 * ↑π) := by
        intro n hn
        have h_re : z.re = n := by
          rw [hn]
          simp [Complex.sub_re, Complex.mul_re, Complex.div_re, Complex.I_re, Complex.I_im, Complex.ofReal_re, Complex.ofReal_im]
        have h_im : z.im = -ν / (2 * π) := by
          rw [hn]
          simp [Complex.sub_im, Complex.mul_im, Complex.div_im, Complex.I_im, Complex.I_re]
          field_simp
        have h_rect := hz
        rw [Rectangle, Complex.mem_reProdIm] at h_rect
        simp only [one_re, div_ofNat_re, sub_re, mul_re, I_re, ofReal_re, zero_mul, I_im,
          ofReal_im, mul_zero, sub_self, sub_zero, sub_im, div_ofNat_im,
          mul_im, one_mul, zero_add] at h_rect
        rw [Set.uIcc_of_le (by norm_num), Set.uIcc_of_ge (by simp; linarith)] at h_rect
        have h_n : n = 1 := unique_int_in_Icc n 1 (h_re ▸ h_rect.1) (by norm_num) (by norm_num)
        subst h_n
        have : z = z₁ := by
          apply Complex.ext <;> dsimp [z₁, z₁_pole]
          · rw [h_re]; simp; norm_cast
          · rw [h_im]; norm_cast; simp; ring
        exact hz₁ this
      have h_anal_z : AnalyticAt ℂ g z := by
        have h_eq : g =ᶠ[nhds z] f := by
          filter_upwards [eventually_ne_nhds hz₁] with w hw
          dsimp [g]; rw [if_neg hw]
        rw [analyticAt_congr h_eq]
        exact ((Phi_circ.analyticAt_of_not_pole ν ε z h_not_pole).add
          (Phi_star.analyticAt_of_not_pole ν ε z h_not_pole)).mul (by unfold E; fun_prop)
      exact h_anal_z.differentiableAt.differentiableWithinAt
  · intro z hz; dsimp [g]; rw [if_neg hz]

@[blueprint
  "shift-downwards"
  (title := "Contour shifting downwards")
  (statement := /-- If $x > 0$, then
\begin{align}\label{eq:1.6}
\widehat{\varphi^{\pm}_{\nu}}(x) &= \left(\int_{-1}^{-1-i\infty} + \int_{-\frac{1}{2}-i\infty}^{-\frac{1}{2}}\right) \bigl(\Phi^{\pm,\circ}_{\nu}(z) - \Phi^{\pm,\star}_{\nu}(z)\bigr) e(-zx)\, dz \notag\\
&\quad + \int_{-\frac{1}{2}}^{\frac{1}{2}} \Phi^{\pm,\circ}_{\nu}(z)\, e(-zx)\, dz - \int_{-\frac{1}{2}}^{0} \Phi^{\pm,\star}_{\nu}(z)\, e(-zx)\, dz + \int_0^{\frac{1}{2}} \Phi^{\pm,\star}_{\nu}(z)\, e(-zx)\, dz \notag\\
&\quad + \left(\int_{\frac{1}{2}}^{\frac{1}{2}-i\infty} + \int_{1-i\infty}^{1}\right) \bigl(\Phi^{\pm,\circ}_{\nu}(z) + \Phi^{\pm,\star}_{\nu}(z)\bigr) e(-zx)\, dz.
\end{align}
  -/)
  (proof := /-- We would like to integrate along $\Re z = 0$, but $\Phi^{\pm,\circ}_{\nu}(z)$ has a pole at $z = -\frac{i\nu}{2\pi}$; when dealing with this issue, we have to take care not to introduce poles on the lines $\Re z = -1$ and $\Re z = 1$ by separating $\Phi^{\pm,\circ}_{\nu}$ and $\Phi^{\pm,\star}_{\nu}$ prematurely. As $\Im z \to -\infty$, $e(-zx) = e^{-2\pi i z x}$ decays exponentially on $\Im z$, while, by Lemma~1.3, $\Phi^{\pm,\circ}_{\nu}(z) \pm \Phi^{\pm,\star}_{\nu}(z)$ grows at most linearly. -/)
  (latexEnv := "sublemma")
  (discussion := 1084)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L3755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
