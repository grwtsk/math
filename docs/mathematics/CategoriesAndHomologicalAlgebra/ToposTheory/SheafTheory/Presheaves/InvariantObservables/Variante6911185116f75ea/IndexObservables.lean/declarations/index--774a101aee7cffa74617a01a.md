# Index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44ccd96d07bf3169507d571d0b9d2a56bae9781c58f39a10fef0b23cc4a23932",
  "kind": "structure",
  "lexical_name": "Index",
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
  "slug": "index--774a101aee7cffa74617a01a",
  "source": {
    "blob": "807b5855d71fb4301c682690fcdb09cfbe639e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/InvariantObservables/Variante6911185116f75ea/IndexObservables.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:774a101aee7cffa74617a01ac531fbda5f3914a89ab8da07e9da44d39b0eac12",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/InvariantObservables/Variante6911185116f75ea/IndexObservables.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44ccd96d07bf3169507d571d0b9d2a56bae9781c58f39a10fef0b23cc4a23932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Index (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  keyCount : ObservableField presheaf.F Nat

end GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.InvariantObservables.Variante6911185116f75ea
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/InvariantObservables/Variante6911185116f75ea/IndexObservables.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/InvariantObservables/Variante6911185116f75ea/IndexObservables.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `807b5855d71fb4301c682690fcdb09cfbe639e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
