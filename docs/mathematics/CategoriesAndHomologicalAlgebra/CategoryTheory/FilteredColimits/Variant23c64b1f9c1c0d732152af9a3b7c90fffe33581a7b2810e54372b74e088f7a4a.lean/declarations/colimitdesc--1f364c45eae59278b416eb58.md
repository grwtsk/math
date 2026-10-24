# colimitDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa7040af70f91dd35e972b467c4afe09989cd47768226a04641b115c770d8cdc",
  "kind": "def",
  "lexical_name": "colimitDesc",
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
  "slug": "colimitdesc--1f364c45eae59278b416eb58",
  "source": {
    "blob": "8e3ab1334eb33505b0874bb54c94df6cd1a8375c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f364c45eae59278b416eb58ff27602efc8986261b20e214af478ffb479b058a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa7040af70f91dd35e972b467c4afe09989cd47768226a04641b115c770d8cdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitDesc (t : Cocone F) : colimit F ⟶ t.pt :=
  ofHom
    { ((AddCommGrp.FilteredColimits.colimitCoconeIsColimit
          (F ⋙ forget₂ (ModuleCat.{max v u} R) AddCommGrp.{max v u})).desc
      ((forget₂ (ModuleCat R) AddCommGrp.{max v u}).mapCocone t)).hom with
    map_smul' := fun r x => by
      refine Quot.inductionOn x ?_; clear x; intro x; obtain ⟨j, x⟩ := x
      erw [colimit_smul_mk_eq]
      exact LinearMap.map_smul (t.ι.app j).hom r x }

/-- The proposed colimit cocone is a colimit in `ModuleCat R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e3ab1334eb33505b0874bb54c94df6cd1a8375c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
