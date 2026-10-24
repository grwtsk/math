# negativeSurvival_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54f4e1d1-cde8-9372-ddc1-1340352365ad",
  "kind": "theorem",
  "lexical_name": "negativeSurvival_antitone",
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
  "slug": "negativesurvival-antitone--7302e869a10d3c5b9478d441",
  "source": {
    "blob": "59f4910115937ddf6128de7f427324e540ea9857",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7302e869a10d3c5b9478d441b796a0a6ae75d9fcefadcd1422842adbcca07f6e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54f4e1d1-cde8-9372-ddc1-1340352365ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSurvival_antitone {A : ℝ} (hA : 1 ≤ A) :
    Antitone (negativeSurvival A) := by
  intro u v huv
  have hc := negativeSlope_continuous (show 0 < A by linarith)
  have hi := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hc.intervalIntegrable u v) (hc.intervalIntegrable v (2 * A))
  have hn := intervalIntegral.integral_nonneg_of_forall (μ := volume) huv (negativeSlope_nonneg A)
  have ht : (∫ t in v..2 * A, negativeSlope A t) ≤ ∫ t in u..2 * A, negativeSlope A t := by
    linarith
  exact div_le_div_of_nonneg_right ht (negativeMass_pos hA).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Variant09f893a5349241acdcb3dd91ed93ab3febf7ca34303ec527b1804ecca8ae146b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59f4910115937ddf6128de7f427324e540ea9857` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
