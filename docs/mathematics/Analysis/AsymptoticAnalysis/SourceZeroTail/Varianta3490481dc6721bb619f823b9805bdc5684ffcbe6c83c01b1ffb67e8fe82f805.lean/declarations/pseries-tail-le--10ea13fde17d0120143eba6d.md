# pseries_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d453902-16b6-b47f-4d95-55eb69cd2bcd",
  "kind": "theorem",
  "lexical_name": "pseries_tail_le",
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
  "slug": "pseries-tail-le--10ea13fde17d0120143eba6d",
  "source": {
    "blob": "1a43053c6d7ff60e19aaafb0467dae7c10645d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 205,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10ea13fde17d0120143eba6d4584b28a61cdf9c30422d7f609c730c68413a436",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d453902-16b6-b47f-4d95-55eb69cd2bcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pseries_tail_le (N : ℕ) (hN : 1 ≤ N) :
    (∑' j : ℕ, (j + N : ℝ) ^ (-2 : ℝ)) ≤ 2 / (N : ℝ) := by
  have hNpos : 0 < (N : ℝ) := by exact_mod_cast (lt_of_lt_of_le (by decide : 0 < 1) hN)
  have anti : AntitoneOn (fun x : ℝ ↦ x ^ (-2 : ℝ)) (Ici (N : ℝ)) := by
    intro x hx y _hy hxy
    exact Real.rpow_le_rpow_of_nonpos (hNpos.trans_le hx) hxy (by norm_num)
  have hi := anti.tsum_comp_add_le_integral N
    (integrableOn_Ioi_rpow_of_lt (by norm_num : (-2 : ℝ) < -1) hNpos)
    (fun x hx ↦ Real.rpow_nonneg (hNpos.trans hx).le _)
  rw [integral_Ioi_rpow_of_lt (by norm_num : (-2 : ℝ) < -1) hNpos] at hi
  norm_num only [show (-2 : ℝ) + 1 = -1 by norm_num, Real.rpow_neg_one, neg_div_neg_eq, div_one] at hi
  have hh : Summable (fun j : ℕ ↦ (j + N : ℝ) ^ (-2 : ℝ)) := by
    simpa only [Nat.cast_add] using
      (summable_nat_add_iff N).mpr (Real.summable_nat_rpow.mpr (by norm_num : (-2 : ℝ) < -1))
  have hsplit := hh.sum_add_tsum_nat_add 1
  simp only [Finset.sum_range_one, Nat.cast_zero, zero_add] at hsplit
  have hfirst : (N : ℝ) ^ (-2 : ℝ) ≤ 1 / (N : ℝ) := by
    have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
    rw [show (-2 : ℝ) = -(2 : ℕ) by norm_num, Real.rpow_neg (le_of_lt hNpos),
      Real.rpow_natCast]
    simpa only [one_div] using
      one_div_le_one_div_of_le hNpos (show (N : ℝ) ≤ (N : ℝ) ^ 2 by nlinarith)
  calc
    _ = (N : ℝ) ^ (-2 : ℝ) + ∑' j : ℕ, ((j + 1 : ℕ) + N : ℝ) ^ (-2 : ℝ) := hsplit.symm
    _ ≤ 1 / (N : ℝ) + 1 / (N : ℝ) := by
      gcongr
      simpa only [Nat.cast_add, Nat.cast_one, add_assoc, add_comm (1 : ℝ), one_div] using hi
    _ = _ := by ring

/-- Strict omitted-height convention; all multiplicity slots remain present. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a43053c6d7ff60e19aaafb0467dae7c10645d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
