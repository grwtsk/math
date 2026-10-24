# colimitYonedaHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:601e2947a93c3577ba10c5a3179cb1dc902c1d442992f3aa9bd0ed6b6353acc1",
  "kind": "def",
  "lexical_name": "colimitYonedaHomEquiv",
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
  "slug": "colimityonedahomequiv--ea75b50631733d67bee69491",
  "source": {
    "blob": "aa40bde3866e7d6013afb530afbf094a5bafcdc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea75b50631733d67bee6949124cc5cfdaca655c796e6a47c5c5a0c827e3d705f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:601e2947a93c3577ba10c5a3179cb1dc902c1d442992f3aa9bd0ed6b6353acc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def colimitYonedaHomEquiv : (colimit (F ⋙ yoneda) ⟶ G) ≃ limit (F.op ⋙ G) :=
  Equiv.symm <| Equiv.ulift.symm.trans <| Equiv.symm <| Iso.toEquiv <| calc
  (colimit (F ⋙ yoneda) ⟶ G) ≅ limit (F.op ⋙ G ⋙ uliftFunctor.{u}) :=
        colimitYonedaHomIsoLimitOp _ _
  _ ≅ limit ((F.op ⋙ G) ⋙ uliftFunctor.{u}) :=
        HasLimit.isoOfNatIso (Functor.associator _ _ _).symm
  _ ≅ uliftFunctor.{u}.obj (limit (F.op ⋙ G)) :=
        (preservesLimitIso _ _).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantbfdf6cccb9934e720813f717e3cb9c5df8b6cff744c354c90458340b5a137b71.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa40bde3866e7d6013afb530afbf094a5bafcdc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
