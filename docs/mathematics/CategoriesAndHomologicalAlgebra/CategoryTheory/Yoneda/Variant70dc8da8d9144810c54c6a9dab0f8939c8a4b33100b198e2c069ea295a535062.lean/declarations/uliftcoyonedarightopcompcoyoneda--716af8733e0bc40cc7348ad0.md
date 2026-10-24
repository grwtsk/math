# uliftCoyonedaRightOpCompCoyoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:876470fa71b181743da6ef0a9cf3895ffd7112b5be2458048806dcdf3655187f",
  "kind": "def",
  "lexical_name": "uliftCoyonedaRightOpCompCoyoneda",
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
  "slug": "uliftcoyonedarightopcompcoyoneda--716af8733e0bc40cc7348ad0",
  "source": {
    "blob": "0c52b8b6c7dcfd34a99a67297f6ac4ad565bdab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1236,
    "line": 1211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:716af8733e0bc40cc7348ad0584b57b7933e04de6a12acd5546665b67eda5f19",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:876470fa71b181743da6ef0a9cf3895ffd7112b5be2458048806dcdf3655187f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1211–1236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uliftCoyonedaRightOpCompCoyoneda {C : Type u₁} [Category.{v₁} C] :
    uliftCoyoneda.{w}.rightOp ⋙ coyoneda ≅
      evaluation C (Type (max v₁ w)) ⋙ (whiskeringRight _ _ _).obj uliftFunctor.{u₁} :=
  NatIso.ofComponents
    (fun X => NatIso.ofComponents
      (fun _ => Equiv.toIso <| uliftCoyonedaEquiv.trans Equiv.ulift.symm)
      (by
        intros Y Z f
        ext g
        rw [← ULift.down_inj]
        simpa using uliftCoyonedaEquiv_comp _ _))
    (by
      intros Y Z f
      ext F g
      rw [← ULift.down_inj]
      simpa using (uliftCoyonedaEquiv_naturality _ _).symm)

end CoyonedaLemma

section

variable {C}
variable {D : Type*} [Category.{v₁} D] (F : C ⥤ D)

/-- The natural transformation `yoneda.obj X ⟶ F.op ⋙ yoneda.obj (F.obj X)`
when `F : C ⥤ D` and `X : C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean#L1211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c52b8b6c7dcfd34a99a67297f6ac4ad565bdab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
