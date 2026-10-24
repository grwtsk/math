# actualXiLogStep_integral_eq_prefix_fraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c932458f-4d34-58fc-ca0f-403706048628",
  "kind": "theorem",
  "lexical_name": "actualXiLogStep_integral_eq_prefix_fraction",
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
  "slug": "actualxilogstep-integral-eq-prefix-fraction--ddbbbb2934cbed21750586cf",
  "source": {
    "blob": "40334d6bf5114966b211ae008ad31e0e7c815e40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant09bc1c2cacacd9257e925e4b9bf08b18954feba00f136650eb91f300a2b1babf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddbbbb2934cbed21750586cf31e4bd4b5ad91e41734792b7c72715593cbbfa10",
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

Occurrence: `result:c932458f-4d34-58fc-ca0f-403706048628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogStep_integral_eq_prefix_fraction {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ t in Real.log 7..T, |actualIntegerXiTailLogStep t|) =
      actualXiWeightedIntegerPrefix (Nat.floor (Real.exp T)) +
        |actualAnchoredXiTailPrimitive (Real.log (Nat.floor (Real.exp T) : ℝ))| *
          (T - Real.log (Nat.floor (Real.exp T) : ℝ)) := by
  obtain ⟨hn, hl, hu⟩ := terminal_floor_orders hT
  have hnlog : Real.log 7 ≤ Real.log (Nat.floor (Real.exp T) : ℝ) := by
    apply Real.log_le_log (by norm_num)
    exact_mod_cast hn
  have hi := step_interval hnlog hl
  rw [← intervalIntegral.integral_add_adjacent_intervals
    (actualIntegerXiTailLogStep_intervalIntegrable hnlog).abs hi,
      actualXiLogStep_integral_at_integer hn, actualXiLogStep_cell_integral hn hl hu]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant09bc1c2cacacd9257e925e4b9bf08b18954feba00f136650eb91f300a2b1babf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant09bc1c2cacacd9257e925e4b9bf08b18954feba00f136650eb91f300a2b1babf.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40334d6bf5114966b211ae008ad31e0e7c815e40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
