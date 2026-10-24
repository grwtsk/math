# ArchimedeanBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:645bb9e9944c581969dbb49ee0591de51b7d12e16a47656c07122ed9ceea7069",
  "kind": "structure",
  "lexical_name": "ArchimedeanBoundary",
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
  "slug": "archimedeanboundary--f6eccddc42e92aaa1cdb9faf",
  "source": {
    "blob": "3bda45e8e096fee13aaef49082c4f0812bd1498e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6eccddc42e92aaa1cdb9faf7d336c9bbffa9ef7841d2e5c1043ef2786cfdc75",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:645bb9e9944c581969dbb49ee0591de51b7d12e16a47656c07122ed9ceea7069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ArchimedeanBoundary where
  unitarySpatialAction : Bool
  stronglyContinuousAction : Bool
  stoneGeneratorSelfAdjoint : Bool
  continuousSpectrumPresent : Bool
  ordinaryFredholmDeterminantClaim : Bool
  relativeDeterminantRequired : Bool
  gammaFactorRoutedToBoundary : Bool
  finiteMobiusProjectorActsHere : Bool
  finiteProjectorNonActionLaw : finiteMobiusProjectorActsHere = false
  ordinaryFredholmBlockedByContinuousSpectrum :
    continuousSpectrumPresent = true → ordinaryFredholmDeterminantClaim = false
  continuousSpectrumCompatibleWithSelfAdjointness :
    continuousSpectrumPresent = true → stoneGeneratorSelfAdjoint = true

/-- Default Archimedean boundary posture: unitary/strong spatial action,
self-adjoint generator, continuous spectrum present, no ordinary Fredholm claim,
relative determinant required, Gamma factor routed to the boundary, and no
finite Möbius projector action at infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variant76bf63cc9f8f090ea99fa4c73dad0772b11dd0622d58b0ac09a88bb40c3ed0cc.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bda45e8e096fee13aaef49082c4f0812bd1498e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
