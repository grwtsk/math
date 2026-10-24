# endEquivSectionsFibers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d9902acc420a1eb27e76739a35ba7002ba1827ff331f6ca7b7687beea3e844b",
  "kind": "def",
  "lexical_name": "endEquivSectionsFibers",
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
  "slug": "endequivsectionsfibers--3c74840b61ff49e445c89bc2",
  "source": {
    "blob": "fc500c5bbe4e11feef5890e4426dadac24d6a056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 293,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c74840b61ff49e445c89bc2b9acbf30090e584e309eba996989aa68db1635d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d9902acc420a1eb27e76739a35ba7002ba1827ff331f6ca7b7687beea3e844b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def endEquivSectionsFibers : End F ≃ (incl F ⋙ F').sections :=
  let i1 : End F ≃ End F' :=
    (FullyFaithful.whiskeringRight (FullyFaithful.ofFullyFaithful FintypeCat.incl) C).homEquiv
  let i2 : End F' ≅ (colimit ((incl F).op ⋙ coyoneda) ⟶ F') :=
    (yoneda.obj (F ⋙ FintypeCat.incl)).mapIso (colimit.isoColimitCocone ⟨cocone F, isColimit F⟩).op
  let i3 : (colimit ((incl F).op ⋙ coyoneda) ⟶ F') ≅ limit ((incl F ⋙ F') ⋙ uliftFunctor.{u₁}) :=
    colimitCoyonedaHomIsoLimit' (incl F) F'
  let i4 : limit (incl F ⋙ F' ⋙ uliftFunctor.{u₁}) ≃ ((incl F ⋙ F') ⋙ uliftFunctor.{u₁}).sections :=
    Types.limitEquivSections (incl F ⋙ (F ⋙ FintypeCat.incl) ⋙ uliftFunctor.{u₁, u₂})
  let i5 : ((incl F ⋙ F') ⋙ uliftFunctor.{u₁}).sections ≃ (incl F ⋙ F').sections :=
    (Types.sectionsEquiv (incl F ⋙ F')).symm
  i1.trans <| i2.toEquiv.trans <| i3.toEquiv.trans <| i4.trans i5

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc500c5bbe4e11feef5890e4426dadac24d6a056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
