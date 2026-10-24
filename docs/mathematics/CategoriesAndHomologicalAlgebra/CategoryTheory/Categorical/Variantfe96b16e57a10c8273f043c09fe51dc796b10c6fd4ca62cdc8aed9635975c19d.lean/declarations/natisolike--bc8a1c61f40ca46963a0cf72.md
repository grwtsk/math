# NatIsoLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc22ab0be4875ca892d83adacebf9b8d5728be6fe056c0f0340bf078827e0b6c",
  "kind": "structure",
  "lexical_name": "NatIsoLike",
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
  "slug": "natisolike--bc8a1c61f40ca46963a0cf72",
  "source": {
    "blob": "565449703703ec99c7f4158dcc3a0ad8a0278a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc8a1c61f40ca46963a0cf72d7016731a9b9b8164ca674565e02991b94d1515b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc22ab0be4875ca892d83adacebf9b8d5728be6fe056c0f0340bf078827e0b6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NatIsoLike
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F G : FunctorLike C D) where
  app : ∀ X : C.Obj, IsoLike D (F.obj X) (G.obj X)
  naturality :
    ∀ {X Y : C.Obj} (f : C.Hom X Y),
      D.comp (F.map f) (app Y).hom =
      D.comp (app X).hom (G.map f)

/-- Type-valued quasi-inverse structure, including naturality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `565449703703ec99c7f4158dcc3a0ad8a0278a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
