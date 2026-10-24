# Verification target: GRWTSK.Algebra.BranchSequenceRealization.Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b39d6cf29e119cfff1a261c954d91201d85c2137",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/index.md) · [Full source](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b39d6cf29e119cfff1a261c954d91201d85c2137`.

Source path: `GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.TerminatesIffRat` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Real.Irrational` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LiminfLimsup` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [batchIncrement](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/batchincrement--03111112311e2dd20ab6f80b.md) | 35 | `declaration-track:03111112311e2dd20ab6f80b7119e3b851795d67a763db168ac13f25567523d0` |
| 2 | `def` | [batchClock](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/batchclock--0ad2e178a12290dc65f96283.md) | 39 | `declaration-track:0ad2e178a12290dc65f96283bfeaaf1f6f15d2f08c901acb2839b36cba016007` |
| 3 | `theorem` | [batchIncrement_pos](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/batchincrement-pos--f7791b8a2e205c3d6c4a6bbf.md) | 44 | `result-track:f7791b8a2e205c3d6c4a6bbf40bb7acd1546ea22612fcd3dcbc97f729c405b60` |
| 4 | `theorem` | [batchIncrement_le](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/batchincrement-le--a74911bb62b9e5e45b2a9e21.md) | 50 | `result-track:a74911bb62b9e5e45b2a9e216179032d8a348a118b2a7d7d3e693c9580bbb766` |
| 5 | `theorem` | [index_le_batchClock](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/index-le-batchclock--3f1a9f0f325576e1ade45889.md) | 57 | `result-track:3f1a9f0f325576e1ade45889411d13adb049f563b7d0166e6e7c42e6d3e90cb9` |
| 6 | `theorem` | [batchClock_strictMono](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/batchclock-strictmono--b5031342e3aaf361c8aac09b.md) | 64 | `result-track:b5031342e3aaf361c8aac09b6b351a196b8129758564c87e9b26a4082ff39e71` |
| 7 | `theorem` | [batchClock_tendsto](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/batchclock-tendsto--e7879825df38e726c88b7110.md) | 72 | `result-track:e7879825df38e726c88b71109a7710c0fc922f0184090ebc39cd4602bc732135` |
| 8 | `theorem` | [unique_batch](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/unique-batch--58bd3a4bd74c87e3846df069.md) | 77 | `result-track:58bd3a4bd74c87e3846df06966d7b4624021cb2607a044ecae7f9c6cdc8e0ab1` |
| 9 | `theorem` | [epoch_no_starvation](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/epoch-no-starvation--403499651ceb2cfd476eb330.md) | 103 | `result-track:403499651ceb2cfd476eb3305f58a4c539521338ba6dbfb290b799eb80a9798c` |
| 10 | `def` | [partialQuotient](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/partialquotient--aeeb2a4d973653214f5524a1.md) | 114 | `declaration-track:aeeb2a4d973653214f5524a19b7255df9750d84e110b1eeeb8bc12b1c30a9541` |
| 11 | `def` | [continuedFraction](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/continuedfraction--c13dcac7b13021369e546c78.md) | 117 | `declaration-track:c13dcac7b13021369e546c785eb9eedc436dfc106e3d5ccfd5ee140c51310ca2` |
| 12 | `def` | [denominator](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/denominator--4ca8d2a9b26e2c560ea4f38c.md) | 121 | `declaration-track:4ca8d2a9b26e2c560ea4f38cbfcd2b7c1358bd8bfaeaf7c5b5f3c0b785a4dd13` |
| 13 | `def` | [numerator](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/numerator--2bc1535b9d6b752a94260285.md) | 127 | `declaration-track:2bc1535b9d6b752a94260285641e3c4e09e33ec831ea9378b55c2a89d8ab0136` |
| 14 | `theorem` | [partialQuotient_pos](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/partialquotient-pos--1d102f09e491a1d31c48d1e4.md) | 133 | `result-track:1d102f09e491a1d31c48d1e4fec45068466e2ce2f9aedca12a5c4923b1cd1937` |
| 15 | `theorem` | [continuedFraction_term](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/continuedfraction-term--3a9a8f1c21a4d12014bcf550.md) | 138 | `result-track:3a9a8f1c21a4d12014bcf550b35082555756c200d4e62085089d1734856024ce` |
| 16 | `theorem` | [continuedFraction_not_terminates](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/continuedfraction-not-terminates--f89c7022ec2891a80bda66af.md) | 142 | `result-track:f89c7022ec2891a80bda66af29e670828359bcc70b139a5faa901b93f085226a` |
| 17 | `theorem` | [native_continuants](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/native-continuants--023967b8b461768e39770065.md) | 149 | `result-track:023967b8b461768e39770065354bb70d0490a2ca48f9427c47d43af0356ae77c` |
| 18 | `theorem` | [denominator_pos](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/denominator-pos--45fb60fdc88f1132dd9ddddf.md) | 165 | `result-track:45fb60fdc88f1132dd9ddddf6dfa841ed1ea122682a4405311ab124b213ba9a7` |
| 19 | `theorem` | [fib_le_denominator](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/fib-le-denominator--f1457f38e6373c8096f2afeb.md) | 173 | `result-track:f1457f38e6373c8096f2afebeda157c9dd42060ef0c40ab33ad87bdfafbc4ae4` |
| 20 | `theorem` | [index_le_denominator](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/index-le-denominator--0a4fd3262ab5b026cc32eeb8.md) | 184 | `result-track:0a4fd3262ab5b026cc32eeb8492640747f7907e20280bfb6150e2fe6e67cbf52` |
| 21 | `theorem` | [denominator_tendsto](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/denominator-tendsto--fff61dad30321f55762960aa.md) | 196 | `result-track:fff61dad30321f55762960aa5c75ae859c3fa1088aefc3f15fb96be7d20cc5a6` |
| 22 | `theorem` | [denominator_ones](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/denominator-ones--f9a86ee49f781ed6c5bf8214.md) | 201 | `result-track:f9a86ee49f781ed6c5bf82142171114dc2d4932a356eef49d57929608c27d934` |
| 23 | `def` | [DenominatorRecurrence](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/denominatorrecurrence--52d62c0234ce7f60417e60a7.md) | 211 | `declaration-track:52d62c0234ce7f60417e60a7994579e4a306402a014f60c2e00920cb7d5dabac` |
| 24 | `theorem` | [generated_denominator_recurrence](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/generated-denominator-recurrence--932c8d90009863cd18559a25.md) | 216 | `result-track:932c8d90009863cd18559a252e0c6aac84b2b65bd35e3c18ea67643983511be8` |
| 25 | `theorem` | [denominator_recurrence_identifies](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/denominator-recurrence-identifies--19acdef1c867c0986dca66b6.md) | 221 | `result-track:19acdef1c867c0986dca66b6774385cd872ddce4184a9a387f2773176045979c` |
| 26 | `theorem` | [powers_two_not_denominators](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/powers-two-not-denominators--d3c32baec1e1acbefca28ed8.md) | 231 | `result-track:d3c32baec1e1acbefca28ed8e17e847aec90b7a714dd1ee91390991297b28b8e` |
| 27 | `def` | [growthCoefficient](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/growthcoefficient--8d11bc8359f3bf7f49a0ebd2.md) | 239 | `declaration-track:8d11bc8359f3bf7f49a0ebd238928720d50ac589187a2ca36096d4fd2e63258f` |
| 28 | `theorem` | [growthCoefficient_pos](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/growthcoefficient-pos--cb27d035a0caf3bc227682c3.md) | 243 | `result-track:cb27d035a0caf3bc227682c357f8babafa2b1dd574ffbc844a5015140ce4b1ed` |
| 29 | `theorem` | [growthCoefficient_meets_target](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/growthcoefficient-meets-target--29c4f44f2a926d01f6ad8779.md) | 249 | `result-track:29c4f44f2a926d01f6ad87795c2203219253c42941fbdad4734b7c0d3bee3f99` |
| 30 | `theorem` | [denominator_coprime](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/denominator-coprime--7347ed0c9fb94050d558a1bf.md) | 260 | `result-track:7347ed0c9fb94050d558a1bfae81dfd25821f41b4f296a4478c4857e14400a4c` |
| 31 | `theorem` | [denominator_le_succ](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/denominator-le-succ--317be550792194f802fcbb18.md) | 270 | `result-track:317be550792194f802fcbb189edb449a2e2d1cb56bdf31c5900a9376d2a890cd` |
| 32 | `theorem` | [denominator_remainder](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/denominator-remainder--b7a86bad034075ece3c40eca.md) | 281 | `result-track:b7a86bad034075ece3c40eca7928e2a502965d8c6e99278834c6ac7d16eaf30d` |
| 33 | `def` | [arithmeticExponent](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/arithmeticexponent--a0ea4b5691c90dbbf23171c5.md) | 288 | `declaration-track:a0ea4b5691c90dbbf23171c543c7da9db66a67a6cd720247aba0208a179a81e1` |
| 34 | `theorem` | [log_ratio_tendsto_zero](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/log-ratio-tendsto-zero--75bff165f16692f356b6b654.md) | 292 | `result-track:75bff165f16692f356b6b654466535ca8f5467799d550e38c0111fb54609f3d0` |
| 35 | `theorem` | [arithmeticExponent_zero_of_bounded_ratio](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/arithmeticexponent-zero-of-bounded-ratio--9ac0a5ca22c19fb62edfa8ba.md) | 317 | `result-track:9ac0a5ca22c19fb62edfa8baaa53886b74d10f33bdfc33befed217dfaa144e13` |
| 36 | `theorem` | [fibonacci_arithmeticExponent_zero](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/fibonacci-arithmeticexponent-zero--9c6728da45f2d0d3c783c0b4.md) | 325 | `result-track:9c6728da45f2d0d3c783c0b4f9e1ec018292201964b2eab141cda0d6e6f17e00` |
| 37 | `def` | [spikeCoefficient](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spikecoefficient--b503f0fe945e27d053b65435.md) | 340 | `declaration-track:b503f0fe945e27d053b654352f35ec544b7f412086e528e85225be36813eb4c7` |
| 38 | `def` | [spikeStep](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spikestep--ec33e33c34bfaee30a852296.md) | 344 | `declaration-track:ec33e33c34bfaee30a8522967533761ae7f71ad0934ce4e8d958675b1b64255e` |
| 39 | `theorem` | [spikeCoefficient_pos](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spikecoefficient-pos--25e3910f3911b8a82f7a1b91.md) | 348 | `result-track:25e3910f3911b8a82f7a1b913f2d4302e05b540b8ad20a0d784f144d29ca8fc9` |
| 40 | `theorem` | [spikeCoefficient_zero](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spikecoefficient-zero--7b55a1635b6a1c943fe4205d.md) | 352 | `result-track:7b55a1635b6a1c943fe4205dae0a917b159a0579816c4f50f95182f6a370826e` |
| 41 | `theorem` | [spike_rate_bounds](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spike-rate-bounds--bb16cdfbc6819780faa52df7.md) | 357 | `result-track:bb16cdfbc6819780faa52df7f39330bbf6ac0c093f8fdd7755b919d543d2a9cd` |
| 42 | `def` | [effectiveStrength](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/effectivestrength--57ce549545a44ef0399020c1.md) | 396 | `declaration-track:57ce549545a44ef0399020c1e42e7975795b7b12b5af0473d07a682793bc034a` |
| 43 | `theorem` | [effectiveStrength_nonneg](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/effectivestrength-nonneg--c71d1815446896c1b6d3dd83.md) | 400 | `result-track:c71d1815446896c1b6d3dd83b7384c465e0def5335099c195c819aabb427a754` |
| 44 | `theorem` | [arithmeticExponent_of_spikes](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/arithmeticexponent-of-spikes--7d6c37eabc2e75fae3c01052.md) | 409 | `result-track:7d6c37eabc2e75fae3c01052811a19f1897fca54aabcac11a71d04c1161ceee6` |
| 45 | `theorem` | [arithmeticExponent_of_converging_spikes](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/arithmeticexponent-of-converging-spikes--9006ea6aa2b734ca64bf3fcb.md) | 443 | `result-track:9006ea6aa2b734ca64bf3fcbaece660e1d6f157170aefff5b65194c0ed6b01e9` |
| 46 | `theorem` | [arithmeticExponent_of_diverging_spikes](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/arithmeticexponent-of-diverging-spikes--38221791093f4e6732a480fa.md) | 455 | `result-track:38221791093f4e6732a480fa8237847b3ae11bb34c79efd74f12ff2dfa780052` |
| 47 | `def` | [spikeDenominator](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spikedenominator--8f5e5402181f5182d37d692c.md) | 468 | `declaration-track:8f5e5402181f5182d37d692c645ac02283e3a27522370eb946e3e5ca894142cc` |
| 48 | `def` | [spikePartialQuotient](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spikepartialquotient--b3ce9567d162ca252bba8ff6.md) | 475 | `declaration-track:b3ce9567d162ca252bba8ff6aab10bfe3bb50f5fb9fb22f83bf5c93a733245e3` |
| 49 | `theorem` | [spikeDenominator_identifies](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spikedenominator-identifies--f41032989fd55bbf899a7c25.md) | 479 | `result-track:f41032989fd55bbf899a7c25933c10ec071808dafaf2a0587559295258b13fce` |
| 50 | `theorem` | [spikeDenominator_pos](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spikedenominator-pos--a883e7d980e04b025472e7ef.md) | 490 | `result-track:a883e7d980e04b025472e7ef3b5030898625b53f5782512c483cda6453b3449f` |
| 51 | `theorem` | [spikeDenominator_tendsto](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spikedenominator-tendsto--7ca3b54b783be5190252e186.md) | 496 | `result-track:7ca3b54b783be5190252e1865a99a22784484d53a69d07e56f49a4d5be8d3a7f` |
| 52 | `theorem` | [spikeDenominator_step](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spikedenominator-step--ea7fca04f34f2604c08bef5c.md) | 502 | `result-track:ea7fca04f34f2604c08bef5c80c954f2d71eb4f9b5d671bd0eef73b646784124` |
| 53 | `theorem` | [spikeDenominator_exponent](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/spikedenominator-exponent--6e9a698a67f2582b73c10dfd.md) | 515 | `result-track:6e9a698a67f2582b73c10dfd62e0fdfdb88d1add6227ca994554391f703062a3` |
| 54 | `theorem` | [selected_spike_exponent](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/selected-spike-exponent--2f7eb3d5e000e8bd421425df.md) | 523 | `result-track:2f7eb3d5e000e8bd421425df8e5fa762000467b99bd09be32f2763a18cf3c5ab` |
| 55 | `def` | [FrequencyRealization](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/frequencyrealization--cc40d02469f9a71592b90fcc.md) | 531 | `declaration-track:cc40d02469f9a71592b90fcc39e43858fd7022ddaab650e7c1e6d8afa4177b18` |
| 56 | `theorem` | [frequency_irrational](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/frequency-irrational--6242c9be0dda06feb7a3901a.md) | 535 | `result-track:6242c9be0dda06feb7a3901a08061101236e21d0947569d2545c26a6f4299fab` |
| 57 | `theorem` | [frequency_convergent](../../../../mathematics/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/declarations/frequency-convergent--cbf71d10744445ed21e294d5.md) | 544 | `result-track:cbf71d10744445ed21e294d567b94d94e62e76115efe912fb99adbc33eaee51f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
