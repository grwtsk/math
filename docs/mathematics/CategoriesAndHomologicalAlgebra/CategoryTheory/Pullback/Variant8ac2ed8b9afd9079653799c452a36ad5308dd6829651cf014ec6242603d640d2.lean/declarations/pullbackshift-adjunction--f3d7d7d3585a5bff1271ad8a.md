# PullbackShift.adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ef69b28d32ed9bb079797072c4566abd0e62dd07d0f98fadc6539c491d884fa",
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
  "slug": "pullbackshift-adjunction--f3d7d7d3585a5bff1271ad8a",
  "source": {
    "blob": "677561904d108a2da2ed944f2ddaed335d0a9d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 271,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3d7d7d3585a5bff1271ad8a19b8d89b18ef9984e6f0f6730cfbf9ab36fd5364",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ef69b28d32ed9bb079797072c4566abd0e62dd07d0f98fadc6539c491d884fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–292.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `677561904d108a2da2ed944f2ddaed335d0a9d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
