# jointResolve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1a3cfeb1cb126583d3da412769ea08c73a3649fd3e8477acaf0f680d9e8122c",
  "kind": "def",
  "lexical_name": "jointResolve",
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
  "slug": "jointresolve--3c5d9d7e73e963ed2fdf78cd",
  "source": {
    "blob": "1469553e457b3be8c382aebe3d8080a391efb443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JointUnified/Variant6f3890c9369f41af15577fe2a2d42f233fe98e36bce45d3b7138905c2072baf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c5d9d7e73e963ed2fdf78cdaf66cba8f65e0b5eecba8c98fa92b23fc07a4145",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JointUnified/Variant6f3890c9369f41af15577fe2a2d42f233fe98e36bce45d3b7138905c2072baf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1a3cfeb1cb126583d3da412769ea08c73a3649fd3e8477acaf0f680d9e8122c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def jointResolve
    {cut : JointCutBinding}
    (profile : JointResolverProfile cut Context N D Packet) :
    JointResolution profile :=
  letI : Decidable profile.Valid := profile.decidableValid
  letI : Decidable profile.AuthorityClosed :=
    profile.decidableAuthorityClosed
  if valid : profile.Valid then
    if authorityClosed : profile.AuthorityClosed then
      match profile.seaCandidate with
      | none =>
          .unknown valid .seaEvidenceBoundary
            (profile.packet .seaEvidenceBoundary)
            ⟨none, profile.semanticCandidate, none⟩
      | some seaCandidate =>
          match profile.semanticCandidate with
          | none =>
              .unknown valid profile.semanticMissingKind
                (profile.packet profile.semanticMissingKind)
                ⟨some seaCandidate, none, none⟩
          | some semanticCandidate =>
              match
                  profile.bridgeCandidate seaCandidate semanticCandidate with
              | none =>
                  .unknown valid .bridgeBoundary
                    (profile.packet .bridgeBoundary)
                    ⟨some seaCandidate, some semanticCandidate, none⟩
              | some bridgeCertificate =>
                  .solved valid authorityClosed
                    ⟨seaCandidate, semanticCandidate,
                      bridgeCertificate, profile.cost,
                      profile.replayDigest,
                      profile.expectedReplayDigest,
                      profile.replayExact⟩
    else
      .unknown valid .authorityBoundary
        (profile.packet .authorityBoundary)
        ⟨none, none, none⟩
  else
    .rejected profile.rejectionReason valid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JointUnified/Variant6f3890c9369f41af15577fe2a2d42f233fe98e36bce45d3b7138905c2072baf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JointUnified/Variant6f3890c9369f41af15577fe2a2d42f233fe98e36bce45d3b7138905c2072baf4.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1469553e457b3be8c382aebe3d8080a391efb443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
