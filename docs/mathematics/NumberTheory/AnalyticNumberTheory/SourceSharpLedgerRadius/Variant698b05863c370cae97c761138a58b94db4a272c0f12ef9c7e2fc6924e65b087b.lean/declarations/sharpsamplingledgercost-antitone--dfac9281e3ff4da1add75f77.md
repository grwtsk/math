# sharpSamplingLedgerCost_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a04bf47f-5690-9ba0-264d-1130c7df4c27",
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
  "slug": "sharpsamplingledgercost-antitone--dfac9281e3ff4da1add75f77",
  "source": {
    "blob": "8bd1c4d05e592dfacfccac8c2191b93a2d912c62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant698b05863c370cae97c761138a58b94db4a272c0f12ef9c7e2fc6924e65b087b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfac9281e3ff4da1add75f7771a54e4df6350a890512af68e8099f4ebef0e582",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant698b05863c370cae97c761138a58b94db4a272c0f12ef9c7e2fc6924e65b087b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a04bf47f-5690-9ba0-264d-1130c7df4c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–66.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant698b05863c370cae97c761138a58b94db4a272c0f12ef9c7e2fc6924e65b087b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant698b05863c370cae97c761138a58b94db4a272c0f12ef9c7e2fc6924e65b087b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bd1c4d05e592dfacfccac8c2191b93a2d912c62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
