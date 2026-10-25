# generalizeIndices'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc1aad315281fe7735afa3c717c5196f424d9ed63ab897d7957b0199bcdcc92b",
  "kind": "def",
  "lexical_name": "generalizeIndices'",
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
  "slug": "generalizeindices--8c711c63417e2fee3d3d1146",
  "source": {
    "blob": "8b2fcb51247d252574de91ea69a367a8b14f0ad1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c711c63417e2fee3d3d114656632cbf8caca26302870a21769d108001aae637",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc1aad315281fe7735afa3c717c5196f424d9ed63ab897d7957b0199bcdcc92b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def generalizeIndices' (mvarId : MVarId) (e : Expr) (varName? : Option Name := none) : MetaM GeneralizeIndicesSubgoal :=
  mvarId.withContext do
    let lctx       ← getLCtx
    let localInsts ← getLocalInstances
    mvarId.checkNotAssigned `generalizeIndices
    let type ← whnfD (← inferType e)
    type.withApp fun f args => matchConstInduct f (fun _ => throwTacticEx `generalizeIndices mvarId "inductive type expected") fun val _ => do
      unless val.numIndices > 0 do throwTacticEx `generalizeIndices mvarId "indexed inductive type expected"
      unless args.size == val.numIndices + val.numParams do throwTacticEx `generalizeIndices mvarId "ill-formed inductive datatype"
      let indices := args.extract (args.size - val.numIndices) args.size
      let IA := mkAppN f (args.extract 0 val.numParams) -- `I A`
      let IAType ← inferType IA
      forallTelescopeReducing IAType fun newIndices _ => do
      let newType := mkAppN IA newIndices
      let varName ← if let some varName := varName? then pure varName else mkFreshUserName `x
      withLocalDeclD varName newType fun h' =>
      withNewEqs indices newIndices fun newEqs newRefls => do
      let (newEqType, newRefl) ← mkEqAndProof e h'
      let newRefls := newRefls.push newRefl
      withLocalDeclD `h newEqType fun newEq => do
      let newEqs := newEqs.push newEq
      /- auxType `forall (j' : J) (h' : I A j'), j == j' -> h == h' -> target -/
      let target  ← mvarId.getType
      let tag     ← mvarId.getTag
      let auxType ← mkForallFVars newEqs target
      let auxType ← mkForallFVars #[h'] auxType
      let auxType ← mkForallFVars newIndices auxType
      let newMVar ← mkFreshExprMVarAt lctx localInsts auxType MetavarKind.syntheticOpaque tag
      /- assign mvarId := newMVar indices h refls -/
      mvarId.assign (mkAppN (mkApp (mkAppN newMVar indices) e) newRefls)
      let (indicesFVarIds, newMVarId) ← newMVar.mvarId!.introNP newIndices.size
      let (fvarId, newMVarId) ← newMVarId.intro1P
      return {
        mvarId         := newMVarId,
        indicesFVarIds := indicesFVarIds,
        fvarId         := fvarId,
        numEqs         := newEqs.size
      }

/--
Similar to `generalizeTargets` but customized for the `casesOn` motive.
Given a metavariable `mvarId` representing the
```
Ctx, h : I A j, D |- T
```
where `fvarId` is `h`s id, and the type `I A j` is an inductive datatype where `A` are parameters,
and `j` the indices. Generate the goal
```
Ctx, h : I A j, D, j' : J, h' : I A j' |- j == j' -> h == h' -> T
```
Remark: `(j == j' -> h == h')` is a "telescopic" equality.
Remark: `j` is sequence of terms, and `j'` a sequence of free variables.
The result contains the fields
- `mvarId`: the new goal
- `indicesFVarIds`: `j'` ids
- `fvarId`: `h'` id
- `numEqs`: number of equations in the target -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b2fcb51247d252574de91ea69a367a8b14f0ad1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
