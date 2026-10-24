# inclusion_preservesFiniteColimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2a3d31f56d24f406cc381c7f2950e946f668968a0ca8d723999b65e582f7d07",
  "kind": "instance",
  "lexical_name": "inclusion_preservesFiniteColimits",
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
  "slug": "inclusion-preservesfinitecolimits--5bb07616c0425afdf06113b6",
  "source": {
    "blob": "9a55a5a5b2875ed82815325d3a07d920061e4771",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variante5f8fd2e42562993cf668ff5232a6a13d8b974ac579145c0819f204a999e2a86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bb07616c0425afdf06113b641e17d043962188882abb3833ee5cefd7e1d4cc2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variante5f8fd2e42562993cf668ff5232a6a13d8b974ac579145c0819f204a999e2a86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2a3d31f56d24f406cc381c7f2950e946f668968a0ca8d723999b65e582f7d07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance inclusion_preservesFiniteColimits :
    PreservesFiniteColimits FintypeCat.incl.{u} where
  preservesFiniteColimits _ :=
    preservesColimitOfShape_of_createsColimitsOfShape_and_hasColimitsOfShape FintypeCat.incl

/-- Help typeclass inference to infer preservation of finite colimits for the forgetful functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variante5f8fd2e42562993cf668ff5232a6a13d8b974ac579145c0819f204a999e2a86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variante5f8fd2e42562993cf668ff5232a6a13d8b974ac579145c0819f204a999e2a86.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a55a5a5b2875ed82815325d3a07d920061e4771` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
