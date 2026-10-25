# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:657720286ec8796f644ae5308dadfc65e280bae8d289ee6654b537232b0456d1",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3fbab1c52645e7c794cd1815",
  "source": {
    "blob": "ca8bc885cd9eb30b465f63a4e5b2a4837ee25381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fbab1c52645e7c794cd1815249487c94da89d901449df6876c45042117f25d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:657720286ec8796f644ae5308dadfc65e280bae8d289ee6654b537232b0456d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FromJson Message where
  fromJson? j := do
    let "2.0" ← j.getObjVal? "jsonrpc" | throw "only version 2.0 of JSON RPC is supported"
    (do let id ← j.getObjValAs? RequestID "id"
        let method ← j.getObjValAs? String "method"
        let params? := j.getObjValAs? Structured "params"
        pure (Message.request id method params?.toOption)) <|>
    (do let method ← j.getObjValAs? String "method"
        let params? := j.getObjValAs? Structured "params"
        pure (Message.notification method params?.toOption)) <|>
    (do let id ← j.getObjValAs? RequestID "id"
        let result ← j.getObjVal? "result"
        pure (Message.response id result)) <|>
    (do let id ← j.getObjValAs? RequestID "id"
        let err ← j.getObjVal? "error"
        let code ← err.getObjValAs? ErrorCode "code"
        let message ← err.getObjValAs? String "message"
        let data? := err.getObjVal? "data"
        pure (Message.responseError id code message data?.toOption))

-- TODO(WN): temporary until we have deriving FromJson
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8bc885cd9eb30b465f63a4e5b2a4837ee25381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
