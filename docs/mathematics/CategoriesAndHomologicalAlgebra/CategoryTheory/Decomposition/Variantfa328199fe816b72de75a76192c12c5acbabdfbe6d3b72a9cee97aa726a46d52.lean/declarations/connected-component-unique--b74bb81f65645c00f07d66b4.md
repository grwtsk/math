# connected_component_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e677e57bba4bf43c32315a095e9a02efd3ccd9e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c65192be-d00d-d9c8-9a2e-0127dd813e2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bc8c66d-7ef8-5b8e-11c1-de1c6512198c",
  "kind": "lemma",
  "lexical_name": "connected_component_unique",
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
  "slug": "connected-component-unique--b74bb81f65645c00f07d66b4",
  "source": {
    "blob": "e677e57bba4bf43c32315a095e9a02efd3ccd9e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b74bb81f65645c00f07d66b49b3ca86ae5ba54b70332474b78b7adb27205e0ae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bc8c66d-7ef8-5b8e-11c1-de1c6512198c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma connected_component_unique {X A B : C} [IsConnected A] [IsConnected B] (a : F.obj A)
    (b : F.obj B) (i : A ⟶ X) (j : B ⟶ X) (h : F.map i a = F.map j b) [Mono i] [Mono j] :
    ∃ (f : A ≅ B), F.map f.hom a = b := by
  /- We consider the fiber product of A and B over X. This is a non-empty (because of `h`)
  subobject of `A` and `B` and hence isomorphic to `A` and `B` by connectedness. -/
  let Y : C := pullback i j
  let u : Y ⟶ A := pullback.fst i j
  let v : Y ⟶ B := pullback.snd i j
  let G := F ⋙ FintypeCat.incl
  let e : F.obj Y ≃ { p : F.obj A × F.obj B // F.map i p.1 = F.map j p.2 } :=
    fiberPullbackEquiv F i j
  let y : F.obj Y := e.symm ⟨(a, b), h⟩
  have hn : IsInitial Y → False := not_initial_of_inhabited F y
  have : IsIso u := IsConnected.noTrivialComponent Y u hn
  have : IsIso v := IsConnected.noTrivialComponent Y v hn
  use (asIso u).symm ≪≫ asIso v
  have hu : G.map u y = a := fiberPullbackEquiv_symm_fst_apply _ _ _ h
  have hv : G.map v y = b := fiberPullbackEquiv_symm_snd_apply _ _ _ h
  rw [← hu, ← hv]
  change (F.map u ≫ F.map _) y = F.map v y
  simp only [← F.map_comp, Iso.trans_hom, Iso.symm_hom, asIso_inv, asIso_hom,
    IsIso.hom_inv_id_assoc]

end Decomposition

section GaloisRep

/-! ### Galois representative of fiber

If `X` is any object, then its fiber is represented by some Galois object: There exists
a Galois object `A` and an element `a` in the fiber of `A` such that the
evaluation at `a` from `A ⟶ X` to `F.obj X` is bijective.

To show this we consider the product `∏ᶜ (fun _ : F.obj X ↦ X)` and let `A`
be the connected component whose fiber contains the element `a` in the fiber of the self product
that has at each index `x : F.obj X` the element `x`.

This `A` is Galois and evaluation at `a` is bijective.

Reference: [lenstraGSchemes, 3.14]

-/

variable [GaloisCategory C] (F : C ⥤ FintypeCat.{w}) [FiberFunctor F]

section GaloisRepAux

variable (X : C)

set_option backward.privateInPublic true in
/-- The self product of `X` indexed by its fiber. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e677e57bba4bf43c32315a095e9a02efd3ccd9e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
