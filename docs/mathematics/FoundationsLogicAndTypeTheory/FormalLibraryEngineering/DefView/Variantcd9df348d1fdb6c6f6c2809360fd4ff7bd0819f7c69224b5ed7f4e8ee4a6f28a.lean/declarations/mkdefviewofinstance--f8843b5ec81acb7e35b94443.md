# mkDefViewOfInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b59d7c1a605f00fdfa629e0cced6cc6c1ff766c7dbb07f354a91b7ab8334630",
  "kind": "def",
  "lexical_name": "mkDefViewOfInstance",
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
  "slug": "mkdefviewofinstance--f8843b5ec81acb7e35b94443",
  "source": {
    "blob": "9d948cdfa83cbc4fb4c411e2d57cdf1831066814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcd9df348d1fdb6c6f6c2809360fd4ff7bd0819f7c69224b5ed7f4e8ee4a6f28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8843b5ec81acb7e35b9444344d72b26c486e34f6274b8a088247e432c7b40d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcd9df348d1fdb6c6f6c2809360fd4ff7bd0819f7c69224b5ed7f4e8ee4a6f28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b59d7c1a605f00fdfa629e0cced6cc6c1ff766c7dbb07f354a91b7ab8334630`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkDefViewOfInstance (modifiers : Modifiers) (stx : Syntax) : CommandElabM DefView := do
  -- leading_parser Term.attrKind >> "instance " >> optNamedPrio >> optional declId >> declSig >> declVal
  let attrKind        ← liftMacroM <| toAttributeKind stx[0]
  let prio            ← liftMacroM <| expandOptNamedPrio stx[2]
  -- NOTE: `[instance_reducible]` is added conditionally in `elabMutualDef`
  let attrStx         ← `(attr| instance $(quote prio):num)
  let modifiers       := modifiers.addAttr { kind := attrKind, name := `instance, stx := attrStx }
  let (binders, type) := expandDeclSig stx[4]
  let declId ← match stx[3].getOptional? with
    | some declId =>
      if ← isTracingEnabledFor `Elab.instance.mkInstanceName then
        let id ← mkInstanceName binders.getArgs type
        trace[Elab.instance.mkInstanceName] "generated {(← getCurrNamespace) ++ id} for {declId}"
      pure declId
    | none        =>
      let id ← mkInstanceName binders.getArgs type
      trace[Elab.instance.mkInstanceName] "generated {(← getCurrNamespace) ++ id}"
      pure <| mkNode ``Parser.Command.declId #[mkIdentFrom stx[1] id (canonical := true), mkNullNode]
  return {
    ref := stx, headerRef := mkNullNode stx.getArgs[*...5], kind := DefKind.instance, modifiers := modifiers,
    declId := declId, binders := binders, type? := type, value := stx[5],
    docString? := modifiers.docString?
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcd9df348d1fdb6c6f6c2809360fd4ff7bd0819f7c69224b5ed7f4e8ee4a6f28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcd9df348d1fdb6c6f6c2809360fd4ff7bd0819f7c69224b5ed7f4e8ee4a6f28a.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d948cdfa83cbc4fb4c411e2d57cdf1831066814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
