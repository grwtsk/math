# parseQuotInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:becd1ad9b16f9fb547fa52e1cba175161e01397ed8541fca0e8247166de63254",
  "kind": "def",
  "lexical_name": "parseQuotInfo",
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
  "slug": "parsequotinfo--d3de0ee64d6096ef30c093ed",
  "source": {
    "blob": "c5f7aacdbddb53c005236a180c742fe4e42d4e8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3de0ee64d6096ef30c093ede945531f6602fe9babf460b330a37bee2e4c7ab7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:becd1ad9b16f9fb547fa52e1cba175161e01397ed8541fca0e8247166de63254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseQuotInfo (data : Std.TreeMap.Raw String Json) : M Unit := do
  let some (.num (nameIdx : Nat)) := data["name"]? | fail s!"quotInfo invalid"
  let some (.arr levelParamsIdxs) := data["levelParams"]? | fail s!"quotInfo invalid"
  let some (.num (typeIdx : Nat)) := data["type"]? | fail s!"quotInfo invalid"
  let some (.str kindStr) := data["kind"]? | fail s!"quotInfo invalid"

  let name ← getName nameIdx
  let levelParams ← getNameList levelParamsIdxs
  let type ← getExpr typeIdx
  let kind ←
    match kindStr with
    | "type" => pure .type
    | "ctor" => pure .ctor
    | "lift" => pure .lift
    | "ind" => pure .ind
    | _ => fail s!"unknown quot kind: {kindStr}"

  addConst name <| .quotInfo { name, levelParams, type, kind }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5f7aacdbddb53c005236a180c742fe4e42d4e8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
