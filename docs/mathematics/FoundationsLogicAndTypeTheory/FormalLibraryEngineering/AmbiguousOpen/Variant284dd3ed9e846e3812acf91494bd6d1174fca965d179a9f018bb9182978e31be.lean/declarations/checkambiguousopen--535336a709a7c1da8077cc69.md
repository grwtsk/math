# checkAmbiguousOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10359d4fb9b1593f21bb9f2390cc9fd025d27ea4ee6dc28d815aa7ef39762c08",
  "kind": "def",
  "lexical_name": "checkAmbiguousOpen",
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
  "slug": "checkambiguousopen--535336a709a7c1da8077cc69",
  "source": {
    "blob": "be4468a5e62c43146fbd5b78a1cf45d11acf8bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant284dd3ed9e846e3812acf91494bd6d1174fca965d179a9f018bb9182978e31be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:535336a709a7c1da8077cc696e2225d3d0de1bc1c921e2b365109fd6ec5878cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant284dd3ed9e846e3812acf91494bd6d1174fca965d179a9f018bb9182978e31be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10359d4fb9b1593f21bb9f2390cc9fd025d27ea4ee6dc28d815aa7ef39762c08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkAmbiguousOpen [Monad m] [MonadEnv m] [MonadOptions m] [MonadLog m]
    [AddMessageContext m] [MonadResolveName m] (nsStx : Ident) (resolved : List Name) : m Unit := do
  unless getLinterValue linter.ambiguousOpen (← getLinterOptions) do return
  let .ident info _ id preresolved := nsStx.raw | return
  -- Macro-generated `open` declarations cannot be fixed at the use site, so only lint
  -- identifiers written in the original source.
  let .original .. := info | return
  -- Identifiers with preresolved namespaces are not resolved against the environment.
  if preresolved.any fun | .namespace _ => true | _ => false then return
  -- `resolveNamespace` can return duplicates, e.g. when several `open` declarations make the
  -- same namespace visible.
  let resolved := resolved.eraseDups
  let env ← getEnv
  let currNamespace ← getCurrNamespace
  let openDecls ← getOpenDecls
  -- Interpretations via `open` declarations are always contained in `resolved`, so only the
  -- scope search can produce shadowed interpretations.
  let candidates := scopeCandidates env id currNamespace
  -- A namespace opened with `hiding` exceptions is not fully accessible, so it does not count.
  let isAccessible (n : Name) : Bool :=
    n.isPrefixOf currNamespace || openDecls.any fun
      | .simple ns [] => ns == n
      | _ => false
  let shadowed := candidates.filter fun n => !resolved.contains n && !isAccessible n
  if shadowed.isEmpty then return
  let display (n : Name) : MessageData := m!"`{rootNamespace ++ n}`"
  let displayAll (ns : List Name) : MessageData := MessageData.joinSep (ns.map display) ", "
  -- A shadowed interpretation is a non-innermost scope match, so `currNamespace` is nonempty.
  let shadowedNote :=
    if shadowed.length == 1 then m!"{displayAll shadowed} is silently not opened"
    else m!"{displayAll shadowed} are silently not opened"
  let hint :=
    m!" Specify the namespace unambiguously, e.g. `{rootNamespace ++ resolved.head!}`. The \
      warning can sometimes also be addressed by moving the `open` outside of the surrounding \
      `namespace`."
  let msg :=
    match resolved with
    | [r] =>
      m!"Ambiguous namespace `{id}`: it is interpreted as {display r} because this `open` occurs \
        inside `namespace {currNamespace}`, while {shadowedNote}." ++ hint
    | _ =>
      m!"Ambiguous namespace `{id}`: this `open` refers to all of {displayAll resolved}, while \
        {shadowedNote} because the `open` occurs inside `namespace {currNamespace}`." ++ hint
  logLint linter.ambiguousOpen nsStx.raw msg

end Lean.Linter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant284dd3ed9e846e3812acf91494bd6d1174fca965d179a9f018bb9182978e31be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AmbiguousOpen/Variant284dd3ed9e846e3812acf91494bd6d1174fca965d179a9f018bb9182978e31be.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be4468a5e62c43146fbd5b78a1cf45d11acf8bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
