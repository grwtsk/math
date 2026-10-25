# ofGrounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:927ce83cba2094b17f179ce8dc1732bc357f5db1ac754cd7521bde2221b2c9e5",
  "kind": "def",
  "lexical_name": "ofGrounded",
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
  "slug": "ofgrounded--bb6ea2211a7af00d75dccb5b",
  "source": {
    "blob": "8199632569c704cb9fcee348a3721384f6d9d1a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 103,
    "path": "GRWTSK/Logic/Locality/AnchoredCertificates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb6ea2211a7af00d75dccb5b08a023289808823f04c94c67f9381bf793d97ab7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencee274d3629fa4621500038121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:927ce83cba2094b17f179ce8dc1732bc357f5db1ac754cd7521bde2221b2c9e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofGrounded
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) (claim : Claim)
    (supported : GroundedSupport (fun provider ↦ (providers provider).route)
      (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current) claim) :
    ReplayCertificate Artifact Revision (fun snapshot ↦ Target snapshot claim) where
  recorded := current
  reads := AlternativeLocality.eligibleReadUnion providers inventory withdrawnProviders
    withdrawnClaims current
  proved := AlternativeLocality.grounded_replay_target providers inventory withdrawnProviders
    withdrawnClaims (snapshot_agrees_refl _ current) supported
  replay := fun _ agreement ↦ AlternativeLocality.grounded_replay_target providers inventory
    withdrawnProviders withdrawnClaims agreement supported

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencee274d3629fa4621500038121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Locality/AnchoredCertificates.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8199632569c704cb9fcee348a3721384f6d9d1a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
