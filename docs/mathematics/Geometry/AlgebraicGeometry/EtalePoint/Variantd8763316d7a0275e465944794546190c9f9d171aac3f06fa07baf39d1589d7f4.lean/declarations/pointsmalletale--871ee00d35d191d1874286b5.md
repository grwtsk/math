# pointSmallEtale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a049eb5396a00a8d3f29b47e19e404d4cc5d108c2dc195f874c295b9fc5c6c02",
  "kind": "def",
  "lexical_name": "pointSmallEtale",
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
  "slug": "pointsmalletale--871ee00d35d191d1874286b5",
  "source": {
    "blob": "9196c196f45d333d25801cd3e6362ca9fad948b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 72,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:871ee00d35d191d1874286b5f1ec5a880ea34799618172f4bd6daef19ec310d6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a049eb5396a00a8d3f29b47e19e404d4cc5d108c2dc195f874c295b9fc5c6c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pointSmallEtale : (smallEtaleTopology S).Point where
  fiber := Etale.forget S ⋙ coyoneda.obj (op (Over.mk s))
  initiallySmall :=
    initiallySmall_of_essentiallySmall_weakly_initial_objectProperty
      (Functor.Elements.precomp (AffineEtale.Spec S)
        (Etale.forget S ⋙ coyoneda.obj (op (Over.mk s)))).essImage (fun x ↦ by
      induction x with | @mk X x
      cases X with | _ Y f
      obtain ⟨y, hy, rfl⟩ := Over.homMk_surjective x
      dsimp at y hy
      obtain ⟨R, j, _, y', rfl⟩ : ∃ (R : CommRingCat) (j : Spec (.of R) ⟶ Y)
          (_ : IsOpenImmersion j) (y' : _ ⟶ _), y' ≫ j = y := by
        obtain ⟨R, j, _, hj, _⟩ := exists_affine_mem_range_and_range_subset
          (x := y.base default) (U := ⊤) (by simp)
        refine ⟨R, j, inferInstance, _, IsOpenImmersion.lift_fac j y ?_⟩
        rintro _ ⟨a, rfl⟩
        rwa [Subsingleton.elim a default]
      exact ⟨_,
        ⟨Functor.elementsMk _ (AffineEtale.mk (j ≫ f)) (Over.homMk y'), ⟨Iso.refl _⟩⟩,
        ⟨⟨MorphismProperty.Over.homMk j rfl (by simp), by cat_disch⟩⟩⟩)
  jointly_surjective {X} R hR φ := by
    cases X with | _ X f
    obtain ⟨φ : Spec (.of Ω) ⟶ X, rfl : φ ≫ f = s, rfl⟩ := Over.homMk_surjective φ
    obtain ⟨𝒰, h, _, le⟩ := (mem_smallGrothendieckTopology _ _).1 hR
    obtain ⟨i, y, hy⟩ := 𝒰.exists_eq (φ default)
    obtain ⟨l, hl₁, hl₂⟩ := exists_fac_of_etale_of_isSepClosed (𝒰.f i) φ _ hy
    have : 𝒰.f i ≫ f = 𝒰.X i ↘ S := HomIsOver.comp_over (f := 𝒰.f i) (S := S)
    exact ⟨(𝒰.X i).asOverProp S inferInstance,
      MorphismProperty.Over.homMk (𝒰.f i), le _ _ ⟨i⟩, Over.homMk l, by cat_disch⟩

variable {s₀ : S} (hs₀ : s default = s₀)

/-- Given a morphism `s : Spec (.of Ω) ⟶ S` with image `s₀ : S` where `Ω` is a
separably closed field, this is the canonical map
`(pointSmallEtale s).fiber.obj X ⟶ X.hom ⁻¹' {s₀}` for `X : S.Etale`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9196c196f45d333d25801cd3e6362ca9fad948b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
