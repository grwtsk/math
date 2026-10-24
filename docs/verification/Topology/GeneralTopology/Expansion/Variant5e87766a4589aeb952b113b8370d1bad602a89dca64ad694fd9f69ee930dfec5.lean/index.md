# Verification target: GRWTSK.Topology.GeneralTopology.Expansion.Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bae80e1176fa7da5398efa908fef8f55cb2f546",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bae80e1176fa7da5398efa908fef8f55cb2f546`.

Source path: `GRWTSK/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Kernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.FunctionSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expandedSummand](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/expandedsummand--18e6a5ebeb0e605155fc8ca1.md) | 38 | `declaration-track:18e6a5ebeb0e605155fc8ca1f78487b502249a9ab83b90073c521b6c3f1333e3` |
| 2 | `theorem` | [shifted_value_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/shifted-value-ne-zero--650436ecfd9dc9e6dbf401dc.md) | 49 | `result-track:650436ecfd9dc9e6dbf401dcbcb729be3c69be293c084a1954ce3c215bc52d13` |
| 3 | `theorem` | [actual_scaled_square](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/actual-scaled-square--6c3e2957db6e4993a02d71f2.md) | 55 | `result-track:6c3e2957db6e4993a02d71f29edc6776ebb6c6740a44d0e2973628d4bd40ada8` |
| 4 | `theorem` | [numerator_square_expansion](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/numerator-square-expansion--db8f41003e4d0fb2b9e87542.md) | 80 | `result-track:db8f41003e4d0fb2b9e875424f22664f7580931f29001cffb2f49e7be0d44952` |
| 5 | `theorem` | [expanded_summand_eq](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/expanded-summand-eq--0ef0aced0f570a6e560b63d8.md) | 106 | `result-track:0ef0aced0f570a6e560b63d812a8e68ceaf3585ddae9d990c2b201d4df917300` |
| 6 | `theorem` | [equation17](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/equation17--7d6ab3775fa438b8f6ecc28c.md) | 119 | `result-track:7d6ab3775fa438b8f6ecc28c1cb721531e586b3ec16180d6821e23df88fc272e` |
| 7 | `theorem` | [transformPolynomial_norm_le_one_add](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/transformpolynomial-norm-le-one-add--8d59525098c371734bafda6b.md) | 140 | `result-track:8d59525098c371734bafda6bdac11c87b581efeab2c59e34e2b16bf2060461c2` |
| 8 | `theorem` | [transformPolynomial_norm_le_scale](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/transformpolynomial-norm-le-scale--b4f8ead7a365e8e543aa7384.md) | 180 | `result-track:b4f8ead7a365e8e543aa738471f0cd7be0d7c7a54d64a7cd22425bca5a5fc9b1` |
| 9 | `theorem` | [modeCoefficient_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/modecoefficient-norm-le--c342f0a5224c9ae077039bba.md) | 205 | `result-track:c342f0a5224c9ae077039bba23d908fc854588653dce1b27db262c81b91684fa` |
| 10 | `def` | [modeWeight](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/modeweight--84cf25708776300211b2c7df.md) | 231 | `declaration-track:84cf25708776300211b2c7df57394ad7e0e0204acf8afc6d1e3712ef324790b8` |
| 11 | `theorem` | [modeWeight_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/modeweight-nonneg--6748523f4e2c9e6bbb4cd02e.md) | 235 | `result-track:6748523f4e2c9e6bbb4cd02e60169776cdbe4d75760cb426de164ef41735832d` |
| 12 | `def` | [modeTailConstant](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/modetailconstant--58f555b2c235c695469352c7.md) | 241 | `declaration-track:58f555b2c235c695469352c71093ca5072d1cfabd7f62834f3625f2219ea675d` |
| 13 | `theorem` | [modeWeight_tail_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/modeweight-tail-le--ad29d393e1419230c330695e.md) | 244 | `result-track:ad29d393e1419230c330695e4ae18c35733f60698bd8727566fa9b641ee749cd` |
| 14 | `theorem` | [eventually_one_le_shifted_norm](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/eventually-one-le-shifted-norm--dfc254e2af8c058cdfc44e22.md) | 294 | `result-track:dfc254e2af8c058cdfc44e224b7b8dc1dcb90dab9332e8b3f04021b81760974a` |
| 15 | `theorem` | [modeWeight_summable](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/modeweight-summable--036fa271b8935a150c865009.md) | 310 | `result-track:036fa271b8935a150c865009a4eaf274ff893eda48cf89f62936f07a5a08ff9d` |
| 16 | `def` | [growthFactor](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/growthfactor--ebc976edbed78ed61239e3aa.md) | 319 | `declaration-track:ebc976edbed78ed61239e3aa628859f576df8553857be4c77dc96e1840508517` |
| 17 | `theorem` | [growthFactor_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/growthfactor-nonneg--34cb1423acbef24386154371.md) | 322 | `result-track:34cb1423acbef243861543716e1edd0cdb3ee64510139c67bf188059962ef4d5` |
| 18 | `theorem` | [expandedSummand_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/expandedsummand-norm-le--1d06c0afc8317b09ab3a52c5.md) | 329 | `result-track:1d06c0afc8317b09ab3a52c5ba80a9273196ad1e77344ad9a92303282ff12ea8` |
| 19 | `theorem` | [expandedSummand_norm_le_on_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/expandedsummand-norm-le-on-icc--72a355c561f14b4c6eed7987.md) | 432 | `result-track:72a355c561f14b4c6eed79872edfa940404862ecb5a234ed34c3509bf0792498` |
| 20 | `theorem` | [expanded_hasSumUniformlyOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/expanded-hassumuniformlyon-icc--06f1d0f0469d7fa62ce4f5f7.md) | 454 | `result-track:06f1d0f0469d7fa62ce4f5f7770d8ee14681c2a0e5edad78cc7e293b3a4bc925` |
| 21 | `theorem` | [expandedSummand_continuous](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/expandedsummand-continuous--29f7056a319d56be76b54ce4.md) | 468 | `result-track:29f7056a319d56be76b54ce4f8d79188093e12ab7ffb7b91427c44617082d39d` |
| 22 | `theorem` | [expanded_sum_continuousOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/expanded-sum-continuouson-icc--ddcf6bf558c6e3c6bb239867.md) | 478 | `result-track:ddcf6bf558c6e3c6bb23986751c03196462c1a9b783bbc1d6a3b88f80023abbc` |
| 23 | `theorem` | [weightedSource_continuousOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/weightedsource-continuouson-icc--f41636a9dfd8f5d0a7083c77.md) | 495 | `result-track:f41636a9dfd8f5d0a7083c77ca57f75c6e16cb16d07be73830ba62c031aff414` |
| 24 | `theorem` | [weightedSource_im](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/weightedsource-im--7583a8fc32f89fc682975c52.md) | 505 | `result-track:7583a8fc32f89fc682975c52209d4768baa8a6474fa7d1a2dee48ca7c07a3433` |
| 25 | `def` | [growthConstant](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/growthconstant--6127bd3210bee09b3b8f0ba6.md) | 511 | `declaration-track:6127bd3210bee09b3b8f0ba61e110f5f26d85793d41f393608b2f5a322513fea` |
| 26 | `theorem` | [growthConstant_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/growthconstant-nonneg--bdb9b86ca0d04ca69c03bf79.md) | 514 | `result-track:bdb9b86ca0d04ca69c03bf79092386ccf779b7be97dc3a85bb874a8d8ab0b2a7` |
| 27 | `theorem` | [expanded_sum_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/expanded-sum-norm-le--b68dee887df50e4cdef8262d.md) | 521 | `result-track:b68dee887df50e4cdef8262d5fa58e0cef9bfd0dddc8fe2e74295bf46851be36` |
| 28 | `theorem` | [weightedSource_growth](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/weightedsource-growth--beeab0740ac38c8a9209a65e.md) | 560 | `result-track:beeab0740ac38c8a9209a65ecd666969485f43b59fa7842a8adccf257be1d5ee` |
| 29 | `def` | [Equation17GrowthCheckpoint](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/equation17growthcheckpoint--c71b3ebaf5866f5d6a5f8993.md) | 568 | `declaration-track:c71b3ebaf5866f5d6a5f89937d66b4f3a16b3fc9e3b85accde9b8520917d0231` |
| 30 | `theorem` | [equation17_growth_checkpoint](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/declarations/equation17-growth-checkpoint--5bb550a40f3311a6ed97f401.md) | 593 | `result-track:5bb550a40f3311a6ed97f4010eea531af694ff312262c8f2df7b4f45a8a2433b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
