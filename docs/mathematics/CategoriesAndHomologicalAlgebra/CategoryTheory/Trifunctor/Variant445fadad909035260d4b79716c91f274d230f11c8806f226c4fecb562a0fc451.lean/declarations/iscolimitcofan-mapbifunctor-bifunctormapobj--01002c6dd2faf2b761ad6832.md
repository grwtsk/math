# isColimitCofan₃MapBifunctor₁₂BifunctorMapObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edc307f4099d8de85120c0f699267243abe31146b6f7749540909857c6463b14",
  "kind": "def",
  "lexical_name": "isColimitCofan₃MapBifunctor₁₂BifunctorMapObj",
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
  "slug": "iscolimitcofan-mapbifunctor-bifunctormapobj--01002c6dd2faf2b761ad6832",
  "source": {
    "blob": "299be7938d2c77392c4681e50faa5a9b864cb525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 321,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01002c6dd2faf2b761ad6832277ed9840e1babbd3dfc9434661e299a2fe8d2b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edc307f4099d8de85120c0f699267243abe31146b6f7749540909857c6463b14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitCofan₃MapBifunctor₁₂BifunctorMapObj (j : J) :
    IsColimit (cofan₃MapBifunctor₁₂BifunctorMapObj F₁₂ G ρ₁₂ X₁ X₂ X₃ j) := by
  let c₁₂ := fun i₁₂ => (((mapBifunctor F₁₂ I₁ I₂).obj X₁).obj X₂).cofanMapObj ρ₁₂.p i₁₂
  have h₁₂ : ∀ i₁₂, IsColimit (c₁₂ i₁₂) := fun i₁₂ =>
    (((mapBifunctor F₁₂ I₁ I₂).obj X₁).obj X₂).isColimitCofanMapObj ρ₁₂.p i₁₂
  let c := (((mapBifunctor G ρ₁₂.I₁₂ I₃).obj
    (mapBifunctorMapObj F₁₂ ρ₁₂.p X₁ X₂)).obj X₃).cofanMapObj ρ₁₂.q j
  have hc : IsColimit c := (((mapBifunctor G ρ₁₂.I₁₂ I₃).obj
    (mapBifunctorMapObj F₁₂ ρ₁₂.p X₁ X₂)).obj X₃).isColimitCofanMapObj ρ₁₂.q j
  let c₁₂' := fun (i : ρ₁₂.q ⁻¹' {j}) => (G.flip.obj (X₃ i.1.2)).mapCocone (c₁₂ i.1.1)
  have hc₁₂' : ∀ i, IsColimit (c₁₂' i) := fun i => isColimitOfPreserves _ (h₁₂ i.1.1)
  let Z := (((mapTrifunctor (bifunctorComp₁₂ F₁₂ G) I₁ I₂ I₃).obj X₁).obj X₂).obj X₃
  let p' : I₁ × I₂ × I₃ → ρ₁₂.I₁₂ × I₃ := fun ⟨i₁, i₂, i₃⟩ => ⟨ρ₁₂.p ⟨i₁, i₂⟩, i₃⟩
  let e : ∀ (i₁₂ : ρ₁₂.I₁₂) (i₃ : I₃), p' ⁻¹' {(i₁₂, i₃)} ≃ ρ₁₂.p ⁻¹' {i₁₂} := fun i₁₂ i₃ =>
    { toFun := fun ⟨⟨i₁, i₂, i₃'⟩, hi⟩ => ⟨⟨i₁, i₂⟩, by aesop_cat⟩
      invFun := fun ⟨⟨i₁, i₂⟩, hi⟩ => ⟨⟨i₁, i₂, i₃⟩, by aesop_cat⟩
      left_inv := fun ⟨⟨i₁, i₂, i₃'⟩, hi⟩ => by
        obtain rfl : i₃ = i₃' := by aesop_cat
        rfl
      right_inv := fun _ => rfl }
  let c₁₂'' : ∀ (i : ρ₁₂.q ⁻¹' {j}), CofanMapObjFun Z p' (i.1.1, i.1.2) :=
    fun ⟨⟨i₁₂, i₃⟩, hi⟩ => by
      refine (Cocones.precompose (Iso.hom ?_)).obj ((Cocones.whiskeringEquivalence
        (Discrete.equivalence (e i₁₂ i₃))).functor.obj (c₁₂' ⟨⟨i₁₂, i₃⟩, hi⟩))
      refine (Discrete.natIso (fun ⟨⟨i₁, i₂, i₃'⟩, hi⟩ =>
        (G.obj ((F₁₂.obj (X₁ i₁)).obj (X₂ i₂))).mapIso (eqToIso ?_)))
      obtain rfl : i₃' = i₃ := congr_arg _root_.Prod.snd hi
      rfl
  have h₁₂'' : ∀ i, IsColimit (c₁₂'' i) := fun _ =>
    (IsColimit.precomposeHomEquiv _ _).symm (IsColimit.whiskerEquivalenceEquiv _ (hc₁₂' _))
  refine IsColimit.ofIsoColimit (isColimitCofanMapObjComp Z p' ρ₁₂.q r ρ₁₂.hpq j
    (fun ⟨i₁₂, i₃⟩ h => c₁₂'' ⟨⟨i₁₂, i₃⟩, h⟩) (fun ⟨i₁₂, i₃⟩ h => h₁₂'' ⟨⟨i₁₂, i₃⟩, h⟩) c hc)
    (Cocones.ext (Iso.refl _) (fun ⟨⟨i₁, i₂, i₃⟩, h⟩ => ?_))
  dsimp [Cofan.inj, c₁₂'', Z, p']
  rw [comp_id, Functor.map_id, id_comp]
  rfl

variable {F₁₂ G ρ₁₂ X₁ X₂ X₃}

include ρ₁₂ in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299be7938d2c77392c4681e50faa5a9b864cb525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
