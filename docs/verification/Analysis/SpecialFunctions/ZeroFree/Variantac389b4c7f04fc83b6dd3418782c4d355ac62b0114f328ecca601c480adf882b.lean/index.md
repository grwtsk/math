# Verification target: GRWTSK.Analysis.SpecialFunctions.ZeroFree.Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bf0396dd18bbd64fbbbbda7263d8add161afe60",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bf0396dd18bbd64fbbbbda7263d8add161afe60`.

Source path: `GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula.ZeroFree` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lm](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/lm--242ce528e8ad70dd0e110537.md) | 24 | `declaration-track:242ce528e8ad70dd0e110537127776070d0ae8679505298b7c0c28e41dc85854` |
| 2 | `theorem` | [Lm_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/lm-one-sub--e6b5c2a0b209b1e998cc6136.md) | 26 | `result-track:e6b5c2a0b209b1e998cc613692025a9c7d0a258702460be699874bb19f7f8496` |
| 3 | `theorem` | [logDeriv_Gammaℝ_offreal](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/logderiv-gamma-offreal--f90943ed38e452732d280421.md) | 30 | `result-track:f90943ed38e452732d280421fcc7b046d19fc4d6128bc679a735a95d011b6cb2` |
| 4 | `theorem` | [Lm_eq](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/lm-eq--e07849a3c2998a281635b3d8.md) | 66 | `result-track:e07849a3c2998a281635b3d8d2c9371a12ad8448548a8f1a93358179646aa146` |
| 5 | `theorem` | [L2_eq_digamma](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/l2-eq-digamma--8e88fea222cc549ed6b767d3.md) | 78 | `result-track:8e88fea222cc549ed6b767d37cc52c3245fe068ad90bb1c5ef2045558865cc18` |
| 6 | `theorem` | [logDeriv_zeta_add_L2](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/logderiv-zeta-add-l2--b8b4a883ed635d6ba2002be3.md) | 85 | `result-track:b8b4a883ed635d6ba2002be3e2eb03d3ddf320d24971a10bba0b52e5cd963b80` |
| 7 | `theorem` | [hardyW_eq_mul](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/hardyw-eq-mul--2795b4ae0053e857aaba0b26.md) | 97 | `result-track:2795b4ae0053e857aaba0b2648eebf6812d593522d8b6f36933e98f42644d916` |
| 8 | `theorem` | [norm_digamma_sub_log_le](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/norm-digamma-sub-log-le--550953465f4745b1391bb2b2.md) | 106 | `result-track:550953465f4745b1391bb2b27a95d187e2a633b2bb5bcde140f94644dd60a230` |
| 9 | `theorem` | [re_digamma_ge](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/re-digamma-ge--377eebb1094341f1b6940f1f.md) | 123 | `result-track:377eebb1094341f1b6940f1fb3735cbdb71d97900a850eae1f32ffde032b7a98` |
| 10 | `theorem` | [digamma_add_nat_offreal](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/digamma-add-nat-offreal--7d3efbe1233893023335a606.md) | 135 | `result-track:7d3efbe1233893023335a6067d640ae47680990867759f60f253e834043b7652` |
| 11 | `theorem` | [re_digamma_half_one_sub_ge](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/re-digamma-half-one-sub-ge--eab834cd810072e536d6bb14.md) | 150 | `result-track:eab834cd810072e536d6bb142c02f2b15b16a9112984f7075b52a94af56d6f00` |
| 12 | `theorem` | [re_L2_ge](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/re-l2-ge--6a9cdf3f3f659672362bec8e.md) | 205 | `result-track:6a9cdf3f3f659672362bec8ec3da7c123d1fa21d1930b195b034c1273c60b4cf` |
| 13 | `theorem` | [abs_re_Lm_le](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/abs-re-lm-le--6e6c7f0a2d80cacae8a6aedb.md) | 228 | `result-track:6e6c7f0a2d80cacae8a6aedbd74818e531be806dd5a149b16a1260409c1a5c45` |
| 14 | `theorem` | [finite_absWindow](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/finite-abswindow--6e5aa7b049c873cb7a3edb7a.md) | 364 | `result-track:6e5aa7b049c873cb7a3edb7a6fc53cc35a1a8c0d013911d0313b7610c8e098fe` |
| 15 | `def` | [NT](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/nt--93a7487c7959208a401069c0.md) | 371 | `declaration-track:93a7487c7959208a401069c01a86ced4ddf7df5db87c26b67be0f724c8e62ef6` |
| 16 | `theorem` | [sum_mult_one_sub_re](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/sum-mult-one-sub-re--8b30129b54f2c884898b3aaf.md) | 374 | `result-track:8b30129b54f2c884898b3aaf0c583707bbc151769fbed8dff6d7faf164dc45bc` |
| 17 | `theorem` | [two_mul_sum_mult_one_sub_re](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/two-mul-sum-mult-one-sub-re--c1b18bc1329a9a3905d90270.md) | 389 | `result-track:c1b18bc1329a9a3905d90270ba2023c448072fe5098ac179163b5e22d8d78493` |
| 18 | `theorem` | [re_logDeriv_xi_ge](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/re-logderiv-xi-ge--e5ffa75879b3a4bffba2aaea.md) | 397 | `result-track:e5ffa75879b3a4bffba2aaea80da069f12268c3ef0bb452e7ddddc310fc5c94b` |
| 19 | `theorem` | [exists_NT_ge](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/exists-nt-ge--2735191710284424dd1a01a3.md) | 459 | `result-track:2735191710284424dd1a01a36d9ecf05ef749965727617ff0cce2ed92ff07621` |
| 20 | `theorem` | [regionA](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/regiona--dac70abc9fa88c708e99267d.md) | 492 | `result-track:dac70abc9fa88c708e99267d525071dc08bf7382747284174241931fd14abade` |
| 21 | `theorem` | [regionB](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/regionb--d2ad332f08742c081afef48d.md) | 508 | `result-track:d2ad332f08742c081afef48dd2ba07f90ee736d19e2784793f5961590d1ce80c` |
| 22 | `theorem` | [hardyW_ne_zero_of_one_le_re](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/hardyw-ne-zero-of-one-le-re--d18760ae0be236d8dae73b5d.md) | 524 | `result-track:d18760ae0be236d8dae73b5d7fb03624b185ec343666aeec257db8b6e6916c04` |
| 23 | `theorem` | [wZerosInStrip_holds](../../../../../mathematics/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/declarations/wzerosinstrip-holds--7fb7a448739b60239acd4c3f.md) | 547 | `result-track:7fb7a448739b60239acd4c3fd8b706c573210d34f46fa60addc3d5b136c9bf27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
