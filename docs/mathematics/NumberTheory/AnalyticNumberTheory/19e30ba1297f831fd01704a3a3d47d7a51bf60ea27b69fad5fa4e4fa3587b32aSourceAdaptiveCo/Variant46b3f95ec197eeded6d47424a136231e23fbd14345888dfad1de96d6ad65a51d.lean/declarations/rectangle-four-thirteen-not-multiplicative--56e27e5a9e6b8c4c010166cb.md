# rectangle_four_thirteen_not_multiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7506b514-77e9-6e72-2c6c-3e3bba02f3b4",
  "kind": "theorem",
  "lexical_name": "rectangle_four_thirteen_not_multiplicative",
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
  "slug": "rectangle-four-thirteen-not-multiplicative--56e27e5a9e6b8c4c010166cb",
  "source": {
    "blob": "06cf39c9c5405adbe002b3a9b2e1c5271e45e67b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo/Variant46b3f95ec197eeded6d47424a136231e23fbd14345888dfad1de96d6ad65a51d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56e27e5a9e6b8c4c010166cb16c3127b66c707eae76e8366e60741e4b66f1c4d",
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

Occurrence: `result:7506b514-77e9-6e72-2c6c-3e3bba02f3b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangle_four_thirteen_not_multiplicative :
    truncatedConvolution 4 13 (5 * 7) ≠
      truncatedConvolution 4 13 5 * truncatedConvolution 4 13 7 := by
  norm_num only [show (5 * 7 : ℕ) = 35 by norm_num,
    rectangle_four_thirteen_thirty_five]
  exact Ne.symm rectangle_four_thirteen_nonzero_factors

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo/Variant46b3f95ec197eeded6d47424a136231e23fbd14345888dfad1de96d6ad65a51d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo/Variant46b3f95ec197eeded6d47424a136231e23fbd14345888dfad1de96d6ad65a51d.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06cf39c9c5405adbe002b3a9b2e1c5271e45e67b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
