# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d59a600305c0485f29c515d279e55044c02cddd63b69e975a87462e9ca2ce8f",
  "kind": "syntax",
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
  "slug": "syntax--dd1c88c7b65bcbb4e3d8a985",
  "source": {
    "blob": "9a03a980886c60bd767e9b657aa8c4230c26dad4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd1c88c7b65bcbb4e3d8a9855a1524b8fe00555a4c8b56058beffed0567fe187",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d59a600305c0485f29c515d279e55044c02cddd63b69e975a87462e9ca2ce8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
      syntax $[: $prec?]? $[(name := $name?)]? (priority := $(quote prio)) $[$syntaxParts]* : $cat))
    -- build macro rules
    let vars := items.filter fun item => item.raw.getKind == ``identPrec
    let vars := vars.map fun var => var.raw[0]
    let qrhs := ⟨antiquote vars rhs⟩
    let patArgs ← liftMacroM <| items.mapM expandNotationItemIntoPattern
    let pat : Term := ⟨mkNode kind patArgs⟩
    let macroDecl ← `($attrKind:attrKind macro_rules | `($pat) => ``($qrhs))
    if isLocalAttrKind attrKind then
      -- Make sure the quotation pre-checker takes section variables into account for local notation.
      let opts ← getOptions
      let opts := Term.Quotation.quotPrecheck.allowSectionVars.set opts true
      withScope (fun sc => { sc with opts }) do
        elabCommand macroDecl
    else
      elabCommand macroDecl
    if let some delabDecl := (← liftMacroM <| mkUnexpander attrKind pat qrhs |>.run) then
      elabCommand delabDecl
  | _ => throwUnsupportedSyntax

end Lean.Elab.Command
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a03a980886c60bd767e9b657aa8c4230c26dad4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
