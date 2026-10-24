# ContDiff.comp_contMDiffAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e8f0a34-1c54-b3e7-d499-ec36483b1ac9",
  "kind": "theorem",
  "lexical_name": "ContDiff.comp_contMDiffAt",
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
  "slug": "contdiff-comp-contmdiffat--d074b58f6367f42baa81225f",
  "source": {
    "blob": "606ffb771552285b2831ba6b0395f2331728ac9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1407,
    "line": 1404,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d074b58f6367f42baa81225fccf910d5d19b8c17fc2f879bb205ca8fca766873",
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

Occurrence: `result:0e8f0a34-1c54-b3e7-d499-ec36483b1ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1404–1407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiff.comp_contMDiffAt {g : F → F'} {f : M → F} {x : M} (hg : ContDiff 𝕜 n g)
    (hf : ContMDiffAt I 𝓘(𝕜, F) n f x) : ContMDiffAt I 𝓘(𝕜, F') n (g ∘ f) x :=
  hg.comp_contMDiffWithinAt hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean#L1404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `606ffb771552285b2831ba6b0395f2331728ac9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
