# decodeName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b144cf781522c655adfb13554c9526beb1ba3bbffa42a7d43d2e4e0448ff160",
  "kind": "def",
  "lexical_name": "decodeName",
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
  "slug": "decodename--e53ae8e0b3e31d54d6e58556",
  "source": {
    "blob": "756e10e0c66ded61cb663774310f2c589f064265",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanStructuralTargets.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e53ae8e0b3e31d54d6e5855617f79a02cc6ff4fd40fd4ed426f8e511874463c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanStructuralTargets.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b144cf781522c655adfb13554c9526beb1ba3bbffa42a7d43d2e4e0448ff160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decodeName (j : Json) (fuel : Nat := 65) : Except String Name := do
  match fuel with
  | 0 => throw "RESOURCE_BOUNDED_NAME_DEPTH_64"
  | fuel + 1 =>
    let tag ← j.getObjValAs? String "tag"
    match tag with
    | "anonymous" => fields j ["tag"]; return .anonymous
    | "str" =>
      fields j ["tag", "prefix", "value"]
      let value ← j.getObjValAs? String "value"
      if value.utf8ByteSize > 1024 then throw "RESOURCE_BOUNDED_NAME_COMPONENT_1024"
      return .str (← decodeName (← j.getObjVal? "prefix") fuel) value
    | "num" =>
      fields j ["tag", "prefix", "value"]
      let value ← (← j.getObjVal? "value").getNat?
      if value > 18446744073709551615 then throw "RESOURCE_BOUNDED_NAME_NUM_U64"
      return .num (← decodeName (← j.getObjVal? "prefix") fuel) value
    | _ => throw "UNSUPPORTED_NAME_TAG"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanStructuralTargets.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanStructuralTargets.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `756e10e0c66ded61cb663774310f2c589f064265` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
