# prop_2_3_tendsto_dirichlet_sum

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
      "line": 574,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc54d79f-80f0-0acc-fee4-601c43a9b333",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd44f38d-b65e-ef63-91c2-eff052fe4d4a",
  "kind": "lemma",
  "lexical_name": "prop_2_3_tendsto_dirichlet_sum",
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
  "slug": "prop-2-3-tendsto-dirichlet-sum--f89f5dce853b7b540c40f948",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 574,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f89f5dce853b7b540c40f948148849d96030d119aca4bfad7f81091011b201d9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd44f38d-b65e-ef63-91c2-eff052fe4d4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma prop_2_3_tendsto_dirichlet_sum
    {a : ℕ → ℂ} {T β : ℝ} (hT : 0 < T) (hβ : 1 < β)
    (ha : Summable (fun n ↦ ‖a n‖ / (n * log n ^ β)))
    {φ : ℝ → ℂ}
    (hφ_Fourier : ∃ C : ℝ, ∀ y : ℝ, y ≠ 0 → ‖𝓕 φ y‖ ≤ C / |y| ^ β)
    (x : ℝ) (hx : 0 < x) :
    Filter.Tendsto
      (fun (sig : ℝ) ↦ (1 / (2 * π)) * ∑' (n : ℕ), (x : ℂ) * LSeries.term a sig n * 𝓕 φ ((T / (2 * π)) * log (n / x)))
      (nhdsWithin 1 (Set.Ioi 1))
      (nhds ((1 / (2 * π)) * ∑' (n : ℕ+), a n * (x / n) * 𝓕 φ ((T / (2 * π)) * log (n / x)))) := by
  apply Filter.Tendsto.const_mul
  let f (sig : ℝ) (n : ℕ+) : ℂ := (x : ℂ) * (a n / n ^ (sig : ℂ)) * 𝓕 φ ((T / (2 * π)) * log (n / x))
  have h_tsum_eq (sig : ℝ) : ∑' (n : ℕ), (x : ℂ) * LSeries.term a sig n * 𝓕 φ ((T / (2 * π)) * log (n / x)) = ∑' (n : ℕ+), f sig n := by
    let g (n : ℕ) := (x : ℂ) * LSeries.term a sig n * 𝓕 φ ((T / (2 * π)) * log (n / x))
    have hg0 : Function.support g ⊆ Set.range ((↑) : ℕ+ → ℕ) := by
      intro n hn; dsimp [g] at hn; rw [Function.mem_support] at hn
      contrapose! hn; rw [Set.mem_range, not_exists] at hn
      have : n = 0 := by
        by_contra h; exact absurd rfl (hn (Subtype.mk n (Nat.pos_of_ne_zero h)))
      rw [this, LSeries.term_zero]; simp
    rw [← tsum_subtype_eq_of_support_subset hg0]
    rw [← (Equiv.ofInjective PNat.val PNat.coe_injective).tsum_eq]
    congr; ext n; simp [g, f]
  simp_rw [h_tsum_eq]
  apply tendsto_tsum_of_dominated_convergence (bound := fun (n : ℕ+) ↦ ‖(x : ℂ)‖ * (‖a n‖ / (n : ℝ)) * ‖𝓕 φ ((T / (2 * π)) * log (n / x))‖)
  · exact summable_dirichlet_fourier_bound hT hβ ha hφ_Fourier x hx
  · intro n; dsimp [f]
    have h_lim : Filter.Tendsto (fun (sig : ℝ) ↦ (x : ℂ) * (a n / (n : ℂ) ^ (sig : ℂ))) (nhdsWithin 1 (Set.Ioi 1)) (nhds (a n * (x / n))) := by
      have h_pow_lim : Filter.Tendsto (fun (sig : ℝ) ↦ (n : ℂ) ^ (sig : ℂ)) (nhdsWithin (1 : ℝ) (Set.Ioi 1)) (nhds (n : ℂ)) := by
        have h_cont : ContinuousAt (fun (s : ℂ) ↦ (n : ℂ) ^ s) (1 : ℂ) := continuousAt_const_cpow (by simp [PNat.ne_zero n])
        have h_lim' := (h_cont.tendsto.comp Complex.continuous_ofReal.continuousAt).mono_left (nhdsWithin_le_nhds (a := (1 : ℝ)) (s := Set.Ioi 1))
        convert h_lim' using 1
        ext; simp
      convert (tendsto_const_nhds (x := (x * a n : ℂ))).div h_pow_lim (by simp [PNat.ne_zero n]) using 1
      · ext y; simp; field_simp
      · field_simp
    convert h_lim.mul_const (𝓕 φ (↑T / (2 * ↑π) * Real.log (↑n / x))) using 1
  · filter_upwards [self_mem_nhdsWithin] with sig hsig n
    dsimp [f]
    rw [norm_mul, norm_mul, norm_div, norm_natCast_cpow_of_pos (PNat.pos n)]
    gcongr
    · convert Real.rpow_le_rpow_of_exponent_le (Nat.one_le_cast.mpr (PNat.one_le n)) hsig.le using 1
      · simp; rfl

@[blueprint
  "ch2-prop-2-3"
  (title := "CH2 Proposition 2.3")
  (statement := /--
  Let $a_n$ be a sequence with $\sum_{n>1} \frac{|a_n|}{n \log^\beta n} < \infty$ for some $\beta > 1$.  Assume that $\sum_n a_n n^{-s} - \frac{1}{s-1}$ extends continuously to a function $G$ defined on $1 + i[-T,T]$.  Let $\varphi$ be absolutely integrable, supported on $[-1,1]$, and has Fourier decay $\hat \varphi(y) = O(1/|y|^\beta)$.  Then for any $x>0$,
  $$ \frac{1}{2\pi} \sum a_n \frac{x}{n} \hat \varphi(\frac{T}{2\pi} \log \frac{n}{x} ) = \frac{1}{2\pi i T} \int_{1-iT}^{1+iT} \varphi(\frac{s-1}{iT}) G(s) x^{s}\ ds + (\varphi(0) - \int_{-\infty}^{-T \log x/2\pi} \hat \varphi(y)\ dy) \frac{x}{T}.$$
  -/)
  (proof := /-- Apply Sublemma \ref{ch2-prop-2-3-1} and take the limit as $\sigma \to 1^+$, using the continuity of $G$ and the dominated convergence theorem, as well as the Fourier inversion formula.
  -/)
  (latexEnv := "proposition")
  (discussion := 880)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
