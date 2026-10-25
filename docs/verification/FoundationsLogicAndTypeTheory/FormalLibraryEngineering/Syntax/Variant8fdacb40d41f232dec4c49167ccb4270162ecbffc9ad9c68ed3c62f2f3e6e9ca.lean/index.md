# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "307c4992de35c83abbefb74285dcbd727c892042",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `307c4992de35c83abbefb74285dcbd727c892042`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Quotation` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Tactic.Where` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.LocalEquiv` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.PGame` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyCongr` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyWith` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CancelDenoms` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cases` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CasesM` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Slice` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Choose` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Classical` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Clear_` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ClearExcept` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Constructor` — import line 36; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Congrm` — import line 37; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Continuity` — import line 38; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Contrapose` — import line 39; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 40; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 41; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 42; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DefEqTransformations` — import line 43; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ExtractGoal` — import line 44; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Existsi` — import line 45; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 46; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 47; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Find` — import line 48; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GeneralizeProofs` — import line 49; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GuardHypNums` — import line 50; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.InferParam` — import line 51; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 52; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Inhabit` — import line 53; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IrreducibleDef` — import line 54; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LeftRight` — import line 55; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LibrarySearch` — import line 56; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 57; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 58; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 59; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Measurability` — import line 60; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 61; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ModCases` — import line 62; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 63; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 64; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast` — import line 65; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 66; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NthRewrite` — import line 67; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PermuteGoals` — import line 68; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Polyrith` — import line 69; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 70; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PushNeg` — import line 71; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Qify` — import line 72; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Recover` — import line 73; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 74; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Symm` — import line 75; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Trans` — import line 76; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Rename` — import line 77; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RenameBVar` — import line 78; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Replace` — import line 79; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RestateAxiom` — import line 80; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 81; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RSuffices` — import line 82; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RunCmd` — import line 83; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ScopedNS` — import line 84; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Set` — import line 85; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SimpIntro` — import line 86; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SimpRw` — import line 87; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.Basic` — import line 88; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SolveByElim` — import line 89; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 90; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Substs` — import line 91; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SwapVar` — import line 92; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 93; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 94; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Trace` — import line 95; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeCheck` — import line 96; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Use` — import line 97; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.WLOG` — import line 98; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 99; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Syntax` — import line 100; external provider; requires a separately pinned dependency.
- `Mathlib.Util.WithWeakNamespace` — import line 101; external provider; requires a separately pinned dependency.
- `Mathlib.Mathport.Notation` — import line 102; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/elab--c84c38673193b2da920fa068.md) | 129 | `declaration-track:c84c38673193b2da920fa0682baa0e3ed783cc9773a3c03d2eb06a7b319e8c6f` |
| 2 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/elab--c6328368200f7a869a2814c1.md) | 130 | `declaration-track:c6328368200f7a869a2814c1de05768c51187b526e189daf38cb63de0f65833e` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--ca00c9204b5efc51981aef41.md) | 131 | `declaration-track:ca00c9204b5efc51981aef412e6377af930004027176f7430016965f2895ec34` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--35a8cc4d643e9a2b05e57f20.md) | 133 | `declaration-track:35a8cc4d643e9a2b05e57f2031b2ad9a442ac90f6c5499b6e15a7afa3a02294a` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--a3f9e3afc233b4db259cb372.md) | 134 | `declaration-track:a3f9e3afc233b4db259cb3721461d8cd1c266a83a78dd6cf40d6fc8fbee484d6` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--dceffcb143afe38326674bad.md) | 135 | `declaration-track:dceffcb143afe38326674badce5e87c8c666493f9198de8ff281a491f220eecf` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--836f42691790ec46b1ff407d.md) | 136 | `declaration-track:836f42691790ec46b1ff407d93d4e5bf17d2ae3324fb9450f6174114491d0fee` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--f456bf946896f6835e722542.md) | 138 | `declaration-track:f456bf946896f6835e72254259719d997acaca4e4a062d7d0242ecd5f104fa88` |
| 9 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--0eaae2bcb2180c0f3707b75c.md) | 140 | `declaration-track:0eaae2bcb2180c0f3707b75c9cc5a69820abe2d4526ca9eee1c6644f76e6c7dc` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--313819dcbbc95c86dcfa669c.md) | 141 | `declaration-track:313819dcbbc95c86dcfa669cf6cb683edd6ca87887feee0a12ddc3a63cf07e91` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--7c9f7251ac9fd07d127fd7ca.md) | 142 | `declaration-track:7c9f7251ac9fd07d127fd7ca88a38a28b753c237e3c2658a33d8a9c57ccbcdea` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--8145d3d44e38c930694e5f63.md) | 144 | `declaration-track:8145d3d44e38c930694e5f63a624e271e0c30c48bd50e71051f8ff0e5fbff5c0` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--03e710d6bcae7bca3743e043.md) | 146 | `declaration-track:03e710d6bcae7bca3743e0436d9abbbf8315c9b869f752c80802a2139f126075` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--ee294cea79f13a63bca22713.md) | 147 | `declaration-track:ee294cea79f13a63bca22713abaad2b1cab72139ff45f0a85ac549cbced5537f` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--1eae4864872abd4bd5c22637.md) | 148 | `declaration-track:1eae4864872abd4bd5c2263714dc0eb0178e656b5cfa9135c5d2c1ee518d796b` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--8d9464e5a7a34bb234e25cc4.md) | 149 | `declaration-track:8d9464e5a7a34bb234e25cc4af534bdd67ea55a922281b9d6ba15d9e91e8c576` |
| 17 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--ab7e324a020c913ddbb83de6.md) | 150 | `declaration-track:ab7e324a020c913ddbb83de6b5f0060aa916c1bd39a411c27ddbcab232c061e5` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--791b390245b0928b69d85561.md) | 151 | `declaration-track:791b390245b0928b69d85561c14c345c85e63bb13f1298c13a0a5c0b078c77a0` |
| 19 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--fd1329e669c1ca032e62aee7.md) | 152 | `declaration-track:fd1329e669c1ca032e62aee7ef8fa9e8380f710090db158ba8b30178314cec1d` |
| 20 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--8fd6af27dd475c7a83918352.md) | 153 | `declaration-track:8fd6af27dd475c7a839183522aacd99dd7cf8c371663e0414c006c5596aaabe7` |
| 21 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--1d425945201cdf56370a451c.md) | 155 | `declaration-track:1d425945201cdf56370a451c917f846932e2aeb4ecec5a87006f4b5b59f8150c` |
| 22 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--438eb15a07528305cb63b2d2.md) | 156 | `declaration-track:438eb15a07528305cb63b2d29bf91a1e0a44f99354f1463350b55af821225c8b` |
| 23 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--8b42bc127e11f352995c940b.md) | 157 | `declaration-track:8b42bc127e11f352995c940b9e8b492375bb374138ef436ae8362a028ddfc4d8` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--cd884e168418b8c8634ef782.md) | 158 | `declaration-track:cd884e168418b8c8634ef782d3f86aed74549be760f85bc09d107c3364c81407` |
| 25 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--e0564e964d749bc2a8f752ea.md) | 159 | `declaration-track:e0564e964d749bc2a8f752ea552bf9b5abaae2e43878bba77e86f0560b9de05a` |
| 26 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--abbbc800f85db6a850826141.md) | 160 | `declaration-track:abbbc800f85db6a850826141c538a9506a08e18918602687e1301239a12c0417` |
| 27 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--b9518bffa58669bcb8a709c7.md) | 161 | `declaration-track:b9518bffa58669bcb8a709c7cf7e71440ee815bfd497b489d8839c30d7681927` |
| 28 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--dba703623ac191ff1cf774f2.md) | 163 | `declaration-track:dba703623ac191ff1cf774f22ebd2d390bf78475f9007dfc1c36f48d965a9495` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--84addfa4a64ea5ed40f2ac43.md) | 165 | `declaration-track:84addfa4a64ea5ed40f2ac43e2e29a9cc4773a8d768bb4d83970a64c5677830c` |
| 30 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--edcda5753b41628285fdc915.md) | 167 | `declaration-track:edcda5753b41628285fdc915bc8c52e16e0821a4b9814114c8a9d55d81b43729` |
| 31 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--3c7684dc31a1d6645f97c339.md) | 168 | `declaration-track:3c7684dc31a1d6645f97c339ebe2b3eb85c7c7765238b9559ae3277849c716f0` |
| 32 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--1100addb5aef3dc19736612e.md) | 169 | `declaration-track:1100addb5aef3dc19736612e5c114636fcab0886cebd086d496eb76f53afbfe9` |
| 33 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--de0ed9eb3f86d80e270ceeaa.md) | 171 | `declaration-track:de0ed9eb3f86d80e270ceeaa4c117add93636fbd872007e9feb9cc1d6b97cc22` |
| 34 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--f2fb17578a3a88cb9bb36e8e.md) | 173 | `declaration-track:f2fb17578a3a88cb9bb36e8e308e4c59f231c6c5430ae5f82b2feaf43ae148c3` |
| 35 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--53d0c1ca6aa3b0586a8af61f.md) | 174 | `declaration-track:53d0c1ca6aa3b0586a8af61f33d2df11f54a1fad5d62cc594c12edc88affba90` |
| 36 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--e0198e4ea16ab57c3d1dafbd.md) | 176 | `declaration-track:e0198e4ea16ab57c3d1dafbd1f9b29b9a8c782fafc261f8f1aa2b6990757e488` |
| 37 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--d028ed4e27e0b38c9ae4cdac.md) | 178 | `declaration-track:d028ed4e27e0b38c9ae4cdac3eec9dd85379410a2572ac45dd8d556aa3e4dcbc` |
| 38 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--2efe00d09debf454a52d4d23.md) | 180 | `declaration-track:2efe00d09debf454a52d4d239d304a30c42b2b2f3ba3f5fca24c235c4e417946` |
| 39 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--4d1506ecba623ecfd57f8176.md) | 181 | `declaration-track:4d1506ecba623ecfd57f8176a4920f90cd341762ae4c06750abede9af9d679fd` |
| 40 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--9bcdb3701ecfe80ae533df79.md) | 183 | `declaration-track:9bcdb3701ecfe80ae533df79eca756a058e9334edf24ffdd438601780c9f3686` |
| 41 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--7270c667e82d67fa0be06115.md) | 185 | `declaration-track:7270c667e82d67fa0be06115ac8bad491ea178e68a4f9887095fc1d031dd6346` |
| 42 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--ed26fa4b3aa083587b72b79b.md) | 187 | `declaration-track:ed26fa4b3aa083587b72b79b482911d91115484cc02e1fdc4808645674a4a248` |
| 43 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--1d60f156c766b39d6abaa9ea.md) | 190 | `declaration-track:1d60f156c766b39d6abaa9ea9e5d16bcd9224bb67ec9b58eb0a1c60218fbd9e5` |
| 44 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--7ce8d18027726fe250a1b2cb.md) | 191 | `declaration-track:7ce8d18027726fe250a1b2cb1e18f538cd7dc3a588dafdd8e9c68502bdb38e20` |
| 45 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--e50f0fc0c62e4441d9cb3e08.md) | 193 | `declaration-track:e50f0fc0c62e4441d9cb3e08d353217655b7d0f1199d30998be483190f167eee` |
| 46 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--3200cc41b1a4f7cfd62f7d72.md) | 194 | `declaration-track:3200cc41b1a4f7cfd62f7d728ece0f5b692d3efd5b5b6205d3afc2158ac80a1d` |
| 47 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--39869b5aca68b929e24960d2.md) | 196 | `declaration-track:39869b5aca68b929e24960d2d162e455a08333a835a6ca75cc69963f456569f9` |
| 48 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--ea1c3b68d14978ad895e525c.md) | 197 | `declaration-track:ea1c3b68d14978ad895e525c32632eaf1cd130b3000913c78f33d54edaadd8cd` |
| 49 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--afe56b31c4e048343b9f28a9.md) | 198 | `declaration-track:afe56b31c4e048343b9f28a9b40adc536faa3f763dc26aea194ee9734a1b92a0` |
| 50 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--ae896d7ea99a7ba70456024b.md) | 201 | `declaration-track:ae896d7ea99a7ba70456024b2113e23618d3466e71e0e8b793ae52a0df315d29` |
| 51 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--f929cb00e20f0d928f65ecee.md) | 202 | `declaration-track:f929cb00e20f0d928f65ecee5d7606a31cc1a31d683e08d77f91e11e05a406be` |
| 52 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--4553915723db2f72d429a4d8.md) | 203 | `declaration-track:4553915723db2f72d429a4d849b16eacd96345622dd32febf213a857140f90f2` |
| 53 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--f6b5927359aa2815bd3729df.md) | 205 | `declaration-track:f6b5927359aa2815bd3729df57ed820b6b678596ac0274d2755cf86a3d8104af` |
| 54 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--5ab0161f215fb950894b46e9.md) | 207 | `declaration-track:5ab0161f215fb950894b46e9f6db0c83365e4cbb415730a30e192127daba39cf` |
| 55 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--4ebef19678638779aec1bd3a.md) | 209 | `declaration-track:4ebef19678638779aec1bd3a37b6d903ad9a8fe7ac8e5f5a059884931eeed2a5` |
| 56 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--7f0c17327ae28ce5dafe417b.md) | 211 | `declaration-track:7f0c17327ae28ce5dafe417b6b5620d98eccab0e024fc3adf467c6c7cc7a4115` |
| 57 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--52662828caa592f2412aec58.md) | 213 | `declaration-track:52662828caa592f2412aec58ec9d2761465e31c145f57a8742775fad1b4c12ba` |
| 58 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--bda0390b52ed11d5ff100bad.md) | 216 | `declaration-track:bda0390b52ed11d5ff100bad483cfbb61a69b4861dbcb8669e539763f8a4ae1b` |
| 59 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--ffe36cf3d38ae15999407bcb.md) | 219 | `declaration-track:ffe36cf3d38ae15999407bcbf9cdb7e61f745b6d6230d6bd44b198836b4447ca` |
| 60 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--7b151383d3901978275d10bd.md) | 222 | `declaration-track:7b151383d3901978275d10bdd07224fd205a497618826896858dbfa151ecf575` |
| 61 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--f96a82fa72ecdea7c41e07a2.md) | 224 | `declaration-track:f96a82fa72ecdea7c41e07a2401c4f4fa1756d2c708d98bd7dbed2b5dee4f6cd` |
| 62 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--40200349d8f0d8283c2dca80.md) | 227 | `declaration-track:40200349d8f0d8283c2dca80ed444d0840cde33afbd1a69a6982ab7442fb5751` |
| 63 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--18b71935ec093aa4ae8289e7.md) | 229 | `declaration-track:18b71935ec093aa4ae8289e754f2768d21de743e1c5dd6ada0909e839be465de` |
| 64 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--d2e8423d872a17d1171ca180.md) | 232 | `declaration-track:d2e8423d872a17d1171ca1803283fece81193a99e2e716b05eccab7ffaf7b55e` |
| 65 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--957a36aafdb88313fd395156.md) | 233 | `declaration-track:957a36aafdb88313fd395156562395050f49cb41b95f6d1a5eeb57fbd785f527` |
| 66 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--d3fff7300018903dae2c64d8.md) | 234 | `declaration-track:d3fff7300018903dae2c64d8b4e150db481c4d4a4f545b01234eb8ee4efb8452` |
| 67 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--c1539119d4d3393356327ecf.md) | 236 | `declaration-track:c1539119d4d3393356327ecf126a0603a985d6bad6bc275b4889d66975cf96f3` |
| 68 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--4e5dbaaf2f67b4467131bc19.md) | 238 | `declaration-track:4e5dbaaf2f67b4467131bc197562e4fec536f5266bd7cc2a8ea896eb3ad56470` |
| 69 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--8c2bc44dd870e091b6a6a1b0.md) | 240 | `declaration-track:8c2bc44dd870e091b6a6a1b0092aba8cb1175231c5c0e9657441c21b156639cd` |
| 70 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--efe1b57042e8e905e1e714eb.md) | 242 | `declaration-track:efe1b57042e8e905e1e714ebebe70a081dd698d3442aca1ca136ebc4c27a471c` |
| 71 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--c077ab17b37c3be8662c28b2.md) | 244 | `declaration-track:c077ab17b37c3be8662c28b28a2108d693f38625a7000b15d11d68941185f337` |
| 72 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--0373ac5e7a497249c7c1d55e.md) | 246 | `declaration-track:0373ac5e7a497249c7c1d55ec6756f26a68b3222453bacce94212e7280523294` |
| 73 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--a43548823de1df81b83af029.md) | 248 | `declaration-track:a43548823de1df81b83af029436d8127e1d2a1e2c8331e55f14617922143d5bc` |
| 74 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--ae0b7119186d672ef3e9685c.md) | 249 | `declaration-track:ae0b7119186d672ef3e9685c2485c6af35bafcbff2d2a66927d41b702b2ddd1a` |
| 75 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--49d9cfa68282b8ca5094e149.md) | 251 | `declaration-track:49d9cfa68282b8ca5094e14986bf1abf3b1ccbf59124757a1c17ada4fb8904a5` |
| 76 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--50caaab894b1fdfcd7f7198e.md) | 252 | `declaration-track:50caaab894b1fdfcd7f7198e94891ce00b0c7496deb0c91f6d10778b531d9b01` |
| 77 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--d2aed411da78f4f1b67792a9.md) | 254 | `declaration-track:d2aed411da78f4f1b67792a99bc3cfb81afbcf07406d8fcf7f47ce7eace33661` |
| 78 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--ac2b6ff9fc479206ca453ced.md) | 255 | `declaration-track:ac2b6ff9fc479206ca453ceddba93199397d54c67705146f870f1d5b6b65ce30` |
| 79 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--f3b9a3f70d93f7d0958944d0.md) | 257 | `declaration-track:f3b9a3f70d93f7d0958944d0a3f1f0d8c030cc32c7c7e64c8cd17f18f883d1b3` |
| 80 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--5ccdfff6ab95b8f4bee36798.md) | 258 | `declaration-track:5ccdfff6ab95b8f4bee36798f28537ffbbea21120a38a0ebdd448d154b91818b` |
| 81 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--50e3493a470983936580231f.md) | 260 | `declaration-track:50e3493a470983936580231fc2def784618ff3fb9bd68ba5514fb3a5da0cea1e` |
| 82 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--50a00188bfbedda5f28b321a.md) | 262 | `declaration-track:50a00188bfbedda5f28b321a3e966f5b09d0352f15f91af2225fde191ebe1b24` |
| 83 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--bf54ad07c269150bafbd8152.md) | 264 | `declaration-track:bf54ad07c269150bafbd8152af2c8cb60190fc13d29cdce08e4a96c50a413bd1` |
| 84 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--4e9030a09b3779671da8117d.md) | 266 | `declaration-track:4e9030a09b3779671da8117d1c423354363b758b50ffd569787d0ea47e6a4530` |
| 85 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--8757f70b538dc6c51484194c.md) | 268 | `declaration-track:8757f70b538dc6c51484194c38ccf5950775f1d390733e88a7bb32d1ad4f062e` |
| 86 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--9360d120849374f469356740.md) | 271 | `declaration-track:9360d120849374f4693567408741ab986ac8d3b7f259b44c14bd4921f59d9c29` |
| 87 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--7ad538b79707e27e89172e74.md) | 273 | `declaration-track:7ad538b79707e27e89172e7405ad9c90884186a3dc4a3b7b573f296808ae9868` |
| 88 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--ef28a8c891480b2c0b0e5ef2.md) | 275 | `declaration-track:ef28a8c891480b2c0b0e5ef2e21f6a4feadb34dfe515eecc5af159b74df7cd21` |
| 89 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--6f47b8b38d69bfe5c2a6583c.md) | 277 | `declaration-track:6f47b8b38d69bfe5c2a6583c574dc9ce83cebe0b0c19ef0dfd47d431a336f43d` |
| 90 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--89ab32056d99ecf4c4075222.md) | 279 | `declaration-track:89ab32056d99ecf4c4075222b90a9ac1426a49ecba5e79b4af8e016e58af9c35` |
| 91 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--85910c1dbedab07fdf026fe8.md) | 280 | `declaration-track:85910c1dbedab07fdf026fe8f40f806f9933689fefdc6ac48c48eea837b362fd` |
| 92 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--2003aab37a54c107a7085572.md) | 282 | `declaration-track:2003aab37a54c107a708557270a7b580bad87b7bb39ce3a017eefe90548d07e2` |
| 93 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--8233a36cec14069a44e14480.md) | 283 | `declaration-track:8233a36cec14069a44e14480b9546a1c921ce8f669936290f76a67a248f4e4a6` |
| 94 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--1540cba1580b9812bc64d337.md) | 285 | `declaration-track:1540cba1580b9812bc64d337913dcd6bc1cfa3b659140393d6c67ce32468cc7d` |
| 95 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/macro--5dfdc1be1e8743b8facda64a.md) | 286 | `declaration-track:5dfdc1be1e8743b8facda64a03e685f38dbe47c1d3a49538aa0ce333bc9edaf1` |
| 96 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/macro--a6659ad334b80fd674f817fd.md) | 288 | `declaration-track:a6659ad334b80fd674f817fdf1320ee79b1a9c624c36b953be380fd7c416e25f` |
| 97 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--e69c86d58f5f5100d14b86f5.md) | 291 | `declaration-track:e69c86d58f5f5100d14b86f575b26f23959be8737e50d30cfd3008fc428e2a1f` |
| 98 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--c9b66a13f7d589315524c3de.md) | 292 | `declaration-track:c9b66a13f7d589315524c3de8cc0ee7b18553175d6556db76bc803a966486f55` |
| 99 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--cdbc64ddde43a23638ed6a71.md) | 294 | `declaration-track:cdbc64ddde43a23638ed6a7186d6576e1e3b7344a127ac616fb7d991bd70864a` |
| 100 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--af7f75cf17c3ebc20a2692e9.md) | 296 | `declaration-track:af7f75cf17c3ebc20a2692e9c9a31a34b8398a3a0ea4ebe3e70561e12aaafedd` |
| 101 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--48f96e72eda67f3139242578.md) | 299 | `declaration-track:48f96e72eda67f31392425787e7e4eba9ef91b6fdb39870f665448fb95295635` |
| 102 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--0af703613f9f968b768bcbfb.md) | 301 | `declaration-track:0af703613f9f968b768bcbfb0cd189f0d3b1d8152660a1748abc727d7e877d80` |
| 103 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--a3754237f97ae9f580b2b2dd.md) | 303 | `declaration-track:a3754237f97ae9f580b2b2ddad6da6cd301076ada42589445720447826ef4e8d` |
| 104 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--e156023942162686f7064398.md) | 305 | `declaration-track:e156023942162686f70643989f12a9c8ce4ebc568b63a68c30aa1fed0fc39fe5` |
| 105 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--da92fb6252897a926193443b.md) | 307 | `declaration-track:da92fb6252897a926193443b36b61950c1b9ba73e51a2203609f03572aace551` |
| 106 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--18632c7cb77c76c0a5926caa.md) | 309 | `declaration-track:18632c7cb77c76c0a5926caade6b7b3497f243cea394068b182a15080116c34b` |
| 107 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--d339f76fb605ea43b23162a5.md) | 311 | `declaration-track:d339f76fb605ea43b23162a599e02f1b0183aab55c04237e58e2f11d26b873cd` |
| 108 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--36d972674d6312545cde9204.md) | 313 | `declaration-track:36d972674d6312545cde9204942c4a4c80636578e4971d4939416f3364b98ceb` |
| 109 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--983014ae9e1fe62e22eab05a.md) | 315 | `declaration-track:983014ae9e1fe62e22eab05a1100c0f95058430c0ea5b22c6ed607c62f54adad` |
| 110 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--d8afe9f382cd1ef217b858ce.md) | 317 | `declaration-track:d8afe9f382cd1ef217b858ce18454034c97294fc793f81ff22835e9e7bbbeb45` |
| 111 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--5663c5653f3a7ed1eba7a612.md) | 319 | `declaration-track:5663c5653f3a7ed1eba7a6121a839a1083f6622e954ca3ad9a5ecf4729944241` |
| 112 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca.lean/declarations/syntax--2892942404888b0eaf83e3de.md) | 320 | `declaration-track:2892942404888b0eaf83e3de5a5ab0280858048575a219333b56b00adcbc58fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
