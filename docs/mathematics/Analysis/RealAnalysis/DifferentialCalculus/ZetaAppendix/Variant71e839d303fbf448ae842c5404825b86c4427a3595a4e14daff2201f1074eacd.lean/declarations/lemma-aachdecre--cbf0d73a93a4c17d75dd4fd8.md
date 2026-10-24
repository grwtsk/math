# lemma_aachdecre

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:357c4ee9-0fa0-d7fc-bb24-8fb625170867",
  "kind": "theorem",
  "lexical_name": "lemma_aachdecre",
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
  "slug": "lemma-aachdecre--cbf0d73a93a4c17d75dd4fd8",
  "source": {
    "blob": "31f0e965c048f04d42843bf51db7ae3d45f32361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1234,
    "line": 1111,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbf0d73a93a4c17d75dd4fd849b65a8e8720ca138f9a7620b6640d920691f28a",
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

Occurrence: `result:357c4ee9-0fa0-d7fc-bb24-8fb625170867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1111–1234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_aachdecre (σ : ℝ) (hσ : 0 ≤ σ) (τ : ℝ) (ν : ℝ) (hν : ν ≠ 0) (a b : ℝ)
    (ha : a > |τ| / (2 * π * |ν|)) (k : ℕ) (hk : 1 ≤ k) :
    let f : ℝ → ℝ := fun t ↦ t ^ (-σ - k) * |2 * π * ν - τ / t| ^ (-(k : ℝ) - 1)
    AntitoneOn f (Set.Icc a b) := by
  have h_deriv_neg : ∀ t ∈ Set.Icc a b,
      deriv (fun t ↦ -(σ + k) * Real.log t - (k + 1) * Real.log |2 * Real.pi * ν - τ / t|) t < 0 := by
    intro t ht
    have h_abs : |τ / (t * ν)| < 2 * Real.pi := by
      rw [abs_div, abs_mul]
      rw [div_lt_iff₀] at *
      all_goals cases abs_cases t <;> cases abs_cases ν <;>
        nlinarith [Real.pi_gt_three, ht.1, ht.2, mul_pos Real.pi_pos (abs_pos.mpr hν),
          abs_nonneg τ, mul_div_cancel₀ (|τ|) (by positivity : (2 * Real.pi * |ν|) ≠ 0)]
    have h_deriv_neg :
        deriv (fun t ↦ -(σ + k) * Real.log t - (k + 1) * Real.log |2 * Real.pi * ν - τ / t|) t =
          -(σ + k) / t - (k + 1) * (τ / t ^ 2) / (2 * Real.pi * ν - τ / t) := by
      have ht_ne : t ≠ 0 := by linarith [ht.1, show 0 < a from lt_of_le_of_lt (by positivity) ha]
      convert HasDerivAt.deriv (HasDerivAt.sub (HasDerivAt.const_mul (-(σ + k : ℝ))
        (Real.hasDerivAt_log (show t ≠ 0 from ht_ne))) (HasDerivAt.const_mul (k + 1 : ℝ)
        (HasDerivAt.log (HasDerivAt.sub (hasDerivAt_const _ _) (HasDerivAt.const_mul τ
        (hasDerivAt_inv (show t ≠ 0 from ht_ne)))) _))) using 1 <;> norm_num
      · congr! 1
      · ring
      · contrapose! h_abs
        field_simp
        rw [abs_div, abs_mul, le_div_iff₀ (mul_pos (abs_pos.mpr
          (by linarith [ht.1, lt_of_le_of_lt (by positivity) ha])) (abs_pos.mpr hν))]
        have ht_ne' : t ≠ 0 := by positivity
        cases abs_cases t <;> cases abs_cases ν <;> cases abs_cases τ <;> push_cast [*] <;>
          nlinarith [inv_mul_cancel_left₀ ht_ne' τ, inv_mul_cancel₀ ht_ne', Real.pi_pos]
    have h_deriv_eq :
        deriv (fun t ↦ -(σ + k) * Real.log t - (k + 1) * Real.log |2 * Real.pi * ν - τ / t|) t =
          -(σ + k) / t - (k + 1) * (τ / (t * ν)) / (2 * Real.pi - τ / (t * ν)) / t := by
      convert h_deriv_neg using 1; simp only [neg_add_rev, sub_right_inj]; ring_nf; grind
    have h_expr_neg : -(σ + k) - (k + 1) * (τ / (t * ν)) / (2 * Real.pi - τ / (t * ν)) < 0 := by
      rw [sub_div', div_lt_iff₀] <;> nlinarith [abs_lt.mp h_abs, show (k : ℝ) ≥ 1 by norm_cast]
    have ht_pos : 0 < t := lt_of_lt_of_le (lt_of_le_of_lt (by positivity) ha) ht.1
    rw [h_deriv_eq]
    have h_goal : -(σ + k) / t - (k + 1) * (τ / (t * ν)) / (2 * Real.pi - τ / (t * ν)) / t =
        (-(σ + k) - (k + 1) * (τ / (t * ν)) / (2 * Real.pi - τ / (t * ν))) / t := by ring
    exact h_goal ▸ div_neg_of_neg_of_pos h_expr_neg ht_pos
  have h_decreasing : ∀ t1 t2 : ℝ, a ≤ t1 → t1 < t2 → t2 ≤ b →
      Real.exp ((-(σ + k) * Real.log t1) - (k + 1) * Real.log |2 * Real.pi * ν - τ / t1|) ≥
        Real.exp ((-(σ + k) * Real.log t2) - (k + 1) * Real.log |2 * Real.pi * ν - τ / t2|) := by
    intro t1 t2 ht1 ht2 ht3
    have h_mean_val : ∃ c ∈ Set.Ioo t1 t2,
        deriv (fun t ↦ -(σ + k) * Real.log t - (k + 1) * Real.log |2 * Real.pi * ν - τ / t|) c =
          ((fun t ↦ -(σ + k) * Real.log t - (k + 1) * Real.log |2 * Real.pi * ν - τ / t|) t2 -
            (fun t ↦ -(σ + k) * Real.log t - (k + 1) * Real.log |2 * Real.pi * ν - τ / t|) t1) /
              (t2 - t1) := by
      apply_rules [exists_deriv_eq_slope]
      · exact continuousOn_of_forall_continuousAt fun t ht ↦ DifferentiableAt.continuousAt <|
          differentiableAt_of_deriv_ne_zero <| ne_of_lt <| h_deriv_neg t ⟨by grind, by grind⟩
      · exact fun x hx ↦ DifferentiableAt.differentiableWithinAt (by
          exact differentiableAt_of_deriv_ne_zero (ne_of_lt
            (h_deriv_neg x ⟨by linarith [hx.1], by linarith [hx.2]⟩)))
    obtain ⟨c, ⟨hc1, hc2⟩, hc3⟩ := h_mean_val
    let f := fun t ↦ -(σ + ↑k) * Real.log t - (↑k + 1) * Real.log |2 * π * ν - τ / t|
    have h_diff_neg : f t2 - f t1 < 0 := neg_of_div_neg_left
      (hc3 ▸ h_deriv_neg c ⟨by linarith, by linarith⟩) (le_of_lt <| sub_pos.mpr ht2)
    exact exp_le_exp.mpr (le_of_lt <| sub_neg.mp h_diff_neg)
  have h_f_eq_exp : ∀ t ∈ Set.Icc a b,
      t ^ (-σ - k : ℝ) * |2 * Real.pi * ν - τ / t| ^ (-(k : ℝ) - 1) =
        Real.exp ((-(σ + k) * Real.log t) - (k + 1) * Real.log |2 * Real.pi * ν - τ / t|) := by
    intro t ht
    have h_pos : 0 < t ∧ 0 < |2 * Real.pi * ν - τ / t| := by
      have ht_pos : 0 < t := lt_of_lt_of_le (lt_of_le_of_lt (by positivity) ha) ht.1
      constructor
      · exact ht_pos
      · rw [abs_pos, sub_ne_zero, ne_eq, eq_div_iff (ne_of_gt ht_pos)]
        intro h_eq
        have : |τ| / (2 * π * |ν|) ≥ a := by
          rw [ge_iff_le, le_div_iff₀ (by positivity)]
          calc a * (2 * π * |ν|) = 2 * π * |ν| * a := by ring
            _ ≤ 2 * π * |ν| * t := mul_le_mul_of_nonneg_left ht.1 (by positivity)
            _ = |2 * π * ν * t| := by
              rw [abs_mul, abs_mul, abs_of_pos Real.two_pi_pos, abs_of_pos ht_pos]
            _ = |τ| := by rw [h_eq]
        linarith
    rw [rpow_def_of_pos h_pos.1, rpow_def_of_pos h_pos.2, ← Real.exp_add]; ring_nf
  refine fun x hx y hy hxy ↦ by cases eq_or_lt_of_le hxy <;> simp_all only [Set.mem_Icc, and_imp, le_refl]


@[blueprint
  "lem:aachfour"
  (title := "Estimating an integral")
  (statement := /--
Let $s = \sigma + i \tau$, $\sigma\geq 0$, $\tau\in \mathbb{R}$.
Let $\nu \in \mathbb{R}\setminus \{0\}$, $b>a>\frac{|\tau|}{2\pi |\nu|}$.
Then
\[\int_a^b t^{-s} e(\nu t) dt =
 \left. \frac{t^{-\sigma} e(\varphi_\nu(t))}{2\pi i \varphi_\nu'(t)}\right|_a^b +
\frac{a^{-\sigma-1}}{2\pi^2} O^*\left(\frac{\sigma}{(\nu-\vartheta)^2} +
\frac{|\vartheta|}{|\nu-\vartheta|^3}\right),
\]
where $\varphi_\nu(t) = \nu t - \frac{\tau}{2\pi} \log t$ and
$\vartheta = \frac{\tau}{2\pi a}$.
-/)
  (proof := /--
Apply Lemma~\ref{lem:aachIBP}. Since $\varphi_\nu'(t) = \nu - \tau/(2\pi t)$, we know by
Lemma \ref{lem:aachdecre} (with $k=1$) that
$g_1(t) = \frac{t^{-\sigma-1}}{(\varphi_\nu'(t))^2}$ is decreasing on $[a,b]$.
We know that $\varphi_\nu'(t)\ne 0$ for $t\geq a$ by $a>\frac{|\tau|}{2\pi |\nu|}$, and so
we also know that $g_1(t)$ is continuous for $t\geq a$.
Hence, by Lemma \ref{lem:aachmonophase},
\[\left|\int_a^b \frac{t^{-\sigma-1}}{2\pi i \varphi_\nu'(t)} e(\varphi_\nu(t)) dt \right|
  \leq \frac{1}{2\pi} \cdot \frac{|g_1(a)|}{\pi}
  = \frac{1}{2\pi^2} \frac{a^{-\sigma-1}}{\left|\nu - \vartheta\right|^2},\]
since $\varphi_\nu'(a) = \nu - \vartheta$. We remember to include the factor of $\sigma$
in front of an integral in \eqref{eq:aachquno}.

Since $\varphi_\nu'(t)$ is as above and $\varphi_\nu''(t) = \tau/(2\pi t^2)$, we know
by Lemma \ref{lem:aachdecre} (with $k=2$) that
$g_2(t) = \frac{t^{-\sigma} |\varphi_\nu''(t)|}{|\varphi_\nu'(t)|^3} =
\frac{|\tau|}{2\pi} \frac{t^{-\sigma-2}}{|\varphi_\nu'(t)|^3}$ is decreasing on $[a,b]$
we also know, as before, that $g_2(t)$ is continuous.
Hence, again by Lemma \ref{lem:aachmonophase},
\[\left|\int_a^b \frac{t^{-\sigma} \varphi_\nu''(t)}{2\pi i (\varphi_\nu'(t))^2}
 e(\varphi_\nu(t)) dt\right|\leq \frac{1}{2\pi} \frac{|g_2(a)|}{\pi} = \frac{1}{2\pi^2}
 \frac{a^{-\sigma-1} |\vartheta|}{\left|\nu - \vartheta\right|^3}.
\]
-/)
  (latexEnv := "lemma")
  (discussion := 550)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean#L1111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f0e965c048f04d42843bf51db7ae3d45f32361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
