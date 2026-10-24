# preservesColimit_restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed6de66985ad23aedeac05ae920dcf8aaa205f8a4d6c70a4e1317baf44be3b3b",
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
  "slug": "preservescolimit-restrictscalars--cf1d98ea7ea34bcf4ad954c8",
  "source": {
    "blob": "e9d9c65badbc609d06df12cc080b6c4e177d54ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 887,
    "line": 874,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant49a46fd7bc7018602316ab1d5a6175ae1a4fabd7049ba86b99d012f87d4c3e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf1d98ea7ea34bcf4ad954c885835f9b451ad6ac771c5126f93f90ec6db30a58",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant49a46fd7bc7018602316ab1d5a6175ae1a4fabd7049ba86b99d012f87d4c3e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed6de66985ad23aedeac05ae920dcf8aaa205f8a4d6c70a4e1317baf44be3b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 874–887.

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

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant49a46fd7bc7018602316ab1d5a6175ae1a4fabd7049ba86b99d012f87d4c3e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant49a46fd7bc7018602316ab1d5a6175ae1a4fabd7049ba86b99d012f87d4c3e12.lean#L874).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9d9c65badbc609d06df12cc080b6c4e177d54ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
