# parseInductInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:954661409246918e6102aa75532caa6e465ddb53cbdffb8ed6e5c1555afc7336",
  "kind": "def",
  "lexical_name": "parseInductInfo",
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
  "slug": "parseinductinfo--542498282a72d2be53d5ee0d",
  "source": {
    "blob": "1eedbabc47e0db3df6405063913380ed0fed46ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 331,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:542498282a72d2be53d5ee0db4eed6691e1f5ffa79cc833611a9132cbc9510a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:954661409246918e6102aa75532caa6e465ddb53cbdffb8ed6e5c1555afc7336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseInductInfo (json : Json) : M Unit := do
  let .obj data := json | fail "inductInfo invalid: Expected JSON object"
  let some (.num (nameIdx : Nat)) := data["name"]? | fail s!"inductInfo invalid"
  let some (.arr levelParamsIdxs) := data["levelParams"]? | fail s!"inductInfo invalid"
  let some (.num (typeIdx : Nat)) := data["type"]? | fail s!"inductInfo invalid"
  let some (.num (numParams : Nat)) := data["numParams"]? | fail s!"inductInfo invalid"
  let some (.num (numIndices : Nat)) := data["numIndices"]? | fail s!"inductInfo invalid"
  let some (.arr allIdxs) := data["all"]? | fail s!"inductInfo invalid"
  let some (.arr ctorsIdxs) := data["ctors"]? | fail s!"inductInfo invalid"
  let some (.num (numNested : Nat)) := data["numNested"]? | fail s!"inductInfo invalid"
  let some (.bool isRec) := data["isRec"]? | fail s!"inductInfo invalid"
  let some (.bool isUnsafe) := data["isUnsafe"]? | fail s!"inductInfo invalid"
  let some (.bool isReflexive) := data["isReflexive"]? | fail s!"inductInfo invalid"

  let name ← getName nameIdx
  let levelParams ← getNameList levelParamsIdxs
  let type ← getExpr typeIdx
  let all ← getNameList allIdxs
  let ctors ← getNameList ctorsIdxs

  addConst name <| .inductInfo {
    name,
    levelParams,
    type,
    numParams,
    numIndices,
    all,
    ctors,
    numNested,
    isRec,
    isUnsafe,
    isReflexive,
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eedbabc47e0db3df6405063913380ed0fed46ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
