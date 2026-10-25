# exampleNetwork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d205b68a106ce3d9f0aa62d65542b405949bf261d4ff02110b7a634ad4580a77",
  "kind": "def",
  "lexical_name": "exampleNetwork",
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
  "slug": "examplenetwork--d5a31b64346c720da008c7b6",
  "source": {
    "blob": "03a71861fb16cd29227a7ae677c2cf082b36fcd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClosureNetworkExamples/Variant2866de397f59aa9439632829e211b696cc912e5421e75652de2332b7c9a63e30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5a31b64346c720da008c7b698f527098d954681a800c120afa3ef7c11c431b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClosureNetworkExamples/Variant2866de397f59aa9439632829e211b696cc912e5421e75652de2332b7c9a63e30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d205b68a106ce3d9f0aa62d65542b405949bf261d4ff02110b7a634ad4580a77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleNetwork : PresentationIndexedClosureNetwork where
  nodes := [exampleClosure]
  edges := [exampleEdge]
  allNodesPure := True
  allNodesPureProof := True.intro
  noHiddenMutation := True
  noHiddenMutationProof := True.intro
  effectsEmittedAsData := True
  effectsEmittedAsDataProof := True.intro
  reducerEdgesWitnessed := True
  reducerEdgesWitnessedProof := True.intro
  identityPreserved := True
  identityPreservedProof := True.intro
  theoremResolutionPreserved := True
  theoremResolutionPreservedProof := True.intro
  authorityBoundaryPreserved := True
  authorityBoundaryPreservedProof := True.intro
  lossRecorded := True
  lossRecordedProof := True.intro
  noAuthorityCreated := True
  noAuthorityCreatedProof := True.intro

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClosureNetworkExamples/Variant2866de397f59aa9439632829e211b696cc912e5421e75652de2332b7c9a63e30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClosureNetworkExamples/Variant2866de397f59aa9439632829e211b696cc912e5421e75652de2332b7c9a63e30.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03a71861fb16cd29227a7ae677c2cf082b36fcd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
