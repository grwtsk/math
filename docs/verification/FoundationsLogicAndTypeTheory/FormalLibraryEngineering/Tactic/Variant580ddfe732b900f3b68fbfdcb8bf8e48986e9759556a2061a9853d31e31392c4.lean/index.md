# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant580ddfe732b900f3b68fbfdcb8bf8e48986e9759556a2061a9853d31e31392c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "144d71810fbe42edbb3b92ee42176243ec0caa17",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant580ddfe732b900f3b68fbfdcb8bf8e48986e9759556a2061a9853d31e31392c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant580ddfe732b900f3b68fbfdcb8bf8e48986e9759556a2061a9853d31e31392c4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant580ddfe732b900f3b68fbfdcb8bf8e48986e9759556a2061a9853d31e31392c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `144d71810fbe42edbb3b92ee42176243ec0caa17`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant580ddfe732b900f3b68fbfdcb8bf8e48986e9759556a2061a9853d31e31392c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant580ddfe732b900f3b68fbfdcb8bf8e48986e9759556a2061a9853d31e31392c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyCongr` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyWith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Core` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Register` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Backtracking` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cache` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CancelDenoms` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cases` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CasesM` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.BicategoryCoherence` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Coherence` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Reassoc` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Slice` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Change` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Choose` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Classical` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ClearExcept` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Clear_` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Coe` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ComputeDegree` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Congrm` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Constructor` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Continuity` — import line 36; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Continuity.Init` — import line 37; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Contrapose` — import line 38; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 39; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 40; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 41; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DefEqTransformations` — import line 42; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 43; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveToExpr` — import line 44; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveTraversable` — import line 45; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Eqns` — import line 46; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Existsi` — import line 47; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Explode` — import line 48; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Explode.Datatypes` — import line 49; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Explode.Pretty` — import line 50; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ExtractGoal` — import line 51; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ExtractLets` — import line 52; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FBinop` — import line 53; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FailIfNoProgress` — import line 54; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 55; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 56; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Find` — import line 57; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 58; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.Core` — import line 59; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.ForwardAttr` — import line 60; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GeneralizeProofs` — import line 61; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Group` — import line 62; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GuardGoalNums` — import line 63; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GuardHypNums` — import line 64; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Have` — import line 65; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HaveI` — import line 66; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HelpCmd` — import line 67; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HigherOrder` — import line 68; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.InferParam` — import line 69; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Inhabit` — import line 70; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 71; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IrreducibleDef` — import line 72; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LabelAttr` — import line 73; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LeftRight` — import line 74; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LibrarySearch` — import line 75; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 76; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LiftLets` — import line 77; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 78; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Datatypes` — import line 79; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Elimination` — import line 80; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Frontend` — import line 81; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Lemmas` — import line 82; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Parsing` — import line 83; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Preprocessing` — import line 84; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Verification` — import line 85; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 86; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lint` — import line 87; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Measurability` — import line 88; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Measurability.Init` — import line 89; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 90; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ModCases` — import line 91; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 92; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Attr` — import line 93; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Basic` — import line 94; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Lemmas` — import line 95; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 96; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 97; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality.Core` — import line 98; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast` — import line 99; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast.Tactic` — import line 100; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 101; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Basic` — import line 102; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.BigOperators` — import line 103; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 104; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.GCD` — import line 105; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.IsCoprime` — import line 106; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.LegendreSymbol` — import line 107; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.NatFib` — import line 108; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.NatSqrt` — import line 109; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 110; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NthRewrite` — import line 111; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Observe` — import line 112; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 113; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PermuteGoals` — import line 114; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Polyrith` — import line 115; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 116; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 117; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 118; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PrintPrefix` — import line 119; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ProjectionNotation` — import line 120; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Propose` — import line 121; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ProxyType` — import line 122; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PushNeg` — import line 123; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Qify` — import line 124; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RSuffices` — import line 125; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Recall` — import line 126; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Recover` — import line 127; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 128; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Symm` — import line 129; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Trans` — import line 130; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Rename` — import line 131; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RenameBVar` — import line 132; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Replace` — import line 133; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RestateAxiom` — import line 134; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Rewrites` — import line 135; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 136; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring.Basic` — import line 137; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring.RingNF` — import line 138; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RunCmd` — import line 139; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Sat.FromLRAT` — import line 140; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Says` — import line 141; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ScopedNS` — import line 142; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Set` — import line 143; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SimpIntro` — import line 144; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SimpRw` — import line 145; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.Basic` — import line 146; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.NotationClass` — import line 147; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SlimCheck` — import line 148; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SolveByElim` — import line 149; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 150; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 151; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Substs` — import line 152; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuccessIfFailWithMsg` — import line 153; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SudoSetOption` — import line 154; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SwapVar` — import line 155; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 156; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 157; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TermCongr` — import line 158; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ToAdditive` — import line 159; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ToExpr` — import line 160; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ToLevel` — import line 161; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Trace` — import line 162; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TryThis` — import line 163; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeCheck` — import line 164; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.UnsetOption` — import line 165; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Use` — import line 166; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Variable` — import line 167; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.WLOG` — import line 168; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Widget.CommDiag` — import line 169; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 170; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
