# exactSamplingLedgerCost_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b92a5f6-ae66-526a-0055-df1b4ba9f108",
  "kind": "theorem",
  "lexical_name": "exactSamplingLedgerCost_nonneg",
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
  "slug": "exactsamplingledgercost-nonneg--98640e318f921f373b451e05",
  "source": {
    "blob": "d45ab72e4b2bb542252f00584ee8bd297e273e8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98640e318f921f373b451e055ae29da7e43c2b09aecf82f3f81f255b3a178458",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b92a5f6-ae66-526a-0055-df1b4ba9f108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactSamplingLedgerCost_nonneg (C_D Q : ℝ) (hD : 0 ≤ C_D) (hQ : 91 ≤ Q) :
    0 ≤ exactSamplingLedgerCost C_D Q := by
  have hdelta := (tailEnergyCoefficient_pos Q).le
  have hlog : 0 ≤ Real.log (4 : ℝ) := Real.log_nonneg (by norm_num)
  have hQp : 0 < Q := by linarith
  unfold exactSamplingLedgerCost
  positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceExactOverlapSamplingConsumer/Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d45ab72e4b2bb542252f00584ee8bd297e273e8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
