# withNewLocals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdb83aeb6457ce0043c548e1b2fb66bbd7374e577f80ecdef7f31ef6495eed2f",
  "kind": "def",
  "lexical_name": "withNewLocals",
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
  "slug": "withnewlocals--a162a0f4b893a1e147ecd07c",
  "source": {
    "blob": "0ae20abd959efcb78b1449ed643500823dbfdf9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a162a0f4b893a1e147ecd07c5bf6403a708faaec149b9c401a3204434decc8d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdb83aeb6457ce0043c548e1b2fb66bbd7374e577f80ecdef7f31ef6495eed2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def withNewLocals (ls : Array Name) (x : PrecheckM α) : PrecheckM α :=
  withReader (fun ctx => { ctx with quotLCtx := ls.foldl NameSet.insert ctx.quotLCtx }) x

register_builtin_option quotPrecheck : Bool := {
  defValue := true
  descr    := "Enable eager name analysis on notations in order to find unbound identifiers early.
Note that type-sensitive syntax (\"elaborators\") needs special support for this kind of check, so it might need to be turned off when using such syntax."
}

register_builtin_option quotPrecheck.allowSectionVars : Bool := {
  defValue := false
  descr    := "Allow occurrences of section variables in checked quotations, it is useful when declaring local notation."
}

/--
Registers a double backtick syntax quotation pre-check.

`@[quot_precheck k]` registers a declaration of type `Lean.Elab.Term.Quotation.Precheck` for the
syntax node kind `k`. It should implement eager name analysis on the passed syntax by throwing an
exception on unbound identifiers, and calling `precheck` recursively on nested terms, potentially
with an extended local context (`withNewLocal`). Macros without registered precheck hook are
unfolded, and identifier-less syntax is ultimately assumed to be well-formed.
-/
@[builtin_doc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae20abd959efcb78b1449ed643500823dbfdf9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
