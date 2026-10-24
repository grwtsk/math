# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZeroSummability.Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b5e1595f7828376f08754258199dc4ab042d175",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b5e1595f7828376f08754258199dc4ab042d175`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Tail` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.LocalCount` — import line 7; external provider; requires a separately pinned dependency.
- `Zeta23.ExplicitFormula` — import line 8; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson.PaperFT` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [gammaOf_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/gammaof-re--31b6484ebb73bd38d3b06d14.md) | 20 | `result-track:31b6484ebb73bd38d3b06d14e6658cb2ef8be0ac511fc36786c62e97bd0be4c4` |
| 2 | `lemma` | [gammaOf_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/gammaof-im--8e3d7e9dc4853dff1e201494.md) | 23 | `result-track:8e3d7e9dc4853dff1e20149488a495416f9e48f8c71387eb9a6a89de8947047b` |
| 3 | `lemma` | [abs_im_le_norm_gammaOf](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/abs-im-le-norm-gammaof--16f3ad1bb6272e918d700bab.md) | 26 | `result-track:16f3ad1bb6272e918d700bab5d0919c0772a1f938a01ea34d4b56dde0181248d` |
| 4 | `lemma` | [abs_gammaOf_im_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/abs-gammaof-im-lt--880b8dce1b941108337b2121.md) | 30 | `result-track:880b8dce1b941108337b21217bb47d4200cc1f283664a3fa6c77f96b0859493f` |
| 5 | `lemma` | [abs_gammaOf_im_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/abs-gammaof-im-le--74a2287d83fa7fb21bca3ee4.md) | 34 | `result-track:74a2287d83fa7fb21bca3ee44e98e87a849cff6daf07e4e9b881847ab5cb55a7` |
| 6 | `lemma` | [weight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/weight-le--25934f69d0eb8ec3d91d687c.md) | 40 | `result-track:25934f69d0eb8ec3d91d687ced99d9376aaf7bf581cf638de626b7ebe65b3f99` |
| 7 | `lemma` | [summable_weight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/summable-weight--23b6c81e776d6452f836e642.md) | 66 | `result-track:23b6c81e776d6452f836e642cc328f500b0dc71dfa4a2592f071a8f98b7724f0` |
| 8 | `def` | [totalWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/totalweight--c2886cc957c01dfde351f8ee.md) | 77 | `declaration-track:c2886cc957c01dfde351f8ee8634e06d42ad5d254dea63565adcc237cbff465c` |
| 9 | `def` | [key](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/key--f312c2409a06f02e3da6649d.md) | 82 | `declaration-track:f312c2409a06f02e3da6649d91d1dc29cf192dabc58ce02a334546bb7fb47d23` |
| 10 | `lemma` | [key_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/key-lt--299a41e9d034bd0d1f54d2c4.md) | 84 | `result-track:299a41e9d034bd0d1f54d2c420fa36147033c66b1563077ceb46375f8608e801` |
| 11 | `lemma` | [le_key_add_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/le-key-add-one--284381578b303860ae40f254.md) | 87 | `result-track:284381578b303860ae40f254ee97c7ca86612dda75014e659a87535f1cd4dd1c` |
| 12 | `lemma` | [one_add_sq_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/one-add-sq-ge--38a22c3ddc33a2898863ba85.md) | 91 | `result-track:38a22c3ddc33a2898863ba8522c3d1fd5dff1092f5d01346157e5e4ddb49e564` |
| 13 | `theorem` | [zero_sum_inv_sq_gen](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/zero-sum-inv-sq-gen--6acc7d8a0a32de9cd36be473.md) | 105 | `result-track:6acc7d8a0a32de9cd36be473689a8bab5c20b64cc43b5c84dda3479b42cf116e` |
| 14 | `theorem` | [EF_zero_sum_summable_gen](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/ef-zero-sum-summable-gen--984ee6d609589b07cdb41b0c.md) | 163 | `result-track:984ee6d609589b07cdb41b0c5bb1886bfeb656a1e2b27a29c7ba43c1e78971e2` |
| 15 | `theorem` | [zero_sum_inv_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/zero-sum-inv-sq--6b22b37c982b5dd160b09fa7.md) | 231 | `result-track:6b22b37c982b5dd160b09fa7c11092cdfc756b6f70c4340e74114d2097617634` |
| 16 | `theorem` | [EF_zero_sum_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant1379d830367ec69855fc21d18c9fc5f69393d032e5ff878e779177cf14b8caf8.lean/declarations/ef-zero-sum-summable--1b71d45e083c4b62501caa3a.md) | 241 | `result-track:1b71d45e083c4b62501caa3aa406611ebe6c0556dba9d6e0838e6f4219cc56de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
