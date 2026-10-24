# lemma_aachmonophase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9e99089-591a-e5a8-d643-31a9ba943e05",
  "kind": "theorem",
  "lexical_name": "lemma_aachmonophase",
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
  "slug": "lemma-aachmonophase--c845c1ac49c3309fb520aeec",
  "source": {
    "blob": "31f0e965c048f04d42843bf51db7ae3d45f32361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1110,
    "line": 1056,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c845c1ac49c3309fb520aeec9fd8c24fb1c42a688e68bbc768b3b4c8e08ad6ba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9e99089-591a-e5a8-d643-31a9ba943e05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1056–1110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_aachmonophase {a b : ℝ} (ha : a < b) (φ : ℝ → ℝ) (hφ_C1 : ContDiffOn ℝ 1 φ (Set.Icc a b))
    (hφ'_ne0 : ∀ t ∈ Set.Icc a b, deriv φ t ≠ 0) (h g : ℝ → ℝ) (hg : ∀ t, g t = h t / deriv φ t)
    (hg_cont : ContinuousOn g (Set.Icc a b)) (hg_mon : AntitoneOn (fun t ↦ |g t|) (Set.Icc a b)) :
    ‖∫ t in Set.Icc a b, h t * e (φ t)‖ ≤ |g a| / π := by
  let F : ℝ → ℂ := fun t ↦ (1 / (2 * Real.pi * I)) * (exp (2 * Real.pi * I * φ t))
  have h_integral_bound : ‖∫ t in Set.Icc a b, (g t : ℂ) * (deriv F t)‖ ≤ (⨆ t ∈ Set.Icc a b, ‖F t‖) * (2 * |g a|) :=
    lemma_IBP_bound_abs_antitone ha g F hg_cont hg_mon <|
      ContDiffOn.mul contDiffOn_const <| contDiff_exp.comp_contDiffOn <|
        ContDiffOn.mul contDiffOn_const <| ofRealCLM.contDiff.comp_contDiffOn hφ_C1
  have h_deriv_F : ∀ t ∈ Set.Ioo a b, deriv F t = (exp (2 * Real.pi * I * φ t)) * (deriv φ t) := by
    intro t ht
    rw [deriv_const_mul]
    · norm_num [Complex.exp_ne_zero, mul_comm]
      erw [HasDerivAt.deriv (HasDerivAt.comp t (Complex.hasDerivAt_exp _) (HasDerivAt.mul (HasDerivAt.ofReal_comp
        (hφ_C1.differentiableOn_one |> DifferentiableOn.hasDerivAt <| Icc_mem_nhds ht.1 ht.2)) <| hasDerivAt_const ..))]
      norm_num
      ring_nf
      simp
    · apply Complex.differentiableAt_exp.comp
      apply DifferentiableAt.const_mul <| ofRealCLM.differentiableAt.comp _ <| DifferentiableOn.differentiableAt
        hφ_C1.differentiableOn_one (Icc_mem_nhds ht.1 ht.2) ..
  have h_norm_F : ⨆ t ∈ Set.Icc a b, ‖F t‖ = 1 / (2 * Real.pi) := by
    dsimp only [F]
    rw [@ciSup_eq_of_forall_le_of_forall_lt_exists_gt] <;> norm_num [norm_exp, abs_of_nonneg pi_pos.le]
    · exact fun t ↦ by rw [ciSup_eq_ite]; split_ifs <;> norm_num; linarith [pi_pos]
    · exact fun w hw ↦ ⟨a, hw.trans_le <| by rw [ciSup_pos]; norm_num; linarith⟩
  have h_integral_subst : ‖∫ t in Set.Icc a b, (g t : ℂ) * (deriv F t)‖ = ‖∫ t in Set.Icc a b,
      (h t : ℂ) * (exp (2 * Real.pi * I * φ t))‖ := by
    simp only [integral_Icc_eq_integral_Ioc, integral_Ioc_eq_integral_Ioo]
    rw [setIntegral_congr_fun measurableSet_Ioo fun t ht ↦ by rw [h_deriv_F t ht, hg t]]
    simp only [div_eq_mul_inv, ofReal_mul, ofReal_inv, mul_comm, mul_left_comm, mul_assoc]
    refine congr_arg Norm.norm <| setIntegral_congr_fun measurableSet_Ioo <| fun x hx ↦ ?_
    simp [mul_inv_cancel_left₀ (ofReal_ne_zero.mpr (hφ'_ne0 x (Set.Ioo_subset_Icc_self hx)))]
  exact h_integral_subst ▸ h_integral_bound.trans (by rw [h_norm_F]; ring_nf; norm_num [pi_pos.ne'])

@[blueprint
  "lem:aachdecre"
  (title := "A decreasing function")
  (statement := /--
Let $\sigma\geq 0$, $\tau\in \mathbb{R}$, $\nu \in \mathbb{R}\setminus \{0\}$.
Let $b>a>\frac{|\tau|}{2\pi |\nu|}$. Then, for any $k\geq 1$,
$f(t) = t^{-\sigma-k} |2\pi \nu-\tau/t|^{-k-1}$ is decreasing on $[a,b]$.
-/)
  (proof := /--
Let $a\leq t\leq b$. Since $\left|\frac{\tau}{t \nu}\right| < 2\pi$, we see that
$2\pi-\frac{\tau}{\nu t} >0$, and so
$|2\pi \nu-\tau/t|^{-k-1} = |\nu|^{-k-1} \left(2\pi - \frac{\tau}{t \nu}\right)^{-k-1}$.
Now we take logarithmic derivatives:
\[t (\log f(t))' = - (\sigma+k) - (k+1) \frac{\tau/t}{2\pi \nu - \tau/t}
= -\sigma - \frac{2\pi k + \frac{\tau}{t \nu}}{2\pi - \frac{\tau}{t \nu}} < -\sigma \leq 0,\]
since, again by $\frac{|\tau|}{t |\nu|} < 2\pi$ and $k\geq 1$, we have
$2\pi k + \frac{\tau}{t \nu}>0$, and, as we said, $2\pi - \frac{\tau}{t \nu}>0$.
-/)
  (latexEnv := "lemma")
  (discussion := 549)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean#L1056).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f0e965c048f04d42843bf51db7ae3d45f32361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
