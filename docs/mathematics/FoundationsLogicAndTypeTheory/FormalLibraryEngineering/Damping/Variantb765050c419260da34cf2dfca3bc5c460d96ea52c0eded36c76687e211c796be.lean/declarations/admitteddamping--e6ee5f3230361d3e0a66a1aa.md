# AdmittedDamping

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f3a6197b11e660bee40c0bf6344ede7988b1a0afed4247297f6d63979949756",
  "kind": "structure",
  "lexical_name": "AdmittedDamping",
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
  "slug": "admitteddamping--e6ee5f3230361d3e0a66a1aa",
  "source": {
    "blob": "0c7fdc8e53492e5b5fae939db6f40165539e264d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6ee5f3230361d3e0a66a1aa0c0050f50dcf01f41a5fc4f01b0aef60e43c2e33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f3a6197b11e660bee40c0bf6344ede7988b1a0afed4247297f6d63979949756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdmittedDamping
    {X Observation : Type}
    {law : DampingLaw X}
    {construction : X → X}
    (certificate :
      DampingAdmissionCertificate
        (Observation := Observation) law construction) where
  contractivityProved :
    certificate.contractivityStatus = .proved
  contractivityEvidence :
    certificate.contractivityStatement
  rollbackCertified :
    certificate.rollbackAvailable = true
  ownerAdmission : StableId
  ownerAdmissionExact :
    certificate.ownerAdmissionRef = some ownerAdmission

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c7fdc8e53492e5b5fae939db6f40165539e264d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
