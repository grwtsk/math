# createsColimitsOfShapeFullSubcategoryInclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:544ed690b6edd9d5b03e185d1df964753d5dc60dd13d961152ade984f52ecfdf",
  "kind": "def",
  "lexical_name": "createsColimitsOfShapeFullSubcategoryInclusion",
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
  "slug": "createscolimitsofshapefullsubcategoryinclusion--b30f9f2b3a82bf2059ce4b72",
  "source": {
    "blob": "718637b3e08b0181514ab6bb8183a82bce4f33dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantda82f85fd2b57f6690bd114f3d5c81b00f2024db5320a96109cb8ba7d7659db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b30f9f2b3a82bf2059ce4b728a91c38ad0fbb3969cbf6d067ae767d214aadd35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantda82f85fd2b57f6690bd114f3d5c81b00f2024db5320a96109cb8ba7d7659db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:544ed690b6edd9d5b03e185d1df964753d5dc60dd13d961152ade984f52ecfdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsColimitsOfShapeFullSubcategoryInclusion (h : ClosedUnderColimitsOfShape J P)
    [HasColimitsOfShape J C] : CreatesColimitsOfShape J (fullSubcategoryInclusion P)
    where CreatesColimit := @fun F => createsColimitFullSubcategoryInclusionOfClosed h F
#align category_theory.limits.creates_colimits_of_shape_full_subcategory_inclusion CategoryTheory.Limits.createsColimitsOfShapeFullSubcategoryInclusion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantda82f85fd2b57f6690bd114f3d5c81b00f2024db5320a96109cb8ba7d7659db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantda82f85fd2b57f6690bd114f3d5c81b00f2024db5320a96109cb8ba7d7659db4.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `718637b3e08b0181514ab6bb8183a82bce4f33dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
