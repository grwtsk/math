# formulaProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f67282eec1eb4c6c6afe70d3556f493bb280bd1a0332bd2a323049fbf391349",
  "kind": "def",
  "lexical_name": "formulaProof",
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
  "slug": "formulaproof--acbec7412e7c229b0b5d3f22",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17804,
    "line": 17773,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acbec7412e7c229b0b5d3f2205703fa0257e7bc3def6e4266c7d3af08a6e0418",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f67282eec1eb4c6c6afe70d3556f493bb280bd1a0332bd2a323049fbf391349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17773–17804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def formulaProof (l e : Lean.Expr) : MetaM Lean.Expr := do
  for decl in (← getLCtx) do
    unless decl.isImplementationDetail do
      let ty := (← instantiateMVars decl.type).consumeMData
      if ty.getAppFn.isConstOf ``PureTypeSystem.Labelled.LogicSetup.Formula then
        if ← isDefEq ty.getAppArgs.back! e then return decl.toExpr
  let args := e.getAppArgs
  let nm := e.getAppFn.constName?
  let unary (n : Name) : MetaM Lean.Expr := do
    mkAppM n #[l, ← formulaProof l args.back!]
  let binary (n : Name) : MetaM Lean.Expr := do
    mkAppM n #[l, ← formulaProof l args[args.size-2]!, ← formulaProof l args.back!]
  match nm with
  | some ``PureTypeSystem.Labelled.LogicSetup.bottom
  | some ``PureTypeSystem.Labelled.LogicCode.bottom => mkAppM ``PureTypeSystem.Labelled.LogicSetup.bottom_formula #[l]
  | some ``PureTypeSystem.Labelled.LogicSetup.top
  | some ``PureTypeSystem.Labelled.LogicCode.top => mkAppM ``PureTypeSystem.Labelled.LogicSetup.top_formula #[l]
  | some ``PureTypeSystem.Labelled.LogicSetup.imp
  | some ``PureTypeSystem.Labelled.LogicCode.imp => binary ``PureTypeSystem.Labelled.LogicSetup.imp_formula
  | some ``PureTypeSystem.Labelled.LogicSetup.neg
  | some ``PureTypeSystem.Labelled.LogicCode.neg => unary ``PureTypeSystem.Labelled.LogicSetup.neg_formula
  | some ``PureTypeSystem.Labelled.LogicSetup.conj
  | some ``PureTypeSystem.Labelled.LogicCode.conj => binary ``PureTypeSystem.Labelled.LogicSetup.conj_formula
  | some ``PureTypeSystem.Labelled.LogicSetup.disj
  | some ``PureTypeSystem.Labelled.LogicCode.disj => binary ``PureTypeSystem.Labelled.LogicSetup.disj_formula
  | some ``PureTypeSystem.Labelled.LogicSetup.iff
  | some ``PureTypeSystem.Labelled.LogicCode.iff => binary ``PureTypeSystem.Labelled.LogicSetup.iff_formula
  | some ``PureTypeSystem.Labelled.LogicCode.cond =>
    mkAppM ``PureTypeSystem.Labelled.LogicSetup.cond_formula #[l,
      ← formulaProof l args[args.size-3]!, ← formulaProof l args[args.size-2]!, ← formulaProof l args.back!]
  | _ => throwError "No formula evidence for {e}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L17773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
