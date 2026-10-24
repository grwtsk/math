# mkOfHomFunctors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4556e22cffa795daab2f48de1cb88a14af5bf3f76b960d3ca5bbe80b9230b563",
  "kind": "def",
  "lexical_name": "mkOfHomFunctors",
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
  "slug": "mkofhomfunctors--d8d5f45f3fd633fd62957abf",
  "source": {
    "blob": "a5bf157bf35644d705463c99cb0fb2d0da06755d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8d5f45f3fd633fd62957abf2c8a8c218a41a147816c43318d81d8b7a3577156",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4556e22cffa795daab2f48de1cb88a14af5bf3f76b960d3ca5bbe80b9230b563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkOfHomFunctors (F : B → C) (F' : (a : B) → (b : B) → (a ⟶ b) ⥤ (F a ⟶ F b)) :
    PrelaxFunctor B C where
  toPrelaxFunctorStruct := PrelaxFunctorStruct.mkOfHomPrefunctors F fun a b => (F' a b).toPrefunctor
  map₂_id {a b} := (F' a b).map_id
  map₂_comp {a b} := (F' a b).map_comp

/-- The identity prelax functor. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Variant44f90040a6f1bcf81fd413f5863d3ed50c0449b2962fa4ef9ea7be8ffbe1d75c.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5bf157bf35644d705463c99cb0fb2d0da06755d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
