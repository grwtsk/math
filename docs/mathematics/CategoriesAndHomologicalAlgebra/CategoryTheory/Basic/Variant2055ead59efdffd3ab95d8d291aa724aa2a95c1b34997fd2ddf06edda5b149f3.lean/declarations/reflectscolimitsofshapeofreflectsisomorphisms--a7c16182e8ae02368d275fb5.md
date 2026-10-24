# reflectsColimitsOfShapeOfReflectsIsomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ee5b67666ac31d548047683a4c298115df007043b409b108f2473ad2b8f155b",
  "kind": "def",
  "lexical_name": "reflectsColimitsOfShapeOfReflectsIsomorphisms",
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
  "slug": "reflectscolimitsofshapeofreflectsisomorphisms--a7c16182e8ae02368d275fb5",
  "source": {
    "blob": "579409d378a790398cf9a7ac566200b147e41132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 764,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2055ead59efdffd3ab95d8d291aa724aa2a95c1b34997fd2ddf06edda5b149f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7c16182e8ae02368d275fb5de2fbfb8f257e775d1ae4dff30f9b57746ac3c55",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2055ead59efdffd3ab95d8d291aa724aa2a95c1b34997fd2ddf06edda5b149f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ee5b67666ac31d548047683a4c298115df007043b409b108f2473ad2b8f155b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 764–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reflectsColimitsOfShapeOfReflectsIsomorphisms {G : C ⥤ D} [ReflectsIsomorphisms G]
    [HasColimitsOfShape J C] [PreservesColimitsOfShape J G] : ReflectsColimitsOfShape J G
    where reflectsColimit {F} := reflectsColimitOfReflectsIsomorphisms F G
#align category_theory.limits.reflects_colimits_of_shape_of_reflects_isomorphisms CategoryTheory.Limits.reflectsColimitsOfShapeOfReflectsIsomorphisms

/--
If `C` has colimits and `G` preserves colimits, then if `G` reflects isomorphisms then it reflects
colimits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2055ead59efdffd3ab95d8d291aa724aa2a95c1b34997fd2ddf06edda5b149f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2055ead59efdffd3ab95d8d291aa724aa2a95c1b34997fd2ddf06edda5b149f3.lean#L764).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `579409d378a790398cf9a7ac566200b147e41132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
