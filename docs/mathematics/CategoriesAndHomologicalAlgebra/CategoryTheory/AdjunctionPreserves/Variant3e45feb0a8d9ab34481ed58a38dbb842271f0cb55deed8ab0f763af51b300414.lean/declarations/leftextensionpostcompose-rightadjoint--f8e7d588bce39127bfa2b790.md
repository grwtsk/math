# leftExtensionPostCompose₂RightAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e9492dda136d5e55eee77daf631eeec5b09ce4caa85adc7b549aa916c3fa94f",
  "kind": "def",
  "lexical_name": "leftExtensionPostCompose₂RightAdjoint",
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
  "slug": "leftextensionpostcompose-rightadjoint--f8e7d588bce39127bfa2b790",
  "source": {
    "blob": "90d2744260d8e19f7cf578bf7b7f7f8e314ff1cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant3e45feb0a8d9ab34481ed58a38dbb842271f0cb55deed8ab0f763af51b300414.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8e7d588bce39127bfa2b7900c1abfc3de74142436a71623626dbbdd035ca4bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant3e45feb0a8d9ab34481ed58a38dbb842271f0cb55deed8ab0f763af51b300414.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e9492dda136d5e55eee77daf631eeec5b09ce4caa85adc7b549aa916c3fa94f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftExtensionPostCompose₂RightAdjoint :
    L.LeftExtension (F ⋙ G₁) ⥤ L.LeftExtension F :=
  StructuredArrow.map₂ (F := (whiskeringRight _ _ _).obj G₂)
    (G := (whiskeringRight _ _ _).obj G₂)
    (F.rightUnitor.inv ≫ whiskerLeft F adj.unit ≫ (associator _ _ _).inv)
    { app _ := (associator _ _ _).hom }

set_option backward.isDefEq.respectTransparency false in
set_option backward.defeqAttrib.useBackward true in
/-- The adjunction exhibiting that `LeftExtension.postcompose₂ L F G₁` has a right adjoint
when `G₁` has. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant3e45feb0a8d9ab34481ed58a38dbb842271f0cb55deed8ab0f763af51b300414.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant3e45feb0a8d9ab34481ed58a38dbb842271f0cb55deed8ab0f763af51b300414.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90d2744260d8e19f7cf578bf7b7f7f8e314ff1cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
