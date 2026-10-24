# ϕ_circ_bound_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0db96498-6283-4bc9-0041-d0103d9407d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fcf6e63-8213-9186-5394-a191be4f4482",
  "kind": "theorem",
  "lexical_name": "ϕ_circ_bound_left",
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
  "slug": "circ-bound-left--eeaa04483c089875b98d6015",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2387,
    "line": 2332,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeaa04483c089875b98d60153887ad962f1ae70979ba0b6339c66e59925208ab",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fcf6e63-8213-9186-5394-a191be4f4482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2332–2387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ϕ_circ_bound_left (ν₀ ν₁ ε c : ℝ) (hc : c < -ν₁ / (2 * π)) :
    ∃ C : ℝ, ∀ ν ∈ Set.Icc ν₀ ν₁, ∀ z : ℂ, z.im ≤ c → ‖Phi_circ ν ε z‖ ≤ C := by
  set κ := -(ν₁ + 2 * Real.pi * c) / 2 with hκ_def
  have hκ_pos : 0 < κ := by
    rw [lt_div_iff₀] at hc <;> nlinarith [Real.pi_pos]
  have hRe_w : ∀ ν ∈ Set.Icc ν₀ ν₁, ∀ z : ℂ, z.im ≤ c →
      Complex.re ((-2 * Real.pi * Complex.I * z + (ν : ℂ)) / 2) ≤ -κ := by
    norm_num [hκ_def]; intros; nlinarith [Real.pi_pos]
  have hcoth_bound : ∀ z : ℂ, Complex.re z ≤ -κ →
      ‖Complex.cosh z / Complex.sinh z‖ ≤
        (Real.exp κ + Real.exp (-κ)) / (Real.exp κ - Real.exp (-κ)) := by
    intros z hz
    have hsinh : ‖Complex.sinh z‖ ≥ (Real.exp (-z.re) - Real.exp z.re) / 2 := by
      norm_num [Complex.sinh, Complex.norm_def, Complex.normSq]
      norm_num [Complex.exp_re, Complex.exp_im]
      gcongr
      refine Real.le_sqrt_of_sq_le ?_
      nlinarith [Real.sin_sq_add_cos_sq z.im, Real.exp_pos z.re, Real.exp_pos (-z.re),
        mul_pos (Real.exp_pos z.re) (Real.exp_pos (-z.re))]
    have hcosh : ‖Complex.cosh z‖ ≤ (Real.exp z.re + Real.exp (-z.re)) / 2 := by
      norm_num [Complex.cosh, Complex.exp_re, Complex.exp_im]
      gcongr
      exact le_trans (norm_add_le ..) (by norm_num [Complex.norm_exp])
    rw [norm_div]
    rw [div_le_div_iff₀] <;>
      try linarith [Real.exp_pos κ, Real.exp_lt_exp.mpr (show -κ < κ by linarith)]
    · have h_exp_bounds : Real.exp z.re ≤ Real.exp (-κ) ∧ Real.exp (-z.re) ≥ Real.exp κ :=
        ⟨Real.exp_le_exp.mpr hz, Real.exp_le_exp.mpr (by linarith)⟩
      nlinarith [Real.exp_pos κ, Real.exp_pos (-κ),
        Real.exp_lt_exp.2 (show -κ < κ by linarith)]
    · exact lt_of_lt_of_le
        (div_pos (sub_pos.mpr (Real.exp_lt_exp.mpr (by linarith))) zero_lt_two) hsinh
  use (1 / 2) * ((Real.exp κ + Real.exp (-κ)) / (Real.exp κ - Real.exp (-κ)) + |ε|)
  intros ν hν z hz
  have hcoth_w : ‖Complex.cosh ((-2 * Real.pi * Complex.I * z + (ν : ℂ)) / 2) /
      Complex.sinh ((-2 * Real.pi * Complex.I * z + (ν : ℂ)) / 2)‖ ≤
      (Real.exp κ + Real.exp (-κ)) / (Real.exp κ - Real.exp (-κ)) :=
    hcoth_bound _ (hRe_w ν hν z hz)
  have h_triangle : ‖(1 / 2) * (Complex.cosh ((-2 * Real.pi * Complex.I * z + (ν : ℂ)) / 2) /
      Complex.sinh ((-2 * Real.pi * Complex.I * z + (ν : ℂ)) / 2) + ε)‖ ≤
      (1 / 2) * ((Real.exp κ + Real.exp (-κ)) / (Real.exp κ - Real.exp (-κ)) + |ε|) := by
    norm_num at *
    exact le_trans (norm_add_le ..) (add_le_add (by simpa using hcoth_w) (by norm_num))
  convert h_triangle using 1
  unfold Phi_circ coth
  norm_num [Complex.tanh_eq_sinh_div_cosh]

@[blueprint
  "phi-star-bound-right"
  (title := "Bound on $\\Phi^{\\pm,\\ast}_\\nu$ from above")
  (statement := /--
  Let $0 < \nu_0 \leq \nu_1$ and $c > - \nu_0/2\pi$, then there exists $C$ such that for all $\nu \in [\nu_0, \nu_1]$, $\Im z \geq c$ one has $|\Phi^{\pm,\star}_{\nu}(z)| \leq C (|z|+1)$.
  -/)
  (proof := /-- The bound on $\Phi^{\pm,\star}_{\nu}$ follows from the bound on $\Phi^{\pm,\circ}_{\nu}$ by $\Phi^{\pm,\star}(z) = \frac{1}{2\pi i}\bigl(w\,\Phi^{\pm,\circ}(w) - \nu\,\Phi^{\pm,\circ}(\nu)\bigr)$.
 -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L2332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
