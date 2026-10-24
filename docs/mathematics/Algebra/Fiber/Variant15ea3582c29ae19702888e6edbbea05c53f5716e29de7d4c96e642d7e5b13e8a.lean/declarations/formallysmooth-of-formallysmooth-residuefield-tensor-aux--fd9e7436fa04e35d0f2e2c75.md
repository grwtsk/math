# FormallySmooth.of_formallySmooth_residueField_tensor_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31ebf51a52f70d361303efd84ba67e62276e5ada",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15ea3582c29ae19702888e6edbbea05c53f5716e29de7d4c96e642d7e5b13e8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68bb7478-d1c1-dddf-7d8c-4317be8e673c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8471505-0b69-7eb6-9b17-e4bbb80efe7c",
  "kind": "lemma",
  "lexical_name": "FormallySmooth.of_formallySmooth_residueField_tensor_aux",
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
  "slug": "formallysmooth-of-formallysmooth-residuefield-tensor-aux--fd9e7436fa04e35d0f2e2c75",
  "source": {
    "blob": "31ebf51a52f70d361303efd84ba67e62276e5ada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 70,
    "path": "GRWTSK/Algebra/Fiber/Variant15ea3582c29ae19702888e6edbbea05c53f5716e29de7d4c96e642d7e5b13e8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd9e7436fa04e35d0f2e2c756d72222eb404851073820e1ee249cdd37a6299f3",
  "verification": {
    "reference": "docs/verification/Algebra/Fiber/Variant15ea3582c29ae19702888e6edbbea05c53f5716e29de7d4c96e642d7e5b13e8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8471505-0b69-7eb6-9b17-e4bbb80efe7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma FormallySmooth.of_formallySmooth_residueField_tensor_aux
    [FormallySmooth R P] [Module.Free P Ω[P⁄R]] [Module.Finite P Ω[P⁄R]]
    (h₁ : Function.Surjective (algebraMap P S)) (h₂ : (RingHom.ker (algebraMap P S)).FG) :
    Algebra.FormallySmooth R S := by
  /-
  From the given presentation `0 → I → P → S → 0`, we construct the presentation
  `0 → k ⊗ᵣ I → k ⊗ᵣ P → k ⊗ᵣ S → 0` using the flatness of `S`.
  We also need the fact that `k ⊗ᵣ S` is also local with residue field `K`.
  -/
  let Sp := 𝓀[R] ⊗[R] S
  let Pp := 𝓀[R] ⊗[R] P
  let φ : Pp →ₐ[𝓀[R]] Sp := Algebra.TensorProduct.map (.id _ _) (IsScalarTower.toAlgHom _ _ _)
  let ψ : Sp →ₐ[R] 𝓀[S] := Algebra.TensorProduct.lift (IsScalarTower.toAlgHom _ _ _)
    (IsScalarTower.toAlgHom _ _ _) fun _ _ ↦ .all _ _
  algebraize [φ.toRingHom, (φ.toRingHom.comp (algebraMap P Pp)), ψ.toRingHom,
    ψ.toRingHom.comp φ.toRingHom]
  have := IsScalarTower.of_algebraMap_eq' φ.comp_algebraMap.symm
  have := IsScalarTower.of_algebraMap_eq' ψ.comp_algebraMap.symm
  have : IsScalarTower P S Sp := .of_algebraMap_eq' rfl
  have : IsScalarTower S Sp 𝓀[S] := .of_algebraMap_eq fun r ↦ by
    simp [RingHom.algebraMap_toAlgebra, ψ, Sp]
  have : IsScalarTower P Sp 𝓀[S] := .to₁₃₄ _ S _ _
  have : IsScalarTower P Pp 𝓀[S] := .to₁₂₄ _ _ Sp _
  let ePp : Pp ≃ₐ[P] P ⊗[R] 𝓀[R] := { __ := TensorProduct.comm _ _ _, commutes' _ := rfl }
  let e₀ : Ω[Pp⁄𝓀[R]] ≃ₗ[Pp] Pp ⊗[P] Ω[P⁄R] :=
    (KaehlerDifferential.tensorKaehlerEquiv R 𝓀[R] P Pp).symm
  have : Module.Free Pp Ω[Pp⁄𝓀[R]] := .of_equiv e₀.symm
  have : Module.Finite Pp Ω[Pp⁄𝓀[R]] := .of_surjective e₀.symm.toLinearMap e₀.symm.surjective
  let e₁ : RingHom.ker φ ≃ₗ[Pp] Pp ⊗[P] RingHom.ker (algebraMap P S) :=
    kerTensorProductMapIdToAlgHomEquiv _ _ _ _ h₁
  have h₁' : Function.Surjective φ := LinearMap.lTensor_surjective _ h₁
  have h₂' : (RingHom.ker φ).FG := by
    suffices Module.Finite Pp (RingHom.ker φ) from (Submodule.fg_top _).mp this.1
    have : Module.Finite P (RingHom.ker (algebraMap P S)) := ⟨(Submodule.fg_top _).mpr h₂⟩
    exact .equiv e₁.symm
  have h₃ : 𝓂[Sp] ≤ RingHom.ker ψ := by
    intro x hx
    obtain ⟨x, rfl⟩ := TensorProduct.mk_surjective _ _ _ (by exact residue_surjective) x
    have : ¬IsUnit x := fun h ↦ hx <| h.map TensorProduct.includeRight
    simpa [ψ, Sp]
  /-
  The key is then to use jacobi criterion `FormallySmooth.iff_injective_cotangentComplexBaseChange`.
  Applying the criterion to `0 → I → P → S → 0` and `0 → k ⊗ᵣ I → k ⊗ᵣ P → k ⊗ᵣ S → 0`,
  the goal becomes the injectivity of `K ⊗ₛ I → K ⊗ₚ Ω[P/R]`,
  while the assumption that `S` is smooth at the maximal ideal translates to the injectivity of
  `K ⊗[k ⊗ᵣ S] (k ⊗ᵣ I) → K ⊗[k ⊗ᵣ P] Ω[k ⊗ᵣ P/R]`.
  -/
  rw [Algebra.FormallySmooth.iff_injective_cotangentComplexBaseChange_residueField (P := P) h₁ h₂]
  have := (Algebra.FormallySmooth.iff_injective_cotangentComplexBaseChange
    (R := 𝓀[R]) _ _ h₁' h₂' h₃).mp inferInstance
  -- But `K ⊗[k ⊗ᵣ P] Ω[k ⊗ᵣ P/R] = K ⊗[k ⊗ᵣ P] ((k ⊗ᵣ P) ⊗[P] Ω[P/R]) = K ⊗[P] Ω[P/R]`,
  let eᵣ : 𝓀[S] ⊗[Pp] Ω[Pp⁄𝓀[R]] ≃ₗ[S] 𝓀[S] ⊗[P] Ω[P⁄R] :=
    (AlgebraTensorModule.congr (.refl 𝓀[S] _) e₀).restrictScalars S ≪≫ₗ
      (AlgebraTensorModule.cancelBaseChange P Pp Sp 𝓀[S] Ω[P⁄R]).restrictScalars S
  -- and `K ⊗[k ⊗ᵣ S] (k ⊗ᵣ I) = K ⊗[k ⊗ᵣ P] ((k ⊗ᵣ P) ⊗[P] S) = K ⊗[P] S`.
  let eₗ : 𝓀[S] ⊗[Pp] RingHom.ker φ ≃ₗ[S] 𝓀[S] ⊗[P] RingHom.ker (algebraMap P S) :=
    (AlgebraTensorModule.congr (.refl 𝓀[S] 𝓀[S]) e₁).restrictScalars S ≪≫ₗ
      (AlgebraTensorModule.cancelBaseChange P Pp Sp 𝓀[S] _).restrictScalars S
  -- It remains to check that the two maps are equal under the identifications above.
  convert! (eᵣ.injective.comp this).comp eₗ.symm.injective
  ext x
  dsimp
  induction x with
  | add x y _ _ => simp only [LinearEquiv.map_add, LinearMap.map_add, *]
  | tmul x y =>
  dsimp [eₗ, eᵣ, e₁, KaehlerDifferential.cotangentComplexBaseChange,
    TensorProduct.one_def, Pp, smul_tmul']
  rw [kerTensorProductMapIdToAlgHomEquiv_symm_apply]
  simp [e₀, Pp, ← TensorProduct.one_def]

/--
Let `(R, m, k)` be a local ring, `S` be a local `R`-algebra that is flat,
essentially of finite presentation, and `k ⊗[R] S` is `k`-formally smooth.
Then `S` is `R`-formally smooth.

Since we don't have an "essentially of finite presentation" type class yet, we explicitly require a
`P` that is of finite presentation over `R` and that `S` is a localization of it.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Fiber/Variant15ea3582c29ae19702888e6edbbea05c53f5716e29de7d4c96e642d7e5b13e8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Fiber/Variant15ea3582c29ae19702888e6edbbea05c53f5716e29de7d4c96e642d7e5b13e8a.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ebf51a52f70d361303efd84ba67e62276e5ada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
