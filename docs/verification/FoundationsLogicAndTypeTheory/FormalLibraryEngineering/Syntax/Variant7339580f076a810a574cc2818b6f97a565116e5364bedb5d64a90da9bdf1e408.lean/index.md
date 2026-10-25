# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64a8f1deaafdba828867a09af9d0a22e8c6540f6",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64a8f1deaafdba828867a09af9d0a22e8c6540f6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Quotation` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Tactic.Where` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.LocalEquiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.PGame` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyCongr` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyWith` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CancelDenoms` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cases` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CasesM` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Slice` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Choose` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Classical` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Clear_` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ClearExcept` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Constructor` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Congrm` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Continuity` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Contrapose` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 36; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 37; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DefEqTransformations` — import line 38; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ExtractGoal` — import line 39; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Existsi` — import line 40; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 41; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 42; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Find` — import line 43; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GeneralizeProofs` — import line 44; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GuardHypNums` — import line 45; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.InferParam` — import line 46; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 47; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Inhabit` — import line 48; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IrreducibleDef` — import line 49; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LeftRight` — import line 50; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LibrarySearch` — import line 51; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 52; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 53; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 54; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Measurability` — import line 55; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 56; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ModCases` — import line 57; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 58; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 59; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast` — import line 60; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 61; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NthRewrite` — import line 62; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PermuteGoals` — import line 63; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Polyrith` — import line 64; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 65; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PushNeg` — import line 66; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Qify` — import line 67; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Recover` — import line 68; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 69; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Symm` — import line 70; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Trans` — import line 71; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Rename` — import line 72; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RenameBVar` — import line 73; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Replace` — import line 74; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RestateAxiom` — import line 75; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 76; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RSuffices` — import line 77; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RunCmd` — import line 78; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ScopedNS` — import line 79; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Set` — import line 80; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SimpIntro` — import line 81; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SimpRw` — import line 82; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.Basic` — import line 83; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SolveByElim` — import line 84; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 85; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Substs` — import line 86; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SwapVar` — import line 87; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 88; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 89; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Trace` — import line 90; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeCheck` — import line 91; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Use` — import line 92; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.WLOG` — import line 93; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 94; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Syntax` — import line 95; external provider; requires a separately pinned dependency.
- `Mathlib.Util.WithWeakNamespace` — import line 96; external provider; requires a separately pinned dependency.
- `Mathlib.Mathport.Notation` — import line 97; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/elab--c2034f765ad7b561f6c4aa6c.md) | 121 | `declaration-track:c2034f765ad7b561f6c4aa6ca8e9d051034c52263915288462aba18b871d5f16` |
| 2 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/elab--a3ff4c2b98e875af8d3d82a1.md) | 122 | `declaration-track:a3ff4c2b98e875af8d3d82a14e805a895a704e16dd51bc20bdb9bce430111070` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--9f8fe1f0a1b49d3eab3eb20d.md) | 123 | `declaration-track:9f8fe1f0a1b49d3eab3eb20d2429798006243a072ca70d318a2bf1433941606d` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--cf1fdc066e8fb14996ac629a.md) | 125 | `declaration-track:cf1fdc066e8fb14996ac629a3f77234cecba5c706053056a3f1dba7173afaa89` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--b0112dd16691897a68bba8b7.md) | 126 | `declaration-track:b0112dd16691897a68bba8b7900b2d644074522100994882c55587aeffaaccf5` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--05fe7d855792d87a82ce7643.md) | 127 | `declaration-track:05fe7d855792d87a82ce7643119726c14c9978db07a1eb32ee1f20d666e2b740` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--1a57efa2ce9fed127a8dbf57.md) | 128 | `declaration-track:1a57efa2ce9fed127a8dbf57be13541081d318292e1093baa3322794f0eed4b1` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--78d7520c77a3007f48c3fe30.md) | 130 | `declaration-track:78d7520c77a3007f48c3fe30253c78069b15b3573151b49d39e3a996704262a2` |
| 9 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--fb4f8a233d0f032c975cae06.md) | 132 | `declaration-track:fb4f8a233d0f032c975cae063d73c8ebffaf1d01b02ee7db28c246e21dc054f0` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--570bd8c62394e33d26e6ebb4.md) | 133 | `declaration-track:570bd8c62394e33d26e6ebb4adbd883f12d862d3ea401b1933c223dc66421fc4` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--4082c77a5ac0191c66e4bab8.md) | 134 | `declaration-track:4082c77a5ac0191c66e4bab8ba03602835865841c08507f8b61980f04e180c96` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--5c53e9f6f82148b77a627eb1.md) | 136 | `declaration-track:5c53e9f6f82148b77a627eb1b3c16f5351d8ea4b29b7bcf57aa42b00fb6a64d3` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--15df416ab4e25601ff63f04e.md) | 138 | `declaration-track:15df416ab4e25601ff63f04e73e00bb9b8c35504d5f757f415ee74fe204fe012` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--dcad8c0782b0d13f89214142.md) | 139 | `declaration-track:dcad8c0782b0d13f89214142fc1980c55e15b699a4c1c7adb595ee9d23f05451` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--2d41d314e28e1b3a2ebf0ddd.md) | 140 | `declaration-track:2d41d314e28e1b3a2ebf0dddce78630a01141c2a3210345007c162a9ad87461c` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--db3bd3e89f981204f0a7f7f6.md) | 141 | `declaration-track:db3bd3e89f981204f0a7f7f60b72a43e61ad41ec2345e77a8a22f4d72a893d30` |
| 17 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--2b52f41a6ec10ffdfa5f9810.md) | 142 | `declaration-track:2b52f41a6ec10ffdfa5f981069d9d8178d31e1e47961b38fee58d04c4f7a1812` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--15419def75d724b946e9e8fe.md) | 143 | `declaration-track:15419def75d724b946e9e8fe73825973499062ce0e1996b115cb6eafdd0db0ad` |
| 19 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--82c01dcbd2128197bb1e21d2.md) | 144 | `declaration-track:82c01dcbd2128197bb1e21d2f8dba159511d66d4e05ca57e3398eafbbe4b26d2` |
| 20 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--d76d8dd7fb217961f3e2c8a7.md) | 145 | `declaration-track:d76d8dd7fb217961f3e2c8a7fecbac9f735ad61a0cc568a604a39331382622c7` |
| 21 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--a0c897e975afa6075e9eb3bb.md) | 147 | `declaration-track:a0c897e975afa6075e9eb3bbb5831814ada14a95ec9b4998a45b6c2ebda3a803` |
| 22 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--b812967ccc4ebad888d42c31.md) | 148 | `declaration-track:b812967ccc4ebad888d42c314de4fec7ac14cbf3d47430689785b0d23bf80fb3` |
| 23 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--4e45dd9135c9aad1b0990265.md) | 149 | `declaration-track:4e45dd9135c9aad1b0990265e3eb48d18e882d01e93847f2039e7e93f677cb37` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--7df06cc7b299f4bfa4fca5a1.md) | 150 | `declaration-track:7df06cc7b299f4bfa4fca5a1f6baee12db8517eb5d914a101672978a3228c68a` |
| 25 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--6c01da2bfed091c137434dc1.md) | 151 | `declaration-track:6c01da2bfed091c137434dc10467d2218868a3d2bdd872dd305c5517c61cbeb9` |
| 26 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--3e61584becbfc2b88679077a.md) | 152 | `declaration-track:3e61584becbfc2b88679077a3a5ce91b707e9a4da6a453fc030418757736d5bb` |
| 27 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--5a9e4a2db2ef72be526dc62e.md) | 153 | `declaration-track:5a9e4a2db2ef72be526dc62ed2b4e8e9eed74cada0c00e026669991307716fb7` |
| 28 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--3b4e63ea4ff520c3da8b1a4f.md) | 155 | `declaration-track:3b4e63ea4ff520c3da8b1a4f6b10f2c245a7d4f8a02b73e08c209e5f62bcc4ba` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--963084e5d7b00022f83d39b6.md) | 157 | `declaration-track:963084e5d7b00022f83d39b6ab9f602c0cc4b4ab015097dd586a0a2ca40dd99b` |
| 30 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--a0da5c6b8c33e8e7f0581f58.md) | 159 | `declaration-track:a0da5c6b8c33e8e7f0581f587f9244dc3c62dff2b58380c216c271145c077c22` |
| 31 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--badd9e1db8f0e2c92972efb5.md) | 160 | `declaration-track:badd9e1db8f0e2c92972efb502089c249aadcb53e94ac584ca6aadd3af292b4b` |
| 32 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--0bcbb427e1e3a4d54959ff46.md) | 161 | `declaration-track:0bcbb427e1e3a4d54959ff464133b53aeacf8c17eb66e61d773aca05a84c71a5` |
| 33 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--b191e7876128e82ca44f3498.md) | 163 | `declaration-track:b191e7876128e82ca44f3498f6f274d41296c45b76bcb9367353b2cc097f08e4` |
| 34 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--a29c57b5d104dbe11ef3dd1a.md) | 165 | `declaration-track:a29c57b5d104dbe11ef3dd1adedd91d60e5e3c5fad27a5064dbd4b885b1c1389` |
| 35 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--8c71c08c187944dec8a1611f.md) | 166 | `declaration-track:8c71c08c187944dec8a1611f52e4aa29a6d563f25ccbf6cf68380a8ac92c921e` |
| 36 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--6cedd468518a8d9be3080d19.md) | 168 | `declaration-track:6cedd468518a8d9be3080d194341b4e18abc92634efcef43d409ffcd5774a18d` |
| 37 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--0ab4becfc4318ac6c1fbc1f5.md) | 170 | `declaration-track:0ab4becfc4318ac6c1fbc1f56eb147293ec798f4a582ed6d2fac2ccc8dabdc25` |
| 38 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--9d18a7b2f24e73c96e90582d.md) | 172 | `declaration-track:9d18a7b2f24e73c96e90582db5af69caa906799b723e49644ca03adb5ef0e4e5` |
| 39 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--0c17fa0812d5135535d1b3f1.md) | 173 | `declaration-track:0c17fa0812d5135535d1b3f18148c8a9d1a5c5daa92fe12eda79e1ee0a9e9518` |
| 40 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--e52cecb7c8c94ebff9ab62fd.md) | 175 | `declaration-track:e52cecb7c8c94ebff9ab62fd69e6762d0ab7a37ce02b121f39d92f687d628b30` |
| 41 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--f5e35152e8c01aed1cb727d5.md) | 177 | `declaration-track:f5e35152e8c01aed1cb727d52d1bb4d3a475c0e7a9eb7f06e646769175500c6c` |
| 42 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--c488ed96c3dab3072d6c170e.md) | 179 | `declaration-track:c488ed96c3dab3072d6c170e9430961ee299361f0ef8ce59cae4827bfc54a5ec` |
| 43 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--e5d5bd09dc57fd238bb57aed.md) | 182 | `declaration-track:e5d5bd09dc57fd238bb57aeddf8cac1f8e8bfb71dce38aabbe92e4f7fac69924` |
| 44 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--548bc9e6d607d8551295a27e.md) | 183 | `declaration-track:548bc9e6d607d8551295a27e2f2773d1e68839a3137b71e34a29965be5d09d54` |
| 45 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--dab246f6b98cfe4cc22e1496.md) | 185 | `declaration-track:dab246f6b98cfe4cc22e1496c4aabea289922042bcd9cd7df012b8405ff026f2` |
| 46 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--9e63afb7d344b5fc635d77de.md) | 186 | `declaration-track:9e63afb7d344b5fc635d77de6e043aec45a182b24d4f22d1925c1635df2a6184` |
| 47 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--7bcc62dbcfdbf7b4439d4fc9.md) | 188 | `declaration-track:7bcc62dbcfdbf7b4439d4fc96ef43b231d7d3ac19a744444535c6f158ad139b1` |
| 48 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--468e007eb7384c4837382eef.md) | 189 | `declaration-track:468e007eb7384c4837382eef4555223be6c2dcbef7e548715fe74f777fe406a8` |
| 49 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--3fbc592fd3f4ed788089ee40.md) | 190 | `declaration-track:3fbc592fd3f4ed788089ee407beda14ff2dbf235614a6609442037bd9a62c99f` |
| 50 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--338ba30435021c4129134896.md) | 193 | `declaration-track:338ba30435021c41291348962b2e7ea80b23bd930ff8bbca71243a3ffcdf3d4f` |
| 51 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--bd37389fa422e4fb94bfda93.md) | 194 | `declaration-track:bd37389fa422e4fb94bfda9389049e839b1061b3cc400f7676448635d0bdc7b7` |
| 52 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--fb710eaa9337ce434ff699ff.md) | 195 | `declaration-track:fb710eaa9337ce434ff699fff7ac8fba4c13ce6a269f28ad7e1a5585788a92d2` |
| 53 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--d24e8c6666eb47fe6d4034fd.md) | 197 | `declaration-track:d24e8c6666eb47fe6d4034fdb63da7dc85e5005eacbb1305786198f25374c4c0` |
| 54 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--32efe35a4111140a4169288e.md) | 199 | `declaration-track:32efe35a4111140a4169288e0c71ddffec73e4f6d5123392700739a3a2ec212d` |
| 55 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--f592c90002a4195df9508b03.md) | 201 | `declaration-track:f592c90002a4195df9508b036847012ebb4608763f07d63d778dd9be0fd5b59d` |
| 56 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--a37bbb2ac001ac7ae41cc6a0.md) | 203 | `declaration-track:a37bbb2ac001ac7ae41cc6a0fabcc329929a1bca118bd40c1c2fb30f65411567` |
| 57 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--bd5bfe6d76725d4f4baecdce.md) | 205 | `declaration-track:bd5bfe6d76725d4f4baecdce6e5e41022b728b5c3f66611010984303b3bcfeda` |
| 58 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--549bb810c5ea915e4b87f2dc.md) | 208 | `declaration-track:549bb810c5ea915e4b87f2dc652c92ab5978af7fa5f12d94039089d2ee13814e` |
| 59 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--9001a81c29b79bc66f1d149a.md) | 211 | `declaration-track:9001a81c29b79bc66f1d149a8c4e6b5692ca7ae01fa03b0b2cf4ac32868b2ef0` |
| 60 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--782c374a43c6dc09bd6c084c.md) | 214 | `declaration-track:782c374a43c6dc09bd6c084cb66f7f62e0b4ff5b9c388b08ae9c78cf8eb4d5cf` |
| 61 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--5034c0b95336ee2615425a90.md) | 216 | `declaration-track:5034c0b95336ee2615425a90619318b794dcce9664df4a004c23c66a277a15cb` |
| 62 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--ec65fee61f10872812a406a1.md) | 219 | `declaration-track:ec65fee61f10872812a406a164a4397578c1cb01162e7810c50745d6205833fe` |
| 63 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--49579f9424ecf0348f7e2f19.md) | 221 | `declaration-track:49579f9424ecf0348f7e2f19103734c308573362550fde4023e132890cf4c9e8` |
| 64 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--2e37f3db341e01ce13125bec.md) | 224 | `declaration-track:2e37f3db341e01ce13125bec1419c4c00f59f3a7bb899b801766b466ab5e574d` |
| 65 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--8adff0658e4ca81838749c8d.md) | 225 | `declaration-track:8adff0658e4ca81838749c8d38b711d5f95414fe7a42eed3aea3aec04e02ae6e` |
| 66 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--21a15f385d23193ceba8e891.md) | 226 | `declaration-track:21a15f385d23193ceba8e89133fd60ea2e6fc2ee7157a166ba6d810eca2f3315` |
| 67 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--150a1a8dd9022740dc9c834f.md) | 228 | `declaration-track:150a1a8dd9022740dc9c834f169efc92a2c43ca75c77ed6c30704377958cdf8c` |
| 68 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--b283f0f7d3b4a904370d58de.md) | 230 | `declaration-track:b283f0f7d3b4a904370d58de2a2a34ee2b71e86bb0765b8250f6c36ce0e0a4ee` |
| 69 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--9d4f8b2181b2b2a14dc379f5.md) | 232 | `declaration-track:9d4f8b2181b2b2a14dc379f5cb98a8d31227a96b14af9145315d72e784025660` |
| 70 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--66c65108c6059b1dd97ad1c7.md) | 234 | `declaration-track:66c65108c6059b1dd97ad1c721cfa6c94b76e2abaf9d4a98fa4636af7264ddf2` |
| 71 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--e6897bb4e2aed47b63c21b35.md) | 236 | `declaration-track:e6897bb4e2aed47b63c21b3569bfc39e6a455845384c1c70d358effb10d0d039` |
| 72 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--1b1a193b9436e607481e70b1.md) | 238 | `declaration-track:1b1a193b9436e607481e70b1ef2104f3159f35116dd84e7d0514ca25213f219c` |
| 73 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--8351af73f5c0e4efa06a55de.md) | 240 | `declaration-track:8351af73f5c0e4efa06a55de35a2ab22ecb8cdc1542641fe35ad730beb055ce5` |
| 74 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--ee6068835313debcff9cb984.md) | 241 | `declaration-track:ee6068835313debcff9cb98452a75cad1909df49888771b3f52b3adafc2b5192` |
| 75 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--3aa3cd8aa09c7236e9f20844.md) | 243 | `declaration-track:3aa3cd8aa09c7236e9f2084455821e8d9037c08c63996570926ac2ee81359e48` |
| 76 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--a01d49da8fc57e9520e6e3ec.md) | 244 | `declaration-track:a01d49da8fc57e9520e6e3ec40b5c2b30b39f02a1af94d761c496ea148832a4e` |
| 77 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--28950bc103a680a77f5e554b.md) | 246 | `declaration-track:28950bc103a680a77f5e554b79ffae731e4274e0b66dc028840396bd4ff53940` |
| 78 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--df8ab7aa7450b606a0ceba47.md) | 247 | `declaration-track:df8ab7aa7450b606a0ceba479b82e3b8848196da819ab78fd90a9ffb48eabf88` |
| 79 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--ff01685935848566c9447d03.md) | 249 | `declaration-track:ff01685935848566c9447d03f93f5341f120815132b20499a550aed383580436` |
| 80 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--f0dcac65982e6969c96b24b9.md) | 250 | `declaration-track:f0dcac65982e6969c96b24b9fc751c4350787113b4b20ee7b5d464b84a260b3d` |
| 81 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--903f1f1fe92f8dbd97c9734d.md) | 252 | `declaration-track:903f1f1fe92f8dbd97c9734d5fd4650d6f57490531023649fad74bbe156d6de3` |
| 82 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--b10ca1e0f69284c92378b9d1.md) | 254 | `declaration-track:b10ca1e0f69284c92378b9d1cc2f1afba03147dcdf254eb357411727215d0235` |
| 83 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--012fde154ec5a022c2082460.md) | 256 | `declaration-track:012fde154ec5a022c2082460ac010cb2b0f32d4045c221977e7e112cf74a487f` |
| 84 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--2beedafc6719d8c8585b5453.md) | 258 | `declaration-track:2beedafc6719d8c8585b5453e6f10c180b586193449c77ed62feba6497e7aa8f` |
| 85 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--fa5f29a902045a6d6faf7ae7.md) | 260 | `declaration-track:fa5f29a902045a6d6faf7ae7d8c50211ebc19e657ee90e10294383b700ea86dd` |
| 86 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--d262c81bb65807cd7481a92c.md) | 263 | `declaration-track:d262c81bb65807cd7481a92ce0499b67eff464068331249326da760db5c793f4` |
| 87 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--7463e7860fb140b4ec4ed7c1.md) | 265 | `declaration-track:7463e7860fb140b4ec4ed7c1298264b23492ca46ef5483cde6ab9bd63597d799` |
| 88 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--ee391fc8d3f9f1c498049a26.md) | 267 | `declaration-track:ee391fc8d3f9f1c498049a26db10f994a2ae303f0c6eaeb7c19cab7dfed803fe` |
| 89 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--ffa1639829ac21a03eba6513.md) | 269 | `declaration-track:ffa1639829ac21a03eba6513f574635a697331fcdb5878ef5313b0bd4c823b58` |
| 90 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--68c03ebc584b8578d832559f.md) | 271 | `declaration-track:68c03ebc584b8578d832559f68527d3e67be5399830b5328d0fca239ac99bed3` |
| 91 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--cbe3956bd02ee9c454f4fcf7.md) | 272 | `declaration-track:cbe3956bd02ee9c454f4fcf79e2f3a11aabf5dee5a70addb86e3569f75a63cb6` |
| 92 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--91bf365b19e0a85743d021eb.md) | 274 | `declaration-track:91bf365b19e0a85743d021eb8916b37501f5c4d755cecdee0582b8b910f60219` |
| 93 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--dc58472f728b95c82c089e95.md) | 275 | `declaration-track:dc58472f728b95c82c089e95c3db800a790ac4e8c1454204f64218fec191d4a4` |
| 94 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--bfaae908a84e9f9945effa48.md) | 277 | `declaration-track:bfaae908a84e9f9945effa48fd7fce124ce5047c123d302b24ad4254fdb8aa08` |
| 95 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/macro--59d72ddf275ce4ab76977784.md) | 278 | `declaration-track:59d72ddf275ce4ab76977784933a0f0ee6397dd85c664cfaf0ab64182c2ba1b4` |
| 96 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/macro--d86f74f6b2c633b4a2a3c3bf.md) | 280 | `declaration-track:d86f74f6b2c633b4a2a3c3bfbacc159b4319dce9b321d33bf82a6a02c4ffd373` |
| 97 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--b30ddd5639b4d83acded8492.md) | 283 | `declaration-track:b30ddd5639b4d83acded8492d78467ec5b85182cf287512156c841ff2f1714e5` |
| 98 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--7def8f6edb476ef6cf7ad9fa.md) | 284 | `declaration-track:7def8f6edb476ef6cf7ad9fadda624b85b5e61e54d11861030a76664cddbe023` |
| 99 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--26dfb789e699a7ed43e0cddd.md) | 286 | `declaration-track:26dfb789e699a7ed43e0cddd0882d5699f1fb203409d3fe04f8952901e5dcf19` |
| 100 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--083cf7ad5133668eb54dbcea.md) | 288 | `declaration-track:083cf7ad5133668eb54dbceab20b380b9e658a1617fc7aaa72d4d75d6c9e2845` |
| 101 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--4388cd19c6d2ed186d94a1fe.md) | 291 | `declaration-track:4388cd19c6d2ed186d94a1fef0e402469024365c07b55575f9b2ca6d29edd7ec` |
| 102 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--1b1b9a4e6a5fb32536914046.md) | 293 | `declaration-track:1b1b9a4e6a5fb32536914046ad49fff6f272d40457d053bbabb1e50b0dc4199a` |
| 103 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--d123c96d44915f7faf92e4d4.md) | 295 | `declaration-track:d123c96d44915f7faf92e4d493af952e8fa6742fc27812a8198ef19e4a7e6f26` |
| 104 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--5cd430d626d99bdc634148d7.md) | 297 | `declaration-track:5cd430d626d99bdc634148d7c2ed722995378669d220bab66ff4eb0b90d4f9f1` |
| 105 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--f8b0f30e1ba5030d69895b99.md) | 299 | `declaration-track:f8b0f30e1ba5030d69895b99ad923bfce8a57e209ff435e414caee7b87b23ac1` |
| 106 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--16acc082e3087131f63b2ec8.md) | 301 | `declaration-track:16acc082e3087131f63b2ec89006c144dfb25479d94749084bb83c1199b75c13` |
| 107 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--9f9407d7419dbd5356e6e1af.md) | 303 | `declaration-track:9f9407d7419dbd5356e6e1af429e6093b854a661777711eebecdebf300eeebce` |
| 108 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--66e7132a46e7fb110b270cd4.md) | 305 | `declaration-track:66e7132a46e7fb110b270cd4b49c835fce99011de245b24b37250096f07ac12e` |
| 109 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--b9fa3988ea282e2d75ced913.md) | 307 | `declaration-track:b9fa3988ea282e2d75ced9133accb72cfc12cfbd0eb1657b4877593389ed5d1a` |
| 110 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--97a471a624ef5bc169498492.md) | 309 | `declaration-track:97a471a624ef5bc169498492e57ef356e0573e1419033ec9effb6e48094bbccc` |
| 111 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--8df8e95efe079030b7764c25.md) | 311 | `declaration-track:8df8e95efe079030b7764c257eed1367b6800840ff702f776522430e064f87bf` |
| 112 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408.lean/declarations/syntax--49ca851f20df9dd55a70d244.md) | 312 | `declaration-track:49ca851f20df9dd55a70d2448face20577ff5453834f775270bc749556ad3645` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
