# subdiffusive_displacement_le_of_projected_updates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15b58619-1ef3-e669-b544-326aa4bc1275",
  "kind": "theorem",
  "lexical_name": "subdiffusive_displacement_le_of_projected_updates",
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
  "slug": "subdiffusive-displacement-le-of-projected-updates--fa6d986623fee007dd814844",
  "source": {
    "blob": "5a299685ac41e75d56f3163c9aeb93e987389058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 382,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa6d986623fee007dd814844a2fbb65012343d66cf94c21181f46e34959e0ed5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b58619-1ef3-e669-b544-326aa4bc1275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subdiffusive_displacement_le_of_projected_updates
    (trajectory : ProjectedGradientTrajectory State)
    {t : Nat} (within : t ≤ trajectory.horizon) :
    dist (trajectory.state t) (trajectory.state 0) ≤
      2 * trajectory.gradientBound * trajectory.initialStep * Real.sqrt t := by
  calc
    dist (trajectory.state t) (trajectory.state 0)
        ≤ trajectory.gradientBound * trajectory.initialStep *
            (∑ s ∈ Finset.range t, 1 / Real.sqrt (s + 1 : ℝ)) :=
      trajectory.displacement_le_cumulative within
    _ ≤ trajectory.gradientBound * trajectory.initialStep *
          (2 * Real.sqrt t) := by
      exact mul_le_mul_of_nonneg_left (cumulative_inv_sqrt_le t)
        (mul_nonneg trajectory.gradientBound_nonnegative
          trajectory.initialStep_nonnegative)
    _ = 2 * trajectory.gradientBound * trajectory.initialStep * Real.sqrt t := by
      ring

end ProjectedGradientTrajectory

/-- A coupling certificate is pinned to both active graph and policy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a299685ac41e75d56f3163c9aeb93e987389058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
