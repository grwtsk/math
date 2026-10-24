# B_plus_mono

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
      "line": 2536,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e6ed8df-9ba5-b8b2-c60b-f84bef8f30db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6dc530c-a53d-b972-d060-d668010ede6c",
  "kind": "theorem",
  "lexical_name": "B_plus_mono",
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
  "slug": "b-plus-mono--06e5726c5fda5e347f2f0d28",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2594,
    "line": 2536,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06e5726c5fda5e347f2f0d2824ea333bb675d5431d4725aceb16eefabcae1803",
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

Occurrence: `result:f6dc530c-a53d-b972-d060-d668010ede6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2536–2594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem B_plus_mono : Monotone (fun t:ℝ ↦ (B 1 t).re) := by
  have B_plus_re_eq : ∀ t : ℝ, t ≠ 0 → (B 1 (t : ℂ)).re = t * Real.exp t / (Real.exp t - 1) := by
    intro t ht
    unfold B
    unfold coth; norm_num [ Complex.tanh, Complex.exp_re, Complex.exp_im ] ; ring_nf;
    norm_num [ Complex.cosh, Complex.sinh, Complex.exp_re, Complex.exp_im, ht ] ; ring_nf;
    norm_num [ Complex.normSq, Complex.exp_re, Complex.exp_im ] ; ring_nf;
    field_simp;
    rw [ one_add_div, ← add_div, div_eq_div_iff ] <;> ring_nf <;> norm_num [ sub_ne_zero, ht, Real.exp_ne_zero ];
    · simpa [ ← Real.exp_add ] using by ring_nf;
    · cases lt_or_gt_of_ne ht <;> linarith;
    · exact fun h => ht <| by rw [ add_eq_zero_iff_eq_neg ] at h; replace h := congr_arg Real.log h; norm_num at h; linarith;
    · cases lt_or_gt_of_ne ht <;> linarith
  have f_le_one_neg : ∀ t : ℝ, t < 0 → t * Real.exp t / (Real.exp t - 1) ≤ 1 := by
    intro t ht
    rw [ div_le_iff_of_neg ] <;> nlinarith [ Real.exp_pos t, Real.exp_neg t, mul_inv_cancel₀ ( ne_of_gt ( Real.exp_pos t ) ), Real.add_one_le_exp t, Real.add_one_le_exp ( -t ) ]
  have f_ge_one_pos : ∀ t : ℝ, 0 < t → 1 ≤ t * Real.exp t / (Real.exp t - 1) := by
    intro t ht
    rw [ le_div_iff₀ ] <;> try linarith [ Real.add_one_le_exp t ];
    nlinarith [ Real.exp_pos t, Real.exp_neg t, mul_inv_cancel₀ ( ne_of_gt ( Real.exp_pos t ) ), Real.add_one_le_exp t, Real.add_one_le_exp ( -t ) ]
  have f_mono_pos : MonotoneOn (fun t : ℝ ↦ t * Real.exp t / (Real.exp t - 1)) (Set.Ioi 0) := by
    have h_deriv_pos : ∀ t > 0, deriv (fun t => t * Real.exp t / (Real.exp t - 1)) t ≥ 0 := by
      intro t ht; norm_num [ Real.differentiableAt_exp, ne_of_gt, ht, ne_of_gt, Real.exp_pos t, ne_of_gt, sub_pos, Real.exp_pos, ht, sub_ne_zero.mpr, ne_of_gt, ht, Real.exp_pos t, ne_of_gt, ht, Real.exp_pos t, ne_of_gt, ht, Real.exp_pos t, ne_of_gt, ht, Real.exp_pos t, ne_of_gt, ht, Real.exp_pos t, ne_of_gt, ht, Real.exp_pos t, ne_of_gt, ht, Real.exp_pos t, ne_of_gt, ht, Real.exp_pos t, ne_of_gt, ht, Real.exp_pos t, ne_of_gt, ht, Real.exp_pos t, ne_of_gt, ht, Real.exp_pos t ];
      exact div_nonneg ( by nlinarith [ Real.exp_pos t, Real.exp_neg t, mul_inv_cancel₀ ( ne_of_gt ( Real.exp_pos t ) ), Real.add_one_le_exp t, Real.add_one_le_exp ( -t ) ] ) ( sq_nonneg _ )
    intro a ha b hb hab
    have h_mean_val : ∀ a b : ℝ, 0 < a → a < b → ∃ c ∈ Set.Ioo a b, deriv (fun t : ℝ => t * Real.exp t / (Real.exp t - 1)) c = ( (fun t : ℝ => t * Real.exp t / (Real.exp t - 1)) b - (fun t : ℝ => t * Real.exp t / (Real.exp t - 1)) a ) / (b - a) := by
      intros a b ha hb; apply_rules [ exists_deriv_eq_slope ];
      · exact continuousOn_of_forall_continuousAt fun t ht => by
          fun_prop (disch := exact sub_ne_zero_of_ne (by linarith [Real.add_one_le_exp t, ht.1]))
      · exact DifferentiableOn.div ( DifferentiableOn.mul differentiableOn_id ( Real.differentiable_exp.differentiableOn ) ) ( DifferentiableOn.sub ( Real.differentiable_exp.differentiableOn ) ( differentiableOn_const _ ) ) fun x hx => ne_of_gt ( by norm_num; linarith [ hx.1 ] );
    cases eq_or_lt_of_le hab
    · aesop
    obtain ⟨ c, hc₁, hc₂ ⟩ := h_mean_val a b ha ‹_›
    have := h_deriv_pos c ( lt_trans ha.out hc₁.1 )
    rw [ hc₂, ge_iff_le, le_div_iff₀ (by grind) ] at this
    linarith
  have f_mono_neg : MonotoneOn (fun t : ℝ ↦ t * Real.exp t / (Real.exp t - 1)) (Set.Iio 0) := by
    have h_deriv_nonneg : ∀ t : ℝ, t < 0 → 0 ≤ deriv (fun t => t * Real.exp t / (Real.exp t - 1)) t := by
      intro t ht; norm_num [ Real.differentiableAt_exp, ne_of_lt, ht, sub_ne_zero ];
      exact div_nonneg ( by nlinarith [ Real.exp_pos t, Real.exp_neg t, mul_inv_cancel₀ ( ne_of_gt ( Real.exp_pos t ) ), Real.add_one_le_exp t, Real.add_one_le_exp ( -t ) ] ) ( sq_nonneg _ );
    intros t ht u hu htu;
    by_contra! h_contra; (
    obtain ⟨c, hc⟩ : ∃ c ∈ Set.Ioo t u, deriv (fun t => t * Real.exp t / (Real.exp t - 1)) c = (u * Real.exp u / (Real.exp u - 1) - t * Real.exp t / (Real.exp t - 1)) / (u - t) := by
      apply_rules [ exists_deriv_eq_slope ]
      · exact htu.lt_of_ne ( by rintro rfl; linarith )
      · exact continuousOn_of_forall_continuousAt fun x hx => by
          fun_prop (disch := exact sub_ne_zero_of_ne (by norm_num; linarith [hx.1, hx.2, ht.out, hu.out]))
      · exact fun x hx => DifferentiableAt.differentiableWithinAt ( by exact DifferentiableAt.div ( differentiableAt_id.mul ( Real.differentiableAt_exp ) ) ( Real.differentiableAt_exp.sub_const _ ) ( sub_ne_zero_of_ne ( by norm_num; linarith [ hx.1, hx.2, hu.out, ht.out ] ) ) )
    rw [ eq_div_iff ] at hc <;> nlinarith [ hc.1.1, hc.1.2, h_deriv_nonneg c ( by linarith [ hc.1.1, hc.1.2, hu.out ] ) ]);
  intro t₁ t₂ ht;
  by_cases h₁ : t₁ = 0 <;> by_cases h₂ : t₂ = 0
  · grind [one_re, B, ofReal_eq_zero, ofReal_one]
  · grind [one_re, B, ofReal_eq_zero, ofReal_one]
  · grind [one_re, B, ofReal_eq_zero, ofReal_one]
  · simp only [ne_eq, B, ofReal_eq_zero, ofReal_one] at B_plus_re_eq
    simp only [B, ofReal_eq_zero, ofReal_one, h₁, h₂, ite_false, div_ofNat_re, mul_re, ofReal_re, add_re, one_re, ofReal_im, add_im, one_im]
    simp_all
    grind [MonotoneOn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L2536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
