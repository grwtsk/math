# pushforward_isFlasque

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8dd311c20d84d85056be3f1979ae5f5fd44b75e359c762cf17ab9ac1b04f429",
  "kind": "instance",
  "lexical_name": "pushforward_isFlasque",
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
  "slug": "pushforward-isflasque--36445a4a8b5f2d666ff0d96a",
  "source": {
    "blob": "47c5af7e9dd1b8aefb6eed9d0ccaf9351fb59c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36445a4a8b5f2d666ff0d96a86723e41385df78913abaacdb5f0659141eebcf5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8dd311c20d84d85056be3f1979ae5f5fd44b75e359c762cf17ab9ac1b04f429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pushforward_isFlasque {Y : TopCat.{u}} [IsFlasque F] (f : X ⟶ Y) :
    IsFlasque (f _* F) where
  epi {U V} i := by
    simp only [pushforward_obj_obj, pushforward_obj_map]
    infer_instance

end IsFlasque

end Presheaf

namespace Sheaf

/-- A sheaf is flasque if it is flasque as a presheaf -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47c5af7e9dd1b8aefb6eed9d0ccaf9351fb59c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
