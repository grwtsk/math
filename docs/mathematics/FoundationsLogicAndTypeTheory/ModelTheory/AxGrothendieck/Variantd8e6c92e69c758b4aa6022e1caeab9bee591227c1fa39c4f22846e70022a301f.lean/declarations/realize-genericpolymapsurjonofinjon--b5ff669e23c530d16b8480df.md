# realize_genericPolyMapSurjOnOfInjOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64c6c5d44b25cffcb3e070cf00fca0267085d050",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23f59ce9-4f2c-9352-bc20-b4ce4bbe5333",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b971265a-7f81-0664-4cea-f3ef28ed5681",
  "kind": "theorem",
  "lexical_name": "realize_genericPolyMapSurjOnOfInjOn",
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
  "slug": "realize-genericpolymapsurjonofinjon--b5ff669e23c530d16b8480df",
  "source": {
    "blob": "64c6c5d44b25cffcb3e070cf00fca0267085d050",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5ff669e23c530d16b8480dfd49b83dd285c0b6ac7de9d396c0f6327198d250f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b971265a-7f81-0664-4cea-f3ef28ed5681`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realize_genericPolyMapSurjOnOfInjOn
    [Finite ι] (φ : ring.Formula (α ⊕ ι)) (mons : ι → Finset (ι →₀ ℕ)) :
    (K ⊨ genericPolyMapSurjOnOfInjOn φ mons) ↔
      ∀ (v : α → K) (p : { p : ι → MvPolynomial ι K // (∀ i, (p i).support ⊆ mons i) }),
        let f : (ι → K) → (ι → K) := fun v i => eval v (p.1 i)
        let S : Set (ι → K) := fun x => φ.Realize (Sum.elim v x)
        S.MapsTo f S → S.InjOn f → S.SurjOn f S := by
  classical
  have injOnAlt : ∀ {S : Set (ι → K)} (f : (ι → K) → (ι → K)),
      S.InjOn f ↔ ∀ x y, x ∈ S → y ∈ S → f x = f y → x = y := by
    simp [Set.InjOn]; tauto
  simp only [Sentence.Realize, Formula.Realize, genericPolyMapSurjOnOfInjOn, Formula.relabel,
    Function.comp_def, Sum.map, id_eq, Equiv.sumAssoc, Equiv.coe_fn_symm_mk, Sum.elim_inr,
    realize_iAlls, realize_imp, realize_relabel, Fin.natAdd_zero, realize_subst, realize_iInf,
    Finset.mem_univ, realize_bdEqual, Term.realize_relabel, true_imp_iff,
    Equiv.forall_congr_left (Equiv.curry (Fin 2) ι K), Equiv.curry_symm_apply, Function.uncurry,
    Fin.forall_fin_succ_pi, Fin.forall_fin_zero_pi, realize_iExs, realize_inf, Sum.forall_sum,
    Set.MapsTo, Set.mem_def, injOnAlt, funext_iff, Set.SurjOn, Set.image, setOf,
    Set.subset_def, Equiv.forall_congr_left (mvPolynomialSupportLEEquiv mons)]
  simp +singlePass only [← Sum.elim_comp_inl_inr]
  -- was `simp` and very slow (https://github.com/leanprover-community/mathlib4/issues/19751)
  simp only [Function.comp_def, Sum.elim_inl, Sum.elim_inr, Fin.castAdd_zero, Fin.cast_eq_self,
    Nat.add_zero, Term.realize_var, Term.realize_relabel, realize_termOfFreeCommRing,
    lift_genericPolyMap, Nat.reduceAdd, Fin.isValue, Function.uncurry_apply_pair, Fin.cons_zero,
    Fin.cons_one, ↓reduceIte, one_ne_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64c6c5d44b25cffcb3e070cf00fca0267085d050` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
