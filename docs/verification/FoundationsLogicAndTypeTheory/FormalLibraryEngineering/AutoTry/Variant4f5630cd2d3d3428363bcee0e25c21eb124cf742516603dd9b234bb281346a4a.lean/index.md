# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AutoTry.Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0d73bf2c2b38247568abdd58ea6fba9dbf2595c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0d73bf2c2b38247568abdd58ea6fba9dbf2595c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Try` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Linter.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Server.InfoUtils` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Try` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Meta` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Elab.BuiltinTerm` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/builtin-initialize--142cc77acc6e2017591265c2.md) | 102 | `declaration-track:142cc77acc6e2017591265c29bd40b937b8cba04c72f4d92f2bdffb630c67ad5` |
| 2 | `def` | [runMetaMInScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/runmetaminscope--91fb02e9f17c931d67dcdcb5.md) | 110 | `declaration-track:91fb02e9f17c931d67dcdcb5cc3de84a35ad237cf012335a940b66495eda1fc2` |
| 3 | `def` | [isSorryTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/issorrytactic--eb5278d4cd5d437a0bd96e3a.md) | 128 | `declaration-track:eb5278d4cd5d437a0bd96e3a3936f21a64df0c9138daa40f406d58db2a85bdf7` |
| 4 | `inductive` | [TriggerKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/triggerkind--5958b5cf3d477552bf6c7357.md) | 134 | `declaration-track:5958b5cf3d477552bf6c7357a20114e4892d403f8ca2bb95ec77c2db47cd4eda` |
| 5 | `def` | [computeAppendSep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/computeappendsep--6b603e22f1b03f5fe79226da.md) | 155 | `declaration-track:6b603e22f1b03f5fe79226dac949d9c664388366dfabbd2ba96ebf6de142a3a6` |
| 6 | `def` | [mkEmptyRangeStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/mkemptyrangestx--eec9b7fff44283ba953fd152.md) | 170 | `declaration-track:eec9b7fff44283ba953fd1525c31381c72dab32b9646703f6c68eff33de4700f` |
| 7 | `def` | [mkRangeStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/mkrangestx--c8640dc149849891d59e36c2.md) | 176 | `declaration-track:c8640dc149849891d59e36c2a03e8357afcaed03c3767427f2ce92f177802271` |
| 8 | `structure` | [Candidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/candidate--f23c8af2e6d07b2d4b9d4a32.md) | 194 | `declaration-track:f23c8af2e6d07b2d4b9d4a3202896cdb2ed05d9e75b6a4ddb63f13112a1aa4e3` |
| 9 | `def` | [collectGoalsAndCtxFromMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/collectgoalsandctxfrommessage--b59394978d03af44d2013123.md) | 208 | `declaration-track:b59394978d03af44d20131234ddb130f9ec37bd66ea15643c41761493507d3dd` |
| 10 | `def` | [findTacticSeqBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/findtacticseqbody--9c0554d6b11ea2f052d33334.md) | 249 | `declaration-track:9c0554d6b11ea2f052d33334810b73af043746b6e8e485ed1a0872d518bf77fe` |
| 11 | `def` | [collectTriggerPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/collecttriggerpoints--e4a750b1ac16bbb90bc16b0d.md) | 288 | `declaration-track:e4a750b1ac16bbb90bc16b0d4116b531f3077e50dbd9152e7a74852443b6860a` |
| 12 | `def` | [collectSuggestionsForGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/collectsuggestionsforgoal--e2ed34640ca95e584c8a4979.md) | 351 | `declaration-track:e2ed34640ca95e584c8a497929a9a1e71cd9bc908931ce9f64153936e5a317a0` |
| 13 | `def` | [emitAppendSuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/emitappendsuggestions--da9a615a2558188cdcda796b.md) | 380 | `declaration-track:da9a615a2558188cdcda796b32bd155d0f8c1534d64b3e27fbd58f36c0e88d10` |
| 14 | `def` | [runReplaceTryOnGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/runreplacetryongoal--daba1e061b42543b174e0785.md) | 415 | `declaration-track:daba1e061b42543b174e07859764b5d1b8405a81a798063281b5af139f886ec1` |
| 15 | `def` | [hasNonUnsolvedGoalError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/hasnonunsolvedgoalerror--cd6ed01061a99015b2464c4c.md) | 432 | `declaration-track:cd6ed01061a99015b2464c4c6b19c3cfd54d4a2847c859dd9da410ef6bcea6f3` |
| 16 | `def` | [singleGoalAtInsertPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/singlegoalatinsertpos--a8a0707c9a90155204ae0bc1.md) | 457 | `declaration-track:a8a0707c9a90155204ae0bc1ac8613c179e61746c26219696930afe6b7c7e04c` |
| 17 | `def` | [autoTryHook](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/autotryhook--890cefbc8b00f7b5e308106c.md) | 479 | `declaration-track:890cefbc8b00f7b5e308106cfa256528b1d73cdd641fbdcce0212f520eb2f0f4` |
| 18 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/declarations/builtin-initialize--3ca89f347730fef01a28cfb4.md) | 508 | `declaration-track:3ca89f347730fef01a28cfb4061e95b2d0cb8432f830433069f56af103f956df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
