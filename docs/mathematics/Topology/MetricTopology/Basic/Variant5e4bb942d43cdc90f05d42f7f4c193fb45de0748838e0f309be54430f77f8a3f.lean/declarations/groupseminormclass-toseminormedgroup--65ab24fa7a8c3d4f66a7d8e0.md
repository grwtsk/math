# GroupSeminormClass.toSeminormedGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1264e3d0a1a88c72b180faf5de87c24e2ad95ea630d464d183c5e3451f355d98",
  "kind": "abbrev",
  "lexical_name": "GroupSeminormClass.toSeminormedGroup",
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
  "slug": "groupseminormclass-toseminormedgroup--65ab24fa7a8c3d4f66a7d8e0",
  "source": {
    "blob": "8d83cb25f9216848b201ca8f594740746f7af234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 25,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65ab24fa7a8c3d4f66a7d8e0f26b9963c48207130bc0e3548e9c87387679c24b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1264e3d0a1a88c72b180faf5de87c24e2ad95ea630d464d183c5e3451f355d98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev GroupSeminormClass.toSeminormedGroup [Group α] [GroupSeminormClass F α ℝ]
    (f : F) : SeminormedGroup α where
  norm := f
  dist x y := f (x / y)
  dist_eq _ _ := rfl
  dist_self _ := by simp
  dist_comm x y := by simp only [← map_inv_eq_map f (x / y), inv_div]
  dist_triangle x y z := by simpa using map_mul_le_add f (x / y) (y / z)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d83cb25f9216848b201ca8f594740746f7af234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
