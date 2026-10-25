# getFinishedPrefixWithTimeout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1da69d6d7b21538dfb7eb465bfc1610e63b1aa3c5dfaaa4af9ae03172fb0546d",
  "kind": "def",
  "lexical_name": "getFinishedPrefixWithTimeout",
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
  "slug": "getfinishedprefixwithtimeout--1132edf746ae5c3b0437d565",
  "source": {
    "blob": "242d45c0a5daf3e2b7bb33ade325ee3b3ca4ede0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1132edf746ae5c3b0437d5652b0166cc3b0cac68be1dabbb00439bfc2b7bc24a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1da69d6d7b21538dfb7eb465bfc1610e63b1aa3c5dfaaa4af9ae03172fb0546d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getFinishedPrefixWithTimeout (xs : AsyncList ε α) (timeoutMs : UInt32)
    (cancelTks : List (ServerTask Unit) := []) : BaseIO (List α × Option ε × Bool) := do
  let timeoutTask : ServerTask (Unit ⊕ Except ε (AsyncList ε α)) ←
    if timeoutMs == 0 then
      pure <| ServerTask.pure (Sum.inl ())
    else
      ServerTask.BaseIO.asTask do
        IO.sleep timeoutMs
        return .inl ()
  go timeoutTask xs
where
  go (timeoutTask : ServerTask (Unit ⊕ Except ε (AsyncList ε α)))
      (xs : AsyncList ε α) : BaseIO (List α × Option ε × Bool) := do
    match xs with
    | cons hd tl =>
      let ⟨tl, e?, isComplete⟩ ← go timeoutTask tl
      return ⟨hd :: tl, e?, isComplete⟩
    | nil => return ⟨[], none, true⟩
    | delayed tl =>
      if ← tl.hasFinished then
        match ← tl.wait with
        | .ok tl => go timeoutTask tl
        | .error e => return ⟨[], some e, true⟩
      else
        let tl := tl.mapCheap .inr
        let cancelTks := cancelTks.map (·.mapCheap .inl)
        let r ← ServerTask.waitAny (tl :: cancelTks ++ [timeoutTask])
        match r with
        | .inl _ => return ⟨[], none, false⟩ -- Timeout or cancellation - stop waiting
        | .inr (.ok tl) => go timeoutTask tl
        | .inr (.error e) => return ⟨[], some e, true⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `242d45c0a5daf3e2b7bb33ade325ee3b3ca4ede0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
