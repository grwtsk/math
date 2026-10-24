# lemma_IBP_bound_abs_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43f3cc11-a41f-9859-cd03-e7f7a3d4e2ce",
  "kind": "theorem",
  "lexical_name": "lemma_IBP_bound_abs_antitone",
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
  "slug": "lemma-ibp-bound-abs-antitone--92f1cafb0b39c4bd2526da60",
  "source": {
    "blob": "8d4e5744caad9c4a9cac4d9b39a2102c21fd6987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1055,
    "line": 950,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92f1cafb0b39c4bd2526da6064a20136d6708279f9f357b9321da5f2cc3f21a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43f3cc11-a41f-9859-cd03-e7f7a3d4e2ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 950–1055.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_IBP_bound_abs_antitone {a b : ℝ} (hab : a < b) (g : ℝ → ℝ) (F : ℝ → ℂ)
    (hgcont : ContinuousOn g (Icc a b)) (hganti : AntitoneOn (|g ·|) (Icc a b))
    (hF : ContDiffOn ℝ 1 F (Icc a b)) :
    ‖∫ t in Icc a b, (g t : ℂ) * deriv F t‖ ≤ (⨆ t ∈ Icc a b, ‖F t‖) * (2 * |g a|) := by
  have hsign : (∀ t ∈ Icc a b, g t ≥ 0) ∨ (∀ t ∈ Icc a b, g t ≤ 0) := by
    by_cases hsign : ∃ a' b' : ℝ, a ≤ a' ∧ a' < b' ∧ b' ≤ b ∧ g a' * g b' < 0
    · obtain ⟨a', b', ha', hb', hab', hsign⟩ := hsign
      obtain ⟨r, hr⟩ : ∃ r ∈ Icc a' b', g r = 0 := by
        have hivt : ContinuousOn g (Icc a' b') := hgcont.mono (Icc_subset_Icc ha' hab')
        have := hivt.image_Icc hb'.le
        exact this.symm.subset (Set.mem_Icc.mpr ⟨by nlinarith [Set.mem_Icc.mp (this ▸
          mem_image_of_mem g (Set.left_mem_Icc.mpr hb'.le)), Set.mem_Icc.mp (this ▸
          mem_image_of_mem g (Set.right_mem_Icc.mpr hb'.le))], by nlinarith [mem_Icc.mp (this ▸
          mem_image_of_mem g (Set.left_mem_Icc.mpr hb'.le)), mem_Icc.mp (this ▸
          mem_image_of_mem g (Set.right_mem_Icc.mpr hb'.le))]⟩)
      have := hganti ⟨by linarith [hr.1.1], by linarith [hr.1.2]⟩ ⟨by linarith [hr.1.1], by
        linarith [hr.1.2]⟩ hr.1.2
      simp_all
    · contrapose! hsign
      obtain ⟨⟨x, hx₁, hx₂⟩, ⟨y, hy₁, hy₂⟩⟩ := hsign
      norm_num at *
      cases lt_or_gt_of_ne (show x ≠ y by rintro rfl; linarith) with
      | inl h => exact ⟨x, hx₁.1, y, by linarith, by linarith, by nlinarith⟩
      | inr h => exact ⟨y, hy₁.1, x, by linarith, by linarith, by nlinarith⟩
  cases hsign with
  | inl hsign =>
    have hbd₁ : ‖(∫ t in Icc a b, (g t : ℂ) * deriv F t) - (g b * F b - g a * F a)‖ ≤
        (⨆ t ∈ Icc a b, ‖F t‖) * (g a - g b) := by
      have := @lemma_IBP_bound_monotone a b hab (fun t ↦ -g t) F ?_ ?_ ?_ <;> norm_num at *
      · convert this using 1 <;> norm_num [integral_neg]
        · ring_nf; rw [← norm_neg]; ring_nf
        · exact Or.inl <| by ring
      · exact hgcont.neg
      · intro t ht u hu htu; have := hganti ht hu htu; simp_all [abs_of_nonneg]
      · assumption
    have hbd₂ : ‖g b * F b - g a * F a‖ ≤ (⨆ t ∈ Icc a b, ‖F t‖) * (g b + g a) := by
      refine (norm_sub_le _ _).trans ?_
      have hFle : ∀ t ∈ Icc a b, ‖F t‖ ≤ ⨆ t ∈ Icc a b, ‖F t‖ := fun t ht ↦ by
        apply le_csSup
        · obtain ⟨M, hM⟩ := IsCompact.exists_bound_of_continuousOn isCompact_Icc hF.continuousOn
          exact ⟨max M 1, forall_mem_range.mpr fun t ↦ by rw [ciSup_eq_ite]; aesop⟩
        · exact ⟨t, by simp_all⟩
      norm_num at *
      rw [abs_of_nonneg (hsign b hab.le le_rfl), abs_of_nonneg (hsign a le_rfl hab.le)]
      nlinarith [hFle b hab.le le_rfl, hFle a le_rfl hab.le, hsign b hab.le le_rfl, hsign a le_rfl hab.le]
    have hbd₃ : ‖∫ t in Icc a b, (g t : ℂ) * deriv F t‖ ≤
        (⨆ t ∈ Icc a b, ‖F t‖) * (g a - g b) + (⨆ t ∈ Icc a b, ‖F t‖) * (g b + g a) := by
      have h := norm_add_le ((∫ t in Icc a b, (g t : ℂ) * deriv F t) -
        (g b * F b - g a * F a)) (g b * F b - g a * F a)
      simpa using h.trans (add_le_add hbd₁ hbd₂)
    exact hbd₃.trans (by
      rw [abs_of_nonneg (hsign a <| left_mem_Icc.mpr hab.le)]
      nlinarith [show 0 ≤ ⨆ t ∈ Icc a b, ‖F t‖ from iSup_nonneg fun _ ↦ iSup_nonneg fun _ ↦ norm_nonneg _])
  | inr hsign =>
    have hbd₁ : ‖(∫ t in Icc a b, (g t : ℂ) * deriv F t) - (g b * F b - g a * F a)‖ ≤
        (⨆ t ∈ Icc a b, ‖F t‖) * (g b - g a) := by
      apply_rules [lemma_IBP_bound_monotone]
      intro x hx y hy hxy; have := hganti hx hy hxy; simp_all [abs_of_nonpos]
    have hbd₂ : ‖g b * F b - g a * F a‖ ≤ (⨆ t ∈ Icc a b, ‖F t‖) * (|g b| + |g a|) := by
      have hFle : ∀ t ∈ Icc a b, ‖F t‖ ≤ ⨆ t ∈ Icc a b, ‖F t‖ := fun t ht ↦ by
        apply le_csSup
        · obtain ⟨M, hM⟩ := IsCompact.exists_bound_of_continuousOn isCompact_Icc hF.continuousOn.norm
          use max M 1
          rintro x ⟨t, rfl⟩; by_cases ht : t ∈ Icc a b <;> simp_all
        · exact ⟨t, by simp_all⟩
      refine (norm_sub_le ..).trans ?_
      simp only [Set.mem_Icc, and_imp, norm_mul, norm_real, norm_eq_abs] at *
      nlinarith [abs_nonneg (g b), abs_nonneg (g a),
        hFle b (by linarith) (by linarith), hFle a (by linarith) (by linarith)]
    have hbd₃ : ‖∫ t in Icc a b, (g t : ℂ) * deriv F t‖ ≤
        (⨆ t ∈ Icc a b, ‖F t‖) * (g b - g a) + (⨆ t ∈ Icc a b, ‖F t‖) * (|g b| + |g a|) := by
      have h := norm_add_le ((∫ t in Icc a b, (g t : ℂ) * deriv F t) - (g b * F b - g a * F a)) (g b * F b - g a * F a)
      simpa using h.trans (add_le_add hbd₁ hbd₂)
    convert hbd₃ using 1
    rw [abs_of_nonpos (hsign b <| right_mem_Icc.mpr hab.le), abs_of_nonpos (hsign a <| left_mem_Icc.mpr hab.le)]
    ring

set_option backward.isDefEq.respectTransparency false in
@[blueprint
  "lem:aachmonophase"
  (title := "Non-stationary phase estimate")
  (statement := /--
Let $\varphi:[a,b]\to \mathbb{R}$ be $C^1$ with $\varphi'(t)\ne 0$ for all $t\in [a,b]$.
Let $h:[a,b]\to \mathbb{R}$ be such that $g(t) = h(t)/\varphi'(t)$ is continuous and
$|g(t)|$ is non-increasing. Then
\[\left|\int_a^b h(t) e(\varphi(t)) dt\right|\leq \frac{|g(a)|}{\pi}.\]
-/)
  (proof := /--
Since $\varphi$ is $C^1$, $e(\varphi(t))$ is $C^1$, and
$h(t) e(\varphi(t)) = \frac{h(t)}{2\pi i \varphi'(t)} \frac{d}{dt} e(\varphi(t))$ everywhere.
By Lemma \ref{lem:aachra}, $g$ is of bounded variation. Hence, we can integrate by parts:
\[\int_a^b h(t) e(\varphi(t)) dt =
  \left. \frac{h(t) e(\varphi(t))}{2\pi i \varphi'(t)}\right|_a^b -
  \int_a^b e(\varphi(t))\, d\left(\frac{h(t)}{2\pi i \varphi'(t)}\right).
\]
The first term on the right has absolute value $\leq \frac{|g(a)|+|g(b)|}{2\pi}$.
Again by Lemma \ref{lem:aachra},
\[\left|
\int_a^b e(\varphi(t))\, d\left(\frac{h(t)}{2\pi i \varphi'(t)}\right)
\right|\leq \frac{1}{2\pi} \|g\|_{\mathrm{TV}} = \frac{|g(a)|-|g(b)|}{2\pi}.
\]
We are done by
$\frac{|g(a)|+|g(b)|}{2\pi} + \frac{|g(a)|-|g(b)|}{2\pi} = \frac{|g(a)|}{\pi}$.
-/)
  (latexEnv := "lemma")
  (discussion := 548)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean#L950).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4e5744caad9c4a9cac4d9b39a2102c21fd6987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
