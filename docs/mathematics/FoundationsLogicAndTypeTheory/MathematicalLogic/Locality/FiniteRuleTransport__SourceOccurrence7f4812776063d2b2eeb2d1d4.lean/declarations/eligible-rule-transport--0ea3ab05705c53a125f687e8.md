# eligible_rule_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4160fd47-dbb9-fa30-1f6b-2c6836b5e7d3",
  "kind": "theorem",
  "lexical_name": "eligible_rule_transport",
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
  "slug": "eligible-rule-transport--0ea3ab05705c53a125f687e8",
  "source": {
    "blob": "2d6c91c855a5f54a3202dab0af8e5bceef81bb8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 87,
    "path": "GRWTSK/Logic/Locality/FiniteRuleTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ea3ab05705c53a125f687e8f1565e600549e6cfb5070e586828e67c2b2adf33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4160fd47-dbb9-fa30-1f6b-2c6836b5e7d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eligible_rule_transport
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    {current future : SourceSnapshot Artifact Revision}
    (agreement : SnapshotAgreesOn
      (eligibleReadUnion providers inventory withdrawnProviders withdrawnClaims current)
      current future) {provider : Provider}
    (admitted : provider ∈
      eligibleProviders providers inventory withdrawnProviders withdrawnClaims current) :
    (∀ prerequisite ∈ (providers provider).route.premises, Target future prerequisite) →
      Target future (providers provider).route.conclusion := by
  have fresh := ((mem_eligibleProviders providers inventory withdrawnProviders withdrawnClaims
    current provider).mp admitted).2.2.2
  exact (providers provider).certificate.locality current future
    (provider_read_agreement providers _ agreement admitted)
    ((providers provider).certificate.current_target fresh)

/-- Grounded finite derivations replay recursively from transported original rule implications. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Locality/FiniteRuleTransport.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d6c91c855a5f54a3202dab0af8e5bceef81bb8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
