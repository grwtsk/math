# profile_deriv_time_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa723d48-a67f-d491-a098-a9ab43b4df5b",
  "kind": "theorem",
  "lexical_name": "profile_deriv_time_continuous",
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
  "slug": "profile-deriv-time-continuous--33ba1f38de8564db43a2d954",
  "source": {
    "blob": "ebecbc1ff4232140e26c07377d0d81a037d769d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant00c577fe39c9bd40dea7f5514638206f29ff247b192777b48b4bcde15b45a4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33ba1f38de8564db43a2d9541e3de3ca10d303df92108773f874499fe8aaf555",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant00c577fe39c9bd40dea7f5514638206f29ff247b192777b48b4bcde15b45a4af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa723d48-a67f-d491-a098-a9ab43b4df5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem profile_deriv_time_continuous {A u : ℝ} (hA : 0 < A) (hu : 0 < u) :
    Continuous (fun t => deriv (actualPeriodicPhysicalCellProfile A t) u) := by
  have he : (fun t => deriv (actualPeriodicPhysicalCellProfile A t) u) =
      fun t => (covariantMixedDerivative (actualLogMixedDensity A) t (Real.log u) -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t (Real.log u)) / u ^ 2 := by
    funext t
    exact actualPeriodicPhysicalCellProfile_deriv hA hu t
  rw [he]
  simp only [actual_covariant_ordinary_work_kernel A hA]
  have h1 := jet_continuous hA 1 (by norm_num)
  have h2 := jet_continuous hA 2 (by norm_num)
  have h3 := jet_continuous hA 3 (by norm_num)
  have h4 := jet_continuous hA 4 (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant00c577fe39c9bd40dea7f5514638206f29ff247b192777b48b4bcde15b45a4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant00c577fe39c9bd40dea7f5514638206f29ff247b192777b48b4bcde15b45a4af.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebecbc1ff4232140e26c07377d0d81a037d769d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
