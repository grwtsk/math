# exists_bijective_map_powers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7e078b7-71a7-3b1c-33d3-1a5a33d855b2",
  "kind": "lemma",
  "lexical_name": "exists_bijective_map_powers",
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
  "slug": "exists-bijective-map-powers--81a07f44cf4e3bd67b64c2ad",
  "source": {
    "blob": "e1393e7617530450add7ca5c4955aad59cabc93c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 460,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81a07f44cf4e3bd67b64c2ad77a57f4aeef1d6a82c4ad0a005eeebc15a240a72",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7e078b7-71a7-3b1c-33d3-1a5a33d855b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_bijective_map_powers [Module.Finite R M] [Module.FinitePresentation R N]
    (l : M →ₗ[R] N) (hf : Function.Bijective (IsLocalizedModule.map S f g l)) :
    ∃ r, r ∈ S ∧ ∀ t, r ∣ t → Function.Bijective (LocalizedModule.map (.powers t) l) := by
  let e : M' ≃ₗ[R] N' := LinearEquiv.ofBijective _ hf
  obtain ⟨l', s₀, H⟩ := Module.FinitePresentation.exists_lift_of_isLocalizedModule S f
    (e.symm.toLinearMap.comp g)
  have H₁ : g ∘ₗ l ∘ₗ l' = g ∘ₗ (s₀ • LinearMap.id) := by
    ext a; simpa [-EmbeddingLike.apply_eq_iff_eq, e] using congr(e ($H a))
  obtain ⟨s₁, hs₁⟩ := Module.Finite.exists_smul_of_comp_eq_of_isLocalizedModule S g _ _ H₁
  have H₂ : f ∘ₗ l' ∘ₗ l = f ∘ₗ (s₀ • LinearMap.id) := by
    rw [← LinearMap.comp_assoc, H, LinearMap.smul_comp, LinearMap.comp_assoc,
      ← IsLocalizedModule.map_comp S f g l, ← LinearMap.comp_assoc]
    change s₀ • (e.symm.toLinearMap ∘ₗ e.toLinearMap) ∘ₗ _ = _
    simp [LinearMap.comp_smul]
  obtain ⟨s₂, hs₂⟩ := Module.Finite.exists_smul_of_comp_eq_of_isLocalizedModule S f _ _ H₂
  refine ⟨s₀ * s₁ * s₂, (s₀ * s₁ * s₂).2, fun t ht ↦ ?_⟩
  let Rₛ := Localization (.powers t)
  let lₛ := LocalizedModule.map (.powers t) l
  have hu := IsLocalization.map_units (M := .powers t) Rₛ ⟨t, Submonoid.mem_powers t⟩
  have hu₀ : IsUnit (algebraMap R Rₛ s₀) := isUnit_of_dvd_unit
      (map_dvd (algebraMap R Rₛ) (dvd_trans ⟨s₁ * s₂, by simp [mul_assoc]⟩ ht)) hu
  have hu₁ : IsUnit (algebraMap R Rₛ s₁) := isUnit_of_dvd_unit
      (map_dvd (algebraMap R Rₛ) (dvd_trans ⟨s₀ * s₂, by ring⟩ ht)) hu
  have hu₂ : IsUnit (algebraMap R Rₛ s₂) := isUnit_of_dvd_unit
      (map_dvd (algebraMap R Rₛ) (dvd_trans ⟨s₀ * s₁, by ring⟩ ht)) hu
  let lₛ' := LocalizedModule.map (.powers t) l'
  have H_left : ((hu₀.unit⁻¹).1 • lₛ') ∘ₗ lₛ = LinearMap.id := by
    apply ((Module.End.isUnit_iff _).mp (hu₂.map (algebraMap Rₛ (Module.End Rₛ _)))).1
    apply ((Module.End.isUnit_iff _).mp (hu₀.map (algebraMap Rₛ (Module.End Rₛ _)))).1
    simp only [Module.algebraMap_end_apply, algebraMap_smul, LinearMap.map_smul_of_tower]
    rw [LinearMap.smul_comp, ← smul_assoc s₀.1, Algebra.smul_def s₀.1, IsUnit.mul_val_inv, one_smul]
    apply LinearMap.restrictScalars_injective R
    apply IsLocalizedModule.ext (.powers t) (LocalizedModule.mkLinearMap (.powers t) M)
      (IsLocalizedModule.map_units (LocalizedModule.mkLinearMap (.powers t) M))
    ext x
    have : s₂.1 • l' (l x) = s₂.1 • s₀.1 • x := congr($hs₂ x)
    simp [lₛ, lₛ', LocalizedModule.smul'_mk, this]
  have H_right : lₛ ∘ₗ ((hu₀.unit⁻¹).1 • lₛ') = LinearMap.id := by
    apply ((Module.End.isUnit_iff _).mp (hu₁.map (algebraMap Rₛ (Module.End Rₛ _)))).1
    apply ((Module.End.isUnit_iff _).mp (hu₀.map (algebraMap Rₛ (Module.End Rₛ _)))).1
    simp only [Module.algebraMap_end_apply, algebraMap_smul, LinearMap.map_smul_of_tower]
    rw [LinearMap.comp_smul, ← smul_assoc s₀.1, Algebra.smul_def s₀.1, IsUnit.mul_val_inv, one_smul]
    apply LinearMap.restrictScalars_injective R
    apply IsLocalizedModule.ext (.powers t) (LocalizedModule.mkLinearMap (.powers t) N)
      (IsLocalizedModule.map_units (LocalizedModule.mkLinearMap (.powers t) N))
    ext x
    have : s₁.1 • l (l' x) = s₁.1 • s₀.1 • x := congr($hs₁ x)
    simp [lₛ, lₛ', LocalizedModule.smul'_mk, this]
  let eₛ : LocalizedModule.Away t M ≃ₗ[Rₛ] LocalizedModule.Away t N :=
    { __ := lₛ,
      invFun := ((hu₀.unit⁻¹).1 • lₛ'),
      left_inv := fun x ↦ congr($H_left x),
      right_inv := fun x ↦ congr($H_right x) }
  exact eₛ.bijective

/-- Let `M` be a finite `R`-module and `N` be a finitely presented `R`-module. If `f : M →ₗ[R] N`
is a linear map whose localization at a prime ideal `p` is bijective, then there exists
`g ∉ p` such that `f` is already bijective under the localization away from `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1393e7617530450add7ca5c4955aad59cabc93c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
