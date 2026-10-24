# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.UniformLimitsDeriv.Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d4fe20e5f4dd124725b1c3f352aec144d77330a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d4fe20e5f4dd124725b1c3f352aec144d77330a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.RCLike` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Curry` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniformCauchySeqOnFilter_of_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/uniformcauchyseqonfilter-of-fderiv--9d7571f4082dda3648db8aa5.md) | 119 | `result-track:9d7571f4082dda3648db8aa514cda152f16eda54d07ff7eb57f1f586d9222fef` |
| 2 | `theorem` | [uniformCauchySeqOn_ball_of_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/uniformcauchyseqon-ball-of-fderiv--d421034eb52ba2388e430b71.md) | 183 | `result-track:d421034eb52ba2388e430b71183cb4efd85c22a92a9c8efd590947a2756ff90a` |
| 3 | `theorem` | [cauchy_map_of_uniformCauchySeqOn_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/cauchy-map-of-uniformcauchyseqon-fderiv--8829393f02e180b89b403d7a.md) | 233 | `result-track:8829393f02e180b89b403d7a776b6a3e4e98f8cca56d72e169c8c4b296a67d83` |
| 4 | `theorem` | [difference_quotients_converge_uniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/difference-quotients-converge-uniformly--0e8732d280eb45a96ef231b3.md) | 263 | `result-track:0e8732d280eb45a96ef231b3ea84a2a7d5c10946de5985829b2d2354caf52b45` |
| 5 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOnFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/hasfderivat-of-tendstouniformlyonfilter--c39138f657382bc29f948ee5.md) | 313 | `result-track:c39138f657382bc29f948ee57248ca5ac2ba6ad88d571cb3ebccb4e681f74628` |
| 6 | `theorem` | [hasFDerivAt_of_tendstoLocallyUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/hasfderivat-of-tendstolocallyuniformlyon--57a93030d6be3cc1f319f4e0.md) | 400 | `result-track:57a93030d6be3cc1f319f4e0a7e8975fadfc00f8876dd1fd7873b4616833b18d` |
| 7 | `theorem` | [hasFDerivAt_of_tendsto_locally_uniformly_on'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/hasfderivat-of-tendsto-locally-uniformly-on--37799724e1ab7ee1ad577bf6.md) | 414 | `result-track:37799724e1ab7ee1ad577bf68c2a16cbd69e3a1a36ab88671ff1433208d54bba` |
| 8 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/hasfderivat-of-tendstouniformlyon--b3ff266556b815e994bde468.md) | 423 | `result-track:b3ff266556b815e994bde4680790ac46ba301a8bd36d65ed40f414a1f36a2be2` |
| 9 | `theorem` | [hasFDerivAt_of_tendstoUniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/hasfderivat-of-tendstouniformly--46925bf544022e425985da9c.md) | 432 | `result-track:46925bf544022e425985da9cd9b148ea824ca4a21d111bb9682fcf9234f2d760` |
| 10 | `theorem` | [UniformCauchySeqOnFilter.one_smulRight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/uniformcauchyseqonfilter-one-smulright--c40190b6cdf8adf6ac6549cc.md) | 455 | `result-track:c40190b6cdf8adf6ac6549cc2ce3e7053cef4e9b539ec38adc3f192e2458b27b` |
| 11 | `theorem` | [uniformCauchySeqOnFilter_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/uniformcauchyseqonfilter-of-deriv--9ed57bf841bb4dc933d129e3.md) | 478 | `result-track:9ed57bf841bb4dc933d129e3ecb1efcc74753c522827f8111ce310f0efc9693e` |
| 12 | `theorem` | [uniformCauchySeqOn_ball_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/uniformcauchyseqon-ball-of-deriv--97abad1a4bbc5074b8c13ce2.md) | 484 | `result-track:97abad1a4bbc5074b8c13ce2884156c2a29c68c8e765604df16b33816f025916` |
| 13 | `theorem` | [hasDerivAt_of_tendstoUniformlyOnFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/hasderivat-of-tendstouniformlyonfilter--7a7b5692e7f98379ad50406e.md) | 496 | `result-track:7a7b5692e7f98379ad50406ea896b5fed6461cef35444ee4c90b281cc7fe0bc6` |
| 14 | `theorem` | [hasDerivAt_of_tendstoLocallyUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/hasderivat-of-tendstolocallyuniformlyon--c6bfc6a22fba9eac5c1e02af.md) | 524 | `result-track:c6bfc6a22fba9eac5c1e02afe6a2a1e3e5fd9f78d16bf68f38d84bd3ecb5083e` |
| 15 | `theorem` | [hasDerivAt_of_tendsto_locally_uniformly_on'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/hasderivat-of-tendsto-locally-uniformly-on--9634eef4503b61b62cb271b8.md) | 537 | `result-track:9634eef4503b61b62cb271b82d13382180d868bba7543c4ece663e2d95801fb0` |
| 16 | `theorem` | [hasDerivAt_of_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/hasderivat-of-tendstouniformlyon--c080165df0c2681513b26a01.md) | 544 | `result-track:c080165df0c2681513b26a01f2d3db5701ef90164907d911176079978de289ee` |
| 17 | `theorem` | [hasDerivAt_of_tendstoUniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Varianta39b7a884e2a358541228c7060b318619caf2898b8e6b966a07d03aea870c506.lean/declarations/hasderivat-of-tendstouniformly--a31971d46c6763db1e0c981b.md) | 551 | `result-track:a31971d46c6763db1e0c981b66875e0a297ee40f99699021072b28b70911925f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
