# resolveNameUsingNamespacesCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ae88919fade445e134b6d0d5ffc1f41f15f723eb5f867d8cdd9f85b48b1a2df",
  "kind": "def",
  "lexical_name": "resolveNameUsingNamespacesCore",
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
  "slug": "resolvenameusingnamespacescore--01ebccb6ff543f6eb433d12b",
  "source": {
    "blob": "ac54526a697dacf545835f26ed971d3a16d08f6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Open/Variant7dceae47d5d5283d73df27e56460ca531fd392cf68655389063b4fd022a2f933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01ebccb6ff543f6eb433d12bfb673e17f8a946fdb35de52a5ed5bc26cd833002",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Open/Variant7dceae47d5d5283d73df27e56460ca531fd392cf68655389063b4fd022a2f933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ae88919fade445e134b6d0d5ffc1f41f15f723eb5f867d8cdd9f85b48b1a2df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveNameUsingNamespacesCore [MonadOptions m] [MonadResolveName m]
    (nss : List Name) (idStx : Syntax) : m Name := do
  let mut exs := #[]
  let mut result := #[]
  for ns in nss do
    try
      let declName ← resolveId ns idStx
      result := result.push declName
    catch ex =>
      exs := exs.push ex
  if exs.size == nss.length then
    withRef idStx do
      if h : exs.size = 1 then
        throw exs[0]
      else
        throwErrorWithNestedErrors "failed to open" exs
  if h : result.size = 1 then
    return result[0]
  else
    withRef idStx do throwError "ambiguous identifier `{idStx.getId}`, possible interpretations: {result.map mkConst}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Open/Variant7dceae47d5d5283d73df27e56460ca531fd392cf68655389063b4fd022a2f933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Open/Variant7dceae47d5d5283d73df27e56460ca531fd392cf68655389063b4fd022a2f933.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac54526a697dacf545835f26ed971d3a16d08f6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
