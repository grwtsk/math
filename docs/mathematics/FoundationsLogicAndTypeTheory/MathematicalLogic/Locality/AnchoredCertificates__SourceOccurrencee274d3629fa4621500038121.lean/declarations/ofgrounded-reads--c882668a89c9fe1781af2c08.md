# ofGrounded_reads

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15e393e4-b684-10fb-a8d9-9637f087c967",
  "kind": "theorem",
  "lexical_name": "ofGrounded_reads",
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
  "slug": "ofgrounded-reads--c882668a89c9fe1781af2c08",
  "source": {
    "blob": "8199632569c704cb9fcee348a3721384f6d9d1a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 129,
    "path": "GRWTSK/Logic/Locality/AnchoredCertificates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c882668a89c9fe1781af2c0898d3a36530a617a5e35502fd970424c514b147d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencee274d3629fa4621500038121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15e393e4-b684-10fb-a8d9-9637f087c967`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofGrounded_reads
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) (claim : Claim)
    (supported : GroundedSupport (fun provider ↦ (providers provider).route)
      (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current) claim) :
    (ofGrounded providers inventory withdrawnProviders withdrawnClaims
      current claim supported).reads =
      AlternativeLocality.eligibleReadUnion providers inventory withdrawnProviders
        withdrawnClaims current := rfl

end Grounded

namespace HostileFixture

open AlternativeLocality.HostileFixture

/-- The existing honest grounded route supplies actual replay evidence for Q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencee274d3629fa4621500038121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Locality/AnchoredCertificates.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8199632569c704cb9fcee348a3721384f6d9d1a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
