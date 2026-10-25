# parseDefnInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:163b9ab11a4e20fdbf7cd36af79f5a2882b7d9505c9de8bd5d461825cdf024ac",
  "kind": "def",
  "lexical_name": "parseDefnInfo",
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
  "slug": "parsedefninfo--c3cd0db6a55b3ef11481c63c",
  "source": {
    "blob": "1eedbabc47e0db3df6405063913380ed0fed46ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3cd0db6a55b3ef11481c63c32c1aa342cebaab7daa0369fbff2f88ca5ff1f51",
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

Occurrence: `declaration:163b9ab11a4e20fdbf7cd36af79f5a2882b7d9505c9de8bd5d461825cdf024ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseDefnInfo (data : Std.TreeMap.Raw String Json) : M Unit := do
  let some (.num (nameIdx : Nat)) := data["name"]? | fail s!"defnInfo invalid"
  let some (.arr levelParamsIdxs) := data["levelParams"]? | fail s!"defnInfo invalid"
  let some (.num (typeIdx : Nat)) := data["type"]? | fail s!"defnInfo invalid"
  let some (.num (valueIdx : Nat)) := data["value"]? | fail s!"defnInfo invalid"
  let some hints := data["hints"]? | fail s!"defnInfo invalid"
  let some (.str safetyStr) := data["safety"]? | fail s!"defnInfo invalid"
  let some (.arr allIdxs) := data["all"]? | fail s!"defnInfo invalid"

  let name ← getName nameIdx
  let levelParams ← getNameList levelParamsIdxs
  let type ← getExpr typeIdx
  let value ← getExpr valueIdx
  let hints ←
    match hints with
    | .str "opaque" => pure .opaque
    | .str "abbrev" => pure .abbrev
    | .obj obj =>
      let some (.num (level : Nat)) := obj["regular"]? | fail s!"defnInfo invalid"
      pure <| .regular level.toUInt32
    | _ => fail s!"defnInfo invalid"
  let safety ←
    match safetyStr with
    | "unsafe" => pure .unsafe
    | "safe" => pure .safe
    | "partial" => pure .partial
    | _ => fail s!"Unknown safety parameter: {safetyStr}"
  let all ← getNameList allIdxs

  addConst name <| .defnInfo { name, levelParams, type, value, hints, safety, all }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eedbabc47e0db3df6405063913380ed0fed46ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
