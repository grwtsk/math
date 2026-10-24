# actualOddNegativeEdgeBlock_tendsto_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66d48f00-681b-0837-0602-1b524191e7be",
  "kind": "theorem",
  "lexical_name": "actualOddNegativeEdgeBlock_tendsto_atBot",
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
  "slug": "actualoddnegativeedgeblock-tendsto-atbot--31aee24de5d903cd75546b21",
  "source": {
    "blob": "aaa8bdb946724f88c02ed5f6780e285e6e70310c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 240,
    "path": "GRWTSK/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variante757617297505c51a09bc00a78aa79d858d0f1770eeff5ef269a2a6fc4aa9a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31aee24de5d903cd75546b21ce479dd782ba73a814c45bdcf2679c047ab2bed4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variante757617297505c51a09bc00a78aa79d858d0f1770eeff5ef269a2a6fc4aa9a4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d48f00-681b-0837-0602-1b524191e7be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualOddNegativeEdgeBlock_tendsto_atBot :
    Tendsto actualOddNegativeEdgeBlock atTop atBot := by
  obtain ⟨R, hR, hbound⟩ := actualOddNegativeEdgeBlock_eventually_negative
  have hp : Tendsto (fun A : ℝ =>
      (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) atTop atTop := by
    simpa only [mul_div_assoc] using (Real.tendsto_exp_div_pow_atTop 9).const_mul_atTop
      (half_pos actualNegativeEdgeConstant_pos)
  have hl : Tendsto (fun A : ℝ =>
      -(actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) atTop atBot := by
    simpa only [Function.comp_def, neg_mul, neg_div] using
      (tendsto_neg_atTop_atBot.comp hp)
  apply tendsto_atBot_mono' atTop _ hl
  filter_upwards [eventually_ge_atTop R] with A hA
  exact hbound A hA

/-- Opposite odd compensation is necessary; the full odd readout remains signed and explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variante757617297505c51a09bc00a78aa79d858d0f1770eeff5ef269a2a6fc4aa9a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variante757617297505c51a09bc00a78aa79d858d0f1770eeff5ef269a2a6fc4aa9a4f.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaa8bdb946724f88c02ed5f6780e285e6e70310c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
