# actualCriticalRelative_eq_near_add_complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edd6a92b-1bd1-9cf8-fe98-5373d32871b7",
  "kind": "theorem",
  "lexical_name": "actualCriticalRelative_eq_near_add_complement",
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
  "slug": "actualcriticalrelative-eq-near-add-complement--ae9de88cda009738c3b67028",
  "source": {
    "blob": "bf239ee13b35a3e41e4dd07ad000533458bb2d1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae9de88cda009738c3b670283f850d286f1dec5ff75d903df3acdfab20a32485",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edd6a92b-1bd1-9cf8-fe98-5373d32871b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalRelative_eq_near_add_complement {A : ℝ} (hA : 91 ≤ A) :
    criticalRelativePairing A = actualNearCriticalRelativePairing A +
      actualComplementCriticalRelativePairing A := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hT : 0 ≤ 2 * Real.log A := by positivity [Real.log_nonneg hA1]
  have hT2 : 2 * Real.log A ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos hp]
  have hi := criticalKernel_integrable hA1
  have hfull : criticalRelativePairing A = ∫ t in 0..2 * A, criticalKernel A t := by
    unfold criticalRelativePairing
    rw [intervalIntegral.integral_of_le (by linarith : (0 : ℝ) ≤ 2 * A),
      ← Ioc_union_Ioi_eq_Ioi (by linarith : (0 : ℝ) ≤ 2 * A)]
    apply integral_union_eq_left_of_forall measurableSet_Ioi
    intro t ht
    simp [criticalKernel, criticalWeight_zero_above hA1 ht]
  have h0b : IntervalIntegrable (criticalKernel A) volume 0 (2 * A) := by
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)]
    exact hi.mono_set (by intro t ht; exact ht.1)
  rw [hfull]
  unfold actualNearCriticalRelativePairing actualComplementCriticalRelativePairing
  exact (intervalIntegral.integral_add_adjacent_intervals
    (h0b.mono_set (by
      rw [uIcc_of_le hT, uIcc_of_le (by linarith : 0 ≤ 2 * A)]
      exact Icc_subset_Icc le_rfl hT2))
    (h0b.mono_set (by
      rw [uIcc_of_le hT2, uIcc_of_le (by linarith : 0 ≤ 2 * A)]
      exact Icc_subset_Icc hT le_rfl))).symm

end FormalResearch.RiemannHypothesis.SourceActualNearCriticalRelative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf239ee13b35a3e41e4dd07ad000533458bb2d1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
