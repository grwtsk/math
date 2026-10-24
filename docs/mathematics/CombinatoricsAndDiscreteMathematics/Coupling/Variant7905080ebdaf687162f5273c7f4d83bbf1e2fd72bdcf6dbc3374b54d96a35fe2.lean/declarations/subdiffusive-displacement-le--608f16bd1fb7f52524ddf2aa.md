# subdiffusive_displacement_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fb27d7d-24de-af34-ded8-556576aee076",
  "kind": "theorem",
  "lexical_name": "subdiffusive_displacement_le",
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
  "slug": "subdiffusive-displacement-le--608f16bd1fb7f52524ddf2aa",
  "source": {
    "blob": "5a299685ac41e75d56f3163c9aeb93e987389058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 246,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:608f16bd1fb7f52524ddf2aa3e565c21f7e6e64fb619c020c9227a76fc4abb20",
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

Occurrence: `result:6fb27d7d-24de-af34-ded8-556576aee076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subdiffusive_displacement_le
    {State : Type*}
    {distance : State → State → ℝ}
    {schedule : SqrtStepBoundCertificate}
    (trajectory : SubdiffusiveTrajectory State distance schedule)
    {t : Nat}
    (withinHorizon : t ≤ schedule.horizon) :
    distance (trajectory.state t) (trajectory.state 0) ≤
      2 * trajectory.gradientBound * trajectory.initialStep * Real.sqrt t := by
  calc
    distance (trajectory.state t) (trajectory.state 0)
        ≤ trajectory.gradientBound * trajectory.initialStep * schedule.cumulativeStep t :=
      trajectory.displacement_le_cumulative t withinHorizon
    _ ≤ trajectory.gradientBound * trajectory.initialStep * (2 * Real.sqrt t) := by
      exact mul_le_mul_of_nonneg_left
        (schedule.cumulativeStep_bound t withinHorizon)
        (mul_nonneg trajectory.gradientBound_nonnegative
          trajectory.initialStep_nonnegative)
    _ = 2 * trajectory.gradientBound * trajectory.initialStep * Real.sqrt t := by ring

/-!
## Derived projected-gradient trajectory

The generic `SubdiffusiveTrajectory` above is useful for importing an existing
telescoping certificate.  The following stronger interface derives that
certificate from the selected update rule, a nonexpansive projection, and the
gradient bound, so the prototype theorem is not merely a restatement of its
conclusion.
-/

/-- Finite projected updates `wₛ₊₁ = Π(wₛ - ηₛ Gₛ)` in a real normed space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a299685ac41e75d56f3163c9aeb93e987389058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
