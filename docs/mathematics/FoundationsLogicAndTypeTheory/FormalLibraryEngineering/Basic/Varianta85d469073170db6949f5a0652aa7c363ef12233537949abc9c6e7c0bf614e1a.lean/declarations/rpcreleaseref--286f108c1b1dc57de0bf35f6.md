# rpcReleaseRef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:993827c66881594a941dfb63c83fd4fdcbcf825e386c95371284de5a569da6e0",
  "kind": "def",
  "lexical_name": "rpcReleaseRef",
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
  "slug": "rpcreleaseref--286f108c1b1dc57de0bf35f6",
  "source": {
    "blob": "7949abaf53dfe5b9fb52399ed6b046065bd921fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:286f108c1b1dc57de0bf35f64f3bc7acd91e5ef6b5fa14c50daccfcddf4841fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:993827c66881594a941dfb63c83fd4fdcbcf825e386c95371284de5a569da6e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rpcReleaseRef (r : Lsp.RpcRef) : StateM RpcObjectStore Bool := do
  let st ← get
  let some referencedObj := st.aliveRefs.find? r
    | return false
  let referencedObj := { referencedObj with rc := referencedObj.rc - 1 }
  if referencedObj.rc == 0 then
    set { st with
      aliveRefs := st.aliveRefs.erase r
      refsById := st.refsById.erase referencedObj.id
    }
  else
    set { st with aliveRefs := st.aliveRefs.insert r referencedObj }
  return true

/--
`RpcEncodable α` means `α` can be used as an argument or return value
in Remote Procedure Call (RPC) methods.

The following types are `RpcEncodable` by default:
- Any type with both `FromJson` and `ToJson` instances.
- Any type all of whose components
  (meaning the fields of a `structure`, or the arguments to `inductive` constructors)
  are `RpcEncodable`.
  Use `deriving RpcEncodable` to construct an instance in this case.
- Certain common containers, if containing `RpcEncodable` data (see instances below).
- Any `WithRpcRef α` where `[TypeName α]`.

Some names are reserved for internal use and must not appear
as the name of a field or constructor argument in any `RpcEncodable` type,
or as an object key in any nested JSON.
The following are currently reserved:
- `__rpcref`

It is also possible (but discouraged for non-experts)
to implement custom `RpcEncodable` instances.
These must respect the `RpcObjectStore.wireFormat`.
-/
-- TODO(WN): for Lean.js, compile `WithRpcRef` to "opaque reference" on the client
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7949abaf53dfe5b9fb52399ed6b046065bd921fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
