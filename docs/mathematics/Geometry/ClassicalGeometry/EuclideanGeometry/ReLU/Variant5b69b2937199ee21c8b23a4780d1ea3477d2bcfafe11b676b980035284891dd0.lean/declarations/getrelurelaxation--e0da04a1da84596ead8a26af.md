# getReLURelaxation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b890de2a52198e471e6e1e4a4835b7d28754bb0d994f6809f17b4a715d75bfb",
  "kind": "def",
  "lexical_name": "getReLURelaxation",
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
  "slug": "getrelurelaxation--e0da04a1da84596ead8a26af",
  "source": {
    "blob": "c39feccad70d53e3f42359df6c9fa7d5771bb6fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 132,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0da04a1da84596ead8a26afe4bb6dab1c1caec25ec8b7bb4ae1135c68d0e695",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b890de2a52198e471e6e1e4a4835b7d28754bb0d994f6809f17b4a715d75bfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getReLURelaxation (l u : ℚ) : SymbolicBound :=
  if 0 ≤ l then
    -- Always active: ReLU(x) = x. Both bounds are y = x.
    { lower := ⟨1, 0⟩, upper := ⟨1, 0⟩ }
  else if u ≤ 0 then
    -- Always inactive: ReLU(x) = 0. Both bounds are y = 0.
    { lower := ⟨0, 0⟩, upper := ⟨0, 0⟩ }
  else
    -- Crossing case: Triangle relaxation
    -- Lower: y ≥ 0 (simplest valid lower bound)
    -- Upper: DeepPoly line through (l, 0) and (u, u)
    { lower := ⟨0, 0⟩,
      upper := crossingUpperBound l u }

/-- Lower bound for crossing case: 0 ≤ max(0, x) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39feccad70d53e3f42359df6c9fa7d5771bb6fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
