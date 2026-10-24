# UniqueMDiffOn.uniqueDiffWithinAt_range_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:015eba05-8467-5ef4-2708-e524d13f59e8",
  "kind": "theorem",
  "lexical_name": "UniqueMDiffOn.uniqueDiffWithinAt_range_inter",
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
  "slug": "uniquemdiffon-uniquediffwithinat-range-inter--b12b83f1180bc11de52527b3",
  "source": {
    "blob": "78cd7bad21b4f3d6484cbab54ac87ded74edfd73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 113,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b12b83f1180bc11de52527b3c76b0e398d99453f6f8e063993ee9299cb92f89d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:015eba05-8467-5ef4-2708-e524d13f59e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniqueMDiffOn.uniqueDiffWithinAt_range_inter (hs : UniqueMDiffOn I s) (x : M) (y : E)
    (hy : y ∈ (extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s) :
    UniqueDiffWithinAt 𝕜 (range I ∩ (extChartAt I x).symm ⁻¹' s) y := by
  apply (hs.uniqueDiffOn_target_inter x y hy).mono
  apply inter_subset_inter_left _ (extChartAt_target_subset_range x)

variable [IsManifold I 1 M] in
/-- When considering functions between manifolds, this statement shows up often. It entails
the unique differential of the pullback in extended charts of the set where the function can
be read in the charts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cd7bad21b4f3d6484cbab54ac87ded74edfd73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
