# SmoothAt.comp_smoothWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c7fe5f5-09d5-5170-18cb-451025c1e371",
  "kind": "theorem",
  "lexical_name": "SmoothAt.comp_smoothWithinAt",
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
  "slug": "smoothat-comp-smoothwithinat--2571e7eea35b99ec8561e775",
  "source": {
    "blob": "606ffb771552285b2831ba6b0395f2331728ac9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1040,
    "line": 1035,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2571e7eea35b99ec8561e7756ca416f2faca792dece9343d5bf6126d3ec2ca21",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c7fe5f5-09d5-5170-18cb-451025c1e371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1035–1040.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SmoothAt.comp_smoothWithinAt {g : M' → M''} (x : M) (hg : SmoothAt I' I'' g (f x))
    (hf : SmoothWithinAt I I' f s x) : SmoothWithinAt I I'' (g ∘ f) s x :=
  hg.comp_contMDiffWithinAt x hf
#align smooth_at.comp_smooth_within_at SmoothAt.comp_smoothWithinAt

/-- The composition of `C^n` functions at points is `C^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean#L1035).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `606ffb771552285b2831ba6b0395f2331728ac9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
