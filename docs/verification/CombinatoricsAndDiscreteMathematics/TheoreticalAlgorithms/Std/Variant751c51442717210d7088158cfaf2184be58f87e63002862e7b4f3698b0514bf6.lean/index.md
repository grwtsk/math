# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Std.Variant751c51442717210d7088158cfaf2184be58f87e63002862e7b4f3698b0514bf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eeb2911a693ed9536a14c75ac78f2f657806441",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Std/Variant751c51442717210d7088158cfaf2184be58f87e63002862e7b4f3698b0514bf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Std/Variant751c51442717210d7088158cfaf2184be58f87e63002862e7b4f3698b0514bf6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Std/Variant751c51442717210d7088158cfaf2184be58f87e63002862e7b4f3698b0514bf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eeb2911a693ed9536a14c75ac78f2f657806441`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Std/Variant751c51442717210d7088158cfaf2184be58f87e63002862e7b4f3698b0514bf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Std/Variant751c51442717210d7088158cfaf2184be58f87e63002862e7b4f3698b0514bf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Classes.BEq` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Classes.Cast` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Classes.Dvd` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Classes.LawfulMonad` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Classes.Order` — import line 10; external provider; requires a separately pinned dependency.
- `Std.Classes.RatCast` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Classes.SetNotation` — import line 12; external provider; requires a separately pinned dependency.
- `Std.CodeAction` — import line 13; external provider; requires a separately pinned dependency.
- `Std.CodeAction.Attr` — import line 14; external provider; requires a separately pinned dependency.
- `Std.CodeAction.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Std.CodeAction.Deprecated` — import line 16; external provider; requires a separately pinned dependency.
- `Std.CodeAction.Misc` — import line 17; external provider; requires a separately pinned dependency.
- `Std.Control.ForInStep` — import line 18; external provider; requires a separately pinned dependency.
- `Std.Control.ForInStep.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Std.Control.ForInStep.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Std.Control.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Init.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Init.Lemmas` — import line 24; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Lemmas` — import line 25; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Match` — import line 26; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Merge` — import line 27; external provider; requires a separately pinned dependency.
- `Std.Data.AssocList` — import line 28; external provider; requires a separately pinned dependency.
- `Std.Data.BinomialHeap` — import line 29; external provider; requires a separately pinned dependency.
- `Std.Data.BinomialHeap.Basic` — import line 30; external provider; requires a separately pinned dependency.
- `Std.Data.BinomialHeap.Lemmas` — import line 31; external provider; requires a separately pinned dependency.
- `Std.Data.BitVec` — import line 32; external provider; requires a separately pinned dependency.
- `Std.Data.BitVec.Basic` — import line 33; external provider; requires a separately pinned dependency.
- `Std.Data.BitVec.Bitblast` — import line 34; external provider; requires a separately pinned dependency.
- `Std.Data.BitVec.Folds` — import line 35; external provider; requires a separately pinned dependency.
- `Std.Data.BitVec.Lemmas` — import line 36; external provider; requires a separately pinned dependency.
- `Std.Data.Bool` — import line 37; external provider; requires a separately pinned dependency.
- `Std.Data.Char` — import line 38; external provider; requires a separately pinned dependency.
- `Std.Data.DList` — import line 39; external provider; requires a separately pinned dependency.
- `Std.Data.Fin.Basic` — import line 40; external provider; requires a separately pinned dependency.
- `Std.Data.Fin.Init.Lemmas` — import line 41; external provider; requires a separately pinned dependency.
- `Std.Data.Fin.Iterate` — import line 42; external provider; requires a separately pinned dependency.
- `Std.Data.Fin.Lemmas` — import line 43; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap` — import line 44; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap.Basic` — import line 45; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap.Lemmas` — import line 46; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap.WF` — import line 47; external provider; requires a separately pinned dependency.
- `Std.Data.Int.Basic` — import line 48; external provider; requires a separately pinned dependency.
- `Std.Data.Int.DivMod` — import line 49; external provider; requires a separately pinned dependency.
- `Std.Data.Int.Lemmas` — import line 50; external provider; requires a separately pinned dependency.
- `Std.Data.Json` — import line 51; external provider; requires a separately pinned dependency.
- `Std.Data.List.Basic` — import line 52; external provider; requires a separately pinned dependency.
- `Std.Data.List.Count` — import line 53; external provider; requires a separately pinned dependency.
- `Std.Data.List.Init.Attach` — import line 54; external provider; requires a separately pinned dependency.
- `Std.Data.List.Init.Lemmas` — import line 55; external provider; requires a separately pinned dependency.
- `Std.Data.List.Lemmas` — import line 56; external provider; requires a separately pinned dependency.
- `Std.Data.List.Pairwise` — import line 57; external provider; requires a separately pinned dependency.
- `Std.Data.MLList.Basic` — import line 58; external provider; requires a separately pinned dependency.
- `Std.Data.MLList.Heartbeats` — import line 59; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Basic` — import line 60; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Bitwise` — import line 61; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Gcd` — import line 62; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Init.Lemmas` — import line 63; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Lemmas` — import line 64; external provider; requires a separately pinned dependency.
- `Std.Data.Option.Basic` — import line 65; external provider; requires a separately pinned dependency.
- `Std.Data.Option.Init.Lemmas` — import line 66; external provider; requires a separately pinned dependency.
- `Std.Data.Option.Lemmas` — import line 67; external provider; requires a separately pinned dependency.
- `Std.Data.Ord` — import line 68; external provider; requires a separately pinned dependency.
- `Std.Data.PairingHeap` — import line 69; external provider; requires a separately pinned dependency.
- `Std.Data.Prod.Lex` — import line 70; external provider; requires a separately pinned dependency.
- `Std.Data.RBMap` — import line 71; external provider; requires a separately pinned dependency.
- `Std.Data.RBMap.Alter` — import line 72; external provider; requires a separately pinned dependency.
- `Std.Data.RBMap.Basic` — import line 73; external provider; requires a separately pinned dependency.
- `Std.Data.RBMap.Lemmas` — import line 74; external provider; requires a separately pinned dependency.
- `Std.Data.RBMap.WF` — import line 75; external provider; requires a separately pinned dependency.
- `Std.Data.Range.Lemmas` — import line 76; external provider; requires a separately pinned dependency.
- `Std.Data.Rat` — import line 77; external provider; requires a separately pinned dependency.
- `Std.Data.Rat.Basic` — import line 78; external provider; requires a separately pinned dependency.
- `Std.Data.Rat.Lemmas` — import line 79; external provider; requires a separately pinned dependency.
- `Std.Data.String` — import line 80; external provider; requires a separately pinned dependency.
- `Std.Data.String.Basic` — import line 81; external provider; requires a separately pinned dependency.
- `Std.Data.String.Lemmas` — import line 82; external provider; requires a separately pinned dependency.
- `Std.Data.Sum` — import line 83; external provider; requires a separately pinned dependency.
- `Std.Data.Sum.Basic` — import line 84; external provider; requires a separately pinned dependency.
- `Std.Data.Sum.Lemmas` — import line 85; external provider; requires a separately pinned dependency.
- `Std.Lean.AttributeExtra` — import line 86; external provider; requires a separately pinned dependency.
- `Std.Lean.Command` — import line 87; external provider; requires a separately pinned dependency.
- `Std.Lean.CoreM` — import line 88; external provider; requires a separately pinned dependency.
- `Std.Lean.Delaborator` — import line 89; external provider; requires a separately pinned dependency.
- `Std.Lean.Elab.Tactic` — import line 90; external provider; requires a separately pinned dependency.
- `Std.Lean.Expr` — import line 91; external provider; requires a separately pinned dependency.
- `Std.Lean.Float` — import line 92; external provider; requires a separately pinned dependency.
- `Std.Lean.Format` — import line 93; external provider; requires a separately pinned dependency.
- `Std.Lean.HashMap` — import line 94; external provider; requires a separately pinned dependency.
- `Std.Lean.HashSet` — import line 95; external provider; requires a separately pinned dependency.
- `Std.Lean.InfoTree` — import line 96; external provider; requires a separately pinned dependency.
- `Std.Lean.Json` — import line 97; external provider; requires a separately pinned dependency.
- `Std.Lean.LocalContext` — import line 98; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.AssertHypotheses` — import line 99; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.Basic` — import line 100; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.Clear` — import line 101; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.DiscrTree` — import line 102; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.Expr` — import line 103; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.Inaccessible` — import line 104; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.InstantiateMVars` — import line 105; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.SavedState` — import line 106; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.Simp` — import line 107; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.UnusedNames` — import line 108; external provider; requires a separately pinned dependency.
- `Std.Lean.MonadBacktrack` — import line 109; external provider; requires a separately pinned dependency.
- `Std.Lean.Name` — import line 110; external provider; requires a separately pinned dependency.
- `Std.Lean.NameMapAttribute` — import line 111; external provider; requires a separately pinned dependency.
- `Std.Lean.Parser` — import line 112; external provider; requires a separately pinned dependency.
- `Std.Lean.PersistentHashMap` — import line 113; external provider; requires a separately pinned dependency.
- `Std.Lean.PersistentHashSet` — import line 114; external provider; requires a separately pinned dependency.
- `Std.Lean.Position` — import line 115; external provider; requires a separately pinned dependency.
- `Std.Lean.Tactic` — import line 116; external provider; requires a separately pinned dependency.
- `Std.Lean.TagAttribute` — import line 117; external provider; requires a separately pinned dependency.
- `Std.Lean.Util.EnvSearch` — import line 118; external provider; requires a separately pinned dependency.
- `Std.Lean.Util.Path` — import line 119; external provider; requires a separately pinned dependency.
- `Std.Linter` — import line 120; external provider; requires a separately pinned dependency.
- `Std.Linter.UnnecessarySeqFocus` — import line 121; external provider; requires a separately pinned dependency.
- `Std.Linter.UnreachableTactic` — import line 122; external provider; requires a separately pinned dependency.
- `Std.Logic` — import line 123; external provider; requires a separately pinned dependency.
- `Std.Tactic.Alias` — import line 124; external provider; requires a separately pinned dependency.
- `Std.Tactic.Basic` — import line 125; external provider; requires a separately pinned dependency.
- `Std.Tactic.ByCases` — import line 126; external provider; requires a separately pinned dependency.
- `Std.Tactic.Case` — import line 127; external provider; requires a separately pinned dependency.
- `Std.Tactic.Change` — import line 128; external provider; requires a separately pinned dependency.
- `Std.Tactic.CoeExt` — import line 129; external provider; requires a separately pinned dependency.
- `Std.Tactic.Congr` — import line 130; external provider; requires a separately pinned dependency.
- `Std.Tactic.Exact` — import line 131; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext` — import line 132; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext.Attr` — import line 133; external provider; requires a separately pinned dependency.
- `Std.Tactic.GuardExpr` — import line 134; external provider; requires a separately pinned dependency.
- `Std.Tactic.GuardMsgs` — import line 135; external provider; requires a separately pinned dependency.
- `Std.Tactic.HaveI` — import line 136; external provider; requires a separately pinned dependency.
- `Std.Tactic.Instances` — import line 137; external provider; requires a separately pinned dependency.
- `Std.Tactic.LabelAttr` — import line 138; external provider; requires a separately pinned dependency.
- `Std.Tactic.LeftRight` — import line 139; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint` — import line 140; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Basic` — import line 141; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Frontend` — import line 142; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Misc` — import line 143; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Simp` — import line 144; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.TypeClass` — import line 145; external provider; requires a separately pinned dependency.
- `Std.Tactic.NoMatch` — import line 146; external provider; requires a separately pinned dependency.
- `Std.Tactic.NormCast` — import line 147; external provider; requires a separately pinned dependency.
- `Std.Tactic.NormCast.Ext` — import line 148; external provider; requires a separately pinned dependency.
- `Std.Tactic.NormCast.Lemmas` — import line 149; external provider; requires a separately pinned dependency.
- `Std.Tactic.OpenPrivate` — import line 150; external provider; requires a separately pinned dependency.
- `Std.Tactic.PermuteGoals` — import line 151; external provider; requires a separately pinned dependency.
- `Std.Tactic.PrintDependents` — import line 152; external provider; requires a separately pinned dependency.
- `Std.Tactic.PrintPrefix` — import line 153; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 154; external provider; requires a separately pinned dependency.
- `Std.Tactic.Relation.Rfl` — import line 155; external provider; requires a separately pinned dependency.
- `Std.Tactic.Relation.Symm` — import line 156; external provider; requires a separately pinned dependency.
- `Std.Tactic.Replace` — import line 157; external provider; requires a separately pinned dependency.
- `Std.Tactic.RunCmd` — import line 158; external provider; requires a separately pinned dependency.
- `Std.Tactic.SeqFocus` — import line 159; external provider; requires a separately pinned dependency.
- `Std.Tactic.ShowTerm` — import line 160; external provider; requires a separately pinned dependency.
- `Std.Tactic.SimpTrace` — import line 161; external provider; requires a separately pinned dependency.
- `Std.Tactic.Simpa` — import line 162; external provider; requires a separately pinned dependency.
- `Std.Tactic.SqueezeScope` — import line 163; external provider; requires a separately pinned dependency.
- `Std.Tactic.TryThis` — import line 164; external provider; requires a separately pinned dependency.
- `Std.Tactic.Unreachable` — import line 165; external provider; requires a separately pinned dependency.
- `Std.Tactic.Where` — import line 166; external provider; requires a separately pinned dependency.
- `Std.Test.Internal.DummyLabelAttr` — import line 167; external provider; requires a separately pinned dependency.
- `Std.Util.Cache` — import line 168; external provider; requires a separately pinned dependency.
- `Std.Util.ExtendedBinder` — import line 169; external provider; requires a separately pinned dependency.
- `Std.Util.LibraryNote` — import line 170; external provider; requires a separately pinned dependency.
- `Std.Util.Pickle` — import line 171; external provider; requires a separately pinned dependency.
- `Std.Util.ProofWanted` — import line 172; external provider; requires a separately pinned dependency.
- `Std.Util.TermUnsafe` — import line 173; external provider; requires a separately pinned dependency.
- `Std.WF` — import line 174; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
