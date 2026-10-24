# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt09.Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "237230bd6db69257402103e04a3f10f0078c3185",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `237230bd6db69257402103e04a3f10f0078c3185`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/outerweight--840e74a1c0c99ee110bc2c7a.md) | 26 | `declaration-track:840e74a1c0c99ee110bc2c7a4cfad53708bb5bb3c0c45cb0d6660329dd074d05` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/exponentweight--eaa313db85abe046017da53b.md) | 28 | `declaration-track:eaa313db85abe046017da53b0ee07d00c5c26a5538a76ed1cd46761d24fa65eb` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/momentatom--e76b4da3844c1a042fa9e4ac.md) | 30 | `declaration-track:e76b4da3844c1a042fa9e4acf896a30e2366631311c2a10e45bde8b27385c73b` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/primemomentatom--ca62441406e03423e346bf69.md) | 33 | `declaration-track:ca62441406e03423e346bf6910b500446e7824f75e4994a01896abe212209b0a` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/properpowermoment--29611c0e400c8d4ba26925c0.md) | 35 | `declaration-track:29611c0e400c8d4ba26925c09caaf0789b6a729a9730b151da5a2c0920960971` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/properpowerb1--508701798ee35e3d991e001b.md) | 37 | `declaration-track:508701798ee35e3d991e001b83816d68435f7d2c505139eeecd2e924fe83efd7` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/properpowerb2--02c1561828f2bbe18bc2eaa8.md) | 39 | `declaration-track:02c1561828f2bbe18bc2eaa8f9e6b91bc8345d4bd4c613b2a0beaece40abcdad` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/outerweight-nonneg--027a7eab58f718ba10b16c25.md) | 41 | `result-track:027a7eab58f718ba10b16c2515d180860ade0e0f96b90a96a5e4b7ddccec5eb3` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/exponentweight-nonneg--a62e7c51391f6a479ef7052f.md) | 49 | `result-track:a62e7c51391f6a479ef7052f78a4a2774ab27dc014bffda5ccaca6753794d7dc` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/momentatom-nonneg--c70bb482bcd22d51c56da3e2.md) | 53 | `result-track:c70bb482bcd22d51c56da3e280eaaf7e5d31bb7b2a80450b4e671fec41442744` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/outerweight-summable--82cb5ecb2fd28ecfabb31e9b.md) | 61 | `result-track:82cb5ecb2fd28ecfabb31e9b2b12d1e9a4ca6ee968b9533e812be52f91d34a38` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/exponentweight-summable--1524b49b57137363f527e2a7.md) | 91 | `result-track:1524b49b57137363f527e2a709c2c675e84652a9eaf15ea56ad0234d72de7a31` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/momentatom-le-product--c672c0b929f24f4f8f77ec32.md) | 100 | `result-track:c672c0b929f24f4f8f77ec32e87e3232bdcf744f807f654bd9c5936b7277b42c` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/prime-outerweight-summable--6ead5a48599e00f27573be04.md) | 121 | `result-track:6ead5a48599e00f27573be0447efe07d33ad2fb8a3c101b45933509762c15c4b` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/primemomentatom-summable--4cee8694af6a1c06171fa192.md) | 125 | `result-track:4cee8694af6a1c06171fa19275dd7008e23c259297408e05b2561df3a665f198` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/primemomentatom-inner-summable--874df87eb75e2e56983cc23f.md) | 132 | `result-track:874df87eb75e2e56983cc23fa83e157f5ea2404b189b203026559769cdd23876` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/primemomentatom-outer-summable--4107acaabf9058a29770aa1c.md) | 137 | `result-track:4107acaabf9058a29770aa1c16765ba9d8dd67d7c874abe51491d5fd48cb4d41` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/properpowermoment-nonneg--3b28961726bc50e91b3c475a.md) | 142 | `result-track:3b28961726bc50e91b3c475a6600719875a9b501aad06b11c4dab0922d544c41` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/finiteproperpowermoment-le-b1--d1f70b227ac4870d3e84ceed.md) | 145 | `result-track:d1f70b227ac4870d3e84ceed56f560be5e316137e4ecfa2f688059118117e7c0` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/properpowerb1-gt-nine-quarters--b1d28e9014d85557f57b0a82.md) | 174 | `result-track:b1d28e9014d85557f57b0a82dcb431fc0209f65a083eabb92f32306e82bc846a` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/arithmeticconstant-gt-one-five-hundred--afa78e6a200950d099adfceb.md) | 177 | `result-track:afa78e6a200950d099adfceb8bba64078fa939f51bbde48a38daa089a4686ff6` |
| 22 | `def` | [omittedOnsetAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/omittedonsetatom--ef3cfdbea7058b59fd2de025.md) | 183 | `declaration-track:ef3cfdbea7058b59fd2de0255371e539cc0288e4754cf41ab2eb40177ef2c733` |
| 23 | `def` | [omittedOnsetTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/omittedonsettail--cc06240e6df0b5e42089b5df.md) | 187 | `declaration-track:cc06240e6df0b5e42089b5df8d2652bae2d3f71a200fb462a13dc9f6fe3e80a5` |
| 24 | `theorem` | [properPowerMoment_eq_joint_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/properpowermoment-eq-joint-sum--9fbd109c7929618bc8e44411.md) | 190 | `result-track:9fbd109c7929618bc8e4441109224802354e8d16c6dffabca9afa7d8d79c4469` |
| 25 | `theorem` | [omittedOnsetAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/omittedonsetatom-nonneg--9b2f60f94421951a2f513741.md) | 194 | `result-track:9b2f60f94421951a2f5137414bd5a37883ff150687c3114aa69ff6518d94bcf3` |
| 26 | `theorem` | [omittedOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/omittedonsetatom-le-zeromoment--02c2998832cbc3b8a0645ad2.md) | 200 | `result-track:02c2998832cbc3b8a0645ad248dd20f12e5087d914ad60859c5e2d250d33d173` |
| 27 | `theorem` | [omittedOnsetTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/omittedonsettail-summable--d2ca41140daeb8c8b91da19f.md) | 207 | `result-track:d2ca41140daeb8c8b91da19fc50ec5f1a18eeed391b7f1427c9aa4ea1c5440ab` |
| 28 | `theorem` | [omittedOnsetTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/omittedonsettail-nonneg--14df09121a6b3d8a75902d40.md) | 212 | `result-track:14df09121a6b3d8a75902d4021a4d6ac7a7f856a2ea6d5a665c58961f1dfd2d7` |
| 29 | `theorem` | [omittedOnsetTail_eq_iterated](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/omittedonsettail-eq-iterated--ccadb1aa200288bac1c377c8.md) | 215 | `result-track:ccadb1aa200288bac1c377c82a42dd4dd9e22797e29218b4cdd45851d4e1f6bc` |
| 30 | `theorem` | [omittedOnsetAtom_secondMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/omittedonsetatom-secondmoment--edc409629ab102e909e53c20.md) | 219 | `result-track:edc409629ab102e909e53c20f1f92a92bb4235044d40f0f08ed8fa1f2b40d44b` |
| 31 | `theorem` | [omittedOnsetTail_le_B2_div_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt09/Variant15a0a9b6adcfc2d1094baf991010793a2f7c6897f1fdf19bbccd0f39cf50fe63.lean/declarations/omittedonsettail-le-b2-div-square--e811a54298fdbfd53f410337.md) | 234 | `result-track:e811a54298fdbfd53f410337d323a6ca430c37065624b3a019b6afff4aaaa1b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
