# wrapAsync

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5fe487a6151b0b66d14bc35f4573a49879f599bf8cff6655925b3df41914240",
  "kind": "def",
  "lexical_name": "wrapAsync",
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
  "slug": "wrapasync--58f40cda4d47c8fac2c96d2a",
  "source": {
    "blob": "a75d34fb9fbe65d51a9a4bb81d4247d6ee43e159",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 570,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant870f876dbf634c239beb539f8f9d2b6dd7d16f0ca028a303ec2e1679db861a14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58f40cda4d47c8fac2c96d2a84a1a001c7032ee4be0fc44c6ac5bf950c50e034",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant870f876dbf634c239beb539f8f9d2b6dd7d16f0ca028a303ec2e1679db861a14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5fe487a6151b0b66d14bc35f4573a49879f599bf8cff6655925b3df41914240`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wrapAsync {α : Type} (act : α → CoreM β) (cancelTk? : Option IO.CancelToken) :
    CoreM (α → EIO Exception β) := do
  let (childNGen, parentNGen) := (← getNGen).mkChild
  setNGen parentNGen
  let (childDeclNGen, parentDeclNGen) := (← getDeclNGen).mkChild
  setDeclNGen parentDeclNGen
  let st ← get
  let st := { st with auxDeclNGen := childDeclNGen, ngen := childNGen }
  let ctx ← read
  let ctx := { ctx with cancelTk? }
  let heartbeats := (← IO.getNumHeartbeats) - ctx.initHeartbeats
  return fun a => withCurrHeartbeats (do
      -- include heartbeats since start of elaboration in new thread as well such that forking off
      -- an action doesn't suddenly allow it to succeed from a lower heartbeat count
      IO.addHeartbeats heartbeats
      act a : CoreM _)
    |>.run' ctx st

/-- Option for capturing output to stderr during elaboration. -/
register_builtin_option stderrAsMessages : Bool := {
  defValue := true
  descr    := "(server) capture output to the Lean stderr channel (such as from `dbg_trace`) during elaboration of a command as a diagnostic message"
}

/--
Creates snapshot reporting given `withIsolatedStreams` output and diagnostics and traces from the
given state.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant870f876dbf634c239beb539f8f9d2b6dd7d16f0ca028a303ec2e1679db861a14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant870f876dbf634c239beb539f8f9d2b6dd7d16f0ca028a303ec2e1679db861a14.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a75d34fb9fbe65d51a9a4bb81d4247d6ee43e159` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
