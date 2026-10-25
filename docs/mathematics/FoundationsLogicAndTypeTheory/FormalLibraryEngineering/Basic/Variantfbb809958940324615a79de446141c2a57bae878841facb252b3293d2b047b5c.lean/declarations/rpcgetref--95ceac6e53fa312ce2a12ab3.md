# rpcGetRef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:536a952ee8324f1a7da17fdb4596f7fca0c34268e2b6570111a282e9fb01ed30",
  "kind": "def",
  "lexical_name": "rpcGetRef",
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
  "slug": "rpcgetref--95ceac6e53fa312ce2a12ab3",
  "source": {
    "blob": "a433afdf5e77573810e78f3150f89c57fa9143d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfbb809958940324615a79de446141c2a57bae878841facb252b3293d2b047b5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95ceac6e53fa312ce2a12ab335ea8ec329b3b4c2b9a13ce7510a4f5e13a86c8e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfbb809958940324615a79de446141c2a57bae878841facb252b3293d2b047b5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:536a952ee8324f1a7da17fdb4596f7fca0c34268e2b6570111a282e9fb01ed30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rpcGetRef (α) [TypeName α] (r : Lsp.RpcRef)
    : ReaderT RpcObjectStore (ExceptT String Id) (WithRpcRef α) := do
  let some referencedObj := (← read).aliveRefs.find? r
    | throw s!"RPC reference '{r}' is not valid"
  let some val := referencedObj.obj.get? α
    | throw <| s!"RPC call type mismatch in reference '{r}'\nexpected '{TypeName.typeName α}', " ++
        s!"got '{referencedObj.obj.typeName}'"
  return { val, id := referencedObj.id }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfbb809958940324615a79de446141c2a57bae878841facb252b3293d2b047b5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfbb809958940324615a79de446141c2a57bae878841facb252b3293d2b047b5c.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a433afdf5e77573810e78f3150f89c57fa9143d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
