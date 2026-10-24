# forget_preservesLimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6590479803d6fccc2571674dfbc65893d90dbac1f1f9035e6004bcac0fbba0a",
  "kind": "instance",
  "lexical_name": "forget_preservesLimitsOfShape",
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
  "slug": "forget-preserveslimitsofshape--a68294e01e9d67a51f7edefa",
  "source": {
    "blob": "6eea41ba0294d30b1d45b8bdb67a627bb203e942",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6daeafa0c7991778b816a2bfa4e136ea6099c1e68b1ffac8bf35685f432f91c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a68294e01e9d67a51f7edefa170421196bd5335fbe929039be082c1b6680c736",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6daeafa0c7991778b816a2bfa4e136ea6099c1e68b1ffac8bf35685f432f91c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6590479803d6fccc2571674dfbc65893d90dbac1f1f9035e6004bcac0fbba0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forget_preservesLimitsOfShape [Small.{u} J] :
    PreservesLimitsOfShape J (forget Grp.{u}) where
  preservesLimit {F} := preservesLimit_of_preserves_limit_cone (limitConeIsLimit F)
    (Types.Small.limitConeIsLimit (F ⋙ forget _))

/-- The forgetful functor from groups to types preserves all limits.

This means the underlying type of a limit can be computed as a limit in the category of types. -/
@[to_additive
  "The forgetful functor from additive groups to types preserves all limits.

  This means the underlying type of a limit can be computed as a limit in the category of types.",
  to_additive_relevant_arg 2]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6daeafa0c7991778b816a2bfa4e136ea6099c1e68b1ffac8bf35685f432f91c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6daeafa0c7991778b816a2bfa4e136ea6099c1e68b1ffac8bf35685f432f91c1.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eea41ba0294d30b1d45b8bdb67a627bb203e942` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
