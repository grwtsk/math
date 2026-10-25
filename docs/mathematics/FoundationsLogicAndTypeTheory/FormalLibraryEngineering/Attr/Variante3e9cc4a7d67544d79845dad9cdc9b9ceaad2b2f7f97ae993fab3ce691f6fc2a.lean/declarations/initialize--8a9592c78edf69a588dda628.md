# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6b2f423074077c8833e45888dfca4ce5f300449c56e579c4a5553b250b243b0",
  "kind": "initialize",
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
  "slug": "initialize--8a9592c78edf69a588dda628",
  "source": {
    "blob": "81ac7560761d5abe05ddaba4947b616535ff5281",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 148,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variante3e9cc4a7d67544d79845dad9cdc9b9ceaad2b2f7f97ae993fab3ce691f6fc2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a9592c78edf69a588dda628fd282b4292a4116f28fde81d4505b5d8a2b3ee1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variante3e9cc4a7d67544d79845dad9cdc9b9ceaad2b2f7f97ae993fab3ce691f6fc2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6b2f423074077c8833e45888dfca4ce5f300449c56e579c4a5553b250b243b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize
  registerBuiltinAttribute {
    name := `tactic_code_action
    descr := "Declare a new tactic code action, to appear in the code actions on tactics"
    applicationTime := .afterCompilation
    add := fun decl stx kind => do
      unless kind == AttributeKind.global do
        throwError "invalid attribute 'tactic_code_action', must be global"
      match stx with
      | `(attr| tactic_code_action *) =>
        if (IR.getSorryDep (← getEnv) decl).isSome then return -- ignore in progress definitions
        modifyEnv (tacticCodeActionExt.addEntry · (⟨decl, #[]⟩, ← mkTacticCodeAction decl))
      | `(attr| tactic_code_action $[$args]*) =>
        if args.isEmpty then
          if (IR.getSorryDep (← getEnv) decl).isSome then return -- ignore in progress definitions
          modifyEnv (tacticSeqCodeActionExt.addEntry · (decl, ← mkTacticSeqCodeAction decl))
        else
          let args ← args.mapM resolveGlobalConstNoOverloadWithInfo
          if (IR.getSorryDep (← getEnv) decl).isSome then return -- ignore in progress definitions
          modifyEnv (tacticCodeActionExt.addEntry · (⟨decl, args⟩, ← mkTacticCodeAction decl))
      | _ => pure ()
  }

/-- A command code action extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variante3e9cc4a7d67544d79845dad9cdc9b9ceaad2b2f7f97ae993fab3ce691f6fc2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variante3e9cc4a7d67544d79845dad9cdc9b9ceaad2b2f7f97ae993fab3ce691f6fc2a.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ac7560761d5abe05ddaba4947b616535ff5281` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
