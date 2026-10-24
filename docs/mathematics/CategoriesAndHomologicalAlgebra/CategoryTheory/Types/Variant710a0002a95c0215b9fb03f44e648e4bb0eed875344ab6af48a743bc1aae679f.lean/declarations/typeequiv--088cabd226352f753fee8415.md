# typeEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:446dbe1da715ea318336ccbfa32f1bbeb1d6a662f64d3f9df9aaa210fb78a9b6",
  "kind": "def",
  "lexical_name": "typeEquiv",
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
  "slug": "typeequiv--088cabd226352f753fee8415",
  "source": {
    "blob": "f4f2eb8bbec95bca55a7c157feace34232433f4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:088cabd226352f753fee84154b5ecb15a560533b3e2239da4cb70edd1b86cd2b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:446dbe1da715ea318336ccbfa32f1bbeb1d6a662f64d3f9df9aaa210fb78a9b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def typeEquiv : Type u ≌ SheafOfTypes typesGrothendieckTopology :=
  Equivalence.mk yoneda' (sheafOfTypesToPresheaf _ ⋙ (evaluation _ _).obj (op PUnit))
    (NatIso.ofComponents
      (fun _α => -- α ≅ PUnit ⟶ α
        { hom := fun x _ => x
          inv := fun f => f PUnit.unit
          hom_inv_id := funext fun _ => rfl
          inv_hom_id := funext fun _ => funext fun y => PUnit.casesOn y rfl })
      fun _ => rfl)
    (Iso.symm <|
      NatIso.ofComponents (fun S => equivYoneda' S) fun {S₁ S₂} f =>
        SheafOfTypes.Hom.ext _ _ <|
          NatTrans.ext _ _ <|
            funext fun α => funext fun s => funext fun x => eval_app S₁ S₂ f (unop α) s x)
#align category_theory.type_equiv CategoryTheory.typeEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant710a0002a95c0215b9fb03f44e648e4bb0eed875344ab6af48a743bc1aae679f.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4f2eb8bbec95bca55a7c157feace34232433f4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
