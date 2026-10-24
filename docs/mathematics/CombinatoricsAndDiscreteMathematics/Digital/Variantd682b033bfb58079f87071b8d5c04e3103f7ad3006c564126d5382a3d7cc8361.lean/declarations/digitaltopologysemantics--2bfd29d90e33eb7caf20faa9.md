# DigitalTopologySemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5eb6fabf21d5cd2f1a66055543d6341e4fb5063de9f59f651fcd308063e063fb",
  "kind": "structure",
  "lexical_name": "DigitalTopologySemantics",
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
  "slug": "digitaltopologysemantics--2bfd29d90e33eb7caf20faa9",
  "source": {
    "blob": "1310d937e46ae77bd686c04e730bf8be7ee59c3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 226,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bfd29d90e33eb7caf20faa9dd24ec6232ed15276f659b10dda163525db54565",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5eb6fabf21d5cd2f1a66055543d6341e4fb5063de9f59f651fcd308063e063fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DigitalTopologySemantics (rows columns : Nat) where
  incidenceMap :
    AdjacencyPolicy → AdjacencyPolicy →
      Cell rows columns → Finset (Cell rows columns)
  incidenceLowersDimension :
    ∀ foreground background cell face,
      face ∈ incidenceMap foreground background cell →
        face.dimension < cell.dimension
  linkCondition :
    (foreground background : AdjacencyPolicy) →
      (cut : CutDatum rows columns) → Repair cut → Prop
  betti :
    AdjacencyPolicy → AdjacencyPolicy →
      RasterState rows columns → Nat → Nat
  exactCarrierCompatible :
    (foreground background : AdjacencyPolicy) →
      (cut : CutDatum rows columns) → Repair cut → Prop
  cubicalManifold :
    AdjacencyPolicy → AdjacencyPolicy → RasterState rows columns → Prop

/--
Proof-carrying obligations for calling a finite replacement *controlled
digital surgery*.  All topology-sensitive propositions are selected once by
the explicit semantics provider and are applied to the record's actual cut,
repair, and post-repair state.  Merely constructing `Repair` supplies none of
their evidence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1310d937e46ae77bd686c04e730bf8be7ee59c3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
