# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PushFVarAliasInfo.Variant485c755808f2bf7719ebee153726e9ba78e6ae55206cb4debf62f77988181eec.Lean.MVarId.clearValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10985255a9481500552fea106a5c2418b9a913da9e969f6558d7126c105c29c6",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PushFVarAliasInfo.Variant485c755808f2bf7719ebee153726e9ba78e6ae55206cb4debf62f77988181eec.Lean.MVarId.clearValue",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-pushf--538a0cbeb4561c3cead44df9",
  "source": {
    "blob": "bbbca46bcccb325a5d4615732ab6c12e5fd04450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:538a0cbeb4561c3cead44df9cc809dd567d4694fd5b8aac6dab3be4ebd722d09",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10985255a9481500552fea106a5c2418b9a913da9e969f6558d7126c105c29c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PushFVarAliasInfo.Variant485c755808f2bf7719ebee153726e9ba78e6ae55206cb4debf62f77988181eec.Lean.MVarId.clearValue (mvarId : MVarId) (fvarId : FVarId) : MetaM MVarId := do
  mvarId.checkNotAssigned `clear_value
  let tag ← mvarId.getTag
  let (_, mvarId) ← mvarId.withReverted #[fvarId] fun mvarId' fvars => mvarId'.withContext do
    let tgt ← mvarId'.getType
    unless tgt.isLet do
      mvarId.withContext <|
        throwTacticEx `clear_value mvarId m!"{Expr.fvar fvarId} is not a local definition"
    let tgt' := Expr.forallE tgt.letName! tgt.letType! tgt.letBody! .default
    unless ← isTypeCorrect tgt' do
      mvarId.withContext <|
        throwTacticEx `clear_value mvarId
          m!"cannot clear {Expr.fvar fvarId}, the resulting context is not type correct"
    let mvarId'' ← mkFreshExprSyntheticOpaqueMVar tgt' tag
    mvarId'.assign <| .app mvarId'' tgt.letValue!
    return ((), fvars.map .some, mvarId''.mvarId!)
  return mvarId

/-- `clear_value n₁ n₂ ...` clears the bodies of the local definitions `n₁, n₂ ...`, changing them
into regular hypotheses. A hypothesis `n : α := t` is changed to `n : α`.

The order of `n₁ n₂ ...` does not matter, and values will be cleared in reverse order of
where they appear in the context. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbca46bcccb325a5d4615732ab6c12e5fd04450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
