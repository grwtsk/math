# TorsionLedger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88857df1eb3f538450b5848af2760156f0a4ac20ad71474884d2d42d365ebdfb",
  "kind": "structure",
  "lexical_name": "TorsionLedger",
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
  "slug": "torsionledger--3dbd14aae58dbb716304a446",
  "source": {
    "blob": "0e3d35e393e27c697bc4b51b3f4d8bba989b7110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 31,
    "path": "GRWTSK/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3dbd14aae58dbb716304a4460c8e922614679a4e185551a8806bde8f28f77c03",
  "verification": {
    "reference": "docs/verification/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88857df1eb3f538450b5848af2760156f0a4ac20ad71474884d2d42d365ebdfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TorsionLedger
    (chain : FiniteIntegralChain) (degree : Nat) where
  stage : Nat
  smith : DegreeSmithCertificate chain degree
  invariantFactorDigest : Digest
  generatorDigest : Digest
  relationDigest : Digest
  bocksteinRepresentativeDigest : Digest
  exhaustiveReceipt : ObjectAddress
  ledgerAddress : ObjectAddress

namespace TorsionLedger

variable
    {chain : FiniteIntegralChain} {degree : Nat}
    (ledger : TorsionLedger chain degree)

/-- The exact finite coordinate type represented by this ledger. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e3d35e393e27c697bc4b51b3f4d8bba989b7110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
