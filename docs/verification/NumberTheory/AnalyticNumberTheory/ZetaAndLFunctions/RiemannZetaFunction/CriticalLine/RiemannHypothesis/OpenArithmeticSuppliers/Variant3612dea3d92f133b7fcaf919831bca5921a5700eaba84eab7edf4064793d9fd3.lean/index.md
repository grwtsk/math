# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OpenArithmeticSuppliers.Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c880e4fea49007f7950ac49925803dbf4219986b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c880e4fea49007f7950ac49925803dbf4219986b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.ArithmeticPrimitive` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.ZeroStripConsumer` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.CausalRecords` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProblemP](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/problemp--1cf3f96057704df79b2ee174.md) | 30 | `declaration-track:1cf3f96057704df79b2ee1740b5e22ac22dbd70543bd858801e75c945c60f9ab` |
| 2 | `def` | [SignedMertensSupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/signedmertenssupplier--66289d61f4d2cc3885ab5646.md) | 33 | `declaration-track:66289d61f4d2cc3885ab5646d764b832488d352994191ffe567f5fcfc9f1a92e` |
| 3 | `theorem` | [problemP_iff_signedMertensSupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/problemp-iff-signedmertenssupplier--491bc3b508ab3d0ab5d650b5.md) | 35 | `result-track:491bc3b508ab3d0ab5d650b5dac13066fcd637eadea6c1453bf8f1d6c7214ad1` |
| 4 | `def` | [ordinaryPrimeCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/ordinaryprimecoefficient--972a8da55d43b573c81cf612.md) | 38 | `declaration-track:972a8da55d43b573c81cf612ff6d85eb9a2cedb86ac7cb2c89d533a7eac841fa` |
| 5 | `theorem` | [ordinaryPrimeCoefficient_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/ordinaryprimecoefficient-one--26917ac4ac6b46ea9fd71cf3.md) | 41 | `result-track:26917ac4ac6b46ea9fd71cf3ff5327a8c351c240d55c9de11174976edfcbe496` |
| 6 | `theorem` | [ordinaryPrimeCoefficient_at_source_index](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/ordinaryprimecoefficient-at-source-index--1985fb6b20b2673dfc57ffb4.md) | 44 | `result-track:1985fb6b20b2673dfc57ffb4a6e7d72de68a29a5531568b432456c9c59b614f2` |
| 7 | `def` | [ordinaryPrimePrimitive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/ordinaryprimeprimitive--f4f13764ce4c6f70e2859cef.md) | 48 | `declaration-track:f4f13764ce4c6f70e2859ceff78e159acc7cbc8afc3911a32d9788e24091d09e` |
| 8 | `def` | [primePositiveDebt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/primepositivedebt--f99776b2f03cd0a47a59f1f9.md) | 50 | `declaration-track:f99776b2f03cd0a47a59f1f9eb82180984c7611e0d78acb93a79dfd04cb037c3` |
| 9 | `def` | [AccordionReserveSupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/accordionreservesupplier--3faa8ffd686ac9fa044da057.md) | 56 | `declaration-track:3faa8ffd686ac9fa044da0571acb9eef85b1c7ee5942d993b01e543488c590bc` |
| 10 | `def` | [OrdinaryPrimeEventualSignSupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/ordinaryprimeeventualsignsupplier--b240511d29f5096bd7bb3929.md) | 61 | `declaration-track:b240511d29f5096bd7bb3929f0edcb437b715aff79097fd222840a226eefa251` |
| 11 | `def` | [primeRecordLevel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/primerecordlevel--d203174808436685b36a3b4e.md) | 65 | `declaration-track:d203174808436685b36a3b4edaefc75dc96cad311aeb23ed1edb66856628d53d` |
| 12 | `def` | [primeRecordIncrement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/primerecordincrement--40f43bf221b5bbd6d00432ef.md) | 70 | `declaration-track:40f43bf221b5bbd6d00432efbcdde75d9ce6ee3eda23f1563348ad8beac72323` |
| 13 | `def` | [NativeRecordEnergySupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/nativerecordenergysupplier--2d093ff9575e315a435e0f37.md) | 75 | `declaration-track:2d093ff9575e315a435e0f37330508948b47d13b00f289910b776d29b62435f8` |
| 14 | `def` | [SourceRateStripSupplier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OpenArithmeticSuppliers/Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3.lean/declarations/sourceratestripsupplier--075d8df14f1068c417dbce6f.md) | 81 | `declaration-track:075d8df14f1068c417dbce6fec796d43a7437eb06e5fba97f216a7e1bbb399ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
