# SubexprInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6d639082737efcf3bec19e1fbce27d5f1f8ced0245dac47af17af8dccd3b590",
  "kind": "structure",
  "lexical_name": "SubexprInfo",
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
  "slug": "subexprinfo--445fcf0dba8d2cca561dc065",
  "source": {
    "blob": "ce001c361df3c3a0c540706bea083c1c4f1fe978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveCode/Variant85ed2295d43ae000b5c2c478701c2522a678808ae8fac2a4f7e2e4d981571544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:445fcf0dba8d2cca561dc06529010f69c98317fa0e014015d2b689c39a0cd48b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveCode/Variant85ed2295d43ae000b5c2c478701c2522a678808ae8fac2a4f7e2e4d981571544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6d639082737efcf3bec19e1fbce27d5f1f8ced0245dac47af17af8dccd3b590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SubexprInfo where
  /-- The `Elab.Info` node with the semantics of this part of the output. -/
  info : WithRpcRef Lean.Elab.InfoWithCtx
  /-- The position of this subexpression within the top-level expression. See `Lean.SubExpr`. -/
  subexprPos : Lean.SubExpr.Pos
  -- TODO(WN): add fields for semantic highlighting
  -- kind : Lsp.SymbolKind
  /-- In certain situations such as when goal states change between positions in a tactic-mode proof,
  we can show subexpression-level diffs between two expressions. This field asks the renderer to
  display the subexpression as in a diff view (e.g. red/green like `git diff`). -/
  diffStatus? : Option DiffTag := none
  deriving RpcEncodable

/-- Pretty-printed syntax (usually but not necessarily an `Expr`) with embedded `Info`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveCode/Variant85ed2295d43ae000b5c2c478701c2522a678808ae8fac2a4f7e2e4d981571544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveCode/Variant85ed2295d43ae000b5c2c478701c2522a678808ae8fac2a4f7e2e4d981571544.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce001c361df3c3a0c540706bea083c1c4f1fe978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
