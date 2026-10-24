# IsSheafPreservesLimitPairwiseIntersections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b495fb33e9f3d214e19d7673c8d03c4c40db50f0beba8fe3cd45d9d45e61ee8b",
  "kind": "def",
  "lexical_name": "IsSheafPreservesLimitPairwiseIntersections",
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
  "slug": "issheafpreserveslimitpairwiseintersections--3807b622ea724520d5f3d16d",
  "source": {
    "blob": "d63d45e14597b62f4cd0321c105724a3aedd6213",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3807b622ea724520d5f3d16d834c7b708c0928e1bf4e3e52fc9a9f2fac631d5b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b495fb33e9f3d214e19d7673c8d03c4c40db50f0beba8fe3cd45d9d45e61ee8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSheafPreservesLimitPairwiseIntersections (F : Presheaf C X) : Prop :=
  ∀ ⦃ι : Type w⦄ (U : ι → Opens X), Nonempty (PreservesLimit (Pairwise.diagram U).op F)
set_option linter.uppercaseLean3 false in
#align Top.presheaf.is_sheaf_preserves_limit_pairwise_intersections TopCat.Presheaf.IsSheafPreservesLimitPairwiseIntersections

end

namespace SheafCondition

variable {ι : Type w} (U : ι → Opens X)

open CategoryTheory.Pairwise

/-- Implementation detail:
the object level of `pairwise_to_opens_le_cover : pairwise ι ⥤ opens_le_cover U`
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d63d45e14597b62f4cd0321c105724a3aedd6213` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
