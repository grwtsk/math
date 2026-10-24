# hasIntegral_GP_pderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfc9978b686e765c022a703b53aad3116aba4701",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/394c9056be24eef1197d8f015070fae549f75f44b86371603bf9f5506c4021a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d19e214b-a1f1-2739-0767-2301eeacfaa1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6fd0671-7843-1cac-db05-f17738741ff0",
  "kind": "theorem",
  "lexical_name": "hasIntegral_GP_pderiv",
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
  "slug": "hasintegral-gp-pderiv--09adfafef67319d09e6e05f3",
  "source": {
    "blob": "cfc9978b686e765c022a703b53aad3116aba4701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant394c9056be24eef1197d8f015070fae549f75f44b86371603bf9f5506c4021a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09adfafef67319d09e6e05f3dc14fb69fdf064277c649db696e437639e5825fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant394c9056be24eef1197d8f015070fae549f75f44b86371603bf9f5506c4021a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6fd0671-7843-1cac-db05-f17738741ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasIntegral_GP_pderiv (f : (Fin (n + 1) → ℝ) → E)
    (f' : (Fin (n + 1) → ℝ) → (Fin (n + 1) → ℝ) →L[ℝ] E) (s : Set (Fin (n + 1) → ℝ))
    (hs : s.Countable) (Hs : ∀ x ∈ s, ContinuousWithinAt f (Box.Icc I) x)
    (Hd : ∀ x ∈ (Box.Icc I) \ s, HasFDerivWithinAt f (f' x) (Box.Icc I) x) (i : Fin (n + 1)) :
    HasIntegral.{0, u, u} I GP (fun x => f' x (Pi.single i 1)) BoxAdditiveMap.volume
      (integral.{0, u, u} (I.face i) GP (fun x => f (i.insertNth (I.upper i) x))
          BoxAdditiveMap.volume -
        integral.{0, u, u} (I.face i) GP (fun x => f (i.insertNth (I.lower i) x))
          BoxAdditiveMap.volume) := by
  /- Note that `f` is continuous on `I.Icc`, hence it is integrable on the faces of all boxes
    `J ≤ I`, thus the difference of integrals over `x i = J.upper i` and `x i = J.lower i` is a
    box-additive function of `J ≤ I`. -/
  have Hc : ContinuousOn f (Box.Icc I) := fun x hx ↦ by
    by_cases hxs : x ∈ s
    exacts [Hs x hxs, (Hd x ⟨hx, hxs⟩).continuousWithinAt]
  set fI : ℝ → Box (Fin n) → E := fun y J =>
    integral.{0, u, u} J GP (fun x => f (i.insertNth y x)) BoxAdditiveMap.volume
  set fb : Icc (I.lower i) (I.upper i) → Fin n →ᵇᵃ[↑(I.face i)] E := fun x =>
    (integrable_of_continuousOn GP (Box.continuousOn_face_Icc Hc x.2) volume).toBoxAdditive
  set F : Fin (n + 1) →ᵇᵃ[I] E := BoxAdditiveMap.upperSubLower I i fI fb fun x _ J => rfl
  -- Thus our statement follows from some local estimates.
  change HasIntegral I GP (fun x => f' x (Pi.single i 1)) _ (F I)
  refine HasIntegral.of_le_Henstock_of_forall_isLittleO gp_le ?_ ?_ _ s hs ?_ ?_
  · -- We use the volume as an upper estimate.
    exact (volume : Measure (Fin (n + 1) → ℝ)).toBoxAdditive.restrict _ le_top
  · exact fun J => ENNReal.toReal_nonneg
  · intro c x hx ε ε0
    /- Near `x ∈ s` we choose `δ` so that both vectors are small. `volume J • eᵢ` is small because
        `volume J ≤ (2 * δ) ^ (n + 1)` is small, and the difference of the integrals is small
        because each of the integrals is close to `volume (J.face i) • f x`.
        TODO: there should be a shorter and more readable way to formalize this simple proof. -/
    have : ∀ᶠ δ in 𝓝[>] (0 : ℝ), δ ∈ Ioc (0 : ℝ) (1 / 2) ∧
        (∀ᵉ (y₁ ∈ closedBall x δ ∩ (Box.Icc I)) (y₂ ∈ closedBall x δ ∩ (Box.Icc I)),
              ‖f y₁ - f y₂‖ ≤ ε / 2) ∧ (2 * δ) ^ (n + 1) * ‖f' x (Pi.single i 1)‖ ≤ ε / 2 := by
      refine .and (Ioc_mem_nhdsGT one_half_pos) (.and ?_ ?_)
      · rcases ((nhdsWithin_hasBasis nhds_basis_closedBall _).tendsto_iff nhds_basis_closedBall).1
            (Hs x hx.2) _ (half_pos <| half_pos ε0) with ⟨δ₁, δ₁0, hδ₁⟩
        filter_upwards [Ioc_mem_nhdsGT δ₁0] with δ hδ y₁ hy₁ y₂ hy₂
        have : closedBall x δ ∩ (Box.Icc I) ⊆ closedBall x δ₁ ∩ (Box.Icc I) := by gcongr; exact hδ.2
        rw [← dist_eq_norm]
        calc
          dist (f y₁) (f y₂) ≤ dist (f y₁) (f x) + dist (f y₂) (f x) := dist_triangle_right _ _ _
          _ ≤ ε / 2 / 2 + ε / 2 / 2 := add_le_add (hδ₁ _ <| this hy₁) (hδ₁ _ <| this hy₂)
          _ = ε / 2 := add_halves _
      · have : ContinuousWithinAt (fun δ : ℝ => (2 * δ) ^ (n + 1) * ‖f' x (Pi.single i 1)‖)
            (Ioi 0) 0 := ((continuousWithinAt_id.const_mul _).pow _).mul_const _
        refine this.eventually (ge_mem_nhds ?_)
        simpa using half_pos ε0
    rcases this.exists with ⟨δ, ⟨hδ0, hδ12⟩, hdfδ, hδ⟩
    refine ⟨δ, hδ0, fun J hJI hJδ _ _ => add_halves ε ▸ ?_⟩
    have Hl : J.lower i ∈ Icc (J.lower i) (J.upper i) := Set.left_mem_Icc.2 (J.lower_le_upper i)
    have Hu : J.upper i ∈ Icc (J.lower i) (J.upper i) := Set.right_mem_Icc.2 (J.lower_le_upper i)
    have Hi : ∀ x ∈ Icc (J.lower i) (J.upper i),
        Integrable.{0, u, u} (J.face i) GP (fun y => f (i.insertNth x y))
          BoxAdditiveMap.volume := fun x hx =>
      integrable_of_continuousOn _ (Box.continuousOn_face_Icc (Hc.mono <| Box.le_iff_Icc.1 hJI) hx)
        volume
    have hJδ' : Box.Icc J ⊆ closedBall x δ ∩ (Box.Icc I) := subset_inter hJδ (Box.le_iff_Icc.1 hJI)
    have Hmaps : ∀ z ∈ Icc (J.lower i) (J.upper i),
        MapsTo (i.insertNth z) (Box.Icc (J.face i)) (closedBall x δ ∩ (Box.Icc I)) := fun z hz =>
      (J.mapsTo_insertNth_face_Icc hz).mono Subset.rfl hJδ'
    simp only [dist_eq_norm]; dsimp [F]
    rw [← integral_sub (Hi _ Hu) (Hi _ Hl)]
    refine (norm_sub_le _ _).trans (add_le_add ?_ ?_)
    · simp_rw [BoxAdditiveMap.volume_apply, norm_smul, Real.norm_eq_abs, abs_prod]
      refine (mul_le_mul_of_nonneg_right ?_ <| norm_nonneg _).trans hδ
      have : ∀ j, |J.upper j - J.lower j| ≤ 2 * δ := fun j ↦
        calc
          dist (J.upper j) (J.lower j) ≤ dist J.upper J.lower := dist_le_pi_dist _ _ _
          _ ≤ dist J.upper x + dist J.lower x := dist_triangle_right _ _ _
          _ ≤ δ + δ := add_le_add (hJδ J.upper_mem_Icc) (hJδ J.lower_mem_Icc)
          _ = 2 * δ := (two_mul δ).symm
      calc
        ∏ j, |J.upper j - J.lower j| ≤ ∏ j : Fin (n + 1), 2 * δ := by
          gcongr with j _; exact this j
        _ = (2 * δ) ^ (n + 1) := by simp
    · refine (norm_integral_le_of_le_const (fun y hy => hdfδ _ (Hmaps _ Hu hy) _
        (Hmaps _ Hl hy)) volume).trans ?_
      refine (mul_le_mul_of_nonneg_right ?_ (half_pos ε0).le).trans_eq (one_mul _)
      rw [Box.coe_eq_pi, measureReal_def, Real.volume_pi_Ioc_toReal (Box.lower_le_upper _)]
      refine prod_le_one₀ (fun _ _ => sub_nonneg.2 <| Box.lower_le_upper _ _) fun j _ => ?_
      calc
        J.upper (i.succAbove j) - J.lower (i.succAbove j) ≤
            dist (J.upper (i.succAbove j)) (J.lower (i.succAbove j)) :=
          le_abs_self _
        _ ≤ dist J.upper J.lower := dist_le_pi_dist J.upper J.lower (i.succAbove j)
        _ ≤ dist J.upper x + dist J.lower x := dist_triangle_right _ _ _
        _ ≤ δ + δ := add_le_add (hJδ J.upper_mem_Icc) (hJδ J.lower_mem_Icc)
        _ ≤ 1 / 2 + 1 / 2 := by gcongr
        _ = 1 := add_halves 1
  · intro c x hx ε ε0
    /- At a point `x ∉ s`, we unfold the definition of Fréchet differentiability, then use
        an estimate we proved earlier in this file. -/
    rcases exists_pos_mul_lt ε0 (2 * c) with ⟨ε', ε'0, hlt⟩
    rcases (nhdsWithin_hasBasis nhds_basis_closedBall _).mem_iff.1
      ((Hd x hx).isLittleO.def ε'0) with ⟨δ, δ0, Hδ⟩
    refine ⟨δ, δ0, fun J hle hJδ hxJ hJc => ?_⟩
    simp only [BoxAdditiveMap.volume_apply, dist_eq_norm]
    refine (norm_volume_sub_integral_face_upper_sub_lower_smul_le _
      (Hc.mono <| Box.le_iff_Icc.1 hle) hxJ ε'0 (fun y hy => Hδ ?_) (hJc rfl)).trans ?_
    · exact ⟨hJδ hy, Box.le_iff_Icc.1 hle hy⟩
    · rw [mul_right_comm (2 : ℝ), ← Box.volume_apply]
      gcongr
      exacts [by dsimp; positivity, by simp]

/-- Divergence theorem for a Henstock-Kurzweil style integral.

If `f : ℝⁿ⁺¹ → Eⁿ⁺¹` is differentiable on a closed rectangular box `I` with derivative `f'`, then
the divergence `∑ i, f' x (Pi.single i 1) i` is Henstock-Kurzweil integrable with integral equal to
the sum of integrals of `f` over the faces of `I` taken with appropriate signs.

More precisely, we use a non-standard generalization of the Henstock-Kurzweil integral and
we allow `f` to be non-differentiable (but still continuous) at a countable set of points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant394c9056be24eef1197d8f015070fae549f75f44b86371603bf9f5506c4021a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant394c9056be24eef1197d8f015070fae549f75f44b86371603bf9f5506c4021a9.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfc9978b686e765c022a703b53aad3116aba4701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
