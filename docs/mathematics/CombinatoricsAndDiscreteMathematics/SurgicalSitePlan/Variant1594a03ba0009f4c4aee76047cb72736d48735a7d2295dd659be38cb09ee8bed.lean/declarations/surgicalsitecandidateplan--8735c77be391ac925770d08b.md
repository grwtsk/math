# SurgicalSiteCandidatePlan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5743c131367f075f2c971a3d42b08a096f4e0057809388887aed6ae6cfdf802",
  "kind": "structure",
  "lexical_name": "SurgicalSiteCandidatePlan",
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
  "slug": "surgicalsitecandidateplan--8735c77be391ac925770d08b",
  "source": {
    "blob": "e2f7553aeba4365485e53cc05ab6481f3e058ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variant1594a03ba0009f4c4aee76047cb72736d48735a7d2295dd659be38cb09ee8bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8735c77be391ac925770d08be82653e3b645a8b283715eb15dc2b28f8a767d93",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variant1594a03ba0009f4c4aee76047cb72736d48735a7d2295dd659be38cb09ee8bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5743c131367f075f2c971a3d42b08a096f4e0057809388887aed6ae6cfdf802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SurgicalSiteCandidatePlan
    (State : Type u)
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece) where
  identity : ArtifactIdentity
  selectionTrace : ReductiveSiteSelectionTrace State decomposition objective
  selectedSites : Finset decomposition.Piece
  selected_eq : selectedSites = selectionTrace.finalCandidates
  digestBinding : SurgicalPlanDigestBinding
  config_digest_exact :
    digestBinding.configDigest = selectionTrace.rootConfigDigest
  registry_digest_exact :
    digestBinding.registryDigest = selectionTrace.theoremRegistryDigest
  trace_digest_exact : digestBinding.traceDigest = selectionTrace.digest
  policy_digest_exact :
    digestBinding.identity.digest =
      surgicalPolicyDigest digestBinding.configDigest
        digestBinding.registryDigest digestBinding.traceDigest
  configBoundSnapshot : SubjectIdentity
  snapshot_config_digest_exact :
    configBoundSnapshot.sourceModuleDigest = digestBinding.configDigest.value
  snapshot_registry_digest_exact :
    configBoundSnapshot.declarationSetDigest =
      digestBinding.registryDigest.value
  snapshot_trace_digest_exact :
    configBoundSnapshot.importClosureDigest = digestBinding.traceDigest.value
  proposedPatch : Option PatchIdentity
  knownLosses : List String
  unresolvedObligations : List ArtifactIdentity

namespace SurgicalSiteCandidatePlan

/-- Candidate-plan identity is also its proposal identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variant1594a03ba0009f4c4aee76047cb72736d48735a7d2295dd659be38cb09ee8bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variant1594a03ba0009f4c4aee76047cb72736d48735a7d2295dd659be38cb09ee8bed.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2f7553aeba4365485e53cc05ab6481f3e058ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
