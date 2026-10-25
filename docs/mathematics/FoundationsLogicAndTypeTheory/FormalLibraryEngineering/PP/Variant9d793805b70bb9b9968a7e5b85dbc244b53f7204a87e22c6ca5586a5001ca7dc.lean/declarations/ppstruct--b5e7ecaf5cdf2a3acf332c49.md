# ppStruct?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a6c6c440d84d9bbc45f24d57dce1c804f1344ffb055bef91faf7e559994f7f2",
  "kind": "def",
  "lexical_name": "ppStruct?",
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
  "slug": "ppstruct--b5e7ecaf5cdf2a3acf332c49",
  "source": {
    "blob": "104aaaa8e37c15f7fc3dbed77a119a4c26bf32df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant9d793805b70bb9b9968a7e5b85dbc244b53f7204a87e22c6ca5586a5001ca7dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5e7ecaf5cdf2a3acf332c49f2836fa6484c38ae91dc8e4fb2793b9c7b3c9890",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant9d793805b70bb9b9968a7e5b85dbc244b53f7204a87e22c6ca5586a5001ca7dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a6c6c440d84d9bbc45f24d57dce1c804f1344ffb055bef91faf7e559994f7f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ppStruct? : M (Option MessageData) := do
  let mut msgs := #[]
  msgs := push msgs (← ppBasis?)
  msgs := push msgs (← ppDiseqs?)
  unless msgs.isEmpty do
    let mut info := #[]
    if (← get).commInst?.isSome then
      info := info.push <| toTraceElem "commutative"
    if (← get).idempotentInst?.isSome then
      info := info.push <| toTraceElem "idempotent"
    if let some u := (← get).neutral? then
      info := info.push <| toTraceElem m!"identity: `{u}`"
    msgs := push msgs (toOption `properties "Properties" info)
  return toOption `assoc m!"Operator `{(← getStruct).op}`" msgs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant9d793805b70bb9b9968a7e5b85dbc244b53f7204a87e22c6ca5586a5001ca7dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant9d793805b70bb9b9968a7e5b85dbc244b53f7204a87e22c6ca5586a5001ca7dc.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `104aaaa8e37c15f7fc3dbed77a119a4c26bf32df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
