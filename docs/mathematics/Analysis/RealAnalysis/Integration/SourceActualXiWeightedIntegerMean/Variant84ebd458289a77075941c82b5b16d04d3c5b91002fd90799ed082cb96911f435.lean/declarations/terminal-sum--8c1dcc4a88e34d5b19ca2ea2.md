# terminal_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fe82003-f49a-663f-a882-ce3e8207c35f",
  "kind": "theorem",
  "lexical_name": "terminal_sum",
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
  "slug": "terminal-sum--8c1dcc4a88e34d5b19ca2ea2",
  "source": {
    "blob": "f2b57af8f949c884e71d96e36a23d5d08904da9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant84ebd458289a77075941c82b5b16d04d3c5b91002fd90799ed082cb96911f435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c1dcc4a88e34d5b19ca2ea2ed1ee4ed9b07559171a0fb58a89444353b3b0ea4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant84ebd458289a77075941c82b5b16d04d3c5b91002fd90799ed082cb96911f435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fe82003-f49a-663f-a882-ce3e8207c35f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem terminal_sum {T : ℝ} (hT : Real.log 7 ≤ T) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T)), f n * actualXiTerminalCellLogWeight T n) =
      (∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T) - 1),
        f n * Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ))) +
          f (Nat.floor (Real.exp T)) * (T - Real.log (Nat.floor (Real.exp T) : ℝ)) := by
  have hn := (terminal_floor_orders hT).1
  have he : (∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T)), f n *
      actualXiTerminalCellLogWeight T n) =
      (∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T) - 1), f n *
        actualXiTerminalCellLogWeight T n) +
          f (Nat.floor (Real.exp T)) *
            actualXiTerminalCellLogWeight T (Nat.floor (Real.exp T)) := by
    simpa only [Nat.sub_add_cancel (show 1 ≤ Nat.floor (Real.exp T) by omega)] using
      (Finset.sum_Icc_succ_top
        (f := fun n => f n * actualXiTerminalCellLogWeight T n)
        (by omega : 7 ≤ (Nat.floor (Real.exp T) - 1) + 1))
  rw [he]
  simp only [actualXiTerminalCellLogWeight]
  congr 1
  apply Finset.sum_congr rfl
  intro n hn'
  have hne : n ≠ Nat.floor (Real.exp T) := by
    have := (Finset.mem_Icc.mp hn').2
    omega
  rw [if_neg hne]

/-- A single positive-weight finite inventory includes the true last fraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant84ebd458289a77075941c82b5b16d04d3c5b91002fd90799ed082cb96911f435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant84ebd458289a77075941c82b5b16d04d3c5b91002fd90799ed082cb96911f435.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b57af8f949c884e71d96e36a23d5d08904da9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
