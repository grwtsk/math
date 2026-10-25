# handleDocumentSymbol

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b989d1ffbb393cfd86ccba7bfa0b87dc2033a3ef12b37e307c61aa834303a023",
  "kind": "def",
  "lexical_name": "handleDocumentSymbol",
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
  "slug": "handledocumentsymbol--29f327aca96c9e4b7e172d58",
  "source": {
    "blob": "9cf41c96dba2d38db15494ad8af2694071c3d991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 323,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29f327aca96c9e4b7e172d582f3db12e1bf5ac1f12217e97a38660b3b2aefc2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b989d1ffbb393cfd86ccba7bfa0b87dc2033a3ef12b37e307c61aa834303a023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def handleDocumentSymbol (_ : DocumentSymbolParams)
    : RequestM (RequestTask DocumentSymbolResult) := do
  let doc ← readDoc
  -- bad: we have to wait on elaboration of the entire file before we can report document symbols
  let t := doc.cmdSnaps.waitAll
  mapTaskCostly t fun (snaps, _) => do
    let mut stxs := snaps.map (·.stx)
    return { syms := ← toDocumentSymbols doc.meta.text stxs #[] [] }
where
  toDocumentSymbols (text : FileMap) (stxs : List Syntax)
      (syms : Array DocumentSymbol) (stack : List NamespaceEntry) :
      RequestM (Array DocumentSymbol) := do
    RequestM.checkCancelled
    match stxs with
    | [] => return stack.foldl (fun syms entry => entry.finish text syms none) syms
    | stx::stxs => match stx with
      | `(namespace $id)  =>
        let entry := { name := id.getId.componentsRev, stx, selection := id, prevSiblings := syms }
        toDocumentSymbols text stxs #[] (entry :: stack)
      | `($_:sectionHeader section $(id)?) =>
        let name := id.map (·.getId.componentsRev) |>.getD [`«»]
        let entry := { name, stx, selection := id.map (·.raw) |>.getD stx, prevSiblings := syms }
        toDocumentSymbols text stxs #[] (entry :: stack)
      | `(end $[$id $[.$_]?]?) =>
        let rec popStack n syms
          | [] => toDocumentSymbols text stxs syms []
          | entry :: stack =>
            if entry.name.length == n then
              let syms := entry.finish text syms stx
              toDocumentSymbols text stxs syms stack
            else if entry.name.length > n then
              let syms := { entry with name := entry.name.take n, prevSiblings := #[] }.finish text syms stx
              toDocumentSymbols text stxs syms ({ entry with name := entry.name.drop n } :: stack)
            else
              let syms := entry.finish text syms stx
              popStack (n - entry.name.length) syms stack
        popStack (id.map (·.getId.getNumParts) |>.getD 1) syms stack
      | _ => do
        unless stx.isOfKind ``Lean.Parser.Command.declaration do
          return ← toDocumentSymbols text stxs syms stack
        if let some stxRange := stx.getRange? then
          let (name, selection) := match stx with
            | `($_:declModifiers $_:attrKind instance $[$np:namedPrio]? $[$id$[.{$ls,*}]?]? $sig:declSig $_) =>
              ((·.getId.toString) <$> id |>.getD s!"instance {sig.raw.reprint.getD ""}", id.map (·.raw) |>.getD sig)
            | _ =>
              match stx.getArg 1 |>.getArg 1 with
              | `(declId|$id$[.{$ls,*}]?) => (id.raw.getId.toString, id)
              | _ =>
                let stx10 : Syntax := (stx.getArg 1).getArg 0 -- TODO: stx[1][0] times out
                (stx10.isIdOrAtom?.getD "<unknown>", stx10)
          if let some selRange := selection.getRange? then
            let sym := DocumentSymbol.mk {
              name := name
              kind := SymbolKind.method
              range := stxRange.toLspRange text
              selectionRange := selRange.toLspRange text
            }
            return ← toDocumentSymbols text stxs (syms.push sym) stack
        toDocumentSymbols text stxs syms stack

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cf41c96dba2d38db15494ad8af2694071c3d991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
