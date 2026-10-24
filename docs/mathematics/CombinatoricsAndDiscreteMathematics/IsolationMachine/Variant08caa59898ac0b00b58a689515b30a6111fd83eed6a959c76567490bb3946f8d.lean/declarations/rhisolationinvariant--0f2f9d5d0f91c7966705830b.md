# RHIsolationInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6aa7df46c2d0ff1794b0a13abb3c214aed93d5c58a9ee1d55a54651d867e0c36",
  "kind": "structure",
  "lexical_name": "RHIsolationInvariant",
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
  "slug": "rhisolationinvariant--0f2f9d5d0f91c7966705830b",
  "source": {
    "blob": "4cac3b2c43913e1e73ea148ac90ba5427bd66f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f2f9d5d0f91c7966705830b96c4286f1052f6ec0791095513cb9922a4a54602",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6aa7df46c2d0ff1794b0a13abb3c214aed93d5c58a9ee1d55a54651d867e0c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RHIsolationInvariant
    {CellId : Type uCell}
    {RefinementId : Type uRefinement}
    [DecidableEq CellId]
    [DecidableEq RefinementId]
    (cell : CellId → AnalyticCell)
    (count : CellId → Nat)
    (unresolved : CellId → Prop)
    (rootCount : Nat)
    (committedRefinementsCountPreserving :
      Prop)
    (noSpectralPruning : Prop)
    (lineageSound : Prop)
    (state :
      RHIsolationState CellId RefinementId) :
    Prop where
  frontierComplete :
    AnalyticFrontierComplete
      unresolved
      state.unresolvedFrontier
      state.currentlyProcessing
  certifiedLeavesDisjoint :
    ∀ ⦃left right⦄,
      left ∈ state.certifiedLeaves →
      right ∈ state.certifiedLeaves →
      left ≠ right →
      Disjoint
        (cell left).interior
        (cell right).interior
  leafCountsSound :
    ∀ leaf ∈ state.certifiedLeaves,
      0 < count leaf
  committedRefinementsCountPreservingProof :
    committedRefinementsCountPreserving
  noSpectralPruningProof : noSpectralPruning
  lineageSoundProof : lineageSound
  massAccounted :
    state.certifiedCountMass +
      state.unresolvedParentMass =
      rootCount

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cac3b2c43913e1e73ea148ac90ba5427bd66f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
