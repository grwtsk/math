# IsSplitCoequalizer.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c1865438cd74026f3e2271e46f1a0f7f6ef6e87777b6aeb1b66ce3045ff11a2",
  "kind": "def",
  "lexical_name": "IsSplitCoequalizer.map",
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
  "slug": "issplitcoequalizer-map--9efeab8653690138c73842ec",
  "source": {
    "blob": "37616032fb1d903f8f455590fe7dc9c314f972ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9efeab8653690138c73842ecafb7dfea31f99f194a96a95de0ff5e396c30a893",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c1865438cd74026f3e2271e46f1a0f7f6ef6e87777b6aeb1b66ce3045ff11a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSplitCoequalizer.map {Z : C} {π : Y ⟶ Z} (q : IsSplitCoequalizer f g π) (F : C ⥤ D) :
    IsSplitCoequalizer (F.map f) (F.map g) (F.map π)
    where
  rightSection := F.map q.rightSection
  leftSection := F.map q.leftSection
  condition := by rw [← F.map_comp, q.condition, F.map_comp]
  rightSection_π := by rw [← F.map_comp, q.rightSection_π, F.map_id]
  leftSection_bottom := by rw [← F.map_comp, q.leftSection_bottom, F.map_id]
  leftSection_top := by rw [← F.map_comp, q.leftSection_top, F.map_comp]
#align category_theory.is_split_coequalizer.map CategoryTheory.IsSplitCoequalizer.map

section

open Limits

/-- A split coequalizer clearly induces a cofork. -/
@[simps! pt]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37616032fb1d903f8f455590fe7dc9c314f972ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
