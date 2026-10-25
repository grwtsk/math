# propagateBoolDiseq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2a8cfc4ca6e630fe6f87f8c102f6fce8ab75b23e5a6c4a52d29a5fea9aca371",
  "kind": "def",
  "lexical_name": "propagateBoolDiseq",
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
  "slug": "propagatebooldiseq--f6d663a74b7ea11cb7ab7acc",
  "source": {
    "blob": "d9914205e89571472b089b55eddc9e3054ca88ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant61eb38a642c607d6e0ae5882948bec5f95b6c9030a2323dbbe5564301d81b65a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6d663a74b7ea11cb7ab7acc88a857c7b50736ba6e27781865665f972c6a14c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant61eb38a642c607d6e0ae5882948bec5f95b6c9030a2323dbbe5564301d81b65a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2a8cfc4ca6e630fe6f87f8c102f6fce8ab75b23e5a6c4a52d29a5fea9aca371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateBoolDiseq (eq : Expr) (a b : Expr) : GoalM Unit := do
  let tt ← getBoolTrueExpr
  let ff ← getBoolFalseExpr
  if (← isEqv b ff) then
    pushEqBoolTrue a <| mkApp2 (mkConst ``Grind.Bool.eq_true_of_not_eq_false') a (← mkDiseqProofUsing a ff eq)
  else if (← isEqv b tt) then
    pushEqBoolFalse a <| mkApp2 (mkConst ``Grind.Bool.eq_false_of_not_eq_true') a (← mkDiseqProofUsing a tt eq)
  else if (← isEqv a ff) then
    pushEqBoolTrue b <| mkApp2 (mkConst ``Grind.Bool.eq_true_of_not_eq_false') b (← mkDiseqProofUsing b ff eq)
  else if (← isEqv a tt) then
    pushEqBoolFalse b <| mkApp2 (mkConst ``Grind.Bool.eq_false_of_not_eq_true') b (← mkDiseqProofUsing b tt eq)

/-- Propagates `Eq` upwards -/
builtin_grind_propagator propagateEqUp ↑Eq := fun e => do
  let_expr Eq α a b := e | return ()
  let aRoot ← getRootENode a
  let bRoot ← getRootENode b
  let a' := aRoot.self
  let b' := bRoot.self
  let trueExpr ← getTrueExpr
  if isSameExpr a' trueExpr then
    unless isSameExpr (← getRoot e) b' do
      pushEq e b <| mkApp3 (mkConst ``Grind.eq_eq_of_eq_true_left) a b (← mkEqProof a trueExpr)
  else if isSameExpr b' trueExpr then
    unless isSameExpr (← getRoot e) a' do
      pushEq e a <| mkApp3 (mkConst ``Grind.eq_eq_of_eq_true_right) a b (← mkEqProof b trueExpr)
  else if isSameExpr a' b' then
    unless isSameExpr (← getRoot e) trueExpr do
      pushEq e trueExpr <| mkEqTrueCore e (← mkEqProof a b)
  if α.isConstOf ``Bool then
    if (← isEqFalse e) then
      propagateBoolDiseq e a b
    else
      let tt ← getBoolTrueExpr
      let ff ← getBoolFalseExpr
      if isSameExpr a' tt && isSameExpr b' ff then
        pushEqFalse e <| mkApp4 (mkConst ``Grind.Bool.ne_of_eq_true_of_eq_false) a b (← mkEqBoolTrueProof a) (← mkEqBoolFalseProof b)
      else if isSameExpr a' ff && isSameExpr b' tt then
        pushEqFalse e <| mkApp4 (mkConst ``Grind.Bool.ne_of_eq_false_of_eq_true) a b (← mkEqBoolFalseProof a) (← mkEqBoolTrueProof b)
  else unless (← isEqFalse e) do
    if aRoot.ctor && bRoot.ctor && aRoot.self.getAppFn != bRoot.self.getAppFn then
      -- ¬a = b
      /-
      **Note**: `a` and `b` have the same type because `e` is a type correct term and is of the form `@Eq α a b`
      However, `a` and `aRoot` may not. Same for `b` and `bRoot`, and `aRoot` and `bRoot`.
      We must check that. If this is not the case, we should search their equivalence classes looking
      for distinct constructor applications with the same type.
      -/

      /-
      Helper function. Give `aCtor` and `bCtor` s.t.
      - `a` and `aCtor` are in the same equivalence class.
      - `b` and `bCtor` are in the same equivalence class.
      - `aCtor` and `bCtor` have the same type **and** are distinct constructor applications

      Returns a proof that `a ≠ b`
      -/
      let mkNe (aCtor bCtor : Expr) : GoalM Expr := do
        withLocalDeclD `h (← mkEq a b) fun hab => do
          let hf ← match (← hasSameType a aCtor), (← hasSameType b bCtor) with
          | true,  true  =>
            let hf ← mkEqTrans (← mkEqProof aCtor a) hab
            mkEqTrans hf (← mkEqProof b bCtor)
          | _,  _ =>
            let hf ← mkHEqTrans (← mkHEqProof aCtor a) (← mkHEqOfEq hab)
            let hf ← mkHEqTrans hf (← mkHEqProof b bCtor)
            mkEqOfHEq hf
          let hf ← mkNoConfusion (← getFalseExpr) hf
          mkLambdaFVars #[hab] hf
      if (← hasSameType aRoot.self bRoot.self) then
        let hne ← mkNe aRoot.self bRoot.self
        pushEqFalse e <| mkApp2 (mkConst ``eq_false) e hne
      else
        /-
        `aRoot.self` and `bRoot.self` do **not** have the same type. Thus, we search
        if there are other constructor applications in their equivalence classes.
        -/
        discard <| findEqc a fun aNode' => do
          unless aNode'.ctor do return false
          findEqc b fun bNode' => do
            unless bNode'.ctor do return false
            if aNode'.self.getAppFn == bNode'.self.getAppFn then return false
            unless (← hasSameType aNode'.self bNode'.self) do return false
            let hne ← mkNe aNode'.self bNode'.self
            pushEqFalse e <| mkApp2 (mkConst ``eq_false) e hne
            return true

/-- Propagates `Eq` downwards -/
builtin_grind_propagator propagateEqDown ↓Eq := fun e => do
  if (← isEqTrue e) then
    let_expr Eq _ a b := e | return ()
    unless (← isEqv a b) do
      pushEq a b <| mkOfEqTrueCore e (← mkEqTrueProof e)
  else if (← isEqFalse e) then
    let_expr Eq α lhs rhs := e | return ()
    if α.isConstOf ``Bool then
      propagateBoolDiseq e lhs rhs
    Solvers.propagateDiseqs lhs rhs
    let thms ← getExtTheorems α
    if !thms.isEmpty then
      /-
      Heuristic for lists: If `lhs` or `rhs` are constructors we do not apply extensionality theorems.
      For example, we don't want to apply the extensionality theorem to things like `xs ≠ []`.
      TODO: polish this hackish heuristic later.
      -/
      if α.isAppOf ``List && ((← getRootENode lhs).ctor || (← getRootENode rhs).ctor) then
        return ()
      for thm in (← getExtTheorems α) do
        instantiateExtTheorem thm e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant61eb38a642c607d6e0ae5882948bec5f95b6c9030a2323dbbe5564301d81b65a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant61eb38a642c607d6e0ae5882948bec5f95b6c9030a2323dbbe5564301d81b65a.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9914205e89571472b089b55eddc9e3054ca88ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
