# shiftedDensityMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a1e105c3dba883129a7cdb44918e6f04cd0d07531d17d7a6dcdcef46f0c7f5f",
  "kind": "def",
  "lexical_name": "shiftedDensityMeasure",
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
  "slug": "shifteddensitymeasure--0526c7d4753a4a02d1fa5174",
  "source": {
    "blob": "dc5067144907f5f4cf7f6acc8d70acd9c88a67f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 16,
    "path": "GRWTSK/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0526c7d4753a4a02d1fa5174e368789bb02779b8891cb082fd080bfde7edb625",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a1e105c3dba883129a7cdb44918e6f04cd0d07531d17d7a6dcdcef46f0c7f5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftedDensityMeasure (t : ℝ) (density : ℝ → ℝ≥0∞) : Measure ℝ :=
  Measure.map (fun u : ℝ => u - t) ((volume.restrict (Ici t)).withDensity density)

/-- Translation is injective, so no singleton mass can be introduced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NoEigenDraft/Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc5067144907f5f4cf7f6acc8d70acd9c88a67f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
