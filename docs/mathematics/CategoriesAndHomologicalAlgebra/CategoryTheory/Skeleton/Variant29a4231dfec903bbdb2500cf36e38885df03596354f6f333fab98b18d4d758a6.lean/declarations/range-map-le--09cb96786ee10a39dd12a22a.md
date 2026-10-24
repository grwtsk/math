# range_map_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7c3240d-e988-e44d-610f-f9f6e1976404",
  "kind": "lemma",
  "lexical_name": "range_map_le",
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
  "slug": "range-map-le--09cb96786ee10a39dd12a22a",
  "source": {
    "blob": "5a2e46f398ddc157d903f5a7de021e1243ca201b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 262,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant29a4231dfec903bbdb2500cf36e38885df03596354f6f333fab98b18d4d758a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09cb96786ee10a39dd12a22a9c619169ef9fa7813743f5a1c39bc9088cb9a27f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant29a4231dfec903bbdb2500cf36e38885df03596354f6f333fab98b18d4d758a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7c3240d-e988-e44d-610f-f9f6e1976404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_map_le : Subcomplex.range c.map ≤ skeletonOfMono i (d + 1) := by
  simp [map, Subcomplex.range_eq_ofSimplex, mem_skeletonOfMono_obj_iff]

set_option backward.defeqAttrib.useBackward true in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant29a4231dfec903bbdb2500cf36e38885df03596354f6f333fab98b18d4d758a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant29a4231dfec903bbdb2500cf36e38885df03596354f6f333fab98b18d4d758a6.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a2e46f398ddc157d903f5a7de021e1243ca201b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
