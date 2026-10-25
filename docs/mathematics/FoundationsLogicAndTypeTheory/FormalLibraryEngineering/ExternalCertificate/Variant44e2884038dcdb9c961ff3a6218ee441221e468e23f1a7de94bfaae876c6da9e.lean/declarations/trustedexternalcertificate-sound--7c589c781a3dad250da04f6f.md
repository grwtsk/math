# TrustedExternalCertificate.sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72f08d1db6a97adf7aefe614df54d5c29790d004f687a333ca6f2f14f000713d",
  "kind": "def",
  "lexical_name": "TrustedExternalCertificate.sound",
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
  "slug": "trustedexternalcertificate-sound--7c589c781a3dad250da04f6f",
  "source": {
    "blob": "24f19231b3414294b0de2b5166f93072d3e9a259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternalCertificate/Variant44e2884038dcdb9c961ff3a6218ee441221e468e23f1a7de94bfaae876c6da9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c589c781a3dad250da04f6f052fff887d08eb30a85246446f7ce224aedf507c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternalCertificate/Variant44e2884038dcdb9c961ff3a6218ee441221e468e23f1a7de94bfaae876c6da9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72f08d1db6a97adf7aefe614df54d5c29790d004f687a333ca6f2f14f000713d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TrustedExternalCertificate.sound
    {E : ExternalPayload}
    (C : TrustedExternalCertificate E) :
    E.statement :=
  C.verifier.sound E C.accepted

/--
Convert a trusted external certificate into an internal authority
certificate.

This is the only conversion from external payloads to
`Authority.Certificate`. The `soundProof` field is obtained by applying the
verifier soundness theorem; none of the metadata fields contribute.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternalCertificate/Variant44e2884038dcdb9c961ff3a6218ee441221e468e23f1a7de94bfaae876c6da9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternalCertificate/Variant44e2884038dcdb9c961ff3a6218ee441221e468e23f1a7de94bfaae876c6da9e.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24f19231b3414294b0de2b5166f93072d3e9a259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
