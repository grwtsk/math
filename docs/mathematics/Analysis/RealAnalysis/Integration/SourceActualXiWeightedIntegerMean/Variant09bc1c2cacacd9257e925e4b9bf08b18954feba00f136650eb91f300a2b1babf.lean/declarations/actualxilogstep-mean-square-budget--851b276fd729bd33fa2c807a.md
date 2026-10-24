# actualXiLogStep_mean_square_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fcfdc33-d01b-9910-1f09-830c48ba2790",
  "kind": "theorem",
  "lexical_name": "actualXiLogStep_mean_square_budget",
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
  "slug": "actualxilogstep-mean-square-budget--851b276fd729bd33fa2c807a",
  "source": {
    "blob": "40334d6bf5114966b211ae008ad31e0e7c815e40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 241,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant09bc1c2cacacd9257e925e4b9bf08b18954feba00f136650eb91f300a2b1babf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:851b276fd729bd33fa2c807a8c9ea5b064a44c1bb56be76aac4bbdc79da70696",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant09bc1c2cacacd9257e925e4b9bf08b18954feba00f136650eb91f300a2b1babf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fcfdc33-d01b-9910-1f09-830c48ba2790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogStep_mean_square_budget {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ t in Real.log 7..T, |actualIntegerXiTailLogStep t|) ^ 2 ≤
      (T - Real.log 7) * actualXiIntegerSquareWindow T := by
  rw [actualXiLogStep_integral_eq_terminal_sum hT]
  have hh := Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul
    (Finset.Icc 7 (Nat.floor (Real.exp T)))
    (r := fun n => |actualAnchoredXiTailPrimitive (Real.log (n : ℝ))| *
      actualXiTerminalCellLogWeight T n)
    (f := fun n => |actualAnchoredXiTailPrimitive (Real.log (n : ℝ))| ^ 2 *
      actualXiTerminalCellLogWeight T n)
    (g := fun n => actualXiTerminalCellLogWeight T n)
    (fun n hn => mul_nonneg (sq_nonneg _) (terminal_weight_nonneg hT hn))
    (fun n hn => terminal_weight_nonneg hT hn)
    (fun n _ => le_of_eq (by ring))
  rw [actualXiTerminalCellLogWeight_sum hT] at hh
  unfold actualXiIntegerSquareWindow
  simpa only [mul_comm] using hh

/-- The actual primitive mean has only the proved finite error beyond this exact readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant09bc1c2cacacd9257e925e4b9bf08b18954feba00f136650eb91f300a2b1babf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant09bc1c2cacacd9257e925e4b9bf08b18954feba00f136650eb91f300a2b1babf.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40334d6bf5114966b211ae008ad31e0e7c815e40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
