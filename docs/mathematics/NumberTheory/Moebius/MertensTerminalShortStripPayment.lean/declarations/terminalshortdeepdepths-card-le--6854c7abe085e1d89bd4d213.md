# terminalShortDeepDepths_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0592828a-f20a-d357-0ebc-b3050a282c7e",
  "kind": "theorem",
  "lexical_name": "terminalShortDeepDepths_card_le",
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
  "slug": "terminalshortdeepdepths-card-le--6854c7abe085e1d89bd4d213",
  "source": {
    "blob": "5d3626a03c6979a18430215d285f4405e6f98eaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 49,
    "path": "GRWTSK/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6854c7abe085e1d89bd4d21344c97be9867a6c9433ab0b44613b55bca7dfbf2c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0592828a-f20a-d357-0ebc-b3050a282c7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminalShortDeepDepths_card_le
    (j : ℕ) :
    (terminalShortDeepDepths j).card ≤
      logarithmicShiftThreshold j + 2 := by
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  let H : ℕ := logarithmicShiftThreshold j
  by_cases hj : 2 ≤ j
  · have hXH : H ≤ X := by
      dsimp [H, X, logarithmicShiftThreshold]
      exact nat_add_two_le_two_pow_of_two_le hj
    have hsubset :
        terminalShortDeepDepths j ⊆ Finset.Ico (Y - (H + 2)) Y := by
      intro t ht
      simp only [terminalShortDeepDepths, Finset.mem_filter,
        Finset.mem_Ico] at ht
      have htY : t < Y := by simpa [Y] using ht.1.2
      have hcount : harmonicShiftCount j t < H := by
        simpa [H] using ht.2
      have hXt : X ≤ t + 1 := by
        by_contra hnot
        have htX : t + 1 < X := Nat.lt_of_not_ge hnot
        have hlower :
            harmonicShiftLower j t = X - t - 1 := by
          unfold harmonicShiftLower
          apply max_eq_right
          omega
        have hupper :
            harmonicShiftUpper j t = Y - t - 1 := by
          rfl
        have hcountX :
            harmonicShiftCount j t = X := by
          unfold harmonicShiftCount
          rw [hlower, hupper]
          have hYX : Y = 2 * X := by
            dsimp [X, Y]
            rw [Nat.pow_succ]
            ring
          omega
        omega
      have hlower1 : harmonicShiftLower j t = 1 := by
        unfold harmonicShiftLower
        apply max_eq_left
        omega
      have hcountform :
          harmonicShiftCount j t = Y - t - 2 := by
        unfold harmonicShiftCount harmonicShiftUpper
        rw [hlower1]
        change Y - t - 1 - 1 = Y - t - 2
        omega
      have hleft : Y - (H + 2) ≤ t := by
        omega
      exact Finset.mem_Ico.mpr ⟨hleft, htY⟩
    calc
      (terminalShortDeepDepths j).card ≤
          (Finset.Ico (Y - (H + 2)) Y).card :=
        Finset.card_le_card hsubset
      _ = Y - (Y - (H + 2)) := by
        simp
      _ ≤ H + 2 := by omega
  · have hjsmall : j = 0 ∨ j = 1 := by omega
    rcases hjsmall with rfl | rfl <;>
      decide

/-- The final inherited depth has empty triangular support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d3626a03c6979a18430215d285f4405e6f98eaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
