# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualMuntzInventory.Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b247482c32a327091274e4b1a98109f65e22519",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b247482c32a327091274e4b1a98109f65e22519`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualGoodKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/positivesamples--dc7acdfed48118e5c2cacfde.md) | 23 | `declaration-track:dc7acdfed48118e5c2cacfde0157e369c895f3d133bfa04daf87925b6275060e` |
| 2 | `def` | [actualMuntz](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/actualmuntz--ec757afb5da8a8c950767e87.md) | 27 | `declaration-track:ec757afb5da8a8c950767e8718893a740fed99a6615a9c22867e9c40019b2673` |
| 3 | `def` | [upperInventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/upperinventory--9d1ed6588c5d3a4c4915a5b0.md) | 31 | `declaration-track:9d1ed6588c5d3a4c4915a5b013d8f448f10ccb9ca9492105b7dbafe262a220b1` |
| 4 | `theorem` | [actualLogSource_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/actuallogsource-zero-nonpos--7b1a347af8e1c32e254c0fa4.md) | 33 | `result-track:7b1a347af8e1c32e254c0fa4396a1306eda32bb7fd9fc25d1e5076b4aa8e132a` |
| 5 | `theorem` | [actualLogSource_zero_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/actuallogsource-zero-at-zero--ccf37a91ac460868e170cb0d.md) | 37 | `result-track:ccf37a91ac460868e170cb0da463c712f5d051f62115f042714c3363718a5b47` |
| 6 | `theorem` | [sample_zero_above_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/sample-zero-above-inventory--33e388c2cdb89ba2c62f5f53.md) | 40 | `result-track:33e388c2cdb89ba2c62f5f5332427963471a2c65b6cadd06d0173188f04d1cf5` |
| 7 | `theorem` | [allSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/allsamples-summable--ba67787a19c760f892d477fe.md) | 46 | `result-track:ba67787a19c760f892d477fe630cad85839d776881e9cf8768dec74932c381ce` |
| 8 | `theorem` | [positiveSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/positivesamples-summable--db65772758cffe2e42463b20.md) | 53 | `result-track:db65772758cffe2e42463b2022f72906cbe5d09cc5e602bf5314d4ebbe271754` |
| 9 | `theorem` | [positiveSamples_eq_allSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/positivesamples-eq-allsamples--9bfbb1d9771ee3e6a796d4c6.md) | 57 | `result-track:9bfbb1d9771ee3e6a796d4c6f23cb79bda0bb71766efe9f2bf123e2bc400f269` |
| 10 | `theorem` | [allSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/allsamples-eq-closed-inventory--a3ab7c49b648aa53f3ce8c12.md) | 62 | `result-track:a3ab7c49b648aa53f3ce8c12fdc837412876d66e6af73c5a07450633783fdd05` |
| 11 | `theorem` | [positiveSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/positivesamples-eq-closed-inventory--13abba6298fad7a51f5601d4.md) | 70 | `result-track:13abba6298fad7a51f5601d4fb1dc8f50d3642a88613315c5068275a4d860fb7` |
| 12 | `theorem` | [actualMuntz_eq_positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/actualmuntz-eq-positivesamples--e97baa58599dd84e8663094f.md) | 79 | `result-track:e97baa58599dd84e8663094f0a28a9f6fb2e883538bdbad274ee37c34af166a1` |
| 13 | `theorem` | [actualMuntz_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/actualmuntz-eq-closed-inventory--c9b8298d360aeb983ef1a0b7.md) | 83 | `result-track:c9b8298d360aeb983ef1a0b76fbe6c150ca306b73bf6fa51d36d0bd3ca703911` |
| 14 | `theorem` | [touching_sample_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/touching-sample-zero--6438429b5c2f2d5d9d5334fb.md) | 88 | `result-track:6438429b5c2f2d5d9d5334fb27363a0aa2dd3c823d79d2f21d9c825d15dd16eb` |
| 15 | `theorem` | [positiveSamples_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/positivesamples-zero-nonpos--d384fc6346b72110502f6e38.md) | 93 | `result-track:d384fc6346b72110502f6e38d1f78ff0708157da1b4cf210acc7113cf3ed967e` |
| 16 | `theorem` | [positiveSamples_zero_above](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/positivesamples-zero-above--4d0d506b40703d11f40b6063.md) | 100 | `result-track:4d0d506b40703d11f40b60631eb55351b869442047ba624dea9ef2529aaffa85` |
| 17 | `theorem` | [actualMuntz_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/actualmuntz-zero-outside--7b84d36837f8e8d80b0c126f.md) | 114 | `result-track:7b84d36837f8e8d80b0c126fba0ac6a719725165ab0b078657343edf8b308431` |
| 18 | `theorem` | [positiveSamples_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/positivesamples-measurable--93ea434342d7c5442f101a24.md) | 121 | `result-track:93ea434342d7c5442f101a249facce8a4bb44e715830d2f22f2036fcf2b05da6` |
| 19 | `theorem` | [actualMuntz_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/actualmuntz-measurable--14b466cbb188273abe16018d.md) | 125 | `result-track:14b466cbb188273abe16018d27ba2fa17aaf93394f523387295eed866613cf48` |
| 20 | `theorem` | [positiveSamples_summable_global](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/positivesamples-summable-global--f544d6a4c300341193651ffb.md) | 130 | `result-track:f544d6a4c300341193651ffb8a1d2156e67e6314ba800bf26b420a98be0434d3` |
| 21 | `theorem` | [actualMuntz_hasCompactSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/declarations/actualmuntz-hascompactsupport--708214dc09447ff1eec5e447.md) | 139 | `result-track:708214dc09447ff1eec5e44771779966a0819d3ce4ac96b9ab5af4b6a426f1f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
