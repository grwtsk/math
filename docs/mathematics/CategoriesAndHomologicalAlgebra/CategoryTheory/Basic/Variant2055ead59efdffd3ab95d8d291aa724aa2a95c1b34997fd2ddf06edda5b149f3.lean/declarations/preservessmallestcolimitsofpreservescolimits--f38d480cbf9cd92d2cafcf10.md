# preservesSmallestColimitsOfPreservesColimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6aa92329db85a8ddd1ff709c4d37a313d4008f2b7f09a8d58a0fd3454492536",
  "kind": "def",
  "lexical_name": "preservesSmallestColimitsOfPreservesColimits",
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
  "slug": "preservessmallestcolimitsofpreservescolimits--f38d480cbf9cd92d2cafcf10",
  "source": {
    "blob": "579409d378a790398cf9a7ac566200b147e41132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 350,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2055ead59efdffd3ab95d8d291aa724aa2a95c1b34997fd2ddf06edda5b149f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f38d480cbf9cd92d2cafcf101003e11270ec25ae5a0119553b4e40b7ee30324d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2055ead59efdffd3ab95d8d291aa724aa2a95c1b34997fd2ddf06edda5b149f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6aa92329db85a8ddd1ff709c4d37a313d4008f2b7f09a8d58a0fd3454492536`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesSmallestColimitsOfPreservesColimits (F : C ⥤ D) [PreservesColimitsOfSize.{v₃, u₃} F] :
    PreservesColimitsOfSize.{0, 0} F :=
  preservesColimitsOfSizeShrink F
#align category_theory.limits.preserves_smallest_colimits_of_preserves_colimits CategoryTheory.Limits.preservesSmallestColimitsOfPreservesColimits

/-- A functor `F : C ⥤ D` reflects limits for `K : J ⥤ C` if
whenever the image of a cone over `K` under `F` is a limit cone in `D`,
the cone was already a limit cone in `C`.
Note that we do not assume a priori that `D` actually has any limits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2055ead59efdffd3ab95d8d291aa724aa2a95c1b34997fd2ddf06edda5b149f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2055ead59efdffd3ab95d8d291aa724aa2a95c1b34997fd2ddf06edda5b149f3.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `579409d378a790398cf9a7ac566200b147e41132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
