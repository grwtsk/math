# elabStructInst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:545004b4237231b8a7a38e02c19caaed1adff851722e10acb1d18c5a06e729cb",
  "kind": "def",
  "lexical_name": "elabStructInst",
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
  "slug": "elabstructinst--84b1de79c156d2cc76a8fa62",
  "source": {
    "blob": "5493e3d025e608ffc68d856f0b5b683431f64b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1416,
    "line": 1400,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84b1de79c156d2cc76a8fa628c0939f8e9f9e68116346b6f4db11051e8688704",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:545004b4237231b8a7a38e02c19caaed1adff851722e10acb1d18c5a06e729cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1400–1416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_elab structInst] def elabStructInst : TermElab := fun stx expectedType? => do
  match (← expandNonAtomicExplicitSources stx) with
  | some stxNew => withMacroExpansion stx stxNew <| elabTerm stxNew expectedType?
  | none =>
    let sourcesView ← getStructSources stx
    if let some modifyOp ← isModifyOp? stx then
      trace[Elab.structInst] "modifyOp: {modifyOp}"
      elabModifyOp stx modifyOp sourcesView expectedType?
    else
      let (structName, structType?) ← getStructName expectedType? sourcesView
      let struct ← liftMacroM <| mkStructView stx sourcesView
      withTraceNode `Elab.structInst (fun
          | .ok r => return m!"structure instance elaboration for `{.ofConstName structName}`:{indentD r}"
          | .error msg => return m!"structure instance elaboration for `{.ofConstName structName}` failed: {msg.toMessageData}") do
        trace[Elab.structInst] "StructInstView:{indentD (toMessageData struct)}"
        withSynthesize (postpone := .yes) <| elabStructInstView struct structName structType?

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean#L1400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5493e3d025e608ffc68d856f0b5b683431f64b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
