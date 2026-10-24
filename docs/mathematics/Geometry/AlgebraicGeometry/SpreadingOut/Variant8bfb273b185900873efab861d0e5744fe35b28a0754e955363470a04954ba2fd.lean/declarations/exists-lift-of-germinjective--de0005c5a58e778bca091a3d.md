# exists_lift_of_germInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1d429c3-8f06-d871-a49d-c9779ec01dde",
  "kind": "lemma",
  "lexical_name": "exists_lift_of_germInjective",
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
  "slug": "exists-lift-of-germinjective--de0005c5a58e778bca091a3d",
  "source": {
    "blob": "ef13b5ad96266265cbfea56ba0f7d68252c237ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 280,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de0005c5a58e778bca091a3d1d8ef0a9ed93d4f02f592482063b92d98162c95d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1d429c3-8f06-d871-a49d-c9779ec01dde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma exists_lift_of_germInjective {x : X} [X.IsGermInjectiveAt x] {U : X.Opens} (hxU : x ∈ U)
    (φ : A ⟶ X.presheaf.stalk x) (φRA : R ⟶ A) (φRX : R ⟶ Γ(X, U))
    (hφRA : RingHom.FiniteType φRA.hom)
    (e : φRA ≫ φ = φRX ≫ X.presheaf.germ U x hxU) :
    ∃ (V : X.Opens) (hxV : x ∈ V) (φ' : A ⟶ Γ(X, V)) (i : V ≤ U), IsAffineOpen V ∧
      φ = φ' ≫ X.presheaf.germ V x hxV ∧ φRX ≫ X.presheaf.map i.hom.op = φRA ≫ φ' := by
  obtain ⟨V, hxV, iVU, hV⟩ := exists_lift_of_germInjective_aux hxU φ φRA φRX hφRA e
  obtain ⟨V', hxV', hV', iV'V, H⟩ := X.exists_le_and_germ_injective x V hxV
  let f := X.presheaf.germ V' x hxV'
  have hf' : RingHom.range (X.presheaf.germ V x hxV).hom ≤ RingHom.range f.hom := by
    rw [← X.presheaf.germ_res iV'V.hom _ hxV']
    exact Set.range_comp_subset_range (X.presheaf.map iV'V.hom.op) f
  let e := RingEquiv.ofLeftInverse H.hasLeftInverse.choose_spec
  refine ⟨V', hxV', CommRingCat.ofHom (e.symm.toRingHom.comp
    (φ.hom.codRestrict _ (fun x ↦ hf' (hV ⟨x, rfl⟩)))), iV'V.trans iVU, hV', ?_, ?_⟩
  · ext a
    show φ a = (e (e.symm _)).1
    simp only [RingEquiv.apply_symm_apply]
    rfl
  · ext a
    apply e.injective
    show e _ = e (e.symm _)
    rw [RingEquiv.apply_symm_apply]
    ext
    show X.presheaf.germ _ _ _ (X.presheaf.map _ _) = (φRA ≫ φ) a
    rw [TopCat.Presheaf.germ_res_apply, ‹φRA ≫ φ = _›]
    rfl

/--
Given `S`-schemes `X Y` and points `x : X` `y : Y` over `s : S`.
Suppose we have the following diagram of `S`-schemes
```
Spec 𝒪_{X, x} ⟶ X
    |
  Spec(φ)
    ↓
Spec 𝒪_{Y, y} ⟶ Y
```
Then the map `Spec(φ)` spreads out to an `S`-morphism on an open subscheme `U ⊆ X`,
```
Spec 𝒪_{X, x} ⟶ U ⊆ X
    |             |
  Spec(φ)         |
    ↓             ↓
Spec 𝒪_{Y, y} ⟶ Y
```
provided that `Y` is locally of finite type over `S` and
`X` is "germ-injective" at `x` (e.g. when it's integral or locally noetherian).

TODO: The condition on `X` is unnecessary when `Y` is locally of finite presentation.
-/
@[stacks 0BX6]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef13b5ad96266265cbfea56ba0f7d68252c237ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
