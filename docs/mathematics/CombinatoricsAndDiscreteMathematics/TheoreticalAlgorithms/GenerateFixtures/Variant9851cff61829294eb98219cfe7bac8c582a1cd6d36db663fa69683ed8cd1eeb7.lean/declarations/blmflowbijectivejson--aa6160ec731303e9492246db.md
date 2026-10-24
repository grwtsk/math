# blmFlowBijectiveJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea97faca810359e2b3287b986c3e8ea3017283eafc48a546b6b24e52cb06e8e2",
  "kind": "def",
  "lexical_name": "blmFlowBijectiveJson",
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
  "slug": "blmflowbijectivejson--aa6160ec731303e9492246db",
  "source": {
    "blob": "ce5a7fc33489202fe23a2d31ab5e2e24b65f4cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 477,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa6160ec731303e9492246db94613a1a3a117f72d4e49616262d79730c6f27a8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea97faca810359e2b3287b986c3e8ea3017283eafc48a546b6b24e52cb06e8e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blmFlowBijectiveJson : String :=
  let F := BinaryLogicMatrixFlow.canonicalFlow4
  let x := canonicalRuntimeInitial4
  let y := F.forward x
  let z := F.inverse y
  "{\n" ++
  "  \"schema\": \"surface.blm.flow.bijective.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.Legacy.BinaryLogicMatrixFlow.Core\", \"trusted\": true},\n" ++
  "  \"artifactHash\": " ++ stringJson bijectiveFlowArtifactHash ++ ",\n" ++
  "  \"paperReferences\": " ++ stringArrayJson ["surface-core"] ++ ",\n" ++
  "  \"object\": \"BinaryLogicMatrixFlow\",\n" ++
  "  \"logicalFoundation\": \"bijectiveFiniteFlow\",\n" ++
  "  \"foundation\": \"bijectiveFiniteFlow\",\n" ++
  "  \"evolutionMode\": \"binaryLogicMatrixFlow\",\n" ++
  "  \"bijectivityStatus\": \"proved_bijective\",\n" ++
  "  \"forward\": \"declared\",\n" ++
  "  \"inverse\": \"declared\",\n" ++
  "  \"inverseForward\": \"proved\",\n" ++
  "  \"forwardInverse\": \"proved\",\n" ++
  "  \"initial\": " ++ matrixJson x ++ ",\n" ++
  "  \"forwardResult\": " ++ matrixJson y ++ ",\n" ++
  "  \"inverseAfterForward\": " ++ matrixJson z ++ ",\n" ++
  "  \"theorems\": " ++ stringArrayJson [
    "inverse_forward",
    "forward_inverse",
    "blmFlow_forward_injective",
    "blmFlow_forward_surjective",
    "blmFlow_forward_bijective",
    "blmFlow_inverse_bijective",
    "blmFlow_replay_reversible"
  ] ++ ",\n" ++
  "  \"proofStatus\": \"checked_by_lean\",\n" ++
  "  \"claimBoundary\": " ++ stringArrayJson [
    "does_not_claim: heat averaging is bijective",
    "does_not_claim: Ricci flow is a BinaryLogicMatrixFlow",
    "does_not_claim: Rust is formally verified"
  ] ++ "\n" ++
  "}\n"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5a7fc33489202fe23a2d31ab5e2e24b65f4cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
