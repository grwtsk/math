# isColimitOfHasPushoutOfPreservesColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94945784e42e7e5bb42bce2e8a492eb8d2d4425f9c31657bfc8fdf07c309a404",
  "kind": "def",
  "lexical_name": "isColimitOfHasPushoutOfPreservesColimit",
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
  "slug": "iscolimitofhaspushoutofpreservescolimit--a32d5fdf1882b91cdc5433cf",
  "source": {
    "blob": "6185621e2c2f4631fcc7f665ad141b65e41aa094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 234,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant27700e726c25e6485b1747696e6b9476e938a5efd046aff4863d099a6807667f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a32d5fdf1882b91cdc5433cf9fbe889b171853ed4290d97e1430175c58c06cb0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant27700e726c25e6485b1747696e6b9476e938a5efd046aff4863d099a6807667f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94945784e42e7e5bb42bce2e8a492eb8d2d4425f9c31657bfc8fdf07c309a404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitOfHasPushoutOfPreservesColimit [i : HasPushout f g] :
    IsColimit (PushoutCocone.mk (G.map (pushout.inl _ _)) (G.map (@pushout.inr _ _ _ _ _ f g i))
    (show G.map f ≫ G.map (pushout.inl _ _) = G.map g ≫ G.map (pushout.inr _ _) by
      simp only [← G.map_comp, pushout.condition])) :=
  isColimitPushoutCoconeMapOfIsColimit G _ (pushoutIsPushout f g)

/-- If `F` preserves the pushout of `f, g`, it also preserves the pushout of `g, f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant27700e726c25e6485b1747696e6b9476e938a5efd046aff4863d099a6807667f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant27700e726c25e6485b1747696e6b9476e938a5efd046aff4863d099a6807667f.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6185621e2c2f4631fcc7f665ad141b65e41aa094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
