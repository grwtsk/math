# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PushFVarAliasInfo.Variant721cf65dc34db74314f879f29b6ed98a2fac662987422332777bbf305bca746b.Lean.MVarId.changeLocalDecl'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09661510cb2694f7e26d944847ae7b5e0603058cd0ee0972f38ed66540329bfe",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PushFVarAliasInfo.Variant721cf65dc34db74314f879f29b6ed98a2fac662987422332777bbf305bca746b.Lean.MVarId.changeLocalDecl'",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-pushf--4d73a5100a59003785922d60",
  "source": {
    "blob": "138d245b0222fb5a07174cdaeb41234ce18c64ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d73a5100a59003785922d60354795815d4c81f1b11ec46a82b9b2cc8959ad3d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09661510cb2694f7e26d944847ae7b5e0603058cd0ee0972f38ed66540329bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PushFVarAliasInfo.Variant721cf65dc34db74314f879f29b6ed98a2fac662987422332777bbf305bca746b.Lean.MVarId.changeLocalDecl' (mvarId : MVarId) (fvarId : FVarId) (typeNew : Expr)
    (checkDefEq := true) : MetaM MVarId := do
  mvarId.checkNotAssigned `changeLocalDecl
  let (_, mvarId) ← mvarId.withReverted #[fvarId] fun mvarId fvars => mvarId.withContext do
    let check (typeOld : Expr) : MetaM Unit := do
      if checkDefEq then
        unless ← isDefEq typeNew typeOld do
          throwTacticEx `changeLocalDecl mvarId
            m!"given type{indentExpr typeNew}\nis not definitionally equal to{indentExpr typeOld}"
    let finalize (targetNew : Expr) := do
      return ((), fvars.map .some, ← mvarId.replaceTargetDefEq targetNew)
    match ← mvarId.getType with
    | .forallE n d b bi => do check d; finalize (.forallE n typeNew b bi)
    | .letE n t v b ndep => do check t; finalize (.letE n typeNew v b ndep)
    | _ => throwTacticEx `changeLocalDecl mvarId "unexpected auxiliary target"
  return mvarId

/-- `change` can be used to replace the main goal or its local
variables with definitionally equal ones.

For example, if `n : ℕ` and the current goal is `⊢ n + 2 = 2`, then
```lean
change _ + 1 = _
```
changes the goal to `⊢ n + 1 + 1 = 2`. The tactic also applies to the local context.
If `h : n + 2 = 2` and `h' : n + 3 = 4` are in the local context, then
```lean
change _ + 1 = _ at h h'
```
changes their types to be `h : n + 1 + 1 = 2` and `h' : n + 2 + 1 = 4`.

Change is like `refine` in that every placeholder needs to be solved for by unification,
but you can use named placeholders and `?_` where you want `change` to create new goals.

The tactic `show e` is interchangeable with `change e`, where the pattern `e` is applied to
the main goal. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4bc0c4637337373851ad7bf4dfa2c9c0ca2aa56d7a98999ada3159c952b4f12.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `138d245b0222fb5a07174cdaeb41234ce18c64ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
