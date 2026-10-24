# displacement_le_cumulative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec1b5ea0-8a22-ac09-3dec-2da6f9672575",
  "kind": "theorem",
  "lexical_name": "displacement_le_cumulative",
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
  "slug": "displacement-le-cumulative--0fc2ad27dcf378f2ac729bf4",
  "source": {
    "blob": "5a299685ac41e75d56f3163c9aeb93e987389058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 354,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc2ad27dcf378f2ac729bf478b6788975c4eb67281b8f56558f086e40b938c1",
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

Occurrence: `result:ec1b5ea0-8a22-ac09-3dec-2da6f9672575`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem displacement_le_cumulative
    (trajectory : ProjectedGradientTrajectory State)
    {t : Nat} (within : t ≤ trajectory.horizon) :
    dist (trajectory.state t) (trajectory.state 0) ≤
      trajectory.gradientBound * trajectory.initialStep *
        (∑ s ∈ Finset.range t, 1 / Real.sqrt (s + 1 : ℝ)) := by
  induction t with
  | zero => simp
  | succ t ih =>
      have ht : t < trajectory.horizon := Nat.lt_of_succ_le within
      have ht_le : t ≤ trajectory.horizon := Nat.le_trans (Nat.le_succ t) within
      calc
        dist (trajectory.state (t + 1)) (trajectory.state 0)
            ≤ dist (trajectory.state (t + 1)) (trajectory.state t) +
                dist (trajectory.state t) (trajectory.state 0) :=
          dist_triangle _ _ _
        _ ≤ trajectory.gradientBound * trajectory.initialStep /
              Real.sqrt (t + 1 : ℝ) +
            trajectory.gradientBound * trajectory.initialStep *
              (∑ s ∈ Finset.range t, 1 / Real.sqrt (s + 1 : ℝ)) :=
          add_le_add (trajectory.one_step_le ht) (ih ht_le)
        _ = trajectory.gradientBound * trajectory.initialStep *
              (∑ s ∈ Finset.range (t + 1),
                1 / Real.sqrt (s + 1 : ℝ)) := by
          rw [Finset.sum_range_succ]
          ring

/-- The requested `2 L η₀ √t` law follows from the actual projected update. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a299685ac41e75d56f3163c9aeb93e987389058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
