# presheafHom_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cfa0f03-b7ad-f3ae-8dac-44e1d26274fe",
  "kind": "lemma",
  "lexical_name": "presheafHom_naturality",
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
  "slug": "presheafhom-naturality--ed75d5c6efa512059e68eb0c",
  "source": {
    "blob": "8ddb46af21d198d628c869af60087d04d52b185e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 558,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed75d5c6efa512059e68eb0ce29c055297fa995245492d661c4fb7fbe0510bed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cfa0f03-b7ad-f3ae-8dac-44e1d26274fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma presheafHom_naturality {P Q : Cᵒᵖ ⥤ Type max w v₁ v₂} (f : P ⟶ Q) :
    presheafHom.{w} φ P ≫ Functor.whiskerLeft F.op (G.map f) = f ≫ presheafHom φ Q :=
  hom_ext_uliftYoneda.{max w v₂} (fun X p ↦ uliftYonedaEquiv.injective (by
    rw [← assoc p f, uliftYonedaEquiv_ι_presheafHom, ← assoc,
      uliftYonedaEquiv_comp, uliftYonedaEquiv_ι_presheafHom,
      Functor.map_comp]
    dsimp))

variable [∀ (P : Cᵒᵖ ⥤ Type max w v₁ v₂), F.op.HasLeftKanExtension P]

set_option backward.defeqAttrib.useBackward true in
/-- Given functors `F : C ⥤ D` and `G : (Cᵒᵖ ⥤ Type max w v₁ v₂) ⥤ (Dᵒᵖ ⥤ Type max w v₁ v₂)`,
and a natural transformation `φ : F ⋙ uliftYoneda ⟶ uliftYoneda ⋙ G`, this is
the canonical natural transformation `F.op.lan ⟶ G`, which is part of the
fact that `F.op.lan : (Cᵒᵖ ⥤ Type max w v₁ v₂) ⥤ Dᵒᵖ ⥤ Type max w v₁ v₂`
is the left Kan extension of `F ⋙ uliftYoneda : C ⥤ Dᵒᵖ ⥤ Type max w v₁ v₂`
along `uliftYoneda : C ⥤ Cᵒᵖ ⥤ Type max w v₁ v₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ddb46af21d198d628c869af60087d04d52b185e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
