# IsStableUnderUnitor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62a7f79fc22719126f4a10828874a381f7174503bde0afdf0df14490c9ea876b",
  "kind": "class",
  "lexical_name": "IsStableUnderUnitor",
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
  "slug": "isstableunderunitor--183893ecf4627413e15f27dc",
  "source": {
    "blob": "d8f1e02c3d13a82e059f4051ea03753a0794a929",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variant3802b9845b1816c14d9de5cc0c48e265a54285fb8eaf9f0b76dfcacebf286170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:183893ecf4627413e15f27dc5083911390fbe17685875072260b56cfd3938dc8",
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

Occurrence: `declaration:62a7f79fc22719126f4a10828874a381f7174503bde0afdf0df14490c9ea876b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsStableUnderUnitor (P : MorphismProperty C) : Prop where
  leftUnitor_hom_mem (P) (c : C) : P ((λ_ c).hom)
  leftUnitor_inv_mem (P) (c : C) : P ((λ_ c).inv)
  rightUnitor_hom_mem (P) (c : C) : P ((ρ_ c).hom)
  rightUnitor_inv_mem (P) (c : C) : P ((ρ_ c).inv)

export IsStableUnderUnitor (leftUnitor_hom_mem leftUnitor_inv_mem rightUnitor_hom_mem
  rightUnitor_inv_mem)

/-- A morphism property stable under tensoring, associators, and unitors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variant3802b9845b1816c14d9de5cc0c48e265a54285fb8eaf9f0b76dfcacebf286170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variant3802b9845b1816c14d9de5cc0c48e265a54285fb8eaf9f0b76dfcacebf286170.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f1e02c3d13a82e059f4051ea03753a0794a929` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
