# FiniteGradedCarrier3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e5c2a28456d6fb44cd9001c415a5d35956fa02af98f0e231ecfeff1ef13529e",
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
  "slug": "finitegradedcarrier3--0300f19f4b950c0eca8361c2",
  "source": {
    "blob": "2a9acc30a2b29463428075efdd4473a25e8eddf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0300f19f4b950c0eca8361c2c93fcf36e71b503b32d9ee619446430bbfb2b46b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e5c2a28456d6fb44cd9001c415a5d35956fa02af98f0e231ecfeff1ef13529e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–102.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9acc30a2b29463428075efdd4473a25e8eddf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
