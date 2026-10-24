# spread_out_of_isGermInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ea1da853c6efcb2335716ec01896185c7721e4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30383c68-370c-5679-dada-ae746cfb0ce9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46a92a92-54af-6651-11c4-23f5143c0eb9",
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
  "slug": "spread-out-of-isgerminjective--b7415135feec389083283e7d",
  "source": {
    "blob": "5ea1da853c6efcb2335716ec01896185c7721e4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 324,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7415135feec389083283e7d94a8728ada5238b79a222280eb04fd3830da63ba",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46a92a92-54af-6651-11c4-23f5143c0eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–361.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea1da853c6efcb2335716ec01896185c7721e4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
