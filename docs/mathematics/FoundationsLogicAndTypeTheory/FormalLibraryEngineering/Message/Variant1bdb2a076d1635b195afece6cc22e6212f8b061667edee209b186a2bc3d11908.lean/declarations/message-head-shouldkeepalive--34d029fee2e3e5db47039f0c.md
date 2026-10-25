# Message.Head.shouldKeepAlive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b302f26b07f1c07f26e6c04a706076d34241389b10caa13bc04ba242cd558847",
  "kind": "def",
  "lexical_name": "Message.Head.shouldKeepAlive",
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
  "slug": "message-head-shouldkeepalive--34d029fee2e3e5db47039f0c",
  "source": {
    "blob": "cbb073c0589c895efc7292dc22b3333cc5081186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34d029fee2e3e5db47039f0ca87f49e10ea7ad90919bb199b0b6ed27aca41186",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b302f26b07f1c07f26e6c04a706076d34241389b10caa13bc04ba242cd558847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Message.Head.shouldKeepAlive (message : Message.Head dir) : Bool :=
  let tokens? : Option (Array String) :=
    match message.headers.getAll? .connection with
    | none => some #[]
    | some values =>
        values.foldl (fun acc raw => do
          let acc ← acc
          let parsed ← Header.Connection.parse raw
          pure (acc ++ parsed.tokens)
        ) (some #[])

  match tokens? with
  | none => false
  | some tokens =>
      if message.version == .v11 then
        !tokens.any (· == "close")
      else
        tokens.any (· == "keep-alive")

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb073c0589c895efc7292dc22b3333cc5081186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
