# crossing_eq_crossing_of_lowerCrossingTime_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b3b3b33a3e465841f05a443e9584dadfe60e312",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 492,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:898bbdbc-fabe-295a-5aec-0dc56a07b722",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8912b3c4-fe98-2700-fcde-52f127bb2959",
  "kind": "theorem",
  "lexical_name": "crossing_eq_crossing_of_lowerCrossingTime_lt",
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
  "slug": "crossing-eq-crossing-of-lowercrossingtime-lt--a6b0e236f26d4e6e990c0526",
  "source": {
    "blob": "9b3b3b33a3e465841f05a443e9584dadfe60e312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 492,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6b0e236f26d4e6e990c0526f6a45e9cd067d9a897986822697b5a90f38d10cb",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8912b3c4-fe98-2700-fcde-52f127bb2959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem crossing_eq_crossing_of_lowerCrossingTime_lt {M : ℕ} (hNM : N ≤ M)
    (h : lowerCrossingTime a b f N n ω < N) :
    upperCrossingTime a b f M n ω = upperCrossingTime a b f N n ω ∧
      lowerCrossingTime a b f M n ω = lowerCrossingTime a b f N n ω := by
  have h' : upperCrossingTime a b f N n ω < N :=
    lt_of_le_of_lt upperCrossingTime_le_lowerCrossingTime h
  induction' n with k ih
  · simp only [Nat.zero_eq, upperCrossingTime_zero, bot_eq_zero', eq_self_iff_true,
      lowerCrossingTime_zero, true_and_iff, eq_comm]
    refine' hitting_eq_hitting_of_exists hNM _
    rw [lowerCrossingTime, hitting_lt_iff] at h
    obtain ⟨j, hj₁, hj₂⟩ := h
    exacts [⟨j, ⟨hj₁.1, hj₁.2.le⟩, hj₂⟩, le_rfl]
  · specialize ih (lt_of_le_of_lt (lowerCrossingTime_mono (Nat.le_succ _)) h)
      (lt_of_le_of_lt (upperCrossingTime_mono (Nat.le_succ _)) h')
    have : upperCrossingTime a b f M k.succ ω = upperCrossingTime a b f N k.succ ω := by
      rw [upperCrossingTime_succ_eq, hitting_lt_iff] at h'
      simp only [upperCrossingTime_succ_eq]
      obtain ⟨j, hj₁, hj₂⟩ := h'
      rw [eq_comm, ih.2]
      exacts [hitting_eq_hitting_of_exists hNM ⟨j, ⟨hj₁.1, hj₁.2.le⟩, hj₂⟩, le_rfl]
    refine' ⟨this, _⟩
    simp only [lowerCrossingTime, eq_comm, this]
    refine' hitting_eq_hitting_of_exists hNM _
    rw [lowerCrossingTime, hitting_lt_iff _ le_rfl] at h
    obtain ⟨j, hj₁, hj₂⟩ := h
    exact ⟨j, ⟨hj₁.1, hj₁.2.le⟩, hj₂⟩
#align measure_theory.crossing_eq_crossing_of_lower_crossing_time_lt MeasureTheory.crossing_eq_crossing_of_lowerCrossingTime_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3b3b33a3e465841f05a443e9584dadfe60e312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
