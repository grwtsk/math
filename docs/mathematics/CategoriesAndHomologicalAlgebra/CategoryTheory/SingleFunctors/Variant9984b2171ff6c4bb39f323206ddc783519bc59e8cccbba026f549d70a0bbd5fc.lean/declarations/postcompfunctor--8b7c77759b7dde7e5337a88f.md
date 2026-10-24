# postcompFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6eae3457326949fee3f70eb6fb503d78cac48d94bb207f09c9df67143cf1eeed",
  "kind": "def",
  "lexical_name": "postcompFunctor",
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
  "slug": "postcompfunctor--8b7c77759b7dde7e5337a88f",
  "source": {
    "blob": "733b5e39b340fa36b9b0262b8cec1720eaaeaf55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 224,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b7c77759b7dde7e5337a88f64acd38e365637d6a36cf5f180a9f68643446db2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6eae3457326949fee3f70eb6fb503d78cac48d94bb207f09c9df67143cf1eeed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postcompFunctor (G : D ⥤ E) [G.CommShift A] :
    SingleFunctors C D A ⥤ SingleFunctors C E A where
  obj F := F.postcomp G
  map {F₁ F₂} φ :=
    { hom := fun a => whiskerRight (φ.hom a) G
      comm := fun n a a' ha' => by
        ext X
        simpa using G.congr_map (congr_app (φ.comm n a a' ha') X) }

variable {C E' A}

/-- The canonical isomorphism `(F.postcomp G).postcomp G' ≅ F.postcomp (G ⋙ G')`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant9984b2171ff6c4bb39f323206ddc783519bc59e8cccbba026f549d70a0bbd5fc.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `733b5e39b340fa36b9b0262b8cec1720eaaeaf55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
