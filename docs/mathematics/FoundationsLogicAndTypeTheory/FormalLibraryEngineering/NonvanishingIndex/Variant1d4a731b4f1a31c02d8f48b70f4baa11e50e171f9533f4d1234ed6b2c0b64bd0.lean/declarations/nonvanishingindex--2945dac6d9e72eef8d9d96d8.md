# NonvanishingIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afb3755ed80f97bf42c97c42cf057dafebe1742389d6d439b0a2ae3bdc99106d",
  "kind": "structure",
  "lexical_name": "NonvanishingIndex",
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
  "slug": "nonvanishingindex--2945dac6d9e72eef8d9d96d8",
  "source": {
    "blob": "d401207beb3e502e26a6f1492a2d10c4070d02d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NonvanishingIndex/Variant1d4a731b4f1a31c02d8f48b70f4baa11e50e171f9533f4d1234ed6b2c0b64bd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2945dac6d9e72eef8d9d96d8911ffa81573cf7168ba01aafa15b19d807f87656",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NonvanishingIndex/Variant1d4a731b4f1a31c02d8f48b70f4baa11e50e171f9533f4d1234ed6b2c0b64bd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afb3755ed80f97bf42c97c42cf057dafebe1742389d6d439b0a2ae3bdc99106d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NonvanishingIndex
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    (T : @CrystallineIndexTheoremContract C F nabla D H) where
  nonzeroIndex : Prop
  nonzeroIndex_certified : nonzeroIndex
  nonzeroCharacteristicClass : Prop
  nonzeroCharacteristicClass_certified : nonzeroCharacteristicClass
  nonzeroForcesKernel? : Prop
  nonzeroForcesKernel_certified? : nonzeroForcesKernel?

namespace NonvanishingIndex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NonvanishingIndex/Variant1d4a731b4f1a31c02d8f48b70f4baa11e50e171f9533f4d1234ed6b2c0b64bd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NonvanishingIndex/Variant1d4a731b4f1a31c02d8f48b70f4baa11e50e171f9533f4d1234ed6b2c0b64bd0.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d401207beb3e502e26a6f1492a2d10c4070d02d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
