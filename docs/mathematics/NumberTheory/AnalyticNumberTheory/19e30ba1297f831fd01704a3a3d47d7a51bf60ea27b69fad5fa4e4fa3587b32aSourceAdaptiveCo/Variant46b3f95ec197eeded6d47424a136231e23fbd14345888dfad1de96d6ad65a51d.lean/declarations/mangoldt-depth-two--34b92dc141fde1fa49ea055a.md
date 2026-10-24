# mangoldt_depth_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39c79767-7351-afd8-2e28-803038e38d69",
  "kind": "theorem",
  "lexical_name": "mangoldt_depth_two",
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
  "slug": "mangoldt-depth-two--34b92dc141fde1fa49ea055a",
  "source": {
    "blob": "06cf39c9c5405adbe002b3a9b2e1c5271e45e67b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo/Variant46b3f95ec197eeded6d47424a136231e23fbd14345888dfad1de96d6ad65a51d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34b92dc141fde1fa49ea055a8a49bed9fc37ff24c7b4ba0442db6fd05aa23287",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo/Variant46b3f95ec197eeded6d47424a136231e23fbd14345888dfad1de96d6ad65a51d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39c79767-7351-afd8-2e28-803038e38d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldt_depth_two : adaptiveMangoldtDepth 2 = 13 := by
  rw [adaptiveMangoldtDepth, source_cutoff_two, mobius_cutoff_two]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo/Variant46b3f95ec197eeded6d47424a136231e23fbd14345888dfad1de96d6ad65a51d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo/Variant46b3f95ec197eeded6d47424a136231e23fbd14345888dfad1de96d6ad65a51d.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06cf39c9c5405adbe002b3a9b2e1c5271e45e67b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
