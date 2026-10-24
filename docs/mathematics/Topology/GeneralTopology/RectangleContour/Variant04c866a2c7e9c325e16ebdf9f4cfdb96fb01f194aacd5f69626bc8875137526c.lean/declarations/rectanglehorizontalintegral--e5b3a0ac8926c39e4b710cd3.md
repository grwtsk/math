# rectangleHorizontalIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2186e4c3912f19d9724ecbd482a2ba4f2bef1cfa45d8eaf36b1f2e66d007486",
  "kind": "def",
  "lexical_name": "rectangleHorizontalIntegral",
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
  "slug": "rectanglehorizontalintegral--e5b3a0ac8926c39e4b710cd3",
  "source": {
    "blob": "6b3243cd547eb2f1ae83a33f297d53e778f28df8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5b3a0ac8926c39e4b710cd3d8151d470d2b70838b8ef787c0c92d56b7c385a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2186e4c3912f19d9724ecbd482a2ba4f2bef1cfa45d8eaf36b1f2e66d007486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rectangleHorizontalIntegral
    (f : ℂ → ℂ) (z w : ℂ) (y : ℝ) : ℂ :=
  ∫ x : ℝ in z.re..w.re, f (x + y * Complex.I)

/-- Vertical integral at real coordinate `x`, oriented from `z.im` to
`w.im`, including the differential factor `I`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b3243cd547eb2f1ae83a33f297d53e778f28df8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
