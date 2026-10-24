# isColimitOfIsColimitCoforkMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38364928968d46611915b8988ed0f0a60272c058d5477c724bfef5b8a7e82c9a",
  "kind": "def",
  "lexical_name": "isColimitOfIsColimitCoforkMap",
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
  "slug": "iscolimitofiscolimitcoforkmap--ad3d277ef5fcbb2510ecdfbf",
  "source": {
    "blob": "b7338bf146abe30552ee3141a767d800b814137e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 141,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad3d277ef5fcbb2510ecdfbfacd3e93a76f973176c670c9df8ceee780da7134f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38364928968d46611915b8988ed0f0a60272c058d5477c724bfef5b8a7e82c9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitOfIsColimitCoforkMap [ReflectsColimit (parallelPair f g) G]
    (l :
      IsColimit
        (Cofork.ofπ (G.map h) (by simp only [← G.map_comp, w]) : Cofork (G.map f) (G.map g))) :
    IsColimit (Cofork.ofπ h w) :=
  isColimitOfReflects G ((isColimitMapCoconeCoforkEquiv G w).symm l)

variable (f g)
variable [HasCoequalizer f g]

/--
If `G` preserves coequalizers and `C` has them, then the cofork constructed of the mapped morphisms
of a cofork is a colimit.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7338bf146abe30552ee3141a767d800b814137e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
