# xyzToEllipticPresentationV1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdefe18506caabecc59c31b3d838e388c98706e8ffb8ce485489a548f870b405",
  "kind": "def",
  "lexical_name": "xyzToEllipticPresentationV1",
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
  "slug": "xyztoellipticpresentationv1--d3189e5cc8bbc65733c0c163",
  "source": {
    "blob": "d04aaa5aa124c5391c5c9e220c2c614477964a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant6ebe964c9c4a4557fc48f87c4a086fe8390df3d71ca077658e5b1feabecdf65b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3189e5cc8bbc65733c0c163863b570ff342bda3a5f4546cc73e2235d6fb22ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant6ebe964c9c4a4557fc48f87c4a086fe8390df3d71ca077658e5b1feabecdf65b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdefe18506caabecc59c31b3d838e388c98706e8ffb8ce485489a548f870b405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def xyzToEllipticPresentationV1 {Payload : Type*}
    [HasXYZRawCoordinates Payload] (xyz : Payload) :
    ColorEllipticPresentation :=
  let g2 := ellipticG2Raw xyz
  let g3 := ellipticG3Raw xyz
  let delta := colorEllipticDiscriminantRaw g2 g3
  { presentationId := colorEllipticPresentationIdV1
    g2Raw := g2
    g3Raw := g3
    discriminantRaw := delta
    nonsingular := delta ≠ 0
    authority := .presentationOnly }

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant6ebe964c9c4a4557fc48f87c4a086fe8390df3d71ca077658e5b1feabecdf65b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variant6ebe964c9c4a4557fc48f87c4a086fe8390df3d71ca077658e5b1feabecdf65b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d04aaa5aa124c5391c5c9e220c2c614477964a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
