# FiniteGradedCarrier3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0e85eb9c941a94cb1769a409c599e3d0cfa736368d31871db735c5e645054f1",
  "kind": "structure",
  "lexical_name": "FiniteGradedCarrier3",
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
  "slug": "finitegradedcarrier3--47459767dc2d57fd061c7e2b",
  "source": {
    "blob": "a5dea29babee5da1beb4af2489f27ff218cf3926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47459767dc2d57fd061c7e2bcf0e98415e3a0a68dd2cd0aae4b44bf033714742",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0e85eb9c941a94cb1769a409c599e3d0cfa736368d31871db735c5e645054f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteGradedCarrier3 where
  model : FiniteCellModel
  Cell : Type
  cellFintype : Fintype Cell
  cellDecidableEq : DecidableEq Cell
  dimension : Cell → Fin 4
  faces : Cell → Finset Cell
  face_irrefl : ∀ cell, cell ∉ faces cell
  face_dimension_lt : ∀ {face cell}, face ∈ faces cell →
    (dimension face).1 < (dimension cell).1
  face_transitive : ∀ {small middle large},
    small ∈ faces middle → middle ∈ faces large →
      small ∈ faces large
  geometricCell : Cell → Set SpatialPoint
  topCell_exists : ∃ cell, (dimension cell).1 = 3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5dea29babee5da1beb4af2489f27ff218cf3926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
