# ControlStack.stateT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee28fa3ad69005d3951f1ee5fec9e604f2238a2ec3ae6e1c7378f5e33211baff",
  "kind": "def",
  "lexical_name": "ControlStack.stateT",
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
  "slug": "controlstack-statet--248fa42f45245b6ba8c38fa4",
  "source": {
    "blob": "d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:248fa42f45245b6ba8c38fa4517dfc416ef35fcb806b6adf9294da0def97a584",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee28fa3ad69005d3951f1ee5fec9e604f2238a2ec3ae6e1c7378f5e33211baff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ControlStack.stateT (baseMonadInfo : MonadInfo) (muts : Array MutVar) (σ : Expr) (base : ControlStack) : ControlStack where
  description _ := m!"StateT {σ} over {base.description ()}"
  m := return mkApp2 (mkConst ``StateT [baseMonadInfo.u, baseMonadInfo.v]) (← getσ) (← base.m)
  stM α := stM α >>= base.stM
  runInBase e := do
    -- `e : StateT σ m α`. Fetch the state tuple `s : σ` and apply it to `e`, `e.run s`.
    -- See also `StateT.monadControl.liftWith`.
    let mutExprs ← muts.mapM fun x => do
      let defn ← getLocalDeclFromUserName x.getId
      Term.addTermInfo' x.ident defn.toExpr
      pure defn.toExpr
    let (tuple, tupleTy) ← mkProdMkN mutExprs baseMonadInfo.u
    unless ← isDefEq tupleTy σ do -- just for sanity; maybe delete in the future
      throwError "State tuple type mismatch: expected {σ}, got {tupleTy}. This is a bug in the `do` elaborator."
    base.runInBase <| mkApp e tuple
  restoreCont dec := do
    -- Wrap `dec` such that the result type is `(dec.resultType × σ)` by unpacking the state tuple
    -- before calling `dec.k`. See also `StateT.monadControl.restoreM`.
    let resultName ← mkFreshUserName `p
    let resultType ← stM dec.resultType
    let k : DoElabM Expr := do
      let p ← getFVarFromUserName resultName
      bindMutVarsFromTuple (dec.resultName :: mutVarNames.toList) p.fvarId! do
        dec.k
    base.restoreCont { resultName, resultType, k }
where
  mutVarNames := muts.map (·.getId)
  getσ := do mkProdN (← mutVarNames.mapM (LocalDecl.type <$> getLocalDeclFromUserName ·)) baseMonadInfo.u
  stM α := return mkApp2 (mkConst ``Prod [baseMonadInfo.u, baseMonadInfo.u]) α (← getσ) -- NB: muts `σ` might have been refined by dependent pattern matches

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
