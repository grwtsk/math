# connected_component_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37f5ba335107f31df8a5f24f6b727f3a94be0cab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ceb9c1b-393a-4e6c-04df-ab26fcad6237",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef78484f-f301-a99f-1914-91d2e2dcfc89",
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
  "slug": "connected-component-unique--9ab977f3cc4d3f56e6aed897",
  "source": {
    "blob": "37f5ba335107f31df8a5f24f6b727f3a94be0cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 140,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ab977f3cc4d3f56e6aed897b34d2d52587143dd922bafd78640e04909cef2af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef78484f-f301-a99f-1914-91d2e2dcfc89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–198.

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
  have hu : G.map u y = a := by
    simp only [u, G, y, e, ← PreservesPullback.iso_hom_fst G, fiberPullbackEquiv,
      Iso.toEquiv_comp, Equiv.symm_trans_apply, Iso.toEquiv_symm_fun, types_comp_apply,
      inv_hom_id_apply]
    erw [Types.pullbackIsoPullback_inv_fst_apply (F.map i) (F.map j)]
  have hv : G.map v y = b := by
    simp only [v, G, y, e, ← PreservesPullback.iso_hom_snd G, fiberPullbackEquiv,
      Iso.toEquiv_comp, Equiv.symm_trans_apply, Iso.toEquiv_symm_fun, types_comp_apply,
      inv_hom_id_apply]
    erw [Types.pullbackIsoPullback_inv_snd_apply (F.map i) (F.map j)]
  rw [← hu, ← hv]
  show (F.toPrefunctor.map u ≫ F.toPrefunctor.map _) y = F.toPrefunctor.map v y
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

/-- The self product of `X` indexed by its fiber. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37f5ba335107f31df8a5f24f6b727f3a94be0cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
