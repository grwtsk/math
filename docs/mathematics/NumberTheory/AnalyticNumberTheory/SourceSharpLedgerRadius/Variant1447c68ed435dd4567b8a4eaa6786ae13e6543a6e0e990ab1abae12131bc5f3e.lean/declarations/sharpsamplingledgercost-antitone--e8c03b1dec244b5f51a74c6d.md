# sharpSamplingLedgerCost_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59445641-3abe-e19c-b6e2-b57bfb64c382",
  "kind": "theorem",
  "lexical_name": "sharpSamplingLedgerCost_antitone",
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
  "slug": "sharpsamplingledgercost-antitone--e8c03b1dec244b5f51a74c6d",
  "source": {
    "blob": "a4bf05ef346bd8cec9d353998adb85ad0e83b728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant1447c68ed435dd4567b8a4eaa6786ae13e6543a6e0e990ab1abae12131bc5f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8c03b1dec244b5f51a74c6d4209a534ef3e03c0d779fc7f360f5a1a18ff08fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant1447c68ed435dd4567b8a4eaa6786ae13e6543a6e0e990ab1abae12131bc5f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59445641-3abe-e19c-b6e2-b57bfb64c382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpSamplingLedgerCost_antitone {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    exactSamplingLedgerCost (sharpDiagonalCost A) A ≤
      exactSamplingLedgerCost (sharpDiagonalCost Q) Q := by
  have hQpos : 0 < Q := by linarith
  have hApos : 0 < A := by linarith
  have hδ := tailEnergyCoefficient_pos Q
  have hC : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  have hd := tailEnergyCoefficient_antitone (by linarith : 0 < Q) hQA
  have hc := sharpDiagonalCost_antitone hQ hQA
  have hlog : 192 * tailEnergyCoefficient A / A ≤ 192 * tailEnergyCoefficient Q / Q := by
    calc
      _ ≤ 192 * tailEnergyCoefficient Q / A := by gcongr
      _ ≤ _ := div_le_div_of_nonneg_left (by positivity) (by linarith) hQA
  have hplain : 64 * (Real.log 4 + 4) * tailEnergyCoefficient A ≤
      64 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by gcongr
  unfold exactSamplingLedgerCost
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant1447c68ed435dd4567b8a4eaa6786ae13e6543a6e0e990ab1abae12131bc5f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant1447c68ed435dd4567b8a4eaa6786ae13e6543a6e0e990ab1abae12131bc5f3e.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4bf05ef346bd8cec9d353998adb85ad0e83b728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
