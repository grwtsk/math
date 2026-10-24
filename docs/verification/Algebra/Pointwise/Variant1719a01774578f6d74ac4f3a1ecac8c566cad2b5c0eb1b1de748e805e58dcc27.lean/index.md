# Verification target: GRWTSK.Algebra.Pointwise.Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "516b5a73a698c8d10633377c44382980191e3f7c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `516b5a73a698c8d10633377c44382980191e3f7c`.

Source path: `GRWTSK/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/instance--18a311d82d9bc36234db4411.md) | 44 | `declaration-track:18a311d82d9bc36234db4411fc1d48be09d274c2bbaa54fe85546fdb2a7b540b` |
| 2 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/coe-mul--d4348d40113846595a058cdf.md) | 47 | `result-track:d4348d40113846595a058cdff0e5822346aec41b4875c1b4b1938095977b75a3` |
| 3 | `theorem` | [mul_apply](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/mul-apply--91af8d2155cc0c2d2a3c24d8.md) | 51 | `result-track:91af8d2155cc0c2d2a3c24d8cc067e686f1c43855c1fc5336b20cb370e0fee4b` |
| 4 | `theorem` | [single_mul](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/single-mul--7bc950c98d39b2dfb7ac10eb.md) | 55 | `result-track:7bc950c98d39b2dfb7ac10ebb4ec8759df062c232efc2926950eee1ae0d6a271` |
| 5 | `lemma` | [support_mul_subset_left](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/support-mul-subset-left--b7141bd148528ab4952a496a.md) | 58 | `result-track:b7141bd148528ab4952a496a7547f8125242098c91f2d79143fda299599d9abe` |
| 6 | `lemma` | [support_mul_subset_right](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/support-mul-subset-right--c3a487cc752b942afadd8b0f.md) | 62 | `result-track:c3a487cc752b942afadd8b0f3b9eb673b93425838d23377a7ff8df524f7a14d9` |
| 7 | `theorem` | [support_mul](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/support-mul--3071fb5eaf562d1009806540.md) | 66 | `result-track:3071fb5eaf562d100980654013f335d665b6ccb6a4573f6b23a86e94b2db88db` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/instance--2762d8d31c9274d30ad8c820.md) | 70 | `declaration-track:2762d8d31c9274d30ad8c8205f95304ce8603f6760b3192673c9e291db89256a` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/instance--32b22faa3acf22b22279f2af.md) | 75 | `declaration-track:32b22faa3acf22b22279f2afcf63e8bb7ebabef75eeaa9a9dea69a0f0296f1e3` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/instance--a0ace57e3a79bd698d2b3ca5.md) | 78 | `declaration-track:a0ace57e3a79bd698d2b3ca5d540a37ad8dac13b3f31be1f907746dbed027583` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/instance--22f8facfe38115fecc07a5c7.md) | 81 | `declaration-track:22f8facfe38115fecc07a5c7a9b3c346c6135ca09e657fa087c9c0c0ce75f234` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/instance--cc954ef7015c0ac013a4209b.md) | 84 | `declaration-track:cc954ef7015c0ac013a4209be8b15e22f4202016b058703f8b1a106a9956b6f1` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/instance--19693564ba03f113e8157460.md) | 87 | `declaration-track:19693564ba03f113e8157460bee395201a8015a7972b53225f9d9646b368d3d6` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/instance--9a52e126d0090f45054fac2e.md) | 91 | `declaration-track:9a52e126d0090f45054fac2e72236ab61f4be1d0fb77b501e603969e304684f6` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/instance--a6de4e8885abcc3f28857bb6.md) | 95 | `declaration-track:a6de4e8885abcc3f28857bb61d0b0b25a6908839e03f1c05c041c622ec629766` |
| 16 | `lemma` | [pointwise_smul_support_finite](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/pointwise-smul-support-finite--9bc53040f5811aa711913ee7.md) | 99 | `result-track:9bc53040f5811aa711913ee7d03aad8f2b1bc192efb71b315907f477497d0a9c` |
| 17 | `abbrev` | [pointwiseScalar](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/pointwisescalar--6aed80c7ee544c55064e56dd.md) | 108 | `declaration-track:6aed80c7ee544c55064e56dd3c4ed1f7fefa575cea107ef44ebc090b14680aa1` |
| 18 | `instance` | [pointwiseScalarSemiring](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/pointwisescalarsemiring--5e6a8200ba2d71d46fefb290.md) | 111 | `declaration-track:5e6a8200ba2d71d46fefb2903d031bb43a99c68b8cf9e6b2d4405eeb5b0266ce` |
| 19 | `theorem` | [coe_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/coe-pointwise-smul--dc01f2410a759804c26b950e.md) | 114 | `result-track:dc01f2410a759804c26b950eff1ba578275881c3e4e81fed86780304d60ca7b9` |
| 20 | `instance` | [pointwiseModule](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/pointwisemodule--9f09be4c75c1c7f71e24e8ed.md) | 118 | `declaration-track:9f09be4c75c1c7f71e24e8ed69107d45aad8c77994a199b88e4f8eb15b1ac17c` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27.lean/declarations/instance--27246a94b8bba76c0d81c940.md) | 121 | `declaration-track:27246a94b8bba76c0d81c9401265c59506462f7ae33ac162a66ce14723ee11c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
