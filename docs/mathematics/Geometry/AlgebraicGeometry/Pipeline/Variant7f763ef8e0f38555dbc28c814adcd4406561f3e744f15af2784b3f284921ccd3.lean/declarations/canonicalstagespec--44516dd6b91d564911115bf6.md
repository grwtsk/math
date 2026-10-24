# canonicalStageSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f351fbfb093af05c94d2e0107401d8f9fcdc32c63f4ba2eddaef0525b770e92",
  "kind": "def",
  "lexical_name": "canonicalStageSpec",
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
  "slug": "canonicalstagespec--44516dd6b91d564911115bf6",
  "source": {
    "blob": "b910250487337b4665be1a1db1b4aa8def7bac77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 174,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pipeline/Variant7f763ef8e0f38555dbc28c814adcd4406561f3e744f15af2784b3f284921ccd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44516dd6b91d564911115bf64b67e69ba40a48bb8a9f38eab700764597fa060d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pipeline/Variant7f763ef8e0f38555dbc28c814adcd4406561f3e744f15af2784b3f284921ccd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f351fbfb093af05c94d2e0107401d8f9fcdc32c63f4ba2eddaef0525b770e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalStageSpec : PipelineStage → StageSpec
  | .resolveInputs =>
      { stage := .resolveInputs
        owner := .rustAuditImplementation
        sourceAuthority := .declarativeArtifact
        authority := .externalCapability
        inputs := ["repository", "pipeline manifest"]
        outputs := ["resolved inputs"]
        dependencies := []
        precondition := fun _ => True
        postcondition := fun state next =>
          next = canonicalStageTransition .resolveInputs state }
  | .constructDependencyGraph =>
      { stage := .constructDependencyGraph
        owner := .rustAuditImplementation
        sourceAuthority := .declarativeArtifact
        authority := .externalCapability
        inputs := ["resolved inputs"]
        outputs := ["dependency graph"]
        dependencies := [.resolveInputs]
        precondition := fun state => state.resolvedInputs ≠ []
        postcondition := fun state next =>
          next = canonicalStageTransition .constructDependencyGraph state }
  | .executeEvaluators =>
      { stage := .executeEvaluators
        owner := .externalRuntime
        sourceAuthority := .externalCapability
        authority := .externalCapability
        inputs := ["dependency graph"]
        outputs := ["raw execution results"]
        dependencies := [.constructDependencyGraph]
        precondition := fun _ => True
        postcondition := fun state next =>
          next = canonicalStageTransition .executeEvaluators state }

  | .collectEvidence =>
      { stage := .collectEvidence
        owner := .rustAuditImplementation
        sourceAuthority := .declarativeArtifact
        authority := .externalCapability
        inputs := ["raw execution results"]
        outputs := ["evidence bundles"]
        dependencies := [.executeEvaluators]
        precondition := fun _ => True
        postcondition := fun state next =>
          next = canonicalStageTransition .collectEvidence state }
  | .classifyClaims =>
      { stage := .classifyClaims
        owner := .rustAuditImplementation
        sourceAuthority := .declarativeArtifact
        authority := .externalCapability
        inputs := ["evidence bundles", "claim ledger"]
        outputs := ["classified claims"]
        dependencies := [.collectEvidence]
        precondition := fun _ => True
        postcondition := fun state next =>
          next = canonicalStageTransition .classifyClaims state }
  | .applyGates =>
      { stage := .applyGates
        owner := .rustAuditImplementation
        sourceAuthority := .declarativeArtifact
        authority := .externalCapability
        inputs := ["classified claims"]
        outputs := ["gate decisions"]
        dependencies := [.classifyClaims]
        precondition := fun _ => True
        postcondition := fun state next =>
          next = canonicalStageTransition .applyGates state }
  | .issueAttestation =>
      { stage := .issueAttestation
        owner := .rustAuditImplementation
        sourceAuthority := .declarativeArtifact
        authority := .externalCapability
        inputs := ["gate decisions", "evidence bundles"]
        outputs := ["attestation data"]
        dependencies := [.applyGates]
        precondition := fun _ => True
        postcondition := fun state next =>
          next = canonicalStageTransition .issueAttestation state }
  | .emitRefinementRequests =>
      { stage := .emitRefinementRequests
        owner := .rustAuditImplementation
        sourceAuthority := .declarativeArtifact
        authority := .externalCapability
        inputs := ["attestation data"]
        outputs := ["refinement requests"]
        dependencies := [.issueAttestation]
        precondition := fun _ => True
        postcondition := fun state next =>
          next = canonicalStageTransition .emitRefinementRequests state }

/-- Every canonical modeled transition satisfies its exact stage contract. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pipeline/Variant7f763ef8e0f38555dbc28c814adcd4406561f3e744f15af2784b3f284921ccd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pipeline/Variant7f763ef8e0f38555dbc28c814adcd4406561f3e744f15af2784b3f284921ccd3.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b910250487337b4665be1a1db1b4aa8def7bac77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
