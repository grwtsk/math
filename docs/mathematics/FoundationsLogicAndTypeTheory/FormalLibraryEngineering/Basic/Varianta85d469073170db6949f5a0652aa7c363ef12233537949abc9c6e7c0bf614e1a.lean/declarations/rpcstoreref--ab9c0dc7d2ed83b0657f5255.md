# rpcStoreRef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03a6829c49ce303bd8bf4fde5ec6fe2ab07197ce26e00aa03f193eac8ac2111f",
  "kind": "def",
  "lexical_name": "rpcStoreRef",
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
  "slug": "rpcstoreref--ab9c0dc7d2ed83b0657f5255",
  "source": {
    "blob": "7949abaf53dfe5b9fb52399ed6b046065bd921fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab9c0dc7d2ed83b0657f5255b071224cd887e69e0047d406fd110e6893c15dee",
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

Occurrence: `declaration:03a6829c49ce303bd8bf4fde5ec6fe2ab07197ce26e00aa03f193eac8ac2111f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rpcStoreRef [TypeName α] (obj : WithRpcRef α) : StateM RpcObjectStore Lsp.RpcRef := do
  let st ← get
  let reusableRef? : Option Lsp.RpcRef := st.refsById.find? obj.id
  match reusableRef? with
  | some ref =>
    -- Reuse `RpcRef` for this `obj` so that clients can reuse their UI state for it.
    -- We maintain a reference count so that we only free `obj` when the client has released
    -- all of its instances of the `RpcRef` for `obj`.
    let some referencedObj := st.aliveRefs.find? ref
      | return panic! "Found object ID in `refsById` but not in `aliveRefs`."
    let referencedObj := { referencedObj with rc := referencedObj.rc + 1 }
    set { st with aliveRefs := st.aliveRefs.insert ref referencedObj }
    return ref
  | none =>
    let ref : Lsp.RpcRef := ⟨st.nextRef⟩
    set { st with
      aliveRefs := st.aliveRefs.insert ref ⟨.mk obj.val, obj.id, 1⟩
      refsById := st.refsById.insert obj.id ref
      nextRef := st.nextRef + 1
    }
    return ref

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta85d469073170db6949f5a0652aa7c363ef12233537949abc9c6e7c0bf614e1a.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7949abaf53dfe5b9fb52399ed6b046065bd921fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
