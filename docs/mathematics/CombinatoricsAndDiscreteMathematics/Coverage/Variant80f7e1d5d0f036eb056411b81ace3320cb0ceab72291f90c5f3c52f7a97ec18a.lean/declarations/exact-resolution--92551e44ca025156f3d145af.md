# exact_resolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "396666a1d4c00525d6f081576987fe906c24b8b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11b737b5-e1d3-fefa-a09f-4f0a79cd4763",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9f6da06-1916-e5fc-3466-64cc072f5eaf",
  "kind": "theorem",
  "lexical_name": "exact_resolution",
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
  "slug": "exact-resolution--92551e44ca025156f3d145af",
  "source": {
    "blob": "396666a1d4c00525d6f081576987fe906c24b8b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1477,
    "line": 1425,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92551e44ca025156f3d145af1d47a5ce6c2f100fecdcbb1a36a394e2f88240cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9f6da06-1916-e5fc-3466-64cc072f5eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1425–1477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_resolution
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix)
    (checked :
      ExactResolutionEvidence certificate inspectedOntology space plan family receipt matrix separation) :
    ExactResolutionConclusion certificate inspectedOntology space plan family receipt matrix separation := by
  refine {
    inspectedOntologyEvidence := checked.inspectedOntologyBound
    finiteSampling := finite_sampling_scope space plan family receipt checked.samplingExact
    exactArtifactBindings := {
      spaceIdentity := checked.spaceBound
      spaceHash := checked.spaceHashBound
      familyIdentity := checked.familyBound
      familyHash := checked.familyHashBound
      planIdentity := checked.planBound
      planHash := checked.planHashBound
      receiptIdentity := checked.receiptBound
      receiptHash := checked.receiptHashBound
      deterministicReceiptIdentity := checked.deterministicReceiptBound
      matrixIdentity := checked.matrixBound
      matrixHash := checked.matrixHashBound
      witnessIdentity := checked.separationBound
      witnessHash := checked.separationHashBound
    }
    matrixIsExactProduct := checked.matrixExact
    everyProbePointObserved := ?_
    everyProbePointUnique := ?_
    everyDistinctPairSeparated := separation.pairwiseSeparated
    exactClass := checked.exactClass
    admittedProfile := checked.admittedProfile
    separatedResult := checked.separatedResult
    noBlockingResiduals := checked.noBlockingResiduals
    terminated := checked.terminated
    noMutationAuthority := checked.nonauthoritative
  }
  · intro probe probeMember point pointMember
    have probeMember' : probe ∈ matrix.probes := by
      rw [checked.matrixExact.probesBound]
      exact probeMember
    have pointMember' : point ∈ matrix.points := by
      rw [checked.matrixExact.pointsBound, checked.samplingExact.pointsExact]
      exact pointMember
    exact checked.matrixExact.total probe probeMember' point pointMember'
  · intro probe point first second firstObserved secondObserved
    exact matrix.observation_unique firstObserved secondObserved

/-- The positive branch used by the exhaustive coverage-closure theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean#L1425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396666a1d4c00525d6f081576987fe906c24b8b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
