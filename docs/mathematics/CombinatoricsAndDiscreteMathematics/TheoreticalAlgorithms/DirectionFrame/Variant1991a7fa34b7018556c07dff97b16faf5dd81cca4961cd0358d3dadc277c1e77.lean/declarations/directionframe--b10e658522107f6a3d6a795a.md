# DirectionFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5fef0b07f0d422603b7122deb7ebd6428eb59aef8f2a54e8b2e89986ee2d540",
  "kind": "structure",
  "lexical_name": "DirectionFrame",
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
  "slug": "directionframe--b10e658522107f6a3d6a795a",
  "source": {
    "blob": "77935d3a388211364ae5f65d1cf6352a5e42c005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variant1991a7fa34b7018556c07dff97b16faf5dd81cca4961cd0358d3dadc277c1e77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b10e658522107f6a3d6a795aea0954e6f15514f1a0cf73ab7c43ae2eaab75806",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variant1991a7fa34b7018556c07dff97b16faf5dd81cca4961cd0358d3dadc277c1e77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5fef0b07f0d422603b7122deb7ebd6428eb59aef8f2a54e8b2e89986ee2d540`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DirectionFrame where
  dim : Nat
  Direction : Type u
  directionIndex : Direction → Nat
  directionIndexSound : Prop
  directionIndexProof : directionIndexSound

  nullLabel : String

  opposite : Direction → Direction
  opposite_involutive :
    ∀ d : Direction, opposite (opposite d) = d

  polarity : Direction → Int

  /-- A finite denominator for full rotation around the null point. For the
  binary circle this is 2 half-turns; for an m-gon it is m arcs. -/
  fullTurnDenominator : Nat
  fullTurnPositive : fullTurnDenominator > 0

  /-- Directional phase coordinate as an integer numerator modulo
  `fullTurnDenominator`. This is syntax/metadata unless interpreted by a
  phase realization. -/
  phaseNumerator : Direction → Int

/-- A pair of opposite directions in a frame. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variant1991a7fa34b7018556c07dff97b16faf5dd81cca4961cd0358d3dadc277c1e77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variant1991a7fa34b7018556c07dff97b16faf5dd81cca4961cd0358d3dadc277c1e77.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77935d3a388211364ae5f65d1cf6352a5e42c005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
