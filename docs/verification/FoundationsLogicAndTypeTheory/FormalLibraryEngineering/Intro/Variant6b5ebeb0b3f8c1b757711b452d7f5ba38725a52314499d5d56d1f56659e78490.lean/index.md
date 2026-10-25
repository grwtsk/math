# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Intro.Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e17e9ea3fde890f95db98f74e2f31d1cde5d00d3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e17e9ea3fde890f95db98f74e2f31d1cde5d00d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Intro` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InstantiateS` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.IsClass` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.AlphaShareBuilder` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [introCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean/declarations/introcore--51b9930780f37615e6d0cec2.md) | 30 | `declaration-track:51b9930780f37615e6d0cec2698d3b45e39e2cb4734cfa2a792ae3367f17c1c2` |
| 2 | `def` | [hugeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean/declarations/hugenat--8b948fc7e58482262394cb16.md) | 112 | `declaration-track:8b948fc7e58482262394cb165ffc33cab9c4d409281c15da3625ff2ea0d6dc3f` |
| 3 | `inductive` | [IntrosResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean/declarations/introsresult--1e795b8620019ff5cb1a7713.md) | 114 | `declaration-track:1e795b8620019ff5cb1a7713c486ce5e132a1e7cfff1d4915422850146392d17` |
| 4 | `def` | [intros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean/declarations/intros--1f4866180d52788327173b48.md) | 128 | `declaration-track:1f4866180d52788327173b488a992d37a724877fdec7ac85cd01736df26963ed` |
| 5 | `def` | [introN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean/declarations/intron--9217d95a92efc8d4b611c808.md) | 144 | `declaration-track:9217d95a92efc8d4b611c8081cad6cc2aca1a210fc469276ba3e75a1ab826cb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
