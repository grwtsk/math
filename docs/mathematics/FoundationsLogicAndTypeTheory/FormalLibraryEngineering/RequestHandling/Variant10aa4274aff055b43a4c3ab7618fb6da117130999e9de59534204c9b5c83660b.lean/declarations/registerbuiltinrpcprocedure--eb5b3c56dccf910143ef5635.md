# registerBuiltinRpcProcedure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9fe1f9e784ad70ab17d8b501f623baa8c129f9a4b8196ae64c126982ea50d20",
  "kind": "def",
  "lexical_name": "registerBuiltinRpcProcedure",
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
  "slug": "registerbuiltinrpcprocedure--eb5b3c56dccf910143ef5635",
  "source": {
    "blob": "039142db893032eb64fae909732848057a380a70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant10aa4274aff055b43a4c3ab7618fb6da117130999e9de59534204c9b5c83660b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb5b3c56dccf910143ef563542f81f4e27bf7d6dd18587ca58e8874343902a68",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant10aa4274aff055b43a4c3ab7618fb6da117130999e9de59534204c9b5c83660b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9fe1f9e784ad70ab17d8b501f623baa8c129f9a4b8196ae64c126982ea50d20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerBuiltinRpcProcedure (method : Name) paramType respType
    [RpcEncodable paramType] [RpcEncodable respType]
    (handler : paramType → RequestM (RequestTask respType)) : IO Unit := do
  let errMsg := s!"Failed to register builtin RPC call handler for '{method}'"
  unless (← initializing) do
    throw <| IO.userError s!"{errMsg}: only possible during initialization"
  if (←builtinRpcProcedures.get).contains method then
    throw <| IO.userError s!"{errMsg}: already registered"

  let proc := wrapRpcProcedure method paramType respType handler
  builtinRpcProcedures.modify fun ps => ps.insert method proc

open Lean Elab Command Term Meta in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant10aa4274aff055b43a4c3ab7618fb6da117130999e9de59534204c9b5c83660b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant10aa4274aff055b43a4c3ab7618fb6da117130999e9de59534204c9b5c83660b.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `039142db893032eb64fae909732848057a380a70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
