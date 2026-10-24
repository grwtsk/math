# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6e2669ddeb6bc10e8f23bfa9df699cf26a42144",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6e2669ddeb6bc10e8f23bfa9df699cf26a42144`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean.json)

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
| 1 | `def` | [expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand--a978824ab5ff69ead5686040.md) | 36 | `declaration-track:a978824ab5ff69ead56860400d0b4906c5f9c580c5adf0ae4083f34acffb5519` |
| 2 | `theorem` | [coe_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/coe-expand--43d4a99a97bdc890dbd966c4.md) | 39 | `result-track:43d4a99a97bdc890dbd966c4f698bf949796d86d5a0f90291e0bbcf581e215b3` |
| 3 | `theorem` | [expand_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-c--c1fd28a2a2852826abd7938c.md) | 42 | `result-track:c1fd28a2a2852826abd7938cdfeadb0e78328a771fcc16412b57f02d2c45a896` |
| 4 | `theorem` | [expand_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-x--14681bab63edba26b76a95ab.md) | 46 | `result-track:14681bab63edba26b76a95ab0a18439f42499b17f05681fe647e2a4a8fb73696` |
| 5 | `theorem` | [expand_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-monomial--e1b52b2a1487ac1015875db0.md) | 50 | `result-track:e1b52b2a1487ac1015875db07a87c9daa219f5bf6c480e7b74e5dd3aa0fcd6fa` |
| 6 | `lemma` | [expand_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-zero--feb6ef2280216d00a873d9ca.md) | 57 | `result-track:feb6ef2280216d00a873d9ca127ee3286699582a84c87bd61174ea4cd85bb831` |
| 7 | `lemma` | [expand_zero_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-zero-apply--6bd18d8c2909e0fea76e9d8e.md) | 62 | `result-track:6bd18d8c2909e0fea76e9d8ee3d873cb750afcfc5f525839d331f75cb7a1dd9f` |
| 8 | `theorem` | [expand_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-one--b753c69de3b5c0a67ad43c12.md) | 66 | `result-track:b753c69de3b5c0a67ad43c12bca96eccf6eff45d40b0065bc958bc871de8a634` |
| 9 | `theorem` | [expand_one_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-one-apply--7a56b675d2fd22a79fbf84fa.md) | 70 | `result-track:7a56b675d2fd22a79fbf84fa8d6efc1263be50050019c4a546574865d2eea64b` |
| 10 | `theorem` | [expand_mul_eq_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-mul-eq-comp--2df1397a7b81a09bf3a36d40.md) | 72 | `result-track:2df1397a7b81a09bf3a36d4032153cf17655a7a32f2726f3f7c94f700fa76e03` |
| 11 | `theorem` | [expand_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-mul--33d0c851e74763e9faff54da.md) | 77 | `result-track:33d0c851e74763e9faff54da530201d1bf27c8b1a52216ed256c55a6947a7145` |
| 12 | `lemma` | [coeff_expand_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/coeff-expand-smul--51e7af30f88adb23a4dfd803.md) | 81 | `result-track:51e7af30f88adb23a4dfd803f6a3c619a8ab79f63b9a8a5bbcffdaf845012199` |
| 13 | `lemma` | [coeff_expand_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/coeff-expand-zero--b4bf476c7f62461f4db4f3a7.md) | 87 | `result-track:b4bf476c7f62461f4db4f3a7d1f16b072096a6705760cb988dfe0ab03843b5c8` |
| 14 | `theorem` | [expand_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-injective--16e684f36f264afcd674d329.md) | 93 | `result-track:16e684f36f264afcd674d329a061aa83573499b0b37b2befce86065c08238079` |
| 15 | `theorem` | [expand_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-inj--d69edc3dd901be177c30411b.md) | 99 | `result-track:d69edc3dd901be177c30411b6e2015628bb7f81879e7cc0310eae42cc124651e` |
| 16 | `theorem` | [expand_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-eq-zero--2c421d8aaccdba2883bb274d.md) | 102 | `result-track:2c421d8aaccdba2883bb274d2d649fca54605810433faedefc140c6324c98601` |
| 17 | `theorem` | [expand_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-ne-zero--c07ad88982d714f060412d8d.md) | 105 | `result-track:c07ad88982d714f060412d8d7e284f45c454f319316c042c23be79f4ac5cad70` |
| 18 | `theorem` | [expand_eq_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-eq-c--df6b75c6601a3600fd51183b.md) | 108 | `result-track:df6b75c6601a3600fd51183b31f80a9f719b862f795a38c26977b12654bc28c1` |
| 19 | `theorem` | [expand_comp_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-comp-bind--f2939f0b0db611c3777214c3.md) | 112 | `result-track:f2939f0b0db611c3777214c3e13ab8f69669c8be3ea2c49bc238567dd73b6e79` |
| 20 | `theorem` | [expand_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/expand-bind--56be08ae69fb0fe91bfdf3c8.md) | 117 | `result-track:56be08ae69fb0fe91bfdf3c8b2ffe16923f035cba5fe1766af5d3b1a6934e314` |
| 21 | `theorem` | [map_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/map-expand--7ae05e9ef7c582eb0a8f39a7.md) | 122 | `result-track:7ae05e9ef7c582eb0a8f39a7a9301328470464466f4da73ff9699c10cb0b585b` |
| 22 | `theorem` | [rename_comp_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/rename-comp-expand--905ae098bc75773141bac8f6.md) | 126 | `result-track:905ae098bc75773141bac8f66792bd2ddf3240ca07aa1f4dd336c471ade78d5c` |
| 23 | `theorem` | [rename_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/rename-expand--2ffdefbeb77049e03d0a41d6.md) | 133 | `result-track:2ffdefbeb77049e03d0a41d68085c1fd439d5e83198d1ca9acb181efcad6a305` |
| 24 | `lemma` | [eval₂Hom_comp_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/eval-hom-comp-expand--1a81b237110850082ae3bd09.md) | 137 | `result-track:1a81b237110850082ae3bd09a7781df8612c0aca4c65a9ab1c6e01fb4b9064e3` |
| 25 | `lemma` | [eval₂_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/eval-expand--24961877969a74e2e4540b1c.md) | 143 | `result-track:24961877969a74e2e4540b1c5cf36450b21c2c5693de86d6caf165a5c66c7ee1` |
| 26 | `lemma` | [aeval_comp_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/aeval-comp-expand--4dbd3e23f25c47b049be1aef.md) | 148 | `result-track:4dbd3e23f25c47b049be1aef9cb1ef7c28592400ee013b9dc7f71fa5a2fd480f` |
| 27 | `lemma` | [aeval_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/aeval-expand--53d4ba4f20ec8787be29eccb.md) | 153 | `result-track:53d4ba4f20ec8787be29eccbaa2977ece82cc6842c4d4a471aadfacdb4b0d21c` |
| 28 | `lemma` | [eval_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/eval-expand--07a72d1fc474e7894bf9b6e4.md) | 159 | `result-track:07a72d1fc474e7894bf9b6e4dccfd33152907d661f7b89c04b15bfcfdcb66822` |
| 29 | `lemma` | [support_expand_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/support-expand-subset--31df69119255395265e0ad15.md) | 167 | `result-track:31df69119255395265e0ad157474a0a1cdefad96949de740aee0ce66eab1164d` |
| 30 | `lemma` | [coeff_expand_of_not_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/coeff-expand-of-not-dvd--9bfba74b4d713aab255c3924.md) | 174 | `result-track:9bfba74b4d713aab255c392445af1164d73f5bd65305ed7ab42d28cda025acd2` |
| 31 | `lemma` | [support_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/support-expand--93fd41fc1145da40c431ab52.md) | 182 | `result-track:93fd41fc1145da40c431ab522faa949fcc9318b6dde981bbad09cc40f5a61242` |
| 32 | `theorem` | [totalDegree_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/totaldegree-expand--a5f72a1f507bb9f6540e3f4e.md) | 187 | `result-track:a5f72a1f507bb9f6540e3f4e55e90aecc6f100d7b129f30eda89313385d7dead` |
| 33 | `theorem` | [isLocalHom_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/islocalhom-expand--ec305b08d3b321c07ae64ea8.md) | 208 | `result-track:ec305b08d3b321c07ae64ea8c465dd599650250ebbe1ebb0d8b07fb85e34beb0` |
| 34 | `theorem` | [of_irreducible_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant65b5db7c8a3dcf64e229cfa6ae68c918274690879719e4651fa13c802677f5fc.lean/declarations/of-irreducible-expand--0c7617fdb45031e7a158ad2f.md) | 219 | `result-track:0c7617fdb45031e7a158ad2f5cbc8e0ffe4f428b9a7b6109be81429190fea11a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
