# actual_absolute_tail_eq_two_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c5a6ebd-4e9c-824a-87c2-b97eab6ed734",
  "kind": "theorem",
  "lexical_name": "actual_absolute_tail_eq_two_positive",
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
  "slug": "actual-absolute-tail-eq-two-positive--1ebec1ed0431557c44b172d8",
  "source": {
    "blob": "03441e917d28f850dfb503d9e1aacfc9867dc380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 179,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroHead/Variante1fc084e6ea1df8a437bdba3ad7d41155adb07dc772716544139e5750e3e3c02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ebec1ed0431557c44b172d8db41a8cef60e09a6c61166751188b5a9924e00f3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiveModeZeroHead/Variante1fc084e6ea1df8a437bdba3ad7d41155adb07dc772716544139e5750e3e3c02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c5a6ebd-4e9c-824a-87c2-b97eab6ed734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_absolute_tail_eq_two_positive (A T : ℝ) (hA : 1 ≤ A) (hT : 0 ≤ T) :
    actualAbsoluteZeroTail A T = 2 * actualPositiveAbsoluteZeroTail A T := by
  classical
  unfold actualAbsoluteZeroTail
  rw [tsum_subtype]
  have heq : (zeroStrictTailSet T).indicator (actualZeroSquareNorm A) =
      fun o => (zeroPositiveStrictTailSet T).indicator (actualZeroSquareNorm A) o +
        (zeroNegativeStrictTailSet T).indicator (actualZeroSquareNorm A) o := by
    funext o
    change (if T < |(ZeroObject.shiftedValue o).im| then actualZeroSquareNorm A o else 0) =
      (if T < (ZeroObject.shiftedValue o).im then actualZeroSquareNorm A o else 0) +
      (if (ZeroObject.shiftedValue o).im < -T then actualZeroSquareNorm A o else 0)
    by_cases hp : T < (ZeroObject.shiftedValue o).im
    · have hn : ¬ (ZeroObject.shiftedValue o).im < -T := by linarith
      have ht : T < |(ZeroObject.shiftedValue o).im| :=
        hp.trans_le (le_abs_self _)
      simp only [if_pos hp, if_neg hn, if_pos ht, add_zero]
    · by_cases hn : (ZeroObject.shiftedValue o).im < -T
      · have ht : T < |(ZeroObject.shiftedValue o).im| := by
          rw [abs_of_neg (by linarith : (ZeroObject.shiftedValue o).im < 0)]
          linarith
        simp only [if_neg hp, if_pos hn, if_pos ht, zero_add]
      · have ht : ¬ T < |(ZeroObject.shiftedValue o).im| := by
          rw [not_lt, abs_le]
          constructor <;> linarith
        simp only [if_neg hp, if_neg hn, if_neg ht, zero_add]
  rw [heq, ((actual_zero_square_norms_summable A hA).indicator _).tsum_add
    ((actual_zero_square_norms_summable A hA).indicator _)]
  rw [← tsum_subtype, ← tsum_subtype]
  change actualPositiveAbsoluteZeroTail A T + actualNegativeAbsoluteZeroTail A T = _
  rw [actual_negative_absolute_tail_eq_positive]
  ring

/-- Absolute values control only the omitted tail, never replace its signed summands. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiveModeZeroHead/Variante1fc084e6ea1df8a437bdba3ad7d41155adb07dc772716544139e5750e3e3c02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroHead/Variante1fc084e6ea1df8a437bdba3ad7d41155adb07dc772716544139e5750e3e3c02.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03441e917d28f850dfb503d9e1aacfc9867dc380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
