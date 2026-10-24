# toShrinkHoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2492cdb55e1d7de30536368c9fa0768c5ec3180da6ee0de2680af4421c9b242e",
  "kind": "def",
  "lexical_name": "toShrinkHoms",
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
  "slug": "toshrinkhoms--7bb678486fa8ac1ed32260ed",
  "source": {
    "blob": "ccaec4ea54579e720c192a491d7db2d4d32d80ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bb678486fa8ac1ed32260edcf9052eda9db38ef9c84e7d174f551417db582b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2492cdb55e1d7de30536368c9fa0768c5ec3180da6ee0de2680af4421c9b242e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toShrinkHoms {C' : Type*} (X : C') : ShrinkHoms C' :=
  X
#align category_theory.shrink_homs.to_shrink_homs CategoryTheory.ShrinkHoms.toShrinkHoms

/-- Help the typechecker by explicitly translating from `ShrinkHoms C` to `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccaec4ea54579e720c192a491d7db2d4d32d80ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
