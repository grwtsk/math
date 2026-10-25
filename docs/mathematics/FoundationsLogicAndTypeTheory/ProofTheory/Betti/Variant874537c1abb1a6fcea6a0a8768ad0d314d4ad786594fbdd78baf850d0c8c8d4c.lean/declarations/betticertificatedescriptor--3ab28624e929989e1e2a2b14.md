# BettiCertificateDescriptor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff6fbb8e775ae58d116919fb20a5fd4484a79fc545306382b162bb13cad5085b",
  "kind": "structure",
  "lexical_name": "BettiCertificateDescriptor",
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
  "slug": "betticertificatedescriptor--3ab28624e929989e1e2a2b14",
  "source": {
    "blob": "40df93a33d9fd9d4a5f4d081350b6cdb11028013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10,
    "line": 5,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Betti/Variant874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ab28624e929989e1e2a2b14ffb626dbc4e1c709ad2653e004876cd81029cca2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Betti/Variant874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff6fbb8e775ae58d116919fb20a5fd4484a79fc545306382b162bb13cad5085b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5–10.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BettiCertificateDescriptor where
  homology : HomologyDescriptor
  bettiNumber : Nat
  numericalSmokeTest : Bool
  proofCertificate : Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Betti/Variant874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Betti/Variant874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c.lean#L5).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40df93a33d9fd9d4a5f4d081350b6cdb11028013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
