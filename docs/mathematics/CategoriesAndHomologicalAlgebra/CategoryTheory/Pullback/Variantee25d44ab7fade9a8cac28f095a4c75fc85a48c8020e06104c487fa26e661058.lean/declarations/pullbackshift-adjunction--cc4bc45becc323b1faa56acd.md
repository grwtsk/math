# PullbackShift.adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:736bdb499f420693f07662850086239f914a7f56c914ba75d17e0bddc7e92452",
  "kind": "def",
  "lexical_name": "PullbackShift.adjunction",
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
  "slug": "pullbackshift-adjunction--cc4bc45becc323b1faa56acd",
  "source": {
    "blob": "07dd2d119fd2563e0022968b0f406dff2008b2ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 279,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc4bc45becc323b1faa56acd4c26427c20538ab98aaeb005821fca0526921cab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:736bdb499f420693f07662850086239f914a7f56c914ba75d17e0bddc7e92452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PullbackShift.adjunction {F} {G : D ⥤ C} (adj : F ⊣ G) :
    PullbackShift.functor φ F ⊣ PullbackShift.functor φ G where
  unit := (NatTrans.PullbackShift.natIsoId C φ).hom ≫
    PullbackShift.natTrans φ adj.unit ≫ (NatTrans.PullbackShift.natIsoComp φ F G).hom
  counit := (NatTrans.PullbackShift.natIsoComp φ G F).inv ≫
    PullbackShift.natTrans φ adj.counit ≫ (NatTrans.PullbackShift.natIsoId D φ).inv
  left_triangle_components _ := by
    simp [PullbackShift.natTrans, NatTrans.PullbackShift.natIsoComp,
      NatTrans.PullbackShift.natIsoId, PullbackShift.functor]
  right_triangle_components _ := by
    simp [PullbackShift.natTrans, NatTrans.PullbackShift.natIsoComp,
      NatTrans.PullbackShift.natIsoId, PullbackShift.functor]

namespace Adjunction

variable {F} {G : D ⥤ C} (adj : F ⊣ G) [G.CommShift B]

/--
If an adjunction `F ⊣ G` is compatible with `CommShift` structures on `F` and `G`, then
it is also compatible with the pulled back `CommShift` structures by an additive map
`φ : B →+ A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07dd2d119fd2563e0022968b0f406dff2008b2ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
