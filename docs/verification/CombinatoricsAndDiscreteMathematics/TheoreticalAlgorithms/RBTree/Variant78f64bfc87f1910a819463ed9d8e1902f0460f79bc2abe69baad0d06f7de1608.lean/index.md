# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RBTree.Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b7d5ebf42384ffc849ea5787a7bd4dcece05d65",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b7d5ebf42384ffc849ea5787a7bd4dcece05d65`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RBTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/rbtree--359fa42d0880ee810a401e65.md) | 25 | `declaration-track:359fa42d0880ee810a401e657a80e58efe3e2aacf46ae5596b584de74d38b19e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/instance--22003aeefefca2817dad6c81.md) | 28 | `declaration-track:22003aeefefca2817dad6c81c63c2cc5231459813b3d23864090df71e59ca730` |
| 3 | `def` | [mkRBTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/mkrbtree--b4046e2dfd1fffddd17c7b49.md) | 31 | `declaration-track:b4046e2dfd1fffddd17c7b495478051679dbf4b0671ccfcc2144a0903cf63fb2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/instance--7156ca8a909a6afcfa94b16e.md) | 34 | `declaration-track:7156ca8a909a6afcfa94b16e97093ea545229557920b5f35005e43d9ee3bc9c5` |
| 5 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/empty--902f001aaf1b70845a84ee0e.md) | 40 | `declaration-track:902f001aaf1b70845a84ee0ec0cdd0fc8a14252d631479cfa6aa1702abbc92ec` |
| 6 | `def` | [depth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/depth--c404ba43ac23e61b0ceb4a32.md) | 43 | `declaration-track:c404ba43ac23e61b0ceb4a321fbbab9b4179898cb31ec59294a38681c82cffa3` |
| 7 | `def` | [fold](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/fold--e3de2b0aabd65bd57173cf0f.md) | 46 | `declaration-track:e3de2b0aabd65bd57173cf0f5450263464bc6af4af8334904dc7a3fac3f8eaa8` |
| 8 | `def` | [revFold](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/revfold--f2449e293390cbb957b83946.md) | 49 | `declaration-track:f2449e293390cbb957b8394628ca6cac33b9d84beb5a401abed5bc5d0bc0e97d` |
| 9 | `def` | [foldM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/foldm--f6d512404a2156e1a7be2401.md) | 52 | `declaration-track:f6d512404a2156e1a7be240195a231c52b0eafc621a90629d7b52c8eea821aae` |
| 10 | `def` | [forM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/form--3c875d8f064d2eb8a2be8095.md) | 55 | `declaration-track:3c875d8f064d2eb8a2be8095fc5127af7210a2c157b6ec0894d9090c2bba5605` |
| 11 | `def` | [forIn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/forin--c1fdf14fe4176c7d113c0e64.md) | 58 | `declaration-track:c1fdf14fe4176c7d113c0e64575b3dd71f013b2c9c4a6942dc935b07dac13097` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/instance--813a94287d951b6cfbda206b.md) | 61 | `declaration-track:813a94287d951b6cfbda206b47c94dfa4c258302677e1dad54b146e84131b9ed` |
| 13 | `def` | [isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/isempty--6065255cedda603cce75acfb.md) | 64 | `declaration-track:6065255cedda603cce75acfbabf1c25259290f249e97108a85fa044a14a6722f` |
| 14 | `def` | [toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/tolist--84f3cf8174123685b6315511.md) | 67 | `declaration-track:84f3cf8174123685b6315511175d2bcb0e5f78d55a84bd8b46539b0eb167a02f` |
| 15 | `def` | [toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/toarray--05babb5518f077dc8e12a115.md) | 70 | `declaration-track:05babb5518f077dc8e12a115e87449508b6afcaf750f0f703260392fe3d23e9a` |
| 16 | `def` | [min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/min--6771c38889a5976fc20b4253.md) | 73 | `declaration-track:6771c38889a5976fc20b42538607ba126adfa424e441100e72b24ea9b1bd7b6b` |
| 17 | `def` | [max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/max--730950731c33c733e65ac6e1.md) | 78 | `declaration-track:730950731c33c733e65ac6e10770963107b540f36a6510ea69bb31f0a2633422` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/instance--42159d23f21971d7f8eee37b.md) | 83 | `declaration-track:42159d23f21971d7f8eee37b1faed542ea08bcf7234e9fbadb46c57967b5bf9f` |
| 19 | `def` | [insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/insert--0b12edae9372c4284adba5bf.md) | 86 | `declaration-track:0b12edae9372c4284adba5bf8b6cd598d547f5240514204468c7c1dc438cc0bb` |
| 20 | `def` | [erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/erase--d7552c69c28c6dbb69999320.md) | 89 | `declaration-track:d7552c69c28c6dbb699993202d7ff2b643d6c8d4766ccdbd748c0d140144503f` |
| 21 | `def` | [ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/oflist--3dcdd3819f7cf5dbb89dbe34.md) | 92 | `declaration-track:3dcdd3819f7cf5dbb89dbe349167088ca5751de991ec8bbf58d4be708e79bc56` |
| 22 | `def` | [find?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/find--cbae282b28e407db4e4e7b78.md) | 96 | `declaration-track:cbae282b28e407db4e4e7b780afc2368b2b664de3bbde6e6dffc807f95a0aded` |
| 23 | `def` | [contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/contains--517557d7f23a6334e372b352.md) | 101 | `declaration-track:517557d7f23a6334e372b3527b459e6d24b4fea32513c77f1f80dd185a787f82` |
| 24 | `def` | [fromList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/fromlist--6509c2e5e0d609386ec93863.md) | 104 | `declaration-track:6509c2e5e0d609386ec93863681b6460c19a2cabd660f77f2fe13fd957dfefef` |
| 25 | `def` | [fromArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/fromarray--e6def69dca7ec5e38fc4b3dd.md) | 107 | `declaration-track:e6def69dca7ec5e38fc4b3dd5d6316a17aa505b7dcec148f4f735a73b0bb8404` |
| 26 | `def` | [all](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/all--e2e4a4bf929dd9f39b9d8304.md) | 110 | `declaration-track:e2e4a4bf929dd9f39b9d830409fa0acafab4985402bdbce052589eb1a3ac39ac` |
| 27 | `def` | [any](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/any--8a79ab9cc94a3c748794cec7.md) | 113 | `declaration-track:8a79ab9cc94a3c748794cec7682b0150f625437c63790ba6840c51b796e454ef` |
| 28 | `def` | [subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/subset--6c152742cd691c5914270503.md) | 116 | `declaration-track:6c152742cd691c59142705038086f39f5362a0f41045ec772e43f50ccae4bcf4` |
| 29 | `def` | [seteq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/seteq--8a142cf0deebcb94ebef49ce.md) | 119 | `declaration-track:8a142cf0deebcb94ebef49ce811c8378dc3768eba6ec85d95bee34a79c949f21` |
| 30 | `def` | [union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/union--ae0c98d074612144122470b6.md) | 122 | `declaration-track:ae0c98d074612144122470b676f8df69fea089f1563b5713e5c34a5b35205696` |
| 31 | `def` | [diff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/diff--1e368e8e426532a52d1c81d6.md) | 128 | `declaration-track:1e368e8e426532a52d1c81d607387d2412637fe73853e728725f7675094a9012` |
| 32 | `def` | [filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/filter--49baf0783afd0d4e8cc83401.md) | 135 | `declaration-track:49baf0783afd0d4e8cc8340157c996ebaf1b02b9cb4d723efa4c3ff9a0e1a681` |
| 33 | `def` | [rbtreeOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean/declarations/rbtreeof--cc022c97f6ed80b3520ea6d6.md) | 140 | `declaration-track:cc022c97f6ed80b3520ea6d63a522a185e9e7d2c6d585c7a526cf047c15b89f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
