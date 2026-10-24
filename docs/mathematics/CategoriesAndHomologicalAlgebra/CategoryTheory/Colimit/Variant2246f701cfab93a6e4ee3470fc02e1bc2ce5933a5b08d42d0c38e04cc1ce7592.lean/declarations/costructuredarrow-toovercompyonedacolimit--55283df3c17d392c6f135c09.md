# CostructuredArrow.toOverCompYonedaColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cf3f638ca19145efebc7ae71c48c3a8f018bfef9887df8c5522c2327fb19387",
  "kind": "def",
  "lexical_name": "CostructuredArrow.toOverCompYonedaColimit",
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
  "slug": "costructuredarrow-toovercompyonedacolimit--55283df3c17d392c6f135c09",
  "source": {
    "blob": "f16229078e37a15bdfeaea43d5e7e40bc23e1e78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant2246f701cfab93a6e4ee3470fc02e1bc2ce5933a5b08d42d0c38e04cc1ce7592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55283df3c17d392c6f135c096f98c29ccc36d0d984a0612a5eb916a0547ccf00",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant2246f701cfab93a6e4ee3470fc02e1bc2ce5933a5b08d42d0c38e04cc1ce7592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cf3f638ca19145efebc7ae71c48c3a8f018bfef9887df8c5522c2327fb19387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def CostructuredArrow.toOverCompYonedaColimit :
    (CostructuredArrow.toOver yoneda A).op ⋙ yoneda.obj (colimit F) ≅
    (CostructuredArrow.toOver yoneda A).op ⋙ colimit (F ⋙ yoneda) := calc
  (CostructuredArrow.toOver yoneda A).op ⋙ yoneda.obj (colimit F)
    ≅ yoneda.op ⋙ yoneda.obj (E.obj (colimit F)) :=
        CostructuredArrow.toOverCompYoneda A _
  _ ≅ yoneda.op ⋙ yoneda.obj (colimit (F ⋙ E)) :=
        isoWhiskerLeft yoneda.op (yoneda.mapIso (preservesColimitIso _ F))
  _ ≅ yoneda.op ⋙ colimit ((F ⋙ E) ⋙ yoneda) :=
        yonedaYonedaColimit _
  _ ≅ yoneda.op ⋙ ((F ⋙ E) ⋙ yoneda).flip ⋙ colim :=
        isoWhiskerLeft _ (colimitIsoFlipCompColim _)
  _ ≅ (yoneda.op ⋙ coyoneda ⋙ (whiskeringLeft _ _ _).obj E) ⋙
          (whiskeringLeft _ _ _).obj F ⋙ colim :=
        Iso.refl _
  _ ≅ (CostructuredArrow.toOver yoneda A).op ⋙ coyoneda ⋙ (whiskeringLeft _ _ _).obj F ⋙ colim :=
        isoWhiskerRight (CostructuredArrow.toOverCompCoyoneda _).symm _
  _ ≅ (CostructuredArrow.toOver yoneda A).op ⋙ (F ⋙ yoneda).flip ⋙ colim :=
        Iso.refl _
  _ ≅ (CostructuredArrow.toOver yoneda A).op ⋙ colimit (F ⋙ yoneda) :=
      isoWhiskerLeft _ (colimitIsoFlipCompColim _).symm

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant2246f701cfab93a6e4ee3470fc02e1bc2ce5933a5b08d42d0c38e04cc1ce7592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant2246f701cfab93a6e4ee3470fc02e1bc2ce5933a5b08d42d0c38e04cc1ce7592.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16229078e37a15bdfeaea43d5e7e40bc23e1e78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
