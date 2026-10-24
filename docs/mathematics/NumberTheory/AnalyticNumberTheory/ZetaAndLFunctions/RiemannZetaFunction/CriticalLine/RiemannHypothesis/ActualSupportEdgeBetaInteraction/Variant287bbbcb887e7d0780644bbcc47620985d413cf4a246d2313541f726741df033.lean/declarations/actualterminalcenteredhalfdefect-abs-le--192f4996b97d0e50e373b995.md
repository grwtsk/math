# actualTerminalCenteredHalfDefect_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d930447-1082-9684-9d45-d171a76840d6",
  "kind": "theorem",
  "lexical_name": "actualTerminalCenteredHalfDefect_abs_le",
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
  "slug": "actualterminalcenteredhalfdefect-abs-le--192f4996b97d0e50e373b995",
  "source": {
    "blob": "e657917e165e46d6bae49dff441138f1ac8a1a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Variant287bbbcb887e7d0780644bbcc47620985d413cf4a246d2313541f726741df033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:192f4996b97d0e50e373b995a154b756c4f5206128e20fe387926d15e2cad81d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Variant287bbbcb887e7d0780644bbcc47620985d413cf4a246d2313541f726741df033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d930447-1082-9684-9d45-d171a76840d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTerminalCenteredHalfDefect_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualTerminalCenteredHalfDefect A| ≤
      3 * (vaughanCutoff A : ℝ) /
        Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hK : U + 1 ≤ K := actual_column_window_nonempty hA
  have hL : 0 < ((K - 1 : ℕ) : ℝ) := by exact_mod_cast (show 0 < K - 1 by omega)
  have hs : Real.sqrt ((K - 1 : ℕ) : ℝ) ≤ Real.sqrt (K : ℝ) :=
    Real.sqrt_le_sqrt (by exact_mod_cast Nat.sub_le K 1)
  have hterm := actualCenteredColumnTerminalTrace_abs_le hA
  have hterm' : |actualCenteredColumnTerminalTrace A| ≤
      ((U : ℝ) - 1) / Real.sqrt ((K - 1 : ℕ) : ℝ) := by
    have hUn : (1 : ℝ) ≤ U := by exact_mod_cast hU
    exact hterm.trans (div_le_div_of_nonneg_left
      (by linarith : 0 ≤ (U : ℝ) - 1) (Real.sqrt_pos.2 hL) hs)
  have hraw := actualCenteredColumnHalfInventory_sub_zetaMain_abs_le hA
  have he : actualTerminalCenteredHalfDefect A =
      (actualCenteredColumnHalfInventory A - actualCenteredHalfZetaMain U) -
        actualCenteredColumnTerminalTrace A := by
    unfold actualTerminalCenteredHalfDefect
    dsimp only [U]
    ring
  rw [he]
  have ht := abs_sub (actualCenteredColumnHalfInventory A - actualCenteredHalfZetaMain U)
    (actualCenteredColumnTerminalTrace A)
  have hh := add_le_add hraw hterm'
  dsimp only [U, K] at hh ht ⊢
  rw [← add_div] at hh
  exact (ht.trans hh).trans_eq (by ring)

/-- The actual exponential support radius and true natural quotient have this ratio bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Variant287bbbcb887e7d0780644bbcc47620985d413cf4a246d2313541f726741df033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Variant287bbbcb887e7d0780644bbcc47620985d413cf4a246d2313541f726741df033.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e657917e165e46d6bae49dff441138f1ac8a1a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
