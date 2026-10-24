# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LineDeriv.Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a903aeacbc7ed19db3939b5fde3fd75e751899c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a903aeacbc7ed19db3939b5fde3fd75e751899c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LocalExtr.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LineDeriv.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsExtrFilter.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/isextrfilter-haslinederivat-eq-zero--2bfc0ce37b4b26eb54884e26.md) | 23 | `result-track:2bfc0ce37b4b26eb54884e265080be1d96fcf5d499ad852e377c3b568c5f1fc8` |
| 2 | `theorem` | [IsExtrFilter.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/isextrfilter-linederiv-eq-zero--60468f221d225fba071a8737.md) | 27 | `result-track:60468f221d225fba071a8737ae506aabc4907aa6094fc76a7e3690ab12d68ea9` |
| 3 | `theorem` | [IsExtrOn.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/isextron-haslinederivat-eq-zero--7a3e6513a49ebcdef6b56beb.md) | 35 | `result-track:7a3e6513a49ebcdef6b56bebb313f10329c0cbd52449c817054ae77ff56ef942` |
| 4 | `theorem` | [IsExtrOn.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/isextron-linederiv-eq-zero--6cc6af9c829ab4c848425be4.md) | 39 | `result-track:6cc6af9c829ab4c848425be46657398e4af5df9424c7c08b01c269efeb774f66` |
| 5 | `theorem` | [IsMinOn.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/isminon-haslinederivat-eq-zero--ec14e253512b03fed51bf2f7.md) | 43 | `result-track:ec14e253512b03fed51bf2f7b8872f9d3df1bf33e026fd0940093c4d24de880f` |
| 6 | `theorem` | [IsMinOn.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/isminon-linederiv-eq-zero--152c8bfaf32ff40982d25ce9.md) | 47 | `result-track:152c8bfaf32ff40982d25ce91e6fd2eaa2627538ef85a551f6b55c826affa0fe` |
| 7 | `theorem` | [IsMaxOn.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/ismaxon-haslinederivat-eq-zero--bcbe1087a9a5817f74742d27.md) | 51 | `result-track:bcbe1087a9a5817f74742d2784a67bd6fdd2d5e26c5df4cd1ebc4402f33b05a1` |
| 8 | `theorem` | [IsMaxOn.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/ismaxon-linederiv-eq-zero--422cb9a0a74e5417b4fcc6c1.md) | 55 | `result-track:422cb9a0a74e5417b4fcc6c1103ea2cf49f11ed0ec6619f489d464a2c807b14a` |
| 9 | `theorem` | [IsExtrOn.hasLineDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/isextron-haslinederivwithinat-eq-zero--423c74cb1493d8247a1c68ed.md) | 59 | `result-track:423c74cb1493d8247a1c68edf81a6d6ed7aa253605e617c130b75c66d87532b7` |
| 10 | `theorem` | [IsExtrOn.lineDerivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/isextron-linederivwithin-eq-zero--0b0f4cf0636af9abd9715f76.md) | 63 | `result-track:0b0f4cf0636af9abd9715f760d6216e11d1ba385535ce77979aee4e07ff641d7` |
| 11 | `theorem` | [IsMinOn.hasLineDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/isminon-haslinederivwithinat-eq-zero--9554a5f954dc8be3dc78901a.md) | 71 | `result-track:9554a5f954dc8be3dc78901ae46316c9baf6628f3bf5aa6f0623dd0296ddfe95` |
| 12 | `theorem` | [IsMinOn.lineDerivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/isminon-linederivwithin-eq-zero--0e64a8f0114f4af51ca282f6.md) | 75 | `result-track:0e64a8f0114f4af51ca282f605370f35c8393bd7502ffc13c886fba6713b9ff6` |
| 13 | `theorem` | [IsMaxOn.hasLineDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/ismaxon-haslinederivwithinat-eq-zero--d613d7929fae563714094248.md) | 79 | `result-track:d613d7929fae563714094248eb94ddd5e0342856dbf80902f8da77f0f4c43ef1` |
| 14 | `theorem` | [IsMaxOn.lineDerivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/ismaxon-linederivwithin-eq-zero--976945a7859beb92bcd9ff52.md) | 83 | `result-track:976945a7859beb92bcd9ff524bebf0cc4fd5298a98b53b6a0a6ce389c7dcf7ad` |
| 15 | `theorem` | [IsLocalExtr.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/islocalextr-haslinederivat-eq-zero--7d4115f535a184c45ba7ecc4.md) | 92 | `result-track:7d4115f535a184c45ba7ecc4f15b487406d3ce28b084b6d623392af3f42b8871` |
| 16 | `theorem` | [IsLocalExtr.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/islocalextr-linederiv-eq-zero--f26356fa87036eb280dcdf85.md) | 96 | `result-track:f26356fa87036eb280dcdf85a0c04748bb594d90b21bf642676bcbb8c54b411b` |
| 17 | `theorem` | [IsLocalMin.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/islocalmin-haslinederivat-eq-zero--166920fba8c95ee9730a5464.md) | 99 | `result-track:166920fba8c95ee9730a546418659feea9e68e255acb41e612c028052b920c77` |
| 18 | `theorem` | [IsLocalMin.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/islocalmin-linederiv-eq-zero--f3f1799839ebc82f5ae3612a.md) | 103 | `result-track:f3f1799839ebc82f5ae3612a0150f7c8f5b7ded75047307fb2a26d6819f99684` |
| 19 | `theorem` | [IsLocalMax.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/islocalmax-haslinederivat-eq-zero--37b6933401a9ac829c7b26ad.md) | 106 | `result-track:37b6933401a9ac829c7b26ada50ee6c9a8af086b05665b78e1ec1430721a4967` |
| 20 | `theorem` | [IsLocalMax.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant02222eb975ca2ce8828665dfb84ed99a1b965fc74403e08bf1da0bf6f53beff4.lean/declarations/islocalmax-linederiv-eq-zero--434525ec19c0e57baac89f2d.md) | 110 | `result-track:434525ec19c0e57baac89f2d00bbd5176def5f44ad479d31b202a7e1365cdf0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
