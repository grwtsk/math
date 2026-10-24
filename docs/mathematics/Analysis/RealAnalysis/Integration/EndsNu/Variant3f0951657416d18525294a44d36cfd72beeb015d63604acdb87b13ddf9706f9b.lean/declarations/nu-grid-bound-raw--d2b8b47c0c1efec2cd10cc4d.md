# nu_grid_bound_raw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12f25267-c508-ecff-e7f5-fb82916ad823",
  "kind": "theorem",
  "lexical_name": "nu_grid_bound_raw",
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
  "slug": "nu-grid-bound-raw--d2b8b47c0c1efec2cd10cc4d",
  "source": {
    "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 626,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2b8b47c0c1efec2cd10cc4d037b1173638ae80cf6aaa0c41b8631794a16a7bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12f25267-c508-ecff-e7f5-fb82916ad823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nu_grid_bound_raw (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F) (hν : NuBound p B ν)
    (hB8 : 8 ≤ B) (hT : 2 * π * Real.exp 8 ≤ p.T) :
    ∫ τ in (p.I)ᶜ, (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|
      ≤ 2 * (B * (2 + 2 * p.L + 25 / 2 * cϱ * p.L + cϱ * p.L ^ 2 / 2 + cϱ * p.L * p.l)
          + p.L * cϱ * B) := by
  have hl8 : 8 ≤ p.l := Setting.le_l_of_T hT
  have hT1 : 1 ≤ p.T := Setting.one_le_T (by norm_num) hT
  have hT0 : 0 < p.T := by linarith
  have hL8 : 8 ≤ p.L := hF.eight_le_L
  have hL := hF.L_pos
  have hc4 := hF.four_le_cϱ
  have hc : (0:ℝ) ≤ cϱ := by linarith
  have hw1 := hF.one_le_w
  have hw : 0 < p.w := by linarith
  have hB : 0 ≤ B := by linarith
  -- the set-up
  have hint := integrableOn_sigma_mul_abs_nuX hνc hF hν hT1
  have hcompl : (p.I)ᶜ = Iio p.T ∪ Ioi (2 * p.T) := by
    ext x
    simp only [Setting.I, Zeta23.Iwin, Set.mem_compl_iff, Set.mem_Icc, Set.mem_union, Set.mem_Iio,
      Set.mem_Ioi, not_and_or, not_le]
  rw [hcompl] at hint ⊢
  have hintL := hint.mono_set Set.subset_union_left
  have hintR := hint.mono_set Set.subset_union_right
  have hdisj : Disjoint (Iio p.T) (Ioi (2 * p.T)) :=
    Set.disjoint_left.mpr fun x hx hx' => by
      simp only [Set.mem_Iio, Set.mem_Ioi] at hx hx'; linarith
  rw [setIntegral_union hdisj measurableSet_Ioi hintL hintR]
  -- each side ≤ ∫_0^∞ Mtot
  have hleft : ∫ τ in Iio p.T, (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|
      ≤ ∫ Δ in Ioi 0, Mtot cϱ p B Δ := by
    calc ∫ τ in Iio p.T, (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|
        ≤ ∫ τ in Iio p.T, Mtot cϱ p B (p.T - τ) :=
          setIntegral_mono_on hintL ((Mtot_integrable (B := B) hF hT0).comp_sub_left p.T).integrableOn
            measurableSet_Iio (fun τ hτ => dom_left hF hν hT0 hτ)
      _ = ∫ Δ in Ioi 0, Mtot cϱ p B Δ := setIntegral_Iio_comp_sub_left _ _
  have hright : ∫ τ in Ioi (2 * p.T), (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|
      ≤ ∫ Δ in Ioi 0, Mtot cϱ p B Δ := by
    calc ∫ τ in Ioi (2 * p.T), (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|
        ≤ ∫ τ in Ioi (2 * p.T), Mtot cϱ p B (τ - 2 * p.T) :=
          setIntegral_mono_on hintR ((Mtot_integrable (B := B) hF hT0).comp_sub_right (2 * p.T)).integrableOn
            measurableSet_Ioi (fun τ hτ => dom_right hF hν hT0 hτ)
      _ = ∫ Δ in Ioi 0, Mtot cϱ p B Δ := setIntegral_Ioi_comp_sub_right _ _
  -- the majorant's integral
  set Ψ' := ∫ r in Ioi 0, psiA cϱ p r with hΨ'
  have hΨ0 : 0 ≤ Ψ' := setIntegral_nonneg measurableSet_Ioi fun r _ => psiA_nonneg_of hF r
  have hM : ∫ Δ in Ioi 0, Mtot cϱ p B Δ
      ≤ B * (Ψ' + p.L / (2 * π) * (Ψ' + cϱ / p.w * Real.log (2 * p.T)))
        + p.d / p.T * (cϱ / p.w) * (B / 2 + 4) := by
    rw [integral_Mtot_eq hF hT0]
    exact add_le_add (integral_Mnear_le hF hB hT1) (integral_Mfar_le hF hB hT1)
  -- elementary bounds on the ingredients
  have hΨ1 : Ψ' ≤ 2 + cϱ * p.L / 2 := by
    have h1 : Ψ' ≤ 4 + 2 * Real.log (cϱ * p.L / (4 * p.w)) := hF.integral_psi_Ioi_le
    have harg : 0 < cϱ * p.L / (4 * p.w) := by positivity
    have h2 := Real.log_le_sub_one_of_pos harg
    have h3 : cϱ * p.L / (4 * p.w) ≤ cϱ * p.L / 4 :=
      div_le_div_of_nonneg_left (by positivity) (by norm_num) (by linarith)
    linarith
  have hlog := log_two_mul_T_le (p := p) hT0
  have hcw : cϱ / p.w ≤ cϱ := div_le_self hc hw1
  have hdT : p.d / p.T ≤ p.L := by
    rw [div_le_iff₀ hT0]
    have := p.d_le (by positivity : 0 ≤ p.L * p.T)
    refine this.trans ?_
    rw [div_le_iff₀ (by positivity)]
    nlinarith [Real.pi_gt_three, mul_pos hL hT0]
  have h2π : p.L / (2 * π) ≤ p.L := by
    rw [div_le_iff₀ (by positivity)]; nlinarith [Real.pi_gt_three]
  have hB2 : B / 2 + 4 ≤ B := by linarith
  -- near ≤ B (Ψ₁ + L (Ψ₁ + c (l + 12))),  Ψ₁ = 2 + cL/2
  have hinner : Ψ' + cϱ / p.w * Real.log (2 * p.T) ≤ (2 + cϱ * p.L / 2) + cϱ * (p.l + 12) := by
    have hlog0 : 0 ≤ Real.log (2 * p.T) := Real.log_nonneg (by linarith)
    have : cϱ / p.w * Real.log (2 * p.T) ≤ cϱ * (p.l + 12) :=
      mul_le_mul hcw hlog hlog0 hc
    linarith
  have hinner0 : 0 ≤ Ψ' + cϱ / p.w * Real.log (2 * p.T) := by
    have hlog0 : 0 ≤ Real.log (2 * p.T) := Real.log_nonneg (by linarith)
    positivity
  have hnear : B * (Ψ' + p.L / (2 * π) * (Ψ' + cϱ / p.w * Real.log (2 * p.T)))
      ≤ B * ((2 + cϱ * p.L / 2) + p.L * ((2 + cϱ * p.L / 2) + cϱ * (p.l + 12))) := by
    refine mul_le_mul_of_nonneg_left (add_le_add hΨ1 ?_) hB
    exact mul_le_mul h2π hinner hinner0 hL.le
  have hfar : p.d / p.T * (cϱ / p.w) * (B / 2 + 4) ≤ p.L * cϱ * B := by
    apply mul_le_mul (mul_le_mul hdT hcw (by positivity) hL.le) hB2 (by positivity) (by positivity)
  -- polynomial endgame
  have hside : ∫ Δ in Ioi 0, Mtot cϱ p B Δ
      ≤ B * (2 + 2 * p.L + 25 / 2 * cϱ * p.L + cϱ * p.L ^ 2 / 2 + cϱ * p.L * p.l)
        + p.L * cϱ * B := by
    refine hM.trans (add_le_add (hnear.trans (le_of_eq ?_)) hfar)
    ring
  linarith [hleft, hright, hside]

/-- **N2** (§5.3, "∫_{τ∉I}|ν_X|σ ≪ BLl", σ(τ) := Σ_{k<d} ψ(τ−τ_k))  (paper regime B ≥ l, L ≤ 2l). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
