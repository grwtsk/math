# BinarySurfaceFlow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:911dd65b46b4ae610e95dd858aff10bda2aad413b479af8aa7e8f9a0a4bc2593",
  "kind": "structure",
  "lexical_name": "BinarySurfaceFlow",
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
  "slug": "binarysurfaceflow--541dd56d1dcef4e1ad7bc187",
  "source": {
    "blob": "adf2d21f58e7cc0b865cf9687ce00286b5ccc3e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:541dd56d1dcef4e1ad7bc187386c7142674e97dd8e25b64316c7211d7f256fc9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:911dd65b46b4ae610e95dd858aff10bda2aad413b479af8aa7e8f9a0a4bc2593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinarySurfaceFlow where
  base : BinaryCellFlow
  /-- Radius of the sphere-like closure, when a radial interpretation exists. -/
  radius : base.Time → ℝ
  /-- Scalar outward speed. Positive = expansion, negative = contraction. -/
  radialSpeed : base.Time → ℝ
  /-- No non-uniform local directional component remains. -/
  directionalResidualZero : base.Time → Prop
  /-- Decidability is useful for classification theorems. -/
  directionalResidualZero_decidable :
    ∀ t, Decidable (directionalResidualZero t)

namespace BinarySurfaceFlow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adf2d21f58e7cc0b865cf9687ce00286b5ccc3e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
