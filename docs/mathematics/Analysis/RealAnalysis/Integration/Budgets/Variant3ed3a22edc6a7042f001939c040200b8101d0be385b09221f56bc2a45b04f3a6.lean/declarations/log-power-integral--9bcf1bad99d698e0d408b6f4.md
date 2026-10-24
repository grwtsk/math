# log_power_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44d928ef-4d5a-5d1a-16be-8ebfd5ab1302",
  "kind": "theorem",
  "lexical_name": "log_power_integral",
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
  "slug": "log-power-integral--9bcf1bad99d698e0d408b6f4",
  "source": {
    "blob": "07aa01938322434936bdd0ebe83041ca3375dd47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bcf1bad99d698e0d408b6f422754439dae9c1d665995b40cfee3c611d0b0a36",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44d928ef-4d5a-5d1a-16be-8ebfd5ab1302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_power_integral {Y : ℝ} (hY : 1 ≤ Y) :
    (∫ y in (1 : ℝ)..Y, Real.log y * y ^ (-(3 : ℝ) / 2)) =
      4 - (2 * Real.log Y + 4) / Real.sqrt Y := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun y hy => log_power_primitive (by
      rw [uIcc_of_le hY] at hy
      linarith [hy.1])) (log_power_intervalIntegrable hY)]
  rw [inverse_half_eq (by linarith : 0 < Y)]
  simp only [Real.log_one, mul_zero, zero_add, Real.one_rpow]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07aa01938322434936bdd0ebe83041ca3375dd47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
