# cancel_pair_joint_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d220dcb-ec34-c470-b399-dde11ff69c8a",
  "kind": "theorem",
  "lexical_name": "cancel_pair_joint_budget",
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
  "slug": "cancel-pair-joint-budget--9f8cf5eddf9305aae56072f3",
  "source": {
    "blob": "5c894066f8ef26b29a3db181f32fa5784de419bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f8cf5eddf9305aae56072f34e46feff6da3986fead7b4e73d5fbbfe40d76976",
  "verification": {
    "reference": "docs/verification/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d220dcb-ec34-c470-b399-dde11ff69c8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cancel_pair_joint_budget :
    |([true, false].map cancelPairWork).sum| ≤ (0 : ℤ) := by
  apply joint_cancellation_budget cancelPairWork (fun _ => 0)
    [true, false] [[false, true]] 0 cancel_pair_coverage
  · intro block hblock
    simp only [List.mem_singleton] at hblock
    subst block
    norm_num [jointReadout, cancelPairWork]
  · simp

/-- Splitting the same signed pair into atomwise absolute budgets costs fourteen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c894066f8ef26b29a3db181f32fa5784de419bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
