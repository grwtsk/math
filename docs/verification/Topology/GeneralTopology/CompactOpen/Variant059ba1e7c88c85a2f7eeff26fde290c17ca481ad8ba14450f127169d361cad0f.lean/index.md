# Verification target: GRWTSK.Topology.GeneralTopology.CompactOpen.Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c3519c26f248f8febbe2923a782863135acf833",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c3519c26f248f8febbe2923a782863135acf833`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Equicontinuity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Compact` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Ascoli` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/instance--169b57b9257f864fc4b289d5.md) | 26 | `declaration-track:169b57b9257f864fc4b289d524287d098aa3e3a12236c65fba9e960a88f93f4f` |
| 2 | `theorem` | [isInducing_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/isinducing-tocontinuousmap--04c1223db401a5c0d78ddd54.md) | 30 | `result-track:04c1223db401a5c0d78ddd54e9d91a5c0d37950d6ee81db2d72f8097914025cb` |
| 3 | `theorem` | [isEmbedding_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/isembedding-tocontinuousmap--32e128335e12450f6efea013.md) | 36 | `result-track:32e128335e12450f6efea013abc01d7d8a8d78446679f5eb7e26e3e57e202648` |
| 4 | `instance` | [instContinuousEvalConst](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/instcontinuousevalconst--ecffcaa083460e81e03adf19.md) | 44 | `declaration-track:ecffcaa083460e81e03adf19af28803def9c08be5ef947e1e2e995c373a44186` |
| 5 | `instance` | [instContinuousEval](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/instcontinuouseval--ce0571e04b3039f594eaa43a.md) | 48 | `declaration-track:ce0571e04b3039f594eaa43a5615fe96b7ac950655f5e5866c7575d8ed1b407c` |
| 6 | `lemma` | [range_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/range-tocontinuousmap--8c44dabacfc62149fff4504d.md) | 53 | `result-track:8c44dabacfc62149fff4504dc821f4cdc7a6c6b0746e387e48308c6bd42b0206` |
| 7 | `theorem` | [isClosedEmbedding_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/isclosedembedding-tocontinuousmap--0aa019f3f21e9d0900158285.md) | 61 | `result-track:0aa019f3f21e9d0900158285892fe7628361ea3c60e2ed270b49f406b6ca596d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/instance--9240840d7af67f7bc2f034d3.md) | 74 | `declaration-track:9240840d7af67f7bc2f034d3fb9598f336d171c80cb1abb6616b65ee872bcf2a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/instance--ecab74175d8bb523c2493215.md) | 78 | `declaration-track:ecab74175d8bb523c24932150784ff0d61257e63c886b13a17ac4787bcbadfee` |
| 10 | `theorem` | [continuous_of_continuous_uncurry](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/continuous-of-continuous-uncurry--6cf1825c6ff5fdee9f063942.md) | 85 | `result-track:6cf1825c6ff5fdee9f063942bfaba6f03247531f4ef22c4f2ebd540190c526b6` |
| 11 | `theorem` | [continuous_comp](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/continuous-comp--3ec9d67a9b1928a5943a3b5d.md) | 92 | `result-track:3ec9d67a9b1928a5943a3b5d5dd103e116441326dff13637a5c60b9d1d102712` |
| 12 | `theorem` | [continuous_comp_left](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/continuous-comp-left--3b4f63285caaaea0a5463564.md) | 99 | `result-track:3b4f63285caaaea0a5463564bfe87bc80234b6b3dbffe0c9d85eba4ff817193e` |
| 13 | `theorem` | [continuous_comp_right](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/continuous-comp-right--b9e0ba9af4562dc5bcb5e8bf.md) | 105 | `result-track:b9e0ba9af4562dc5bcb5e8bf9abb41125c6df2972b35b9c8520c6fd38ea9a1cb` |
| 14 | `def` | [compLeft](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/compleft--4433b37710f3bd42e3f328ee.md) | 113 | `declaration-track:4433b37710f3bd42e3f328ee87bd432a0793b03c3f83252d579faa36917bfce7` |
| 15 | `def` | [compRight](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/compright--8395447b9af752341dffe787.md) | 123 | `declaration-track:8395447b9af752341dffe787ee2e73401750b1939ba14126ab768ba17d398a4b` |
| 16 | `lemma` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/isclosedembedding-coe--c1280cf5cac2c0474693fd91.md) | 135 | `result-track:c1280cf5cac2c0474693fd9196ac810c3c2f0fcaa11b1e9c11d38d358bb39152` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/instance--06c33ce529ac39a6708904b6.md) | 139 | `declaration-track:06c33ce529ac39a6708904b60a0a5711d79e83da0f101c81c8bbfc5fb10d5707` |
| 18 | `theorem` | [locallyCompactSpace_of_equicontinuousAt](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/locallycompactspace-of-equicontinuousat--ab2208b0391f40366ffbd0d9.md) | 150 | `result-track:ab2208b0391f40366ffbd0d9deae2d1057acad56b939bbd52ab0ecb87d8784f2` |
| 19 | `theorem` | [locallyCompactSpace_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/declarations/locallycompactspace-of-hasbasis--0686e13e5bc4011045ae6ba2.md) | 190 | `result-track:0686e13e5bc4011045ae6ba2dc1d5c9d19e5041487d18f1516be32d64a804a40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
