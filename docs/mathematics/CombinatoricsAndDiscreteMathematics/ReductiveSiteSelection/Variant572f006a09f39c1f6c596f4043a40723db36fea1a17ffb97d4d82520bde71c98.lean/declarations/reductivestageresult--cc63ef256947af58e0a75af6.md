# ReductiveStageResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db9acaf58581debb0e56a4d65296e23f6a203bdfe717efd7c99bcafe7b99ae43",
  "kind": "structure",
  "lexical_name": "ReductiveStageResult",
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
  "slug": "reductivestageresult--cc63ef256947af58e0a75af6",
  "source": {
    "blob": "7e02fb860ff80b2d21ede0fe05c37fd595249c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 358,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc63ef256947af58e0a75af6628b7043c2818f4f0e64241bb2706a21e0b0f8d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db9acaf58581debb0e56a4d65296e23f6a203bdfe717efd7c99bcafe7b99ae43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReductiveStageResult
    (State : Type u)
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece) where
  stageIdentity : ArtifactIdentity
  configuredStage : ConfiguredAnalyticStagePin
  stage_identity_exact : stageIdentity = configuredStage.identity
  executedPinOrder : List AnalyticTheoremPin
  executed_pin_order_exact : executedPinOrder = configuredStage.allPins
  inputState : State
  assessedState : State
  diffusionOperator : State → State
  iterations : Nat
  intermediateStates : List State
  intermediateStates_eq :
    intermediateStates =
      (List.range (iterations + 1)).map
        (fun iteration => diffusionOperator^[iteration] inputState)
  assessedState_eq : assessedState = diffusionOperator^[iterations] inputState
  stoppingWitness : FixedIterationStoppingWitness State stageIdentity
    configuredStage inputState assessedState diffusionOperator iterations
  inputCandidates : Finset decomposition.Piece
  outputCandidates : Finset decomposition.Piece
  excluded : Finset decomposition.Piece
  retainedUnknown : Finset decomposition.Piece
  retainedAttention : Finset decomposition.Piece
  retainedBlocked : Finset decomposition.Piece
  retainedExternal : Finset decomposition.Piece
  retainedConflicted : Finset decomposition.Piece
  conflicts : List ArtifactIdentity
  output_eq : outputCandidates = inputCandidates \ excluded
  output_subset : outputCandidates ⊆ inputCandidates
  exclusionEvidence : ∀ site,
    site ∈ excluded →
      Nonempty (SiteExclusionCertificate objective assessedState site)
  unknown_retained : retainedUnknown ⊆ outputCandidates
  attention_retained : retainedAttention ⊆ outputCandidates
  blocked_retained : retainedBlocked ⊆ outputCandidates
  external_retained : retainedExternal ⊆ outputCandidates
  conflicted_retained : retainedConflicted ⊆ outputCandidates
  unknownTrace : ∀ site, site ∈ retainedUnknown →
    RetainedSiteTraceRecord decomposition
  unknownTrace_exact : ∀ site member,
    (unknownTrace site member).site = site ∧
      (unknownTrace site member).disposition = .unknown ∧
      (unknownTrace site member).stageIdentity = stageIdentity
  attentionTrace : ∀ site, site ∈ retainedAttention →
    RetainedSiteTraceRecord decomposition
  attentionTrace_exact : ∀ site member,
    (attentionTrace site member).site = site ∧
      (attentionTrace site member).disposition = .attention ∧
      (attentionTrace site member).stageIdentity = stageIdentity
  blockedTrace : ∀ site, site ∈ retainedBlocked →
    RetainedSiteTraceRecord decomposition
  blockedTrace_exact : ∀ site member,
    (blockedTrace site member).site = site ∧
      (blockedTrace site member).disposition = .blocked ∧
      (blockedTrace site member).stageIdentity = stageIdentity
  externalTrace : ∀ site, site ∈ retainedExternal →
    RetainedSiteTraceRecord decomposition
  externalTrace_exact : ∀ site member,
    (externalTrace site member).site = site ∧
      (externalTrace site member).disposition = .externalOnly ∧
      (externalTrace site member).stageIdentity = stageIdentity
  conflictTrace : ∀ site, site ∈ retainedConflicted →
    RetainedSiteTraceRecord decomposition
  conflictTrace_exact : ∀ site member,
    (conflictTrace site member).site = site ∧
      (conflictTrace site member).disposition = .conflict ∧
      (conflictTrace site member).stageIdentity = stageIdentity

namespace ReductiveStageResult

/-- Every stage is reductive by construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e02fb860ff80b2d21ede0fe05c37fd595249c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
