# realize_genericPolyMapSurjOnOfInjOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84202b81-9e5d-ff4f-4c3f-fd5905ce8c09",
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
  "slug": "realize-genericpolymapsurjonofinjon--9a22c0f619d99dc697e7fa3b",
  "source": {
    "blob": "feeaac216672146d2ea8b3aebd31019488e7e0f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantf4a7393b263ca39a21cd35df6225e582dd62aee1737b5f8f3c254efb393d60d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a22c0f619d99dc697e7fa3bebf567ceb7e1ea8d8561c057af9133366a872154",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantf4a7393b263ca39a21cd35df6225e582dd62aee1737b5f8f3c254efb393d60d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84202b81-9e5d-ff4f-4c3f-fd5905ce8c09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realize_genericPolyMapSurjOnOfInjOn
    [Finite ι] (φ : ring.Formula (α ⊕ ι)) (mons : ι → Finset (ι →₀ ℕ)) :
    (K ⊨ genericPolyMapSurjOnOfInjOn φ mons) ↔
      ∀ (v : α → K) (p : { p : ι → MvPolynomial ι K // (∀ i, (p i).support ⊆ mons i) }),
        let f : (ι → K) → (ι → K) := fun v i => eval v (p.1 i)
        let S : Set (ι → K) := {x | φ.Realize (Sum.elim v x)}
        S.MapsTo f S → S.InjOn f → S.SurjOn f S := by
  classical
  have injOnAlt : ∀ {S : Set (ι → K)} (f : (ι → K) → (ι → K)),
      S.InjOn f ↔ ∀ x y, x ∈ S → y ∈ S → f x = f y → x = y := by
    simp [Set.InjOn]; tauto
  simp only [Sentence.Realize, Formula.Realize, genericPolyMapSurjOnOfInjOn, Formula.relabel,
    Function.comp_def, Sum.map, id_eq, Equiv.sumAssoc, Equiv.coe_fn_symm_mk, Sum.elim_inr,
    realize_iAlls, realize_imp, realize_relabel, Fin.natAdd_zero, realize_subst, realize_iInf,
    realize_bdEqual, Term.realize_relabel,
    Equiv.forall_congr_left (Equiv.curry (Fin 2) ι K), Equiv.curry_symm_apply,
    Fin.forall_fin_succ_pi, Fin.forall_fin_zero_pi, realize_iExs, realize_inf, Sum.forall_sum,
    Set.MapsTo, Set.mem_ofPred_eq, injOnAlt, funext_iff, Set.SurjOn, Set.image,
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantf4a7393b263ca39a21cd35df6225e582dd62aee1737b5f8f3c254efb393d60d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantf4a7393b263ca39a21cd35df6225e582dd62aee1737b5f8f3c254efb393d60d1.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feeaac216672146d2ea8b3aebd31019488e7e0f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
