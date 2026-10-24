# spread_out_of_isGermInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bd9a9f8-e862-e95d-25e3-cb04323c91d5",
  "kind": "lemma",
  "lexical_name": "spread_out_of_isGermInjective",
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
  "slug": "spread-out-of-isgerminjective--6f90f52690d1b653f41165fc",
  "source": {
    "blob": "ef13b5ad96266265cbfea56ba0f7d68252c237ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 332,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f90f52690d1b653f41165fcf4ef07f5521aa087971c851e10a44fec70a3fa2e",
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

Occurrence: `result:4bd9a9f8-e862-e95d-25e3-cb04323c91d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spread_out_of_isGermInjective [LocallyOfFiniteType sY] {x : X} [X.IsGermInjectiveAt x] {y : Y}
    (e : sX.base x = sY.base y) (φ : Y.presheaf.stalk y ⟶ X.presheaf.stalk x)
    (h : sY.stalkMap y ≫ φ =
      S.presheaf.stalkSpecializes (Inseparable.of_eq e).specializes ≫ sX.stalkMap x) :
    ∃ (U : X.Opens) (hxU : x ∈ U) (f : U.toScheme ⟶ Y),
      Spec.map φ ≫ Y.fromSpecStalk y = U.fromSpecStalkOfMem x hxU ≫ f ∧
      f ≫ sY = U.ι ≫ sX := by
  obtain ⟨_, ⟨U, hU, rfl⟩, hxU, -⟩ :=
    (isBasis_affine_open S).exists_subset_of_mem_open (Set.mem_univ (sX.base x)) isOpen_univ
  have hyU : sY.base y ∈ U := e ▸ hxU
  obtain ⟨_, ⟨V : Y.Opens, hV, rfl⟩, hyV, iVU⟩ :=
    (isBasis_affine_open Y).exists_subset_of_mem_open hyU (sY ⁻¹ᵁ U).2
  have : sY.appLE U V iVU ≫ Y.presheaf.germ V y hyV ≫ φ =
      sX.app U ≫ X.presheaf.germ (sX ⁻¹ᵁ U) x hxU := by
    rw [Scheme.Hom.appLE, Category.assoc, Y.presheaf.germ_res_assoc,
      ← Scheme.stalkMap_germ_assoc, h]
    simp
  obtain ⟨W, hxW, φ', i, hW, h₁, h₂⟩ :=
    exists_lift_of_germInjective (R := Γ(S, U)) (A := Γ(Y, V)) (U := sX ⁻¹ᵁ U) (x := x) hxU
    (Y.presheaf.germ _ y hyV ≫ φ) (sY.appLE U V iVU) (sX.app U)
    (LocallyOfFiniteType.finiteType_of_affine_subset ⟨_, hU⟩ ⟨_, hV⟩ _) this
  refine ⟨W, hxW, W.toSpecΓ ≫ Spec.map φ' ≫ hV.fromSpec, ?_, ?_⟩
  · rw [W.fromSpecStalkOfMem_toSpecΓ_assoc x hxW, ← Spec.map_comp_assoc, ← h₁,
      Spec.map_comp, Category.assoc, ← IsAffineOpen.fromSpecStalk,
      IsAffineOpen.fromSpecStalk_eq_fromSpecStalk]
  · simp only [Category.assoc, IsAffineOpen.isoSpec_inv_ι_assoc]
    rw [← IsAffineOpen.Spec_map_appLE_fromSpec sY hU hV iVU, ← Spec.map_comp_assoc, ← h₂,
      ← Scheme.Hom.appLE, ← hW.isoSpec_hom, IsAffineOpen.Spec_map_appLE_fromSpec sX hU hW i,
      ← Iso.eq_inv_comp, IsAffineOpen.isoSpec_inv_ι_assoc]

/--
Given `S`-schemes `X Y`, a point `x : X`, and a `S`-morphism `φ : Spec 𝒪_{X, x} ⟶ Y`,
we may spread it out to an `S`-morphism `f : U ⟶ Y`
provided that `Y` is locally of finite type over `S` and
`X` is "germ-injective" at `x` (e.g. when it's integral or locally noetherian).

TODO: The condition on `X` is unnecessary when `Y` is locally of finite presentation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef13b5ad96266265cbfea56ba0f7d68252c237ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
