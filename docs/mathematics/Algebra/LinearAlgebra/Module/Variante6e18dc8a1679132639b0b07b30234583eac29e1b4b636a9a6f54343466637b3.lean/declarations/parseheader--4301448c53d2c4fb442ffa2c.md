# parseHeader

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8b470fb7c84904193702f024b5999f83f63fdb0d710eccd12d9e0d9b4902871",
  "kind": "def",
  "lexical_name": "parseHeader",
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
  "slug": "parseheader--4301448c53d2c4fb442ffa2c",
  "source": {
    "blob": "4986a2e01eb04b16d0c35f85e49cc846677b67e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variante6e18dc8a1679132639b0b07b30234583eac29e1b4b636a9a6f54343466637b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4301448c53d2c4fb442ffa2c7ef2e0a686cdc250872689320097fa5933ebb3ae",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variante6e18dc8a1679132639b0b07b30234583eac29e1b4b636a9a6f54343466637b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8b470fb7c84904193702f024b5999f83f63fdb0d710eccd12d9e0d9b4902871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseHeader (inputCtx : InputContext) : IO (TSyntax ``Module.header × ModuleParserState × MessageLog) := do
  let dummyEnv ← mkEmptyEnvironment
  let p   := andthenFn whitespace Module.header.fn
  let tokens := Module.updateTokens (getTokenTable dummyEnv)
  let s   := p.run inputCtx { env := dummyEnv, options := {} } tokens (mkParserState inputCtx.inputString)
  let stx := if s.stxStack.isEmpty then .missing else s.stxStack.back
  let mut messages : MessageLog := {}
  for (pos, stk, err) in s.allErrors do
    messages := messages.add <| mkErrorMessage inputCtx pos stk err
  if let `(Module.header| $[module%$moduleTk?]? $[prelude]? $importsStx*) := stx then
    let mkError ref msg : Message :=
      let pos := ref.getPos?.getD 0
      {
        fileName := inputCtx.fileName
        pos := inputCtx.fileMap.toPosition pos
        endPos := inputCtx.fileMap.toPosition <| ref.getTailPos?.getD pos
        keepFullRange := true
        data := msg
      }
    for stx in importsStx do
      if let `(Module.import| $[public%$pubTk?]? $[meta%$metaTk?]? import $[all%$allTk?]? $mod) := stx then
        let mod := mod.getId
        if moduleTk?.isNone then
          if let some tk := pubTk? then
            messages := messages.add <| mkError tk "cannot use `public import` without `module`"
          if let some tk := metaTk? then
            messages := messages.add <| mkError tk "cannot use `meta import` without `module`"
          if let some tk := allTk? then
            messages := messages.add <| mkError tk "cannot use `import all` without `module`"
        else
          if let some tk := allTk? then
            if pubTk?.isSome then
              messages := messages.add <| mkError tk s!"cannot use `all` with `public import`; \
                consider using separate `public import {mod}` and `import all {mod}` directives \
                in order to import public data into the public scope and private data into the \
                private scope."
  let (stx, isLeadingSet) := setStartOfFileLeading stx
  pure (⟨stx⟩, { pos := s.pos, recovering := s.hasError, hasLeading := ! isLeadingSet }, messages)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variante6e18dc8a1679132639b0b07b30234583eac29e1b4b636a9a6f54343466637b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variante6e18dc8a1679132639b0b07b30234583eac29e1b4b636a9a6f54343466637b3.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4986a2e01eb04b16d0c35f85e49cc846677b67e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
