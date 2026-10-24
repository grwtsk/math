# terminalGauge_eq_events

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c45ce9ea-d2ae-e9ae-7fd2-70908d62c58c",
  "kind": "theorem",
  "lexical_name": "terminalGauge_eq_events",
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
  "slug": "terminalgauge-eq-events--18138331b46685d51228b1f9",
  "source": {
    "blob": "8726697e74aa9321a878e5a340f390d06f6ca84b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Varianta3330b42248d519c994de8abbbf110eca7fc42e90c75e3e951592fac3c0b83e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18138331b46685d51228b1f9b03e9ffac5063b3abf5ba5de135e370247ca9442",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Varianta3330b42248d519c994de8abbbf110eca7fc42e90c75e3e951592fac3c0b83e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c45ce9ea-d2ae-e9ae-7fd2-70908d62c58c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminalGauge_eq_events (A : ℝ) (hA : 1 ≤ A) :
    blockGauge A (cutoff A) = totalEventWork A + totalQuadraticWork A := by
  have hc := nonaffineWork_corrected_terminal A hA
  have hn : 1 ≤ cutoff A := by
    unfold cutoff
    exact (Nat.one_le_floor_iff _).mpr (Real.one_le_exp (by linarith))
  have hi : localEnergy A 0 (node A 0) = sourceStorage A 0 := by
    rw [node_zero A (by linarith)]
    unfold localEnergy
    rw [min_eq_left hn]
    exact frozenEnergy_initial A
  have he : localEnergy A (cutoff A) (node A (cutoff A)) = 0 := by
    rw [node_cutoff A (by linarith)]
    unfold localEnergy
    rw [min_eq_right (Nat.le_succ _)]
    exact frozenEnergy_terminal A
  have hb : blockGauge A 0 = 0 := by simp [blockGauge]
  unfold correctedEnergy at hc
  rw [hi, he, hb] at hc
  have hc' := nonaffineWork_complete_balance A hA
  linarith only [hc, hc']

/-- The actual terminal expression includes the transported initial energy and all remainders. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Varianta3330b42248d519c994de8abbbf110eca7fc42e90c75e3e951592fac3c0b83e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceStorageDescent/Varianta3330b42248d519c994de8abbbf110eca7fc42e90c75e3e951592fac3c0b83e1.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8726697e74aa9321a878e5a340f390d06f6ca84b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
