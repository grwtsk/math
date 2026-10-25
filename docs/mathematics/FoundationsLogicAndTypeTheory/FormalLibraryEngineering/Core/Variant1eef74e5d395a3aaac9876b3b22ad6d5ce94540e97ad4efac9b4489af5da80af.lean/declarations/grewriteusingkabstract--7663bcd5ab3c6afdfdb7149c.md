# grewriteUsingKAbstract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1064dd6ffa05b5f407681fc5fa27833fbdce838d5b1438c3ba9cb280aad22208",
  "kind": "def",
  "lexical_name": "grewriteUsingKAbstract",
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
  "slug": "grewriteusingkabstract--7663bcd5ab3c6afdfdb7149c",
  "source": {
    "blob": "ab49a281dea040b7acb0241da450ca4b497e2c57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7663bcd5ab3c6afdfdb7149cf080fb01c8d1cfdddb92fdc81bcd5958b9471b5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1064dd6ffa05b5f407681fc5fa27833fbdce838d5b1438c3ba9cb280aad22208`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def grewriteUsingKAbstract (goal : MVarId) (e hrel pattern replacement : Expr)
    (forwardImp : Bool) (config : GRewrite.Config) : MetaM (Expr × Expr × Array MVarId) := do
  let eAbst ← withConfig (fun oldConfig => { config, oldConfig with }) <|
    kabstract e pattern config.occs
  unless eAbst.hasLooseBVars do
    throwTacticEx `grewrite goal
      m!"did not find instance of the pattern in the target expression{indentExpr pattern}"
  -- construct `eNew` by instantiating `eAbst` with `replacement`.
  let eNew := eAbst.instantiate1 replacement
  let eNew ← instantiateMVars eNew
  -- check that `eNew` is well typed
  try
    check eNew
  catch ex =>
    throwTacticEx `grewrite goal m!"\
      rewritten expression is not type correct:{indentD eNew}\nError: {ex.toMessageData}\
      \n\n\
      Possible solutions: use grewrite's 'occs' configuration option \
      to limit which occurrences are rewritten, \
      or specify what the rewritten expression should be and use 'gcongr'."
  let eNew ← if replacement.hasBinderNameHint then eNew.resolveBinderNameHint else pure eNew
  -- Construct the implication proof using `gcongr`.
  -- Although `e` and `e'` are defEq, they may not be defEq in the `reducible` transparency.
  -- So, it is important to use `e'` in the `gcongr` goal.
  let e' := eAbst.instantiate1 (GCongr.mkHoleAnnotation pattern)
  let mkImp (e₁ e₂ : Expr) : Expr := .forallE `_a e₁ e₂ .default
  let imp := if forwardImp then mkImp e' eNew else mkImp eNew e'
  let gcongrGoal ← mkFreshExprMVar imp
  let (_, s) ← gcongrGoal.mvarId!.gcongr forwardImp
    |>.run (mainGoalDischarger := GRewrite.dischargeMain hrel)
  pure (eNew, gcongrGoal, s.newGoals)

end kabstract

section singlePass

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab49a281dea040b7acb0241da450ca4b497e2c57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
