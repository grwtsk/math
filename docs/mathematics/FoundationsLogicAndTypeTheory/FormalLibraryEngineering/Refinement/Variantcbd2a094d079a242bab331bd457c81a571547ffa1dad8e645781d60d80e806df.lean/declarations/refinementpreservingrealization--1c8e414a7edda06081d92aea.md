# RefinementPreservingRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:911bb23aa17f8321c47cb754e933967b96a436f16e726160d78b4f83cf5ef6c4",
  "kind": "structure",
  "lexical_name": "RefinementPreservingRealization",
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
  "slug": "refinementpreservingrealization--1c8e414a7edda06081d92aea",
  "source": {
    "blob": "b1658442477eaf569766f9fa82051060ac223cf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c8e414a7edda06081d92aea3a2e629cb18497ce347e12b90208fb76372a208a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:911bb23aa17f8321c47cb754e933967b96a436f16e726160d78b4f83cf5ef6c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RefinementPreservingRealization
    (R : RealizationTheory) where
  GlobalSystem :
    R.Target → DAF.System.{uIS, uXS, uRS, uOS}
  assembleImplementation :
    ∀ {F : Fabric},
      ImplementationFabric F → DAF.System.{uII, uXI, uRI, uOI}
  globalRefinement :
    ∀ {F : Fabric} (implementationFabric : ImplementationFabric F),
      DAF.Refinement
        (GlobalSystem (R.realize.obj F))
        (assembleImplementation implementationFabric)

namespace RefinementPreservingRealization

/-- The declarative assembly is the system attached to the realized fabric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refinement/Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1658442477eaf569766f9fa82051060ac223cf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
