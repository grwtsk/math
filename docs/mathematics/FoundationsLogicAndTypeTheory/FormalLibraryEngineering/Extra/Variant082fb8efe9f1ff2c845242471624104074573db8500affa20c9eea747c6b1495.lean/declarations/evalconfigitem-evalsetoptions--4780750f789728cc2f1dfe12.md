# EvalConfigItem.evalSetOptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7efa16b40b393173838abea21563ef0a6c10a3b74887dc7944c3209cd89ff6c4",
  "kind": "def",
  "lexical_name": "EvalConfigItem.evalSetOptions",
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
  "slug": "evalconfigitem-evalsetoptions--4780750f789728cc2f1dfe12",
  "source": {
    "blob": "c5acd33639e23c144b84b4c3d8cdcd11ecc1db49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variant082fb8efe9f1ff2c845242471624104074573db8500affa20c9eea747c6b1495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4780750f789728cc2f1dfe12f59dc3ca02a7ecad0dc70c14606b7b8940e363ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variant082fb8efe9f1ff2c845242471624104074573db8500affa20c9eea747c6b1495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7efa16b40b393173838abea21563ef0a6c10a3b74887dc7944c3209cd89ff6c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EvalConfigItem.evalSetOptions (optionPrefix : Name) (opts : Options) (item : ConfigItem) : TermElabM Options := do
  let optName := optionPrefix ++ item.getCurrOptionName
  -- TODO(kmill): record `optionPrefix` so that LSP can make correct suggestions
  addCompletionInfo <| CompletionInfo.option (mkNullNode #[item.prevRoot, mkNullNode item.optionComps.toArray])
  let decl ← getOptionDecl optName
  pushInfoLeaf <| .ofOptionInfo { stx := item.option, optionName := optName, declName := decl.declName }
  let set (α : Type) [EvalTerm α] [EvalExpr α] [KVMap.Value α] : TermElabM Options := do
    let value : α ← evalTermOrExprWithElab ⟨item.value⟩
    return opts.set optName value
  match decl.defValue with
  | .ofBool _   => set Bool
  | .ofNat _    => item.checkNotBool; set Nat
  | .ofInt _    => item.checkNotBool; set Int
  | .ofString _ => item.checkNotBool; set String
  | .ofName _   => item.checkNotBool; set Name
  | .ofSyntax _ => throwErrorAt item.option "Cannot set `Syntax` option `{optName}`"

end Lean.Elab.ConfigEval
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variant082fb8efe9f1ff2c845242471624104074573db8500affa20c9eea747c6b1495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variant082fb8efe9f1ff2c845242471624104074573db8500affa20c9eea747c6b1495.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5acd33639e23c144b84b4c3d8cdcd11ecc1db49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
