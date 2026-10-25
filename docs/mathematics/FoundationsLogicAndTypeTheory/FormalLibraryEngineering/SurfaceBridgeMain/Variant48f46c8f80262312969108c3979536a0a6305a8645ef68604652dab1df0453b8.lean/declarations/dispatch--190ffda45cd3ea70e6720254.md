# dispatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:daf30dfd3fff6d635e0a215d6522d89bba3aca589058cdfe2db0d74eb824be71",
  "kind": "def",
  "lexical_name": "dispatch",
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
  "slug": "dispatch--190ffda45cd3ea70e6720254",
  "source": {
    "blob": "eccac469d4999b22149ae7ab846af35fc7c53b93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:190ffda45cd3ea70e672025402422cfa513cae801a03798b9b8c332930964270",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:daf30dfd3fff6d635e0a215d6522d89bba3aca589058cdfe2db0d74eb824be71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dispatch (env : Environment) (request : BridgeRequest) : BridgeM (Json × Bool) := do
  if request.schema != requestSchema then
    throw {
      code := "UNSUPPORTED_SCHEMA"
      message := s!"unsupported schema: {request.schema}"
      data := some <| Json.mkObj [("supported", toJson requestSchema)]
    }
  if request.requestId.trimAscii.isEmpty then
    throw {
      code := "INVALID_REQUEST_ID"
      message := "requestId must not be empty"
    }
  match request.operation with
  | "ping" =>
      pure (Json.mkObj [
        ("pong", toJson true),
        ("leanVersion", toJson Lean.versionString)
      ], false)
  | "getProjectState" => pure (getProjectState env, false)
  | "inspectDeclaration" => pure (← inspectDeclaration env request, false)
  | "getProjectedAst" => pure (← getProjectedAst env request, false)
  | "getGoalState" => pure (← getGoalState env request, false)
  | "getDiagnostics" => pure (getDiagnostics, false)
  | "shutdown" => pure (Json.mkObj [("shuttingDown", toJson true)], true)
  | operation =>
      throw {
        code := "UNKNOWN_OPERATION"
        message := s!"unknown bridge operation: {operation}"
      }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccac469d4999b22149ae7ab846af35fc7c53b93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
