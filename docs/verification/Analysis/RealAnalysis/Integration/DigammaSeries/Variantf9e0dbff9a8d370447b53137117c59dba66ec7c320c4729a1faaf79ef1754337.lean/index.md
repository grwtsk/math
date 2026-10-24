# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DigammaSeries.Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f850a6724d3ea807c539e9e8902e7d4e27ce803c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f850a6724d3ea807c539e9e8902e7d4e27ce803c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.ENNReal` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_nat_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/add-nat-ne-zero--c2f5ce09ab7468ce22cbc0b0.md) | 20 | `result-track:c2f5ce09ab7468ce22cbc0b04fcafa0e15d1b98d99a93e89266829c32c7f1bbf` |
| 2 | `theorem` | [differentiableAt_gammaSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/differentiableat-gammaseq--920c758040981df3d6ec3d58.md) | 28 | `result-track:920c758040981df3d6ec3d58c31fd7b830153fee980235cbf16bd3397e96c505` |
| 3 | `theorem` | [logDeriv_gammaSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/logderiv-gammaseq--b50ce01c66816d75a74d5871.md) | 38 | `result-track:b50ce01c66816d75a74d587160e58da2318ac4e0b7ee53fdd9ad6d374c83bed5` |
| 4 | `theorem` | [reciprocal_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/reciprocal-difference--710315160a2e8f5df112d8fa.md) | 62 | `result-track:710315160a2e8f5df112d8faf559af5c4d859d301a72588e1bdd4ecf26a89c1b` |
| 5 | `theorem` | [gammaSeq_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/gammaseq-difference--53883ed85a8b68b19582fd0c.md) | 75 | `result-track:53883ed85a8b68b19582fd0c624bab64d5f5510559e059f2c810aa4d7a68c175` |
| 6 | `def` | [eulerKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/eulerkernel--0cf4009cdf456e84e815919d.md) | 91 | `declaration-track:0cf4009cdf456e84e815919de88d6319aeeff4148c7a05357de0ba96bc0f72ef` |
| 7 | `theorem` | [eulerKernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/eulerkernel-nonneg--e82e6f3507e5c4bba15003f1.md) | 94 | `result-track:e82e6f3507e5c4bba15003f1e1d1bbd484fe1100fee41316b01e6bc2961e931a` |
| 8 | `theorem` | [eulerKernel_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/eulerkernel-le--d787adda726e91a63fe32dea.md) | 102 | `result-track:d787adda726e91a63fe32dea2d7f4e47b2f2e8368e22b1527ce7476d5e034d7c` |
| 9 | `theorem` | [eulerKernel_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/eulerkernel-tendsto--8a78a17ac31d717a969c160e.md) | 111 | `result-track:8a78a17ac31d717a969c160eaec51def2c7e00f188f91deef66aa252bf9f2cc0` |
| 10 | `theorem` | [eulerKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/eulerkernel-measurable--57a04e53517ad567ff541bd6.md) | 119 | `result-track:57a04e53517ad567ff541bd6b92ff9aa7713a351b5abc1166cb0f1cadb87d881` |
| 11 | `theorem` | [euler_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/euler-integrand-integrable--ca1739813494bb6c0b1dde8a.md) | 122 | `result-track:ca1739813494bb6c0b1dde8ad20310ad4c08ebdf3e128bea4919fea82619ce75` |
| 12 | `theorem` | [gammaSeq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/gammaseq-integral--f357c3763d036b2cf1d44672.md) | 136 | `result-track:f357c3763d036b2cf1d446721765e32704641708e2ba1ed453b723185ac054d5` |
| 13 | `def` | [errorEnvelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/errorenvelope--2cb666f93e3f52201ce5686c.md) | 154 | `declaration-track:2cb666f93e3f52201ce5686c2cf05e7c739636bfd540e174290617347cf540e9` |
| 14 | `theorem` | [errorEnvelope_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/errorenvelope-bound--f8673e59b520ee7c76b56654.md) | 157 | `result-track:f8673e59b520ee7c76b566542aafc83e513456f6d84d991d4bbb7e12e6eb61b7` |
| 15 | `theorem` | [errorEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/errorenvelope-integrable--4618befb3608839ac78e84b1.md) | 165 | `result-track:4618befb3608839ac78e84b13050d3da5c6714fa4c119177381497348337251b` |
| 16 | `theorem` | [errorEnvelope_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/errorenvelope-integral-tendsto--3122eae620c73f980e5a8155.md) | 177 | `result-track:3122eae620c73f980e5a8155d3578842f59f7fcfc4ac461a1cee607c23b3a884` |
| 17 | `theorem` | [rpow_strip_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/rpow-strip-bound--f840045c3ca8adf72c9e29dd.md) | 193 | `result-track:f840045c3ca8adf72c9e29dd2cc6769d7c3631818a499cabc11a3b09d4a93927` |
| 18 | `theorem` | [gammaSeq_error_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/gammaseq-error-bound--9cc19d3a4f2e2fb859cb494d.md) | 201 | `result-track:9cc19d3a4f2e2fb859cb494d40942ee213d34398aacf0e7f39ac645ee92e3d3f` |
| 19 | `theorem` | [gammaSeq_uniformly_on_strip](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/gammaseq-uniformly-on-strip--9c09d5cacd7919771ab9fcb0.md) | 219 | `result-track:9c09d5cacd7919771ab9fcb09be77b8f2b5699d72a329b5dc5d9e860193e67bf` |
| 20 | `theorem` | [gammaSeq_locally_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/gammaseq-locally-uniform--3659e90776e2c13004c52c18.md) | 231 | `result-track:3659e90776e2c13004c52c1840158a32131209c766c2beea11a8f92883198c1e` |
| 21 | `def` | [EulerDerivativeLimit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/eulerderivativelimit--a5e6a15dff9c73958a26e212.md) | 249 | `declaration-track:a5e6a15dff9c73958a26e2124dd0d52a10195488fa58446cc3845cb533bbcd02` |
| 22 | `theorem` | [logDeriv_tendsto_of_derivative_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/logderiv-tendsto-of-derivative-limit--06cf01855fc9b83743565bba.md) | 256 | `result-track:06cf01855fc9b83743565bba7ba2d42aab8de692382110a8257685aeb3ff4f6f` |
| 23 | `theorem` | [derivative_limit_of_locally_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/derivative-limit-of-locally-uniform--003032040fbc05cbbf583e5a.md) | 264 | `result-track:003032040fbc05cbbf583e5af4428baa699fed09f9a10d56493f55837dc46643` |
| 24 | `theorem` | [hasSum_difference_of_derivative_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/hassum-difference-of-derivative-limit--7c9b227cfd5520d43fc39c19.md) | 277 | `result-track:7c9b227cfd5520d43fc39c1907b691e28e911c84b293b15b88e6db00b2cebe29` |
| 25 | `theorem` | [euler_derivative_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/euler-derivative-limit--9fc1f1c9d75fce2b32a7dce3.md) | 294 | `result-track:9fc1f1c9d75fce2b32a7dce3b912cf62ffcc24fe00dae651e4159109206d8453` |
| 26 | `theorem` | [hasSum_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/declarations/hassum-difference--d5fd176e70db5b0b57d15768.md) | 298 | `result-track:d5fd176e70db5b0b57d15768bc5d3c379d698d6abf640424a1e9f8f08d1d169f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
