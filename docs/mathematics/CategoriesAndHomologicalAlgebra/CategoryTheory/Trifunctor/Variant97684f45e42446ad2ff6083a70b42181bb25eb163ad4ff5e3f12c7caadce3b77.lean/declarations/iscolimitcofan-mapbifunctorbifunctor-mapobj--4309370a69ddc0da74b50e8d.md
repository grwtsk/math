# isColimitCofan₃MapBifunctorBifunctor₂₃MapObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:864fc3b7d1856bb9c532913f0d24b4b032b21b64b3df62aefebfdb7c987657bc",
  "kind": "def",
  "lexical_name": "isColimitCofan₃MapBifunctorBifunctor₂₃MapObj",
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
  "slug": "iscolimitcofan-mapbifunctorbifunctor-mapobj--4309370a69ddc0da74b50e8d",
  "source": {
    "blob": "d7117dfca04fa26e8df627c5369cfe89b02aef0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 517,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4309370a69ddc0da74b50e8df572c42b32d29a23deda1293e7da4338de9c310a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:864fc3b7d1856bb9c532913f0d24b4b032b21b64b3df62aefebfdb7c987657bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitCofan₃MapBifunctorBifunctor₂₃MapObj (j : J) :
    IsColimit (cofan₃MapBifunctorBifunctor₂₃MapObj F G₂₃ ρ₂₃ X₁ X₂ X₃ j) := by
  let c₂₃ := fun i₂₃ => (((mapBifunctor G₂₃ I₂ I₃).obj X₂).obj X₃).cofanMapObj ρ₂₃.p i₂₃
  have h₂₃ : ∀ i₂₃, IsColimit (c₂₃ i₂₃) := fun i₂₃ =>
    (((mapBifunctor G₂₃ I₂ I₃).obj X₂).obj X₃).isColimitCofanMapObj ρ₂₃.p i₂₃
  let c := (((mapBifunctor F I₁ ρ₂₃.I₂₃).obj X₁).obj
    (mapBifunctorMapObj G₂₃ ρ₂₃.p X₂ X₃)).cofanMapObj ρ₂₃.q j
  have hc : IsColimit c := (((mapBifunctor F I₁ ρ₂₃.I₂₃).obj X₁).obj
    (mapBifunctorMapObj G₂₃ ρ₂₃.p X₂ X₃)).isColimitCofanMapObj ρ₂₃.q j
  let c₂₃' := fun (i : ρ₂₃.q ⁻¹' {j}) => (F.obj (X₁ i.1.1)).mapCocone (c₂₃ i.1.2)
  have hc₂₃' : ∀ i, IsColimit (c₂₃' i) := fun i => isColimitOfPreserves _ (h₂₃ i.1.2)
  let Z := (((mapTrifunctor (bifunctorComp₂₃ F G₂₃) I₁ I₂ I₃).obj X₁).obj X₂).obj X₃
  let p' : I₁ × I₂ × I₃ → I₁ × ρ₂₃.I₂₃ := fun ⟨i₁, i₂, i₃⟩ => ⟨i₁, ρ₂₃.p ⟨i₂, i₃⟩⟩
  let e : ∀ (i₁ : I₁) (i₂₃ : ρ₂₃.I₂₃), p' ⁻¹' {(i₁, i₂₃)} ≃ ρ₂₃.p ⁻¹' {i₂₃} := fun i₁ i₂₃ =>
    { toFun := fun ⟨⟨i₁', i₂, i₃⟩, hi⟩ => ⟨⟨i₂, i₃⟩, by cat_disch⟩
      invFun := fun ⟨⟨i₂, i₃⟩, hi⟩  => ⟨⟨i₁, i₂, i₃⟩, by cat_disch⟩
      left_inv := fun ⟨⟨i₁', i₂, i₃⟩, hi⟩ => by
        obtain rfl : i₁ = i₁' := by cat_disch
        rfl }
  let c₂₃'' : ∀ (i : ρ₂₃.q ⁻¹' {j}), CofanMapObjFun Z p' (i.1.1, i.1.2) :=
    fun ⟨⟨i₁, i₂₃⟩, hi⟩ => by
      refine (Cocone.precompose (Iso.hom ?_)).obj ((Cocone.whiskeringEquivalence
        (Discrete.equivalence (e i₁ i₂₃))).functor.obj (c₂₃' ⟨⟨i₁, i₂₃⟩, hi⟩))
      refine Discrete.natIso (fun ⟨⟨i₁', i₂, i₃⟩, hi⟩ => eqToIso ?_)
      obtain rfl : i₁' = i₁ := congr_arg _root_.Prod.fst hi
      rfl
  have h₂₃'' : ∀ i, IsColimit (c₂₃'' i) := fun _ =>
    (IsColimit.precomposeHomEquiv _ _).symm (IsColimit.whiskerEquivalenceEquiv _ (hc₂₃' _))
  refine IsColimit.ofIsoColimit (isColimitCofanMapObjComp Z p' ρ₂₃.q r ρ₂₃.hpq j
    (fun ⟨i₁, i₂₃⟩ h => c₂₃'' ⟨⟨i₁, i₂₃⟩, h⟩) (fun ⟨i₁, i₂₃⟩ h => h₂₃'' ⟨⟨i₁, i₂₃⟩, h⟩) c hc)
    (Cocone.ext (Iso.refl _) (fun ⟨⟨i₁, i₂, i₃⟩, h⟩ => ?_))
  dsimp [Cofan.inj, c₂₃'', Z, p', e]
  rw [comp_id, id_comp]
  rfl

variable {X₁ X₂ X₃}

include ρ₂₃ in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7117dfca04fa26e8df627c5369cfe89b02aef0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
