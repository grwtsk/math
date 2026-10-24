# validAssertionChecked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aa0af6590ec8f3c5dca5d5f3625e945beff531b14798a145898576b6e52c18e",
  "kind": "def",
  "lexical_name": "validAssertionChecked",
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
  "slug": "validassertionchecked--0e2904f106faeba1e065d7cb",
  "source": {
    "blob": "fffab8533b6124a5085b99a7bf43cad6ec12721b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 295,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e2904f106faeba1e065d7cbe79ed8f13d11828a8da37c217dc42c4fd10eb11f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aa0af6590ec8f3c5dca5d5f3625e945beff531b14798a145898576b6e52c18e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def validAssertionChecked : CheckedAssertion context validClause where
  claim := validClaim
  claimPresent := rfl
  clauseIsAssertion := rfl
  locatorChecked := validLocatorChecked
  source := generalSource
  sourceLookup := by
    simp [context, contextFor, validClaim, validBinding, theoremId]
  sourceMatchesManifest := by
    refine ⟨theoremNode, ?_, rfl, rfl, rfl, ?_⟩
    · simp [context, contextFor, locatorContext, manifest]
    · simp [theoremNode, sourceAuthorityCeiling, generalSource,
        ResponseAuthority.Supports, ResponseAuthority.rank]
  identityBindingValid := by
    simp [LocatedClaim.IdentityBindingValid, validClaim, validBinding,
      validLocator, generalSource]
  hypothesesComplete := by
    simp [LocatedClaim.HypothesesComplete, validClaim, validBinding, generalSource]
  polarityValid := rfl
  renderingValid := rfl
  locatorEvidenceComplete := by
    refine ⟨by simp [validClaim, validLocator], validReasoningChain, rfl, ?_⟩
    simp [ReasoningChain.ConcludesAt, validReasoningChain, generalSource]
  instantiationValid := by
    simp [LocatedClaim.InstantiationValid, validClaim]
  runtimeSoundnessValid := by
    simp [LocatedClaim.RuntimeSoundnessValid, validClaim]
  authorityValid := by
    simp [LocatedClaim.AuthorityValid, validClaim, validBinding, generalSource,
      ClaimPayload.authorityCeiling, ResponseAuthority.Supports,
      ResponseAuthority.rank]
  assertiveSupportValid := by
    simp [LocatedClaim.AssertiveSupportValid, validClause, validClaim, validBinding]
  modelSupportValid := by
    simp [LocatedClaim.ModelSupportValid, validClaim, validBinding]
  payloadValid := by
    simp [LocatedClaim.PayloadValid, validClaim, context, contextFor,
      GroundingContext.HasTheoremNode, GroundingContext.HasTheoremCell,
      locatorContext, manifest, theoremNode, theoremCellDescriptor,
      generalSource]
  spectralCertificateValid := by
    simp [LocatedClaim.SpectralCertificateValid, generalSource]

/-- Positive fixture: a fully located exact theorem has an acceptance certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fffab8533b6124a5085b99a7bf43cad6ec12721b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
