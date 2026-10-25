# buildNormProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05873bb717212700f5131d8d275aa1139bd3db2c877088a2a249ffad8d78eaaa",
  "kind": "def",
  "lexical_name": "buildNormProof",
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
  "slug": "buildnormproof--063e120ff09e44a07b45a70d",
  "source": {
    "blob": "2bae5ff121fae8fde921aa982858be0b10b6e2b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant64275e5f0b53c78eb13832c582e399d92e95c4d9adc2cada64e3baf6bf68529b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:063e120ff09e44a07b45a70d0ba8bd8ef3b56593d69df3850a996bbd2bc858f1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant64275e5f0b53c78eb13832c582e399d92e95c4d9adc2cada64e3baf6bf68529b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05873bb717212700f5131d8d275aa1139bd3db2c877088a2a249ffad8d78eaaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildNormProof (preContext : PreContext) (l r : Expr) : MetaM (Lean.Expr × Lean.Expr) := do
  let (atoms, acExpr) ← toACExpr preContext.op l r
  let proof ← abstractAtoms preContext atoms fun varsData => do
    let α ← inferType atoms[0]!
    let u ← getLevel α
    let context ← mkContext α u varsData
    let isNeutrals := varsData.map (·.2.isSome)
    let vars := varsData.map (·.1)
    let acExprNormed := Data.AC.evalList ACExpr preContext $ Data.AC.norm (preContext, isNeutrals) acExpr
    let lhs := convert acExpr
    let rhs := convert acExprNormed
    let proof := mkAppN (mkConst ``Context.eq_of_norm [u]) #[α, context, lhs, rhs, ←mkEqRefl (mkConst ``Bool.true)]
    let proofType ← mkEq (convertTarget vars acExpr) (convertTarget vars acExprNormed)
    let proof := mkExpectedPropHint proof proofType
    return proof
  let some (_, _, tgt) := (← inferType proof).eq? | panic! "unexpected proof type"
  return (proof, tgt)
where
  mkContext (α : Expr) (u : Level) (vars : Array (Expr × Option Expr)) : MetaM Expr := do
    let arbitrary := vars[0]!.1
    let plift := mkApp (mkConst ``PLift [.zero])
    let pliftUp := mkApp2 (mkConst ``PLift.up [.zero])
    let noneE tp   := mkApp  (mkConst ``Option.none [.zero]) (plift tp)
    let someE tp v := mkApp2 (mkConst ``Option.some [.zero]) (plift tp) (pliftUp tp v)
    let vars ← vars.mapM fun ⟨x, inst?⟩ =>
      let isNeutral :=
        let isNeutralClass := mkApp3 (mkConst ``LawfulIdentity [u]) α preContext.op x
        match inst? with
        | none => noneE isNeutralClass
        | some isNeutral => someE isNeutralClass isNeutral
      return mkApp4 (mkConst ``Variable.mk [u]) α preContext.op x isNeutral

    let vars := vars.toList
    let vars ← mkListLit (mkApp2 (mkConst ``Variable [u]) α preContext.op) vars

    let comm :=
      let commClass := mkApp2 (mkConst ``Commutative [u]) α preContext.op
      match preContext.comm with
      | none => noneE commClass
      | some comm => someE commClass comm

    let idem :=
      let idemClass := mkApp2 (mkConst ``IdempotentOp [u]) α preContext.op
      match preContext.idem with
      | none => noneE idemClass
      | some idem => someE idemClass idem

    return mkApp7 (mkConst ``Lean.Data.AC.Context.mk [u]) α preContext.op preContext.assoc comm idem vars arbitrary

  convert : ACExpr → Expr
    | .op l r => mkApp2 (mkConst ``Data.AC.Expr.op) (convert l) (convert r)
    | .var x => mkApp (mkConst ``Data.AC.Expr.var) $ mkNatLit x

  convertTarget (vars : Array Expr) : ACExpr → Expr
    | .op l r => mkApp2 preContext.op (convertTarget vars l) (convertTarget vars r)
    | .var x => vars[x]!

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant64275e5f0b53c78eb13832c582e399d92e95c4d9adc2cada64e3baf6bf68529b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant64275e5f0b53c78eb13832c582e399d92e95c4d9adc2cada64e3baf6bf68529b.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bae5ff121fae8fde921aa982858be0b10b6e2b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
