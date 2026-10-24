# actualMangoldtRieszPrimitive_eq_fixed_ramps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ef2f8d5-e9cb-6754-9c02-f104c021c528",
  "kind": "theorem",
  "lexical_name": "actualMangoldtRieszPrimitive_eq_fixed_ramps",
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
  "slug": "actualmangoldtrieszprimitive-eq-fixed-ramps--df35d94ebf9b3b88709ebb0c",
  "source": {
    "blob": "4c1e1e98cc08544e0611bf70174cd1375ab04abb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variantf4b3871128ebb397ff000f3c3bb3ecdaaab76c851810f2c7335ce1ed4ed784b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df35d94ebf9b3b88709ebb0cf070aef3d6f4ba87e50846531aa80d642af90749",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variantf4b3871128ebb397ff000f3c3bb3ecdaaab76c851810f2c7335ce1ed4ed784b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ef2f8d5-e9cb-6754-9c02-f104c021c528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtRieszPrimitive_eq_fixed_ramps {b t : ℝ} (ht : t ≤ b) :
    actualMangoldtRieszPrimitive t =
      (∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)) -
          actualRieszContinuousRamp t := by
  classical
  have heq : (∑ n ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)) =
      ∑ n ∈ (primePowerInventory b).filter (fun n => Real.log n ≤ t),
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * (t - Real.log n) := by
    rw [Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hl : Real.log (n : ℝ) ≤ t
    · rw [if_pos hl, max_eq_right (by linarith)]
    · rw [if_neg hl, max_eq_left (by linarith), mul_zero]
  rw [primePowerInventory_filter_log b t ht] at heq
  unfold actualMangoldtRieszPrimitive
  rw [heq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variantf4b3871128ebb397ff000f3c3bb3ecdaaab76c851810f2c7335ce1ed4ed784b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variantf4b3871128ebb397ff000f3c3bb3ecdaaab76c851810f2c7335ce1ed4ed784b2.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c1e1e98cc08544e0611bf70174cd1375ab04abb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
