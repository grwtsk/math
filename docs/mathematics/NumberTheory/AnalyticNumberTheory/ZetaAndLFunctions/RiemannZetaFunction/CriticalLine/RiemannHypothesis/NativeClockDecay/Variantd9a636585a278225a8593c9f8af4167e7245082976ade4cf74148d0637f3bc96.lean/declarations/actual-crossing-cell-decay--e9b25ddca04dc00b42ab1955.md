# actual_crossing_cell_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f328f05e-b79a-48dc-64ff-0e0e6d818d33",
  "kind": "theorem",
  "lexical_name": "actual_crossing_cell_decay",
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
  "slug": "actual-crossing-cell-decay--e9b25ddca04dc00b42ab1955",
  "source": {
    "blob": "8ee69de9948a8b0906034afcc31ca26127a3bd1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeClockDecay/Variantd9a636585a278225a8593c9f8af4167e7245082976ade4cf74148d0637f3bc96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9b25ddca04dc00b42ab19556db9f77d8ba771d60b73e892d31ee75fab2de48e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeClockDecay/Variantd9a636585a278225a8593c9f8af4167e7245082976ade4cf74148d0637f3bc96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f328f05e-b79a-48dc-64ff-0e0e6d818d33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_crossing_cell_decay {n : ℕ} (hn : 3 ≤ n) (hc : isCrossing n) :
    cellClock n (n + 1 : ℕ) * max |storage (n - 1)| |storage n| ≤
      Real.log n / ((n : ℝ) * Real.sqrt n) := by
  have hm := actual_crossing_magnitude hn hc
  have hw := literal_native_cell_decay (by omega : 1 ≤ n)
  have hl : 0 ≤ Real.log (n : ℝ) := (log_index_gt_one hn).le.trans' (by norm_num)
  calc
    _ ≤ cellClock n (n + 1 : ℕ) * Real.log n :=
      mul_le_mul_of_nonneg_left hm (cellClock_pos (by omega)).le
    _ ≤ (1 / ((n : ℝ) * Real.sqrt n)) * Real.log n :=
      mul_le_mul_of_nonneg_right hw hl
    _ = _ := by ring

end
end GRWTSK.RiemannHypothesis.Conversation.NativeClockDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeClockDecay/Variantd9a636585a278225a8593c9f8af4167e7245082976ade4cf74148d0637f3bc96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeClockDecay/Variantd9a636585a278225a8593c9f8af4167e7245082976ade4cf74148d0637f3bc96.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ee69de9948a8b0906034afcc31ca26127a3bd1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
