# recvSelector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff8c31b67424c3e42f3e32cb626f5edeecf474a848cba17ced8f578b8da4ad42",
  "kind": "def",
  "lexical_name": "recvSelector",
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
  "slug": "recvselector--4feff9f611949ece882b6f66",
  "source": {
    "blob": "a0f051e2eb6589973700d587f18606698e281e4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variant1e1f22132751ee92ff883915d7eff321558cfacba4b646380bffc88938d5e820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4feff9f611949ece882b6f661e100131ae6ed20cd1929634c8f0d61ca70c502a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variant1e1f22132751ee92ff883915d7eff321558cfacba4b646380bffc88938d5e820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff8c31b67424c3e42f3e32cb626f5edeecf474a848cba17ced8f578b8da4ad42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recvSelector (s : TCP.Socket.Client) (size : UInt64) : Selector (Option ByteArray) :=
  {
    tryFn := do
      let readableWaiter ← s.native.waitReadable

      if ← readableWaiter.isResolved then
        -- We know that this read should not block
        let res ← (s.recv? size).block
        return some res
      else
        s.native.cancelRecv
        return none

    registerFn waiter := do
      let readableWaiter ← s.native.waitReadable

      -- If we get cancelled the promise will be dropped so prepare for that
      discard <| IO.mapTask (t := readableWaiter.result?) fun res => do
        match res with
        | none => return ()
        | some res =>
          let lose := return ()
          let win promise := do
            try
              discard <| IO.ofExcept res
              -- We know that this read should not block
              let res ← (s.recv? size).block
              promise.resolve (.ok res)
            catch e =>
              promise.resolve (.error e)
          waiter.race lose win

    unregisterFn := s.native.cancelRecv
  }

/--
Shuts down the write side of the client socket.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variant1e1f22132751ee92ff883915d7eff321558cfacba4b646380bffc88938d5e820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TCP/Variant1e1f22132751ee92ff883915d7eff321558cfacba4b646380bffc88938d5e820.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f051e2eb6589973700d587f18606698e281e4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
