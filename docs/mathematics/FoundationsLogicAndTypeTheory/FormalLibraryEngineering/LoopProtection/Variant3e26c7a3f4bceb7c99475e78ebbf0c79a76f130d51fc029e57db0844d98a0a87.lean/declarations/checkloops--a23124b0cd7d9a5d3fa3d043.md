# checkLoops

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92461bfe1e00e77bb865df93ed65e68e0074d452f52202a2622da194ad430b3f",
  "kind": "def",
  "lexical_name": "checkLoops",
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
  "slug": "checkloops--a23124b0cd7d9a5d3fa3d043",
  "source": {
    "blob": "277b4c8fa59addefcb02853153daf138ce47812d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a23124b0cd7d9a5d3fa3d0437703adae701ce8b5f5fd61538dd3d45254ddb81a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92461bfe1e00e77bb865df93ed65e68e0074d452f52202a2622da194ad430b3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkLoops (force : Bool) (ctxt : Simp.Context) (methods : Methods) (thm : SimpTheorem) : MetaM Unit := do
  -- No loop checking when disabled or in single pass mode
  unless (← shouldCheckLoops force ctxt) do return

  -- Ignore theorems depending on the local context for now
  if thm.proof.hasFVar then return

  let type ← inferType (← thm.getValue)
  forallTelescopeReducing type fun _xs type => do
    let rhs := (← whnf type).appArg!

      let _ ← SimpM.run ctxt (s := {}) (methods := methods) do
        -- We ignore the simp result.
        -- A different design is possible where we use the simplified RHS to continue
        -- rewriting, but it would be a too severe change to `simp`’s semantics
        tryCatchRuntimeEx do
            let _ ← simp rhs
          fun ex => do
            trace[Meta.Tactic.simp.loopProtection] "loop protection for {← ppOrigin thm.origin}: got exception{indentD ex.toMessageData}"
            if force then
              logWarning (← mkLoopWarningMsg thm)
            else
              Linter.logLint linter.loopingSimpArgs (← getRef) (← mkLoopWarningMsg thm)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `277b4c8fa59addefcb02853153daf138ce47812d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
