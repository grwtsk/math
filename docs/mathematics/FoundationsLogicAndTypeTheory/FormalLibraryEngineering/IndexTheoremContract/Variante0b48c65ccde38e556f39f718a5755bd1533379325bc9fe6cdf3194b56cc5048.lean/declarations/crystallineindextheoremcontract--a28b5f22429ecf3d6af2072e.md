# CrystallineIndexTheoremContract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48a40c855ef8081f8cf360d8048c2f7248bb1cd682460e6b734e91af596965bd",
  "kind": "structure",
  "lexical_name": "CrystallineIndexTheoremContract",
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
  "slug": "crystallineindextheoremcontract--a28b5f22429ecf3d6af2072e",
  "source": {
    "blob": "6460bdeff28dec32ceb05d637f60939a32911eb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexTheoremContract/Variante0b48c65ccde38e556f39f718a5755bd1533379325bc9fe6cdf3194b56cc5048.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a28b5f22429ecf3d6af2072eecc0879e4fe862e203035371b5f89ac4b158264e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexTheoremContract/Variante0b48c65ccde38e556f39f718a5755bd1533379325bc9fe6cdf3194b56cc5048.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48a40c855ef8081f8cf360d8048c2f7248bb1cd682460e6b734e91af596965bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CrystallineIndexTheoremContract
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (H : CohomologyTheory) where
  indexClass : CrystallineIndexClass D H
  characteristicFormula :
    CrystallineCharacteristicFormula H indexClass
  traceFormula? :
    Option (CrystallineTraceFormula H)
  ghostObstruction? :
    Option (GhostZeroObstruction H)
  indexFormulaCertified : Prop
  indexFormulaCertified_certified : indexFormulaCertified
  sourceLabel : String

namespace IndexTheoremContract

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexTheoremContract/Variante0b48c65ccde38e556f39f718a5755bd1533379325bc9fe6cdf3194b56cc5048.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexTheoremContract/Variante0b48c65ccde38e556f39f718a5755bd1533379325bc9fe6cdf3194b56cc5048.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6460bdeff28dec32ceb05d637f60939a32911eb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
