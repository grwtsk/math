# actualAnchoredXiTailPrimitive_cell_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5be12d9a-a2b4-3a60-4848-a707094f3a5c",
  "kind": "theorem",
  "lexical_name": "actualAnchoredXiTailPrimitive_cell_difference",
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
  "slug": "actualanchoredxitailprimitive-cell-difference--9c8def1dbe15bf5b47d754a1",
  "source": {
    "blob": "a2613ee9252343330d52d020949cb1b7ff77c378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5c44c12381c4c7fb10f1b12d5bcbdc27861ab42290b6c45895f7d49cd2e1d72a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c8def1dbe15bf5b47d754a14106569e5c7d79f1dc53000c57f8f7c74bfde6a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5c44c12381c4c7fb10f1b12d5bcbdc27861ab42290b6c45895f7d49cd2e1d72a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5be12d9a-a2b4-3a60-4848-a707094f3a5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAnchoredXiTailPrimitive_cell_difference {N : ℕ} {Y : ℝ}
    (hN : 7 ≤ N) (hY : (N : ℝ) ≤ Y) (hYs : Y ≤ (N + 1 : ℕ)) :
    actualAnchoredXiTailPrimitive (Real.log Y) -
        actualAnchoredXiTailPrimitive (Real.log (N : ℝ)) =
      2 * (Chebyshev.psi (N : ℝ) +
        2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
        (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) -
      2 * (Real.sqrt Y - Real.sqrt (N : ℝ)) := by
  have hn : 0 < (N : ℝ) := by exact_mod_cast (show 0 < N by omega)
  have hy : 0 < Y := hn.trans_le hY
  have hn7 : (7 : ℝ) ≤ N := by exact_mod_cast hN
  have hlN : Real.log 7 ≤ Real.log (N : ℝ) := Real.log_le_log (by norm_num) hn7
  have hlY : Real.log 7 ≤ Real.log Y := Real.log_le_log (by norm_num) (hn7.trans hY)
  rw [actualAnchoredXiTailPrimitive_eq_closed_pair hlY,
    actualAnchoredXiTailPrimitive_eq_closed_pair hlN, Real.exp_log hy, Real.exp_log hn]
  have hk := actualClosedMangoldtXiPair_cell_difference (by omega : 1 ≤ N) hY hYs
  have hsn := Real.sq_sqrt hn.le
  have hsy := Real.sq_sqrt hy.le
  have hsnp : 0 < Real.sqrt (N : ℝ) := Real.sqrt_pos.2 hn
  have hsyp : 0 < Real.sqrt Y := Real.sqrt_pos.2 hy
  field_simp
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5c44c12381c4c7fb10f1b12d5bcbdc27861ab42290b6c45895f7d49cd2e1d72a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5c44c12381c4c7fb10f1b12d5bcbdc27861ab42290b6c45895f7d49cd2e1d72a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2613ee9252343330d52d020949cb1b7ff77c378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
