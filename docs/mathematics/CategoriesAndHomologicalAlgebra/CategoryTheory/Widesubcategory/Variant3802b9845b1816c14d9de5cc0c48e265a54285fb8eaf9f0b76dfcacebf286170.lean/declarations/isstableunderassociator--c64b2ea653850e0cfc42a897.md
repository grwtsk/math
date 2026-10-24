# IsStableUnderAssociator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd2ca55aba7f974f4e21edb058de4e94310eb476b96121a80f008e104f8626ae",
  "kind": "class",
  "lexical_name": "IsStableUnderAssociator",
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
  "slug": "isstableunderassociator--c64b2ea653850e0cfc42a897",
  "source": {
    "blob": "d8f1e02c3d13a82e059f4051ea03753a0794a929",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variant3802b9845b1816c14d9de5cc0c48e265a54285fb8eaf9f0b76dfcacebf286170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c64b2ea653850e0cfc42a897c7959d8849d36cf9cb771236f534016bdd2b7edd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variant3802b9845b1816c14d9de5cc0c48e265a54285fb8eaf9f0b76dfcacebf286170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd2ca55aba7f974f4e21edb058de4e94310eb476b96121a80f008e104f8626ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsStableUnderAssociator (P : MorphismProperty C) : Prop where
  associator_hom_mem (P) (c c' c'' : C) : P (α_ c c' c'').hom
  associator_inv_mem (P) (c c' c'' : C) : P (α_ c c' c'').inv

export IsStableUnderAssociator (associator_hom_mem associator_inv_mem)

/-- A morphism property stable under left and right unitor isomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variant3802b9845b1816c14d9de5cc0c48e265a54285fb8eaf9f0b76dfcacebf286170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variant3802b9845b1816c14d9de5cc0c48e265a54285fb8eaf9f0b76dfcacebf286170.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f1e02c3d13a82e059f4051ea03753a0794a929` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
