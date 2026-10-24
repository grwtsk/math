# MathematicalWorldModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d671200bb8d8ebc99d70e2a7cb3c842e1b64c513b5320d18437d62cd442eb3b",
  "kind": "structure",
  "lexical_name": "MathematicalWorldModel",
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
  "slug": "mathematicalworldmodel--7794f25ddee000763b3713d2",
  "source": {
    "blob": "eab0bc0f6c8d104ba79f2e211dea5d5d90296e84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7794f25ddee000763b3713d26869b384dfbeb1607593ab3b7cb37e6dd6c56c7d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Registry/Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d671200bb8d8ebc99d70e2a7cb3c842e1b64c513b5320d18437d62cd442eb3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MathematicalWorldModel where
  identity : WorldModelVersionId
  owner : Project

  Domain : Type
  State : Type
  LocalContext : Type

  vocabulary : Vocabulary
  declarationNamespace : DeclarationNamespace
  objects : FiniteRegistry MathematicalObjectRecord
  propositions : FiniteRegistry PropositionRecord
  assumptions : FiniteRegistry AssumptionRecord
  proofAuthorities : FiniteRegistry ProofAuthorityRecord
  examples : FiniteRegistry ExampleRecord
  counterexamples : FiniteRegistry CounterexampleRecord
  implementationRefinements : FiniteRegistry ImplementationRefinementRecord
  openObligations : FiniteRegistry ObligationRecord

  semanticDependencies : List WorldModelId
  trustedBaseClosure : TrustedBaseClosure
  localState : State
  stabilityFunctional : State → NNReal
  inconsistencyFunctional : State → NNReal

  sourceAuthority : AuthorityClass
  observationAuthority : AuthorityClass
  assuranceLevel : AssuranceLevel

/-- A finite graph-indexed registry of world-model versions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Registry/Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eab0bc0f6c8d104ba79f2e211dea5d5d90296e84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
