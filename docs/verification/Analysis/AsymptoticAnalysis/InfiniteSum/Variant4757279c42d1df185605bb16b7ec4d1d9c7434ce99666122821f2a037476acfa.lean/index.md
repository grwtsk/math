# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.InfiniteSum.Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed07d83ddba3cbab203740240d39c87e2e463e1c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed07d83ddba3cbab203740240d39c87e2e463e1c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.NNReal.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cauchySeq_finset_iff_vanishing_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/cauchyseq-finset-iff-vanishing-norm--9b6917f8b78d0710e188455a.md) | 37 | `result-track:9b6917f8b78d0710e188455a5adef439aa7adfdae800fe2b82fa515d8e1f1473` |
| 2 | `theorem` | [summable_iff_vanishing_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/summable-iff-vanishing-norm--b1fb2978db3e04ec6f12b0c7.md) | 45 | `result-track:b1fb2978db3e04ec6f12b0c7c858b6d76a452100a4edd01494ebecf67717be66` |
| 3 | `theorem` | [cauchySeq_finset_of_norm_bounded_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/cauchyseq-finset-of-norm-bounded-eventually--0cd0e14339ff520a0c51de2a.md) | 49 | `result-track:0cd0e14339ff520a0c51de2aee1d29e6e8c6dd2d62124f476c0a38248eed0a5a` |
| 4 | `theorem` | [cauchySeq_finset_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/cauchyseq-finset-of-norm-bounded--1386e6ba224428cd7b5a1c8b.md) | 65 | `result-track:1386e6ba224428cd7b5a1c8be03ef8ed4150bd4884fe87ddaa98ee63c0dc648e` |
| 5 | `theorem` | [cauchySeq_range_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/cauchyseq-range-of-norm-bounded--bd751aa30abfb53a09ce1fd5.md) | 71 | `result-track:bd751aa30abfb53a09ce1fd5737a3d9c0f10ef00bf5d5fee3e501241ca51d274` |
| 6 | `theorem` | [cauchySeq_finset_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/cauchyseq-finset-of-summable-norm--18894bf3ddb1f7521b101118.md) | 84 | `result-track:18894bf3ddb1f7521b101118f37982cb815a70eee9d606880e439fb25f3aaca6` |
| 7 | `theorem` | [hasSum_of_subseq_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/hassum-of-subseq-of-summable--0e94d95664a5497202ff3ce5.md) | 91 | `result-track:0e94d95664a5497202ff3ce516e21af92eeb5ac1d448d5101409a1ea4a9b92dc` |
| 8 | `theorem` | [hasSum_iff_tendsto_nat_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/hassum-iff-tendsto-nat-of-summable-norm--a78237de1ae6e650454b9db9.md) | 96 | `result-track:a78237de1ae6e650454b9db9195e1da235d6470d63887b65259841baf6e2db2b` |
| 9 | `theorem` | [Summable.of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/summable-of-norm-bounded--5b9c5e3cd3ec0d45930ae380.md) | 102 | `result-track:5b9c5e3cd3ec0d45930ae38046443df6502f97c21604701f77c659425e2db030` |
| 10 | `theorem` | [HasSum.norm_le_of_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/hassum-norm-le-of-bounded--149b627758785e1f718c34a1.md) | 107 | `result-track:149b627758785e1f718c34a11180a82a8bb9f0643688b7b9923eaf0f76b03da4` |
| 11 | `theorem` | [tsum_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/tsum-of-norm-bounded--017214e028d2835df4f664be.md) | 114 | `result-track:017214e028d2835df4f664be5664d7024688ecdf6008e1deb7a972a82aa8ffd1` |
| 12 | `theorem` | [norm_tsum_le_tsum_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/norm-tsum-le-tsum-norm--760adc73195660b3265d72f6.md) | 123 | `result-track:760adc73195660b3265d72f677518dbcaebf731b3927c0c6b9a7fda1d3a248af` |
| 13 | `theorem` | [tsum_of_nnnorm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/tsum-of-nnnorm-bounded--65e1fe025ee37d50d086650b.md) | 131 | `result-track:65e1fe025ee37d50d086650b6855dfa9e2ca646bf07308d6b08650769157ce7d` |
| 14 | `theorem` | [nnnorm_tsum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/nnnorm-tsum-le--97fd6f90f5141362da303200.md) | 139 | `result-track:97fd6f90f5141362da303200d01ed68ac231aae96388390fa4053fa061e0345e` |
| 15 | `theorem` | [Summable.of_norm_bounded_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/summable-of-norm-bounded-eventually--1eaa4ab3391a87c858062826.md) | 146 | `result-track:1eaa4ab3391a87c8580628263dda5c0d655310aa7848fa2b5e81b1aa295d407a` |
| 16 | `theorem` | [Summable.of_norm_bounded_eventually_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/summable-of-norm-bounded-eventually-nat--a3ec7969ed6c31494a915c4e.md) | 152 | `result-track:a3ec7969ed6c31494a915c4e81ea271a8d37a730843cbfdb7dbffb424f028559` |
| 17 | `theorem` | [Summable.of_nnnorm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/summable-of-nnnorm-bounded--52a0b4ac2018b2cbb2351c63.md) | 156 | `result-track:52a0b4ac2018b2cbb2351c6372660c911751e78e045f1d17a799ea8f4d0d3b88` |
| 18 | `theorem` | [Summable.of_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/summable-of-norm--6866a00a273a5f316a3ff718.md) | 160 | `result-track:6866a00a273a5f316a3ff718f787aae5d05111e3c5c8f684a444fc50785ccc8f` |
| 19 | `theorem` | [Summable.of_nnnorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/declarations/summable-of-nnnorm--e60e8a089f447af78e6f7098.md) | 163 | `result-track:e60e8a089f447af78e6f7098062e992db7e9dcc6861b1abf9147f694f2111e58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
