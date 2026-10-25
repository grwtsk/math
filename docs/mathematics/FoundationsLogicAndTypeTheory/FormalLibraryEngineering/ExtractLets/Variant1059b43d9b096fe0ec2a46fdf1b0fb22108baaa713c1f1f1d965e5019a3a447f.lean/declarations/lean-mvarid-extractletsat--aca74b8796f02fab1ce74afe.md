# Lean.MVarId.extractLetsAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58b44cf65f00ebf47a7c2e9bc7ffe255d8a499d0c374a87669a0c89e3079e357",
  "kind": "def",
  "lexical_name": "Lean.MVarId.extractLetsAt",
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
  "slug": "lean-mvarid-extractletsat--aca74b8796f02fab1ce74afe",
  "source": {
    "blob": "cf13d3c72d376d3e9da2f76307a5a9098b06dc63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aca74b8796f02fab1ce74afed2dc5f9e5690f6684ad3d8f266793eb03c796e12",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58b44cf65f00ebf47a7c2e9bc7ffe255d8a499d0c374a87669a0c89e3079e357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.extractLetsAt (mvarId : MVarId) (fvarId : FVarId) (names : Array Name) :
    MetaM (Array FVarId × MVarId) := do
  mvarId.checkNotAssigned `extractLetAt
  mvarId.withReverted #[fvarId] fun mvarId fvarIds => mvarId.withContext do
    let mut mvarId := mvarId
    let mut fvarIds' := #[]
    for name in names do
      let ty ← Lean.instantiateMVars (← mvarId.getType)
      mvarId ← match ty with
        | .letE n t v b ndep => process mvarId t (.letE n · v b ndep)
        | .forallE n t v b   => process mvarId t (.forallE n · v b)
        | _ => throwTacticEx `extractLetAt mvarId "unexpected auxiliary target"
      let (fvarId', mvarId') ← mvarId.intro name
      fvarIds' := fvarIds'.push fvarId'
      mvarId := mvarId'
    return (fvarIds', fvarIds.map .some, mvarId)
where
  /-- Check that `t` is a `let` and then do what's necessary to lift it over the binding
  described by `mk`. -/
  process (mvarId : MVarId) (t : Expr) (mk : Expr → Expr) : MetaM MVarId := do
    let .letE n' t' v' b' _ := t.cleanupAnnotations
      | throwTacticEx `extractLetAt mvarId "insufficient number of `let` expressions"
    -- Lift the let
    withLetDecl n' t' v' fun fvar => do
      let b' := b'.instantiate1 fvar
      let ty' ← mkLetFVars #[fvar] <| mk b'
      mvarId.change ty'

/-- Counts the immediate depth of a nested `let` expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf13d3c72d376d3e9da2f76307a5a9098b06dc63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
