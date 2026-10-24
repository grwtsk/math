# actualXiLogStep_integral_at_integer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfffcb34-5fdf-0fc0-9ba0-d15f44f1d676",
  "kind": "theorem",
  "lexical_name": "actualXiLogStep_integral_at_integer",
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
  "slug": "actualxilogstep-integral-at-integer--9ef39f179d482e7435894c81",
  "source": {
    "blob": "50e3d4d0f14003667c2ae277d32cdc3e55f1f2e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ef39f179d482e7435894c81ec7ca510a0e4e4fa63e84fb37ddbca4ef0f9f92c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfffcb34-5fdf-0fc0-9ba0-d15f44f1d676`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogStep_integral_at_integer {N : ℕ} (hN : 7 ≤ N) :
    (∫ t in Real.log 7..Real.log (N : ℝ), |actualIntegerXiTailLogStep t|) =
      actualXiWeightedIntegerPrefix N := by
  have hh := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (f := fun t => |actualIntegerXiTailLogStep t|) (a := fun n : ℕ => Real.log (n : ℝ))
      hN (fun n hn => by
        have hn7 : 7 ≤ n := hn.1
        have hnp : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
        apply step_interval
        · apply Real.log_le_log (by norm_num)
          exact_mod_cast hn7
        · apply Real.log_le_log hnp
          exact_mod_cast (show n ≤ n + 1 by omega))
  norm_num only at hh
  rw [← hh]
  unfold actualXiWeightedIntegerPrefix
  rw [icc_pred_eq_ico]
  apply Finset.sum_congr rfl
  intro n hn
  have hn7 : 7 ≤ n := (Finset.mem_Ico.mp hn).1
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  rw [actualXiLogStep_cell_integral hn7
    (Real.log_le_log hnp (by exact_mod_cast (show n ≤ n + 1 by omega))) le_rfl,
      log_ratio hn7]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50e3d4d0f14003667c2ae277d32cdc3e55f1f2e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
