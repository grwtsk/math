# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualMuntzInventoryAttempt01.Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c360123f7b89d84fedf83e3940eaee1ae0a5276",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c360123f7b89d84fedf83e3940eaee1ae0a5276`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualGoodKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/positivesamples--f71b747729011f1b4035e57c.md) | 15 | `declaration-track:f71b747729011f1b4035e57c91b27c1a88edde286f9c3ce60c9fd2d2d7e9bb08` |
| 2 | `def` | [actualMuntz](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/actualmuntz--bb967960810806f119a477f1.md) | 19 | `declaration-track:bb967960810806f119a477f1110fde84a5a91eb737f2e88b7cbc896e656d70b3` |
| 3 | `def` | [upperInventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/upperinventory--3e52d37e27f923db5ed7b0b6.md) | 23 | `declaration-track:3e52d37e27f923db5ed7b0b6b99d4ff09ed230f654217bec9daf5af2d0dc5485` |
| 4 | `theorem` | [actualLogSource_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/actuallogsource-zero-nonpos--d0e9637b5b51090258d816b1.md) | 25 | `result-track:d0e9637b5b51090258d816b1144d8c34f46d05689e4d49c0295d77c043b91c00` |
| 5 | `theorem` | [actualLogSource_zero_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/actuallogsource-zero-at-zero--fdc4deafb541443020131592.md) | 29 | `result-track:fdc4deafb541443020131592b0be27f527a470269dd89fe697b624489717a275` |
| 6 | `theorem` | [sample_zero_above_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/sample-zero-above-inventory--79062a3d72009140ffe03238.md) | 32 | `result-track:79062a3d72009140ffe03238c3f72ac1017c67f3d90c0182a465c6d1b7cf67ad` |
| 7 | `theorem` | [allSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/allsamples-summable--ad1f0df3f554528e4ac605bd.md) | 38 | `result-track:ad1f0df3f554528e4ac605bd93a13025ba6ebade6dcd823947c87ecc7488301f` |
| 8 | `theorem` | [positiveSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/positivesamples-summable--0261d9748db6fd1e85f8b4b4.md) | 45 | `result-track:0261d9748db6fd1e85f8b4b4e8274b10ac92e1b679cc45dbe23d198a65d1a55c` |
| 9 | `theorem` | [positiveSamples_eq_allSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/positivesamples-eq-allsamples--8d2ea3d50c278748dd70b664.md) | 49 | `result-track:8d2ea3d50c278748dd70b66407a531642b5694515d868b62831311e23372ed48` |
| 10 | `theorem` | [allSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/allsamples-eq-closed-inventory--1e6d0e40d64dac58414a662e.md) | 54 | `result-track:1e6d0e40d64dac58414a662e8636fcc2ac78b5757903f11211cf8992a8d59f30` |
| 11 | `theorem` | [positiveSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/positivesamples-eq-closed-inventory--76abaf6d0b84cb64893c5279.md) | 62 | `result-track:76abaf6d0b84cb64893c5279046706f8c840278bf76c1c65eed12fbe8f240ef8` |
| 12 | `theorem` | [actualMuntz_eq_positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/actualmuntz-eq-positivesamples--767d1467d53482d2c3925fb6.md) | 71 | `result-track:767d1467d53482d2c3925fb62c6fc99203a68b206c0166fd034398bf9fe527dc` |
| 13 | `theorem` | [actualMuntz_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/actualmuntz-eq-closed-inventory--12ba1b999ea36cd3e89cca5e.md) | 75 | `result-track:12ba1b999ea36cd3e89cca5e1d9dc7eff2f8e32049877486dbf5c6aeb242bd74` |
| 14 | `theorem` | [touching_sample_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/touching-sample-zero--f273ef64b820fe3ee7832db5.md) | 80 | `result-track:f273ef64b820fe3ee7832db5a9a3c562b20c97b5ca8004c433f1427d1b6b2b08` |
| 15 | `theorem` | [positiveSamples_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/positivesamples-zero-nonpos--8f3168739f95c29ed447bf86.md) | 85 | `result-track:8f3168739f95c29ed447bf86069eaeeeb7763e745b5b707db3d61b5458a339a3` |
| 16 | `theorem` | [positiveSamples_zero_above](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/positivesamples-zero-above--4619f5673de7a090d5496778.md) | 92 | `result-track:4619f5673de7a090d5496778f2a728d99e251bd307f33ea21b4477936584ccda` |
| 17 | `theorem` | [actualMuntz_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/actualmuntz-zero-outside--9d078c232eb28b177573c1e1.md) | 104 | `result-track:9d078c232eb28b177573c1e1cded7d25a67c1dc164a1b428ae0764b2f8a470e8` |
| 18 | `theorem` | [positiveSamples_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/positivesamples-measurable--38664b014ea947d8f1dec6bc.md) | 111 | `result-track:38664b014ea947d8f1dec6bc3dd48abe443f0510b8d9c85d6d95b758f1925c14` |
| 19 | `theorem` | [actualMuntz_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e.lean/declarations/actualmuntz-measurable--d3878cc9815c1759db772cc0.md) | 115 | `result-track:d3878cc9815c1759db772cc014e5a73af428a84a48d2c5a400da419eaf57109d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
