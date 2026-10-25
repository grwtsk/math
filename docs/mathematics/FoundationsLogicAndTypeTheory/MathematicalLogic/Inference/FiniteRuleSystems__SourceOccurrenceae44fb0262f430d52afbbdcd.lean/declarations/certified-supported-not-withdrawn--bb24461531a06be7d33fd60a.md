# certified_supported_not_withdrawn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ff03cab-bd32-6408-a76b-191e039a9a63",
  "kind": "theorem",
  "lexical_name": "certified_supported_not_withdrawn",
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
  "slug": "certified-supported-not-withdrawn--bb24461531a06be7d33fd60a",
  "source": {
    "blob": "a257229bd43026937b34cc93486075286e2ab0fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 275,
    "path": "GRWTSK/Logic/Inference/FiniteRuleSystems.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb24461531a06be7d33fd60a8c0fd8bf1532e48cce7be3e39e6f12f188de36ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ff03cab-bd32-6408-a76b-191e039a9a63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem certified_supported_not_withdrawn
    {Target : SourceSnapshot Artifact Revision → Claim → Prop}
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) (claim : Claim)
    (supported : claim ∈ supportedClaims (fun provider ↦ (providers provider).route)
      (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current)) :
    claim ∉ withdrawnClaims := by
  have grounded := (mem_supportedClaims_iff _ _ claim).mp supported
  cases grounded with
  | via provider admitted _ =>
    exact ((mem_eligibleProviders providers inventory withdrawnProviders
      withdrawnClaims current provider).mp admitted).2.2.1

end CertificateSupport

end GRWTSK.ProofHorizon.CorkscrewChamberCap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Inference/FiniteRuleSystems.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a257229bd43026937b34cc93486075286e2ab0fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
