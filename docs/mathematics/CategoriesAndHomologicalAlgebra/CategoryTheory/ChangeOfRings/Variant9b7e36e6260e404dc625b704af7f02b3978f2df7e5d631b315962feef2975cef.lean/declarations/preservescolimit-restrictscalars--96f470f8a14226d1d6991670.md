# preservesColimit_restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d347d915d8763cd44666896a80c72d8c7f8cd18617aedd17a873f1fa5dc9e696",
  "kind": "instance",
  "lexical_name": "preservesColimit_restrictScalars",
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
  "slug": "preservescolimit-restrictscalars--96f470f8a14226d1d6991670",
  "source": {
    "blob": "2dde91a9a5977ec7c1d24dfc4a790527c0389114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 866,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant9b7e36e6260e404dc625b704af7f02b3978f2df7e5d631b315962feef2975cef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96f470f8a14226d1d69916704390353d69d171169d1f6cf8659496bb6a903310",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant9b7e36e6260e404dc625b704af7f02b3978f2df7e5d631b315962feef2975cef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d347d915d8763cd44666896a80c72d8c7f8cd18617aedd17a873f1fa5dc9e696`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 866–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesColimit_restrictScalars {R S : Type*} [Ring R] [Ring S]
    (f : R →+* S) {J : Type*} [Category J] (F : J ⥤ ModuleCat.{v} S)
    [HasColimit (F ⋙ forget₂ _ AddCommGrp)] :
    PreservesColimit F (ModuleCat.restrictScalars.{v} f) := by
  have : HasColimit ((F ⋙ restrictScalars f) ⋙ forget₂ (ModuleCat R) AddCommGrp) :=
    inferInstanceAs (HasColimit (F ⋙ forget₂ _ AddCommGrp))
  apply preservesColimit_of_preserves_colimit_cocone (HasColimit.isColimitColimitCocone F)
  apply isColimitOfReflects (forget₂ _ AddCommGrp)
  apply isColimitOfPreserves (forget₂ (ModuleCat.{v} S) AddCommGrp.{v})
  exact HasColimit.isColimitColimitCocone F

variable (R) in
/-- The extension of scalars by the identity of a ring is isomorphic to the
identity functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant9b7e36e6260e404dc625b704af7f02b3978f2df7e5d631b315962feef2975cef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant9b7e36e6260e404dc625b704af7f02b3978f2df7e5d631b315962feef2975cef.lean#L866).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dde91a9a5977ec7c1d24dfc4a790527c0389114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
