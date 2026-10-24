# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.InfiniteSum.Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06586954d70b1db14a5eb827b659a5f67c792a22",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06586954d70b1db14a5eb827b659a5f67c792a22`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.NNReal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cauchySeq_finset_iff_vanishing_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/cauchyseq-finset-iff-vanishing-norm--c09cf80c8fee07fb3ae2084a.md) | 40 | `result-track:c09cf80c8fee07fb3ae2084a84d7763b24e159bea380c7376477a9bcaa4a685b` |
| 2 | `theorem` | [summable_iff_vanishing_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/summable-iff-vanishing-norm--9363de14fc89bf20cbc51672.md) | 49 | `result-track:9363de14fc89bf20cbc5167294aa3256855ad48fe0bd0c189f1890b445ba95c7` |
| 3 | `theorem` | [cauchySeq_finset_of_norm_bounded_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/cauchyseq-finset-of-norm-bounded-eventually--0d5506056974f65a09866d0d.md) | 54 | `result-track:0d5506056974f65a09866d0d3b87d1f00cf1518bea7a637b97a77f976372bf10` |
| 4 | `theorem` | [cauchySeq_finset_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/cauchyseq-finset-of-norm-bounded--ae16942f3bcda9adb0bb2217.md) | 70 | `result-track:ae16942f3bcda9adb0bb2217345d1665ab7ab9cb33055222d976daeebb3a8bbe` |
| 5 | `theorem` | [cauchySeq_range_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/cauchyseq-range-of-norm-bounded--b08613368783109cfa359060.md) | 77 | `result-track:b08613368783109cfa3590604d1bfcbb1de8c63a1f7b8b4d06c60c3c3f1e7ea8` |
| 6 | `theorem` | [cauchySeq_finset_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/cauchyseq-finset-of-summable-norm--90c685ce204c2574e18086f7.md) | 91 | `result-track:90c685ce204c2574e18086f7c3cd644d6b3cef5741e6ba5a72d9092bff871c6e` |
| 7 | `theorem` | [hasSum_of_subseq_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/hassum-of-subseq-of-summable--0e336bb89a57cf08fa8eb9d2.md) | 99 | `result-track:0e336bb89a57cf08fa8eb9d2c746a3d218517c857f994f5d8d374b99b96a23a3` |
| 8 | `theorem` | [hasSum_iff_tendsto_nat_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/hassum-iff-tendsto-nat-of-summable-norm--b90189b30eb9becfb6a61fa5.md) | 105 | `result-track:b90189b30eb9becfb6a61fa53fe408041f007eab3a57e57f9b40257cda91c21a` |
| 9 | `theorem` | [summable_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/summable-of-norm-bounded--5e4867a927f55c157327bf7d.md) | 112 | `result-track:5e4867a927f55c157327bf7d91427ca8de5c2c8357da4a856761f2741d70371e` |
| 10 | `theorem` | [HasSum.norm_le_of_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/hassum-norm-le-of-bounded--9a0beeb706006fb3362b9337.md) | 118 | `result-track:9a0beeb706006fb3362b9337768ecb66c2af11ddf081fb7db18abbed17fc3cf9` |
| 11 | `theorem` | [tsum_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/tsum-of-norm-bounded--c1115a205a285ad573e25ca9.md) | 126 | `result-track:c1115a205a285ad573e25ca91d072eebca51156d72f1f23bc6878e538c74ceeb` |
| 12 | `theorem` | [norm_tsum_le_tsum_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/norm-tsum-le-tsum-norm--4c0d38ca91b33ac0397b22b5.md) | 136 | `result-track:4c0d38ca91b33ac0397b22b5cb4d0b34aac42c52842d4da0a0128bd54b86f6ed` |
| 13 | `theorem` | [tsum_of_nnnorm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/tsum-of-nnnorm-bounded--8a583644e618f83dedd86316.md) | 145 | `result-track:8a583644e618f83dedd863166633320f59b3cc2a0d3e61bacdf8899300896517` |
| 14 | `theorem` | [nnnorm_tsum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/nnnorm-tsum-le--a62a6d8ad028eaf8ef1fb556.md) | 154 | `result-track:a62a6d8ad028eaf8ef1fb556cb859367f69f45d7129388e885dde30ea0afae1f` |
| 15 | `theorem` | [summable_of_norm_bounded_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/summable-of-norm-bounded-eventually--4c96b1de0f58008607c95e09.md) | 162 | `result-track:4c96b1de0f58008607c95e097d1aac57e1ea237db6a9bdf637beadbde598b35b` |
| 16 | `theorem` | [summable_of_nnnorm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/summable-of-nnnorm-bounded--75f0c02c2b1f3c31adc7b204.md) | 167 | `result-track:75f0c02c2b1f3c31adc7b20449e30c17877770fd6d235afcbbbc17ddd0599f2d` |
| 17 | `theorem` | [summable_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/summable-of-summable-norm--9f3d91a8f49cc34479a759db.md) | 173 | `result-track:9f3d91a8f49cc34479a759db42ae06242129ef75874dbcfa03020461ccf2bcf6` |
| 18 | `theorem` | [summable_of_summable_nnnorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantb93fbe50369a2de621f597704306d87c1598a0af0ffa67e8ba78d09c3f674d12.lean/declarations/summable-of-summable-nnnorm--7a1904f632e1fa187e828572.md) | 177 | `result-track:7a1904f632e1fa187e8285722f590a5917afb7bd29c19ce8768e1a1e345fbea0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
