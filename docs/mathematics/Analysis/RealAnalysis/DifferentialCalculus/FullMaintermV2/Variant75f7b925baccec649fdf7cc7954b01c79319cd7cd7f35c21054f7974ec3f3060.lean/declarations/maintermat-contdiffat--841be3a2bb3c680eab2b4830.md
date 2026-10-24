# mainTermAt_contDiffAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b360cd5-1156-42cf-474b-26b6aaa9cec6",
  "kind": "theorem",
  "lexical_name": "mainTermAt_contDiffAt",
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
  "slug": "maintermat-contdiffat--841be3a2bb3c680eab2b4830",
  "source": {
    "blob": "61d105c5db95150bcde4b5f63180b4279b617403",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 291,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variant75f7b925baccec649fdf7cc7954b01c79319cd7cd7f35c21054f7974ec3f3060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:841be3a2bb3c680eab2b4830e75f4b19878b6b6fc822c851dc3d9ba21c824643",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variant75f7b925baccec649fdf7cc7954b01c79319cd7cd7f35c21054f7974ec3f3060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b360cd5-1156-42cf-474b-26b6aaa9cec6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mainTermAt_contDiffAt {A : ℝ} (hA : 0 < A) (U N : ℕ) :
    ContDiffAt ℝ 1 (fun B ↦ mainTermAt B U N) A :=
  (((((contDiffAt_const.mul (plainOffAt_contDiffAt hA U N)).add
    (normalizedMain_contDiffAt hA)).sub contDiffAt_const).sub
      (shortMangoldtAt_contDiffAt hA U)).sub (shortLogSamplingAt_contDiffAt hA U)).add
        (shortPlainSamplingAt_contDiffAt hA U)

/-- The original independent main term agrees with one fixed inventory on a regular neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variant75f7b925baccec649fdf7cc7954b01c79319cd7cd7f35c21054f7974ec3f3060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variant75f7b925baccec649fdf7cc7954b01c79319cd7cd7f35c21054f7974ec3f3060.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d105c5db95150bcde4b5f63180b4279b617403` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
