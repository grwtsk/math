# toStrictlyUnitaryLaxFunctor_mapComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5f7edf0-43ab-4475-1d05-ab168504530c",
  "kind": "lemma",
  "lexical_name": "toStrictlyUnitaryLaxFunctor_mapComp",
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
  "slug": "tostrictlyunitarylaxfunctor-mapcomp--236ddd16065ef7df62c55bb1",
  "source": {
    "blob": "d8f620aad9a3d18411aaee3fa7f1f5ff4cab5ed9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 343,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variantc159f2bde0c49e7d1f90ec7dcfd4ce3fa6a629239691e196cb92f913b6e73afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:236ddd16065ef7df62c55bb154c30c8bdae553f01b2a5a62ae539cb5acd3b030",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variantc159f2bde0c49e7d1f90ec7dcfd4ce3fa6a629239691e196cb92f913b6e73afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5f7edf0-43ab-4475-1d05-ab168504530c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toStrictlyUnitaryLaxFunctor_mapComp {x y z : B} (f : x ⟶ y) (g : y ⟶ z) :
    F.toStrictlyUnitaryLaxFunctor.mapComp f g = (F.mapComp f g).inv :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variantc159f2bde0c49e7d1f90ec7dcfd4ce3fa6a629239691e196cb92f913b6e73afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variantc159f2bde0c49e7d1f90ec7dcfd4ce3fa6a629239691e196cb92f913b6e73afa.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f620aad9a3d18411aaee3fa7f1f5ff4cab5ed9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
