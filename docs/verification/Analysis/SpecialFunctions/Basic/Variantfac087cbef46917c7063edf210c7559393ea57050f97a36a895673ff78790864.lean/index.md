# Verification target: GRWTSK.Analysis.SpecialFunctions.Basic.Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc452bf78ac60be1ad209a732b45faa15e973e9c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc452bf78ac60be1ad209a732b45faa15e973e9c`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [UnitInterval](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/declarations/unitinterval--9dc14bd80b14865a9af20dec.md) | 24 | `declaration-track:9dc14bd80b14865a9af20dec930c09f4b08e7c4c3e171151532f627748b581a0` |
| 2 | `def` | [reverseParameter](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/declarations/reverseparameter--415e5a1efa4ad526619f4814.md) | 28 | `declaration-track:415e5a1efa4ad526619f4814449b3f6f0308b21f3567c435303b98d5fc61294b` |
| 3 | `theorem` | [reverseParameter_val](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/declarations/reverseparameter-val--dbf0fe652e108722b42e3ced.md) | 32 | `result-track:dbf0fe652e108722b42e3cedf03107b03349007603a37757dc011bf8b03faf1b` |
| 4 | `theorem` | [reverseParameter_reverse](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/declarations/reverseparameter-reverse--c6e1e58c83c24aaa0e024eba.md) | 37 | `result-track:c6e1e58c83c24aaa0e024eba5f08e143ed7a890d57838bd4f0991c0be4f17975` |
| 5 | `def` | [bernstein](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/declarations/bernstein--f8795e70013c443aa78a2504.md) | 47 | `declaration-track:f8795e70013c443aa78a250474e33613b4cd93d24b5bdfa5993b0a99861cf079` |
| 6 | `theorem` | [bernstein_coe](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/declarations/bernstein-coe--e6af4ddb65252a767bba05f8.md) | 51 | `result-track:e6af4ddb65252a767bba05f812da86d1310064fc05ad9139cd6dd07889e6122e` |
| 7 | `theorem` | [bernstein_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/declarations/bernstein-nonneg--dfcb8d56eb670df06c693033.md) | 58 | `result-track:dfcb8d56eb670df06c69303303cc34cf4057fa38021eb640b82520f82014728f` |
| 8 | `theorem` | [sum_bernstein](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/declarations/sum-bernstein--1739fe3799e200c317373c03.md) | 65 | `result-track:1739fe3799e200c317373c03719de9a99adae3222e91568c96c2c3340d8d1819` |
| 9 | `theorem` | [bernstein_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/declarations/bernstein-zero--8737b06cdbe76e9e34395f06.md) | 70 | `result-track:8737b06cdbe76e9e34395f06c6d05277fb194d05eec63c252942afa824d4d088` |
| 10 | `theorem` | [bernstein_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/declarations/bernstein-one--e4cc73a35ec28acd6ed7dab6.md) | 79 | `result-track:e4cc73a35ec28acd6ed7dab69126c91969e37c3c294f53fc781ff53bb4397206` |
| 11 | `theorem` | [bernstein_rev](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/declarations/bernstein-rev--3b0a5b52fc198a878828c288.md) | 91 | `result-track:3b0a5b52fc198a878828c2884f31cfd5332dae07dfb313bf37dd373f0e97caf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
