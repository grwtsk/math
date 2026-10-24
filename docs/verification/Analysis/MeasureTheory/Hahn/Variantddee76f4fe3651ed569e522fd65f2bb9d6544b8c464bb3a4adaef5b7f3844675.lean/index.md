# Verification target: GRWTSK.Analysis.MeasureTheory.Hahn.Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f794493bfe2b48bd77fb120d08030288b9a4766",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f794493bfe2b48bd77fb120d08030288b9a4766`.

Source path: `GRWTSK/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.VectorMeasure.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SymmDiff` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/existsonedivlt--a19888c5c4fc77317dafe51d.md) | 100 | `declaration-track:a19888c5c4fc77317dafe51d82f34655e6ff90cac51c4554074ebbdc7d3615d6` |
| 2 | `theorem` | [existsNatOneDivLTMeasure_of_not_negative](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/existsnatonedivltmeasure-of-not-negative--5464c99867fb61a542b83e1f.md) | 103 | `result-track:5464c99867fb61a542b83e1f12afb397a1c994e8d8be778ca721bc8b2f7ef3de` |
| 3 | `def` | [findExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/findexistsonedivlt--24cf4c57c7f73308cc7dc022.md) | 112 | `declaration-track:24cf4c57c7f73308cc7dc02210fde7c42cfd2eaa2eb444ec6b6900cc54c6a4c4` |
| 4 | `theorem` | [findExistsOneDivLT_spec](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/findexistsonedivlt-spec--e49205f6acc6fe6737130e41.md) | 115 | `result-track:e49205f6acc6fe6737130e413727ccadf6a9cbe8eb519d1ae077208a5c8cf98b` |
| 5 | `theorem` | [findExistsOneDivLT_min](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/findexistsonedivlt-min--16846dd3742e53e8e2548541.md) | 120 | `result-track:16846dd3742e53e8e25485416b51b002dd24ac24b336c95a27fd18f5018ef0ad` |
| 6 | `def` | [someExistsOneDivLT](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/someexistsonedivlt--e1d36cd27217312422472a61.md) | 130 | `declaration-track:e1d36cd27217312422472a61bec684fadbbfe2f933eb28d0fb6322e8b8df7182` |
| 7 | `theorem` | [someExistsOneDivLT_spec](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/someexistsonedivlt-spec--7f943b111725620f855065ee.md) | 133 | `result-track:7f943b111725620f855065eed6f84819a2f87d8d57dffeaf0f3165ce7630c94b` |
| 8 | `theorem` | [someExistsOneDivLT_subset](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/someexistsonedivlt-subset--0016218f9bfb69d6ec2c8bbc.md) | 140 | `result-track:0016218f9bfb69d6ec2c8bbcdf1dbd2b6a48bf83c70a08369bc243e78d064363` |
| 9 | `theorem` | [someExistsOneDivLT_subset'](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/someexistsonedivlt-subset--cb0efe9f66c13e30bb16c54f.md) | 148 | `result-track:cb0efe9f66c13e30bb16c54f21f3d10c0d20717b07ade85eb5d5e89dd1da27b5` |
| 10 | `theorem` | [someExistsOneDivLT_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/someexistsonedivlt-measurableset--5227693781fe2d2b38e78c41.md) | 151 | `result-track:5227693781fe2d2b38e78c413a4cfbdb1168ae9655b4cb24a74d2a64876e9fb7` |
| 11 | `theorem` | [someExistsOneDivLT_lt](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/someexistsonedivlt-lt--bbe7f130c393f13ef63f5fe8.md) | 159 | `result-track:bbe7f130c393f13ef63f5fe80b945f5c04861c6df4a633bc67c4df3d62eb8260` |
| 12 | `def` | [restrictNonposSeq](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/restrictnonposseq--a68ff91172a725cc9734d763.md) | 170 | `declaration-track:a68ff91172a725cc9734d763cc176f58b627011f2fe419a84ee2bea6961af951` |
| 13 | `theorem` | [restrictNonposSeq_succ](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/restrictnonposseq-succ--cc6c34ff49c90a7b486e9032.md) | 179 | `result-track:cc6c34ff49c90a7b486e90321b05f4599cea6584d7f8b8d0da00fe22c0d4c47d` |
| 14 | `theorem` | [restrictNonposSeq_subset](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/restrictnonposseq-subset--e4055e3a1032eecb29391eed.md) | 183 | `result-track:e4055e3a1032eecb29391eed5ae4bdde41fe0be1fdc1be7db9dfb61551a39615` |
| 15 | `theorem` | [restrictNonposSeq_lt](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/restrictnonposseq-lt--cdd7dae2eeab4d3d47c67e10.md) | 186 | `result-track:cdd7dae2eeab4d3d47c67e10c952f52ddfeb4aa37ab0a8066012ec91e4819551` |
| 16 | `theorem` | [measure_of_restrictNonposSeq](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/measure-of-restrictnonposseq--ad02f8833a2a672d4d7c65f1.md) | 192 | `result-track:ad02f8833a2a672d4d7c65f1306923efc7d81b3ac6cf21544acfc7767592c8a8` |
| 17 | `theorem` | [restrictNonposSeq_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/restrictnonposseq-measurableset--1f4012d9315cd06a6fd202b1.md) | 208 | `result-track:1f4012d9315cd06a6fd202b1fc9a458693292e4588c3d08e92815f0272982c21` |
| 18 | `theorem` | [restrictNonposSeq_disjoint'](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/restrictnonposseq-disjoint--40c990aad1257d9e34aab1bc.md) | 214 | `result-track:40c990aad1257d9e34aab1bc6f68a4fdfe9f9451ef0fa5cce03fa765ee5978db` |
| 19 | `theorem` | [restrictNonposSeq_disjoint](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/restrictnonposseq-disjoint--3eec511274208c77126dabeb.md) | 225 | `result-track:3eec511274208c77126dabebf2e64aa105d61083b9883f98ad36f5d34cd54227` |
| 20 | `theorem` | [exists_subset_restrict_nonpos'](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/exists-subset-restrict-nonpos--51962ee98029e5af2c030364.md) | 232 | `result-track:51962ee98029e5af2c03036414b6edaefa1f750af5405bf2b605e461a82d5a6a` |
| 21 | `theorem` | [exists_subset_restrict_nonpos](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/exists-subset-restrict-nonpos--dfdf3488a620983236a70434.md) | 276 | `result-track:dfdf3488a620983236a704347c473b5ff04df5a3fbddf20e6cef8f1c8a5cdafc` |
| 22 | `def` | [measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/measureofnegatives--21c5c2a59acd9b0644ee4388.md) | 343 | `declaration-track:21c5c2a59acd9b0644ee43888320bc1a4a4b6de921a9b5e6e1419425615c438d` |
| 23 | `theorem` | [zero_mem_measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/zero-mem-measureofnegatives--f8f67c88c19f0dd60822f684.md) | 346 | `result-track:f8f67c88c19f0dd60822f6845cacb743c30c18c6cffc7e34ea96fb2f04b6ac2f` |
| 24 | `theorem` | [bddBelow_measureOfNegatives](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/bddbelow-measureofnegatives--519244ec2225d2850896fb4c.md) | 349 | `result-track:519244ec2225d2850896fb4c82a049a6f6f5f06351e17d540de69593c4eeb6eb` |
| 25 | `theorem` | [exists_compl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/exists-compl-positive-negative--d92eabea8053725f99faa2d7.md) | 375 | `result-track:d92eabea8053725f99faa2d785e63bcb45c68faa04e99d4ec087099973053fac` |
| 26 | `theorem` | [exists_isCompl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/exists-iscompl-positive-negative--246039221537aeaf0b8cc8e3.md) | 417 | `result-track:246039221537aeaf0b8cc8e368f773e6be2357ebfe616d85deec17cde14462bd` |
| 27 | `theorem` | [of_symmDiff_compl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/declarations/of-symmdiff-compl-positive-negative--da8a95d47bab2bbfed8b9482.md) | 424 | `result-track:da8a95d47bab2bbfed8b9482241509e479d40f50110653d199b404f0d5995eb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
