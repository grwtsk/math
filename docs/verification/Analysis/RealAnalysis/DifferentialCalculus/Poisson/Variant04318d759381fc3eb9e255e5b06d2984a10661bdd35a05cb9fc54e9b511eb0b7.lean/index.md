# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Poisson.Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36154ed1f354b980c4c603074a9b88d5a3c57e0f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36154ed1f354b980c4c603074a9b88d5a3c57e0f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [herglotzRieszKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/herglotzrieszkernel--1f470f35a794bb3ec5c74698.md) | 37 | `declaration-track:1f470f35a794bb3ec5c746988ad47359cc378d102f703f1def2e24a8dd51e3e6` |
| 2 | `lemma` | [herglotzRieszKernel_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/herglotzrieszkernel-def--f29f1e4aa244f181524f2871.md) | 40 | `result-track:f29f1e4aa244f181524f28718a0920e970040a135138b31c7cfda5c9f96f7a9e` |
| 3 | `lemma` | [herglotzRieszKernel_fun_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/herglotzrieszkernel-fun-def--ddf297753690a8ece450b02c.md) | 43 | `result-track:ddf297753690a8ece450b02cc9bc49557eda42dee52ee8a760ccf119024751ed` |
| 4 | `lemma` | [herglotzRieszKernel_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/herglotzrieszkernel-add-const--66d87cbf1fff9889e042d674.md) | 48 | `result-track:66d87cbf1fff9889e042d6742d5a03f4da4bda0610bd26c31843ffef64e4f8bc` |
| 5 | `def` | [poissonKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/poissonkernel--9814289e00bf1e84f6e3d3e8.md) | 55 | `declaration-track:9814289e00bf1e84f6e3d3e855d0bec08402b5c1a7db307bfd50d1bb1e33d950` |
| 6 | `lemma` | [poissonKernel_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/poissonkernel-def--c6352646e94a64a71d06584d.md) | 58 | `result-track:c6352646e94a64a71d06584d8b2e76a227e8fac731bdc2045b0ddaa27952f2ec` |
| 7 | `lemma` | [poissonKernel_eq_re_herglotzRieszKernel_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/poissonkernel-eq-re-herglotzrieszkernel-aux--157685c58e79fdd42bc68bdc.md) | 61 | `result-track:157685c58e79fdd42bc68bdc0ef434918bd364ddd682d574904836724650148a` |
| 8 | `lemma` | [poissonKernel_eq_re_herglotzRieszKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/poissonkernel-eq-re-herglotzrieszkernel--e2a8ab9657c1e46a2302cdab.md) | 74 | `result-track:e2a8ab9657c1e46a2302cdab1bbc416057c1e077c9dd872aedb0f14ad30ceec5` |
| 9 | `lemma` | [re_herglotzRieszKernel_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/re-herglotzrieszkernel-le-aux--6d5f2ae8cd9722f9c58c9f50.md) | 80 | `result-track:6d5f2ae8cd9722f9c58c9f50325e30cf236d2af8943d8f7c7ddb7f9f2937ec0f` |
| 10 | `theorem` | [re_herglotzRieszKernel_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/re-herglotzrieszkernel-le--35e8a640a6ce34cd8287195b.md) | 102 | `result-track:35e8a640a6ce34cd8287195b980977c339fa5f38c51651ad5eb632619b820b3c` |
| 11 | `lemma` | [le_re_herglotzRieszKernel_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/le-re-herglotzrieszkernel-aux--24773ef24fef8f9416a1523d.md) | 111 | `result-track:24773ef24fef8f9416a1523d5a3c484478460c2f6766cdae98f255301c7d224c` |
| 12 | `theorem` | [le_re_herglotzRieszKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/le-re-herglotzrieszkernel--59125ef9257128155ed2e131.md) | 135 | `result-track:59125ef9257128155ed2e131da4364960d83af48dd1adf41024ac7cae6d233b8` |
| 13 | `lemma` | [continuousOn_herglotzRieszKernel_sphere](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/continuouson-herglotzrieszkernel-sphere--aff553d2485c1d03f606a41a.md) | 148 | `result-track:aff553d2485c1d03f606a41ac67685467a7781f80d832a9822fc799310767a28` |
| 14 | `theorem` | [re_circleAverage_herglotzRieszKernel_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/re-circleaverage-herglotzrieszkernel-smul--0b15ad272af2620c5e79ba3b.md) | 160 | `result-track:0b15ad272af2620c5e79ba3bb5f7e7e9e22389a605746400663d9abc22031d19` |
| 15 | `lemma` | [circleAverage_re_smul_on_ball_zero_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/circleaverage-re-smul-on-ball-zero-aux--c8dd41dc236bc109767af033.md) | 181 | `result-track:c8dd41dc236bc109767af03343e683f9728409b4dc0c2626a6f8192fb84f9b36` |
| 16 | `lemma` | [DiffContOnCl.circleAverage_re_smul_on_ball_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/diffcontoncl-circleaverage-re-smul-on-ball-zero--d0429ec7713321efc4a1e80e.md) | 190 | `result-track:d0429ec7713321efc4a1e80e4d06c7b9e94e87e86b5d5a60be53ebfcdd316829` |
| 17 | `theorem` | [DiffContOnCl.circleAverage_re_herglotzRieszKernel_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/diffcontoncl-circleaverage-re-herglotzrieszkernel-smul--5b7b138faf182ab2d9e87432.md) | 253 | `result-track:5b7b138faf182ab2d9e87432f7f76bff2c923e00c3c6e7de42d6256985acf9ea` |
| 18 | `theorem` | [DiffContOnCl.circleAverage_re_herglotzRieszKernel_smul'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/diffcontoncl-circleaverage-re-herglotzrieszkernel-smul--737aaea24c83d5f5bee26302.md) | 268 | `result-track:737aaea24c83d5f5bee26302587669f1112651063a3af53636586176880d1787` |
| 19 | `theorem` | [DiffContOnCl.circleAverage_poissonKernel_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/diffcontoncl-circleaverage-poissonkernel-smul--36585512ca46992d6678b3a3.md) | 277 | `result-track:36585512ca46992d6678b3a382f31077ad9e0d1133dc5b455e2609b9e6c82da0` |
| 20 | `theorem` | [DiffContOnCl.circleAverage_poissonKernel_smul'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/diffcontoncl-circleaverage-poissonkernel-smul--6020618595c6d1f15f661231.md) | 287 | `result-track:6020618595c6d1f15f6612310af0b65a9267d9d902fe686cf26268363c2a48e0` |
| 21 | `theorem` | [hasDerivAt_circleAverage_herglotzRieszKernel_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/hasderivat-circleaverage-herglotzrieszkernel-smul--b382dc86acd4cd3533ce00d4.md) | 302 | `result-track:b382dc86acd4cd3533ce00d4040dee24a55eef245c6d34a970bb6e8b95a788e5` |
| 22 | `theorem` | [differentiableOn_circleAverage_herglotzRieszKernel_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/differentiableon-circleaverage-herglotzrieszkernel-smul--475ba2c55083e96876841e22.md) | 354 | `result-track:475ba2c55083e96876841e22d315813b99b7584728ef98f38f6e4d7289e11ea1` |
| 23 | `theorem` | [analyticOnNhd_circleAverage_herglotzRieszKernel_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/declarations/analyticonnhd-circleaverage-herglotzrieszkernel-smul--5aea123651287d7f2099016e.md) | 365 | `result-track:5aea123651287d7f2099016ea7da2160a5e97c504cf65e754bdc8839e808111b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
