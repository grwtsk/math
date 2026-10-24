# actualXiTerminalCellLogWeight_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77f59d7f-48e4-b8f2-89e1-fd5ca132e437",
  "kind": "theorem",
  "lexical_name": "actualXiTerminalCellLogWeight_sum",
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
  "slug": "actualxiterminalcelllogweight-sum--15de2e78c9a1b31f2d14db03",
  "source": {
    "blob": "c67c5252046c2ab1a431326ef1c6b0ed94bdd955",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant37836a9bc2315346d117034a151d79bb57edbe1deb9b9c2be8e9188b2676be3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15de2e78c9a1b31f2d14db03e62ac9867146ce69af5fb52f5dee53eb757feb1b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant37836a9bc2315346d117034a151d79bb57edbe1deb9b9c2be8e9188b2676be3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77f59d7f-48e4-b8f2-89e1-fd5ca132e437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiTerminalCellLogWeight_sum {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∑ n ∈ Finset.Icc 7 (Nat.floor (Real.exp T)), actualXiTerminalCellLogWeight T n) =
      T - Real.log 7 := by
  have hn := (terminal_floor_orders hT).1
  have hs := terminal_sum hT (fun _ => (1 : ℝ))
  simp only [one_mul] at hs
  rw [hs, icc_pred_eq_ico]
  have hh : (∑ n ∈ Finset.Ico 7 (Nat.floor (Real.exp T)),
      Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ))) =
      Real.log (Nat.floor (Real.exp T) : ℝ) - Real.log 7 := by
    calc
      _ = ∑ n ∈ Finset.Ico 7 (Nat.floor (Real.exp T)),
          (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) := by
        apply Finset.sum_congr rfl
        intro n hn'
        exact log_ratio (Finset.mem_Ico.mp hn').1
      _ = _ := Finset.sum_Ico_sub hn
  rw [hh]
  ring

/-- The source integer readout keeps signed alpha rows, the continuous baseline and closed seven. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant37836a9bc2315346d117034a151d79bb57edbe1deb9b9c2be8e9188b2676be3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant37836a9bc2315346d117034a151d79bb57edbe1deb9b9c2be8e9188b2676be3c.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c67c5252046c2ab1a431326ef1c6b0ed94bdd955` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
