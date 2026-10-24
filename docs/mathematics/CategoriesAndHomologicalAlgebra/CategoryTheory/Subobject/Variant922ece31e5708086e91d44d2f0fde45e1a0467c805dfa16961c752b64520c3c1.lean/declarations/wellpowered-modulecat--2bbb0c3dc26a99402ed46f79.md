# wellPowered_moduleCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66bc0d3c8c030d5477b7e7d68a9a9e5c526c4d1d0c38f2a8ed57a75d1e25629e",
  "kind": "instance",
  "lexical_name": "wellPowered_moduleCat",
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
  "slug": "wellpowered-modulecat--2bbb0c3dc26a99402ed46f79",
  "source": {
    "blob": "267388e04f1fe1c99c27406e56c42bd1f2ea5917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bbb0c3dc26a99402ed46f792d496a0970088d011090e2e423427d1bb7de97ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66bc0d3c8c030d5477b7e7d68a9a9e5c526c4d1d0c38f2a8ed57a75d1e25629e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance wellPowered_moduleCat : WellPowered (ModuleCat.{v} R) :=
  ⟨fun M => ⟨⟨_, ⟨(subobjectModule M).toEquiv⟩⟩⟩⟩
#align Module.well_powered_Module ModuleCat.wellPowered_moduleCat

attribute [local instance] hasKernels_moduleCat

/-- Bundle an element `m : M` such that `f m = 0` as a term of `kernelSubobject f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `267388e04f1fe1c99c27406e56c42bd1f2ea5917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
