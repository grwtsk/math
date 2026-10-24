# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PPChi.Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db2e3d52969f93d93f479a49e8e0c273da06f899",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db2e3d52969f93d93f479a49e8e0c273da06f899`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideB.PPKernel` — import line 10; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.PP` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.Hypotheses` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.PrimeSideChi` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumA2gCoprime](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/suma2gcoprime--3b22e50f69ceb842a1841da9.md) | 52 | `declaration-track:3b22e50f69ceb842a1841da986c3973c4c8f3cc77855142f04562af257078698` |
| 2 | `lemma` | [sum_w_eq_sumA2gCoprime](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/sum-w-eq-suma2gcoprime--15523081cd408067501a723c.md) | 57 | `result-track:15523081cd408067501a723cbf149a32a09dd04274b9cb8292b29031146da201` |
| 3 | `def` | [AminusPh](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/aminusph--319b204c07cf500e5cf859ed.md) | 73 | `declaration-track:319b204c07cf500e5cf859edb4cf6f9dab2bfbc14ad98bf8e9c0fb13cfeb1b5f` |
| 4 | `def` | [AplusPh](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/aplusph--1e478f839b4bdf389f5fc976.md) | 78 | `declaration-track:1e478f839b4bdf389f5fc97624bf874be2e873dfc62c8362e58db501a75e60b3` |
| 5 | `lemma` | [AminusPh_self](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/aminusph-self--6c48c0d608e23ef486c30af5.md) | 83 | `result-track:6c48c0d608e23ef486c30af5456abb74164acbe0441f1edfd7673da2f900ce4d` |
| 6 | `lemma` | [continuous_Jker_offset_ph](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/continuous-jker-offset-ph--32f3a5e78470f2b2262665cb.md) | 88 | `result-track:32f3a5e78470f2b2262665cbb8e3fdbf0b8355f80eb468c4291a94b99c7988bf` |
| 7 | `lemma` | [inner_cos_cos_ph](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/inner-cos-cos-ph--9b2bb0f2d58e24c25d533023.md) | 96 | `result-track:9b2bb0f2d58e24c25d5330230f861255d8ed51ed33591c1cece13ca071dc4eb9` |
| 8 | `lemma` | [Mform_cos_cos_ph](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/mform-cos-cos-ph--c8b2258c5bff07a73c3a1dbb.md) | 121 | `result-track:c8b2258c5bff07a73c3a1dbb1366c6998a02957ca5a2ae57e43afd94ae947cc3` |
| 9 | `lemma` | [abs_AplusPh_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/abs-aplusph-le--f037e50ab5e185c081d74d3a.md) | 147 | `result-track:f037e50ab5e185c081d74d3aa80932b12090aca45c2b5259241970abc09a92e0` |
| 10 | `lemma` | [sub_mul_AminusPh_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/sub-mul-aminusph-eq--89e41942d8fc44fe7eeb8fe5.md) | 181 | `result-track:89e41942d8fc44fe7eeb8fe56f8a6fd1159f9a59dad71644d5664288c5faa067` |
| 11 | `lemma` | [cpow_neg_half_sub_I_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/cpow-neg-half-sub-i-mul--541e3ddc283655c5eb653122.md) | 243 | `result-track:541e3ddc283655c5eb6531229075cf527bf0b1d4a28790899dee249abd7e8c8d` |
| 12 | `lemma` | [PXc_eq_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/pxc-eq-sum--4e5f336c413ae88ec252edbe.md) | 269 | `result-track:4e5f336c413ae88ec252edbe31f1918393d3beced3475c8af95501fa8235f3d3` |
| 13 | `lemma` | [MV_real_ph](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/mv-real-ph--8dd19167e58471de2a10e099.md) | 311 | `result-track:8dd19167e58471de2a10e099de670ff3f95df95b5c71e0487382f1a48fa8fbf4` |
| 14 | `lemma` | [MV_size_le₂](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/mv-size-le--e4ad7b5bdebbd2fc3c845be0.md) | 377 | `result-track:e4ad7b5bdebbd2fc3c845be07a523c86c26ec449411094e5b0b3df6ba35898af` |
| 15 | `lemma` | [Mform_PXc_PXc](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/mform-pxc-pxc--d02af7be7aeefa99f18d1ac8.md) | 433 | `result-track:d02af7be7aeefa99f18d1ac807a9d4b9fc15a5fd43ecb1beba2eb083f94a22b9` |
| 16 | `lemma` | [diag_estimate_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/diag-estimate-chi--66275e1e050ba37df67b1371.md) | 520 | `result-track:66275e1e050ba37df67b1371a5deb7e93b174d21b76c69a0ac54028c9ebc9374` |
| 17 | `lemma` | [O2_estimate_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/o2-estimate-chi--911559a0014823c8d4b814a5.md) | 561 | `result-track:911559a0014823c8d4b814a5ecc9230100f9525c05a63d6f5213b372af13abf5` |
| 18 | `theorem` | [O1_bound_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/o1-bound-chi--a5e0251dc8c1a98d00e5dcdf.md) | 615 | `result-track:a5e0251dc8c1a98d00e5dcdf2e06290528a533957b13fcf977751dc0fc96d894` |
| 19 | `theorem` | [sumA2gCoprime_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/suma2gcoprime-upper--c997e7552a3943debfc71b32.md) | 779 | `result-track:c997e7552a3943debfc71b32506a93a24997ce31d5681f993b46cb17d728ee83` |
| 20 | `theorem` | [sumA2gCoprime_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/suma2gcoprime-lower--6a44b5480ab5b1bcad909ff9.md) | 804 | `result-track:6a44b5480ab5b1bcad909ff9895c48f7aa5cea20fbb7bd24d853e706808c52ac` |
| 21 | `theorem` | [prop_PP_chi_uniform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/prop-pp-chi-uniform--f065e56444a448652ac30e47.md) | 860 | `result-track:f065e56444a448652ac30e47d30aa34b939b0cc3119cd9af2aa69d31debe4eab` |
| 22 | `theorem` | [prop_PP_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/declarations/prop-pp-chi--dafa112f05ff7e3ba6390f81.md) | 996 | `result-track:dafa112f05ff7e3ba6390f8156d8d089da629d0c92258a6094ace711d8e65e9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
