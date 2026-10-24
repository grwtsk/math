# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2e1323afa54b2738ba211c8d45e369cd9fc2ff364db3d94a2fcc3f2717e1eea",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--1ebfcb178aec0fdd3a15ceb4",
  "source": {
    "blob": "1ef6d2576f1c7ac453957d1e5096b69a2cf93875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 24,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommDiag/Variant6b5ea9d9d5206aa456b2c37bdaf8a72cd6957a617e26778725d6a4d8187591db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ebfcb178aec0fdd3a15ceb4f824d29892d141f8c2036f5434177223355ef3ca",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommDiag/Variant6b5ea9d9d5206aa456b2c37bdaf8a72cd6957a617e26778725d6a4d8187591db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2e1323afa54b2738ba211c8d45e369cd9fc2ff364db3d94a2fcc3f2717e1eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {fButActuallyTheNameIsReallyLong g : Nat ⟶ Bool}: fButActuallyTheNameIsReallyLong = g →
    fButActuallyTheNameIsReallyLong = (g ≫ 𝟙 Bool) := by
  with_panel_widgets [GoalTypePanel]
    intro h
    conv =>
      rhs
      enter [1]
      rw [← h]

-- from Sina Hazratpour
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommDiag/Variant6b5ea9d9d5206aa456b2c37bdaf8a72cd6957a617e26778725d6a4d8187591db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommDiag/Variant6b5ea9d9d5206aa456b2c37bdaf8a72cd6957a617e26778725d6a4d8187591db.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ef6d2576f1c7ac453957d1e5096b69a2cf93875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
