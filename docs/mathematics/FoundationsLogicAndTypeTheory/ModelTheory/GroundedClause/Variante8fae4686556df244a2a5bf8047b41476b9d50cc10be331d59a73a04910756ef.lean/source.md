# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.GroundedClause.Variante8fae4686556df244a2a5bf8047b41476b9d50cc10be331d59a73a04910756ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edddc449de347c2459e1143a08b1dfa471aeaedb` · SHA-256 `e8fae4686556df244a2a5bf8047b41476b9d50cc10be331d59a73a04910756ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Language.TerrainLocator

/-!
# Fail-closed grounded clauses

The trusted input to validation is a snapshot-pinned terrain context and its
`sourceFor` registry.  Model-authored fields are compared against that input;
they cannot promote themselves by repeating a stronger authority label.
-/

namespace DAF.Language

open DAF.Universe

/-- Exact model-supplied binding that must agree with a `ClaimSource`. -/
structure ClaimBinding where
  claimId : ClaimId
  sourceNode : TerrainNodeId
  sourceDigest : Digest
  normalizedStatement : NormalizedType
  dependencies : Finset TerrainNodeId
  suppliedHypotheses : Finset HypothesisBinding
  polarity : ClaimPolarity
  authority : ResponseAuthority
  establishment : EstablishmentStatus
  domain : ClaimDomain
  spectralCertificate : Option TerrainNodeId
  support : ClauseSupport
  contradictedNonclaims : Finset Nonclaim
  deriving DecidableEq

/-- An evidence payload, its source binding, and its exact terrain location. -/
structure LocatedClaim where
  payload : ClaimPayload
  binding : ClaimBinding
  locator : TerrainLocator
  deriving DecidableEq

inductive ClauseKind
  | assertion
  | connective
  deriving DecidableEq, Repr, Inhabited

/-- Human text is retained only as rendering; `locatedClaim` is the evidence path. -/
structure GroundedClause where
  clauseId : ClaimId
  kind : ClauseKind
  text : String
  locatedClaim : Option LocatedClaim
  deriving DecidableEq

/-- Trusted finite registries used by the grounding validator. -/
structure GroundingContext where
  terrain : TerrainLocatorContext
  sourceFor : TerrainNodeId → Option ClaimSource
  knownClaimIds : Finset ClaimId
  candidatePatches : Finset CandidatePatchId

namespace GroundingContext

/-- The source registry is pinned to an exact manifest node and normalized type. -/
def SourceMatchesManifest
    (context : GroundingContext)
    (source : ClaimSource) : Prop :=
  ∃ node ∈ context.terrain.manifest.nodes,
    node.id = source.node ∧
      node.sourceDigest = source.sourceDigest ∧
      node.normalizedType = some source.normalizedStatement ∧
      (sourceAuthorityCeiling node.authority).Supports source.authority

def HasExternalAuthority
    (context : GroundingContext)
    (id : ExternalAuthorityId) : Prop :=
  ∃ authority ∈ context.terrain.manifest.externalAuthorities,
    authority.id = id

def HasRuntimeBinding
    (context : GroundingContext)
    (node soundness : TerrainNodeId) : Prop :=
  ∃ binding ∈ context.terrain.manifest.runtimeBindings,
    binding.terrainNode = node ∧
      binding.soundnessDeclaration = some soundness

/-- An exact theorem payload resolves only to a theorem-kind node. -/
def HasTheoremNode
    (context : GroundingContext)
    (id : TerrainNodeId) : Prop :=
  ∃ node ∈ context.terrain.manifest.nodes,
    node.id = id ∧ node.kind = .theorem

/-- Exact theorem authority additionally requires a theorem-cell descriptor. -/
def HasTheoremCell
    (context : GroundingContext)
    (id : TerrainNodeId) : Prop :=
  ∃ cell ∈ context.terrain.manifest.theoremCells,
    cell.theoremNode = id

end GroundingContext

namespace LocatedClaim

/-- Source-relative fields other than polarity and hypotheses agree exactly. -/
def IdentityBindingValid
    (source : ClaimSource)
    (claim : LocatedClaim) : Prop :=
  claim.binding.sourceNode = source.node ∧
    claim.binding.sourceDigest = source.sourceDigest ∧
    claim.binding.normalizedStatement = source.normalizedStatement ∧
    claim.binding.dependencies = source.dependencies ∧
    claim.binding.establishment = source.establishment ∧
    claim.binding.domain = source.domain ∧
    claim.binding.sourceNode ∈ claim.locator.primaryNodes ∧
    claim.locator.authority = claim.binding.authority ∧
    claim.binding.contradictedNonclaims = ∅

/-- Every source-required hypothesis is stated by the submitted claim. -/
def HypothesesComplete (source : ClaimSource) (claim : LocatedClaim) : Prop :=
  source.requiredHypotheses ⊆ claim.binding.suppliedHypotheses

/-- Submitted natural-language polarity agrees with the normalized source. -/
def PolarityValid (source : ClaimSource) (claim : LocatedClaim) : Prop :=
  claim.binding.polarity = source.polarity

/-- Assertive prose is source-owned.  The external model may select a claim,
but it may not replace its canonical rendering with an unchecked paraphrase. -/
def RenderingValid
    (source : ClaimSource)
    (_claim : LocatedClaim)
    (clause : GroundedClause) : Prop :=
  clause.text = source.canonicalRendering

/-- Every mathematical assertion is located at a cell face and has a
nonempty, manifest-checked route ending at its source node. -/
def LocatorEvidenceComplete
    (source : ClaimSource)
    (claim : LocatedClaim) : Prop :=
  claim.locator.cellFaces.Nonempty ∧
    ∃ chain,
      claim.locator.reasoningChain = some chain ∧
        chain.ConcludesAt source.node

/-- A theorem instance binds its certificate to the exact substitution. -/
def InstantiationValid
    (manifest : UniverseManifest)
    (source : ClaimSource)
    (claim : LocatedClaim) : Prop :=
  match claim.payload with
  | .theoremInstance theoremId substitution certificate =>
      theoremId = source.node ∧
        certificate.theoremId = theoremId ∧
        certificate.substitutionDigest = substitution.normalizedDigest ∧
        manifest.HasNode certificate.checkerNode
  | _ => True

/-- A computed fact names a present trace and a manifest-declared soundness theorem. -/
def RuntimeSoundnessValid
    (context : GroundingContext)
    (source : ClaimSource)
    (claim : LocatedClaim) : Prop :=
  match claim.payload with
  | .computedFact fact =>
      ∃ soundness,
        fact.soundnessTheorem = some soundness ∧
          fact.traceId ∈ context.terrain.runtimeTraces ∧
          context.terrain.manifest.HasNode soundness ∧
          context.HasRuntimeBinding source.node soundness
  | _ => True

/-- Payload-specific identities resolve without inventing evidence. -/
def PayloadValid
    (context : GroundingContext)
    (source : ClaimSource)
    (claim : LocatedClaim) : Prop :=
  match claim.payload with
  | .exactTheorem theoremId =>
      theoremId = source.node ∧
        context.HasTheoremNode theoremId ∧
        context.HasTheoremCell theoremId
  | .theoremInstance theoremId _ _ =>
      theoremId = source.node ∧
        context.HasTheoremNode theoremId ∧
        context.HasTheoremCell theoremId
  | .computedFact _ => True
  | .importedMathematics authorityId specialization =>
      context.HasExternalAuthority authorityId ∧
        (specialization = none ∨ specialization = some source.node)
  | .checkedInference premises rule certificate =>
      premises = certificate.premises ∧
        rule.id = certificate.ruleId ∧
        certificate.conclusionNode = source.node ∧
        context.terrain.manifest.HasNode certificate.checkerNode ∧
        ∀ premise ∈ premises, premise ∈ context.knownClaimIds
  | .boundedReviewerInference anchors _ =>
      source.establishment ≠ .established ∧
        ∀ anchor ∈ anchors,
          context.terrain.manifest.HasNode anchor.node ∧
            match anchor.face with
            | none => True
            | some face => context.terrain.HasCellFace face
  | .proposal candidateId =>
      candidateId ∈ context.candidatePatches ∧
        source.establishment ≠ .established

/-- Requested authority is supported independently by source and payload. -/
def AuthorityValid (source : ClaimSource) (claim : LocatedClaim) : Prop :=
  source.authority.Supports claim.binding.authority ∧
    claim.payload.authorityCeiling.Supports claim.binding.authority

/-- An assertive sentence cannot use an embedding as its only support. -/
def AssertiveSupportValid (kind : ClauseKind) (claim : LocatedClaim) : Prop :=
  kind = .assertion → claim.binding.support ≠ .embeddingOnly

/-- A model-only proposal cannot label itself established or exceed proposal authority. -/
def ModelSupportValid (claim : LocatedClaim) : Prop :=
  claim.binding.support = .modelAuthored →
    claim.binding.establishment ≠ .established ∧
      ResponseAuthority.proposal.Supports claim.binding.authority

/-- Arithmetic spectral prose requires the exact named certificate from its source. -/
def SpectralCertificateValid
    (manifest : UniverseManifest)
    (source : ClaimSource)
    (claim : LocatedClaim) : Prop :=
  source.domain = .arithmeticSpectral →
    ∃ certificate,
      source.spectralCertificate = some certificate ∧
        claim.binding.spectralCertificate = some certificate ∧
        manifest.HasNode certificate

end LocatedClaim

/-- Stable fail-closed rejection vocabulary. -/
inductive GroundingError
  | locator (reason : LocatorError)
  | missingLocatedClaim
  | unexpectedClaimOnConnective
  | sourceBindingMissing
  | sourceManifestMismatch
  | sourceBindingMismatch
  | renderingMismatch
  | missingHypothesis
  | reversedPolarity
  | incompleteTerrainEvidence
  | invalidTheoremSubstitution
  | runtimeSoundnessMissing
  | authorityPromotion
  | modelAuthoredAuthorityPromotion
  | embeddingOnlyAssertiveSupport
  | inventedPayloadReference
  | arithmeticSpectralCertificateMissing
  deriving DecidableEq, Repr

/-- A successful assertion validation retains every checked proposition. -/
structure CheckedAssertion
    (context : GroundingContext)
    (clause : GroundedClause) : Type where
  claim : LocatedClaim
  claimPresent : clause.locatedClaim = some claim
  clauseIsAssertion : clause.kind = .assertion
  locatorChecked : CheckedTerrainLocator context.terrain claim.locator
  source : ClaimSource
  sourceLookup : context.sourceFor claim.binding.sourceNode = some source
  sourceMatchesManifest : context.SourceMatchesManifest source
  identityBindingValid : claim.IdentityBindingValid source
  hypothesesComplete : claim.HypothesesComplete source
  polarityValid : claim.PolarityValid source
  renderingValid : claim.RenderingValid source clause
  locatorEvidenceComplete : claim.LocatorEvidenceComplete source
  instantiationValid :
    claim.InstantiationValid context.terrain.manifest source
  runtimeSoundnessValid : claim.RuntimeSoundnessValid context source
  authorityValid : claim.AuthorityValid source
  assertiveSupportValid : claim.AssertiveSupportValid clause.kind
  modelSupportValid : claim.ModelSupportValid
  payloadValid : claim.PayloadValid context source
  spectralCertificateValid :
    claim.SpectralCertificateValid context.terrain.manifest source

/-- Connective prose has no independent mathematical assertion or authority. -/
structure CheckedConnective (clause : GroundedClause) : Type where
  clauseIsConnective : clause.kind = .connective
  noIndependentClaim : clause.locatedClaim = none

/-- Successful validation distinguishes assertive and nonassertive clauses. -/
inductive CheckedGroundedClause
    (context : GroundingContext)
    (clause : GroundedClause) : Type
  | assertion (checked : CheckedAssertion context clause)
  | connective (checked : CheckedConnective clause)

/--
Validate one clause.  Every accepted assertion includes a checked locator and
exact source record; connective prose cannot smuggle in an independent claim.
-/
noncomputable def validateGroundedClause
    (context : GroundingContext)
    (clause : GroundedClause) :
    Except GroundingError (CheckedGroundedClause context clause) := by
  classical
  cases clauseKind : clause.kind with
  | connective =>
      cases claimPresent : clause.locatedClaim with
      | none =>
          exact .ok (.connective
            { clauseIsConnective := clauseKind
              noIndependentClaim := claimPresent })
      | some _ => exact .error .unexpectedClaimOnConnective
  | assertion =>
      cases claimPresent : clause.locatedClaim with
      | none => exact .error .missingLocatedClaim
      | some claim =>
          cases locatorResult : validateTerrainLocator context.terrain claim.locator with
          | error reason => exact .error (.locator reason)
          | ok locatorChecked =>
              cases sourceLookup : context.sourceFor claim.binding.sourceNode with
              | none => exact .error .sourceBindingMissing
              | some source =>
                  by_cases sourceMatchesManifest : context.SourceMatchesManifest source
                  · by_cases identityBindingValid : claim.IdentityBindingValid source
                    · by_cases hypothesesComplete : claim.HypothesesComplete source
                      · by_cases polarityValid : claim.PolarityValid source
                        · by_cases renderingValid :
                            claim.RenderingValid source clause
                          · by_cases locatorEvidenceComplete :
                              claim.LocatorEvidenceComplete source
                            · by_cases instantiationValid :
                                claim.InstantiationValid
                                  context.terrain.manifest source
                              · by_cases runtimeSoundnessValid :
                                  claim.RuntimeSoundnessValid context source
                                · by_cases authorityValid : claim.AuthorityValid source
                                  · by_cases assertiveSupportValid :
                                      claim.AssertiveSupportValid clause.kind
                                    · by_cases modelSupportValid : claim.ModelSupportValid
                                      · by_cases payloadValid :
                                          claim.PayloadValid context source
                                        · by_cases spectralCertificateValid :
                                            claim.SpectralCertificateValid
                                              context.terrain.manifest source
                                          · exact .ok (.assertion
                                              { claim
                                                claimPresent
                                                clauseIsAssertion := clauseKind
                                                locatorChecked
                                                source
                                                sourceLookup
                                                sourceMatchesManifest
                                                identityBindingValid
                                                hypothesesComplete
                                                polarityValid
                                                renderingValid
                                                locatorEvidenceComplete
                                                instantiationValid
                                                runtimeSoundnessValid
                                                authorityValid
                                                assertiveSupportValid
                                                modelSupportValid
                                                payloadValid
                                                spectralCertificateValid })
                                          · exact .error
                                              .arithmeticSpectralCertificateMissing
                                        · exact .error .inventedPayloadReference
                                      · exact .error .modelAuthoredAuthorityPromotion
                                    · exact .error .embeddingOnlyAssertiveSupport
                                  · exact .error .authorityPromotion
                                · exact .error .runtimeSoundnessMissing
                              · exact .error .invalidTheoremSubstitution
                            · exact .error .incompleteTerrainEvidence
                          · exact .error .renderingMismatch
                        · exact .error .reversedPolarity
                      · exact .error .missingHypothesis
                    · exact .error .sourceBindingMismatch
                  · exact .error .sourceManifestMismatch

/-- Acceptance is proof-bearing, not a Boolean flag. -/
def GroundedClause.Accepted
    (context : GroundingContext)
    (clause : GroundedClause) : Prop :=
  Nonempty (CheckedGroundedClause context clause)

def accepted_assertion_checked_locator
    {context : GroundingContext}
    {clause : GroundedClause}
    (checked : CheckedAssertion context clause) :
    CheckedTerrainLocator context.terrain checked.claim.locator :=
  checked.locatorChecked

end DAF.Language
```
