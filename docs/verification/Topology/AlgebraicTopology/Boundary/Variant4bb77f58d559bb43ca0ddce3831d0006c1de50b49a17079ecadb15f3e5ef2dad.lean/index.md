# Verification target: GRWTSK.Topology.AlgebraicTopology.Boundary.Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af628b714623423d13a80a1f6c39908e87a6e618",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af628b714623423d13a80a1f6c39908e87a6e618`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean.json)

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
| 1 | `def` | [boundary](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/boundary--c7ea04ad2a69d8f328da5a78.md) | 40 | `declaration-track:c7ea04ad2a69d8f328da5a78a43af3abd33b5a6517519e0f789a03f8498965ca` |
| 2 | `lemma` | [boundary_eq_iSup](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/boundary-eq-isup--d126513b6f8ef208b834af29.md) | 47 | `result-track:d126513b6f8ef208b834af290eeda09e3941deb76944defbb680f769cc5818fe` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/instance--0fc2e2bbae7f85ffc78af540.md) | 53 | `declaration-track:0fc2e2bbae7f85ffc78af5408acb3a25b23c31acafbbdfd69cf61fd1d757b85b` |
| 4 | `lemma` | [mem_boundary_iff_notMem_range](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/mem-boundary-iff-notmem-range--3edefb1204c2f58794067fda.md) | 58 | `result-track:3edefb1204c2f58794067fdab41bbb1e9d80e3f896e3d54ea65000d44ad3ff1c` |
| 5 | `lemma` | [face_singleton_compl_le_boundary](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/face-singleton-compl-le-boundary--784c732ebf9b72336c0588ae.md) | 63 | `result-track:784c732ebf9b72336c0588ae920ed7c6fe62efefba006e43a729c1d088a42d37` |
| 6 | `lemma` | [stdSimplex.notMem_boundary](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/stdsimplex-notmem-boundary--7760e26dab7dc70c1307ce0f.md) | 68 | `result-track:7760e26dab7dc70c1307ce0f52767171bad55443670a4393c62ca044c3b3fd96` |
| 7 | `lemma` | [boundary_lt_top](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/boundary-lt-top--f7776a2f14126da213cfd56b.md) | 74 | `result-track:f7776a2f14126da213cfd56b7a2aace3bdfdbad1ababd3a71b60ef1ab160b8ea` |
| 8 | `lemma` | [boundary_obj_eq_univ](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/boundary-obj-eq-univ--3fb43efe68a9ff7e5dfdbf81.md) | 78 | `result-track:3fb43efe68a9ff7e5dfdbf819b2482d2721cc07bf685237c7fba7ffec2517f6d` |
| 9 | `lemma` | [boundary_zero](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/boundary-zero--aa3fa8ef1a96ec120f2af423.md) | 95 | `result-track:aa3fa8ef1a96ec120f2af4231bf712b2dddb4c28cd33304c613a3047a19ea091` |
| 10 | `lemma` | [op_boundary](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/op-boundary--2cd427290eeee7e191f95c25.md) | 102 | `result-track:2cd427290eeee7e191f95c2569ae3468c3539c586b892fefde1c092d44bb7c39` |
| 11 | `lemma` | [subcomplex_hasDimensionLT_of_neq_top](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/subcomplex-hasdimensionlt-of-neq-top--955c1cfa0f913623188c99ff.md) | 117 | `result-track:955c1cfa0f913623188c99ff084dd6e7da6c49be0ef4592aa387618a32df0b96` |
| 12 | `lemma` | [le_boundary_iff](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/le-boundary-iff--ae8786dd3b518d65fb5cc5bc.md) | 129 | `result-track:ae8786dd3b518d65fb5cc5bcb905a98f166b1d1415c6d12ea5feb065ee36ee98` |
| 13 | `lemma` | [eq_boundary_iff](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/eq-boundary-iff--3154b5997d60c6079237f09b.md) | 143 | `result-track:3154b5997d60c6079237f09b31bd1cd53a3e3930822744f3e7778c3eaa5d4a40` |
| 14 | `def` | [faceι](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/face--6d53e74fe1af4342e27a7749.md) | 156 | `declaration-track:6d53e74fe1af4342e27a7749e3ca1597aa0caf83702c20948e63a71f5afdb731` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/instance--7f2f3c6d12622f62f86c4b3c.md) | 160 | `declaration-track:7f2f3c6d12622f62f86c4b3c54b8894e005d2f891632969c93ecf2468fa155ec` |
| 16 | `lemma` | [faceι_ι](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/face--a48977d76a7e9f2e1d6f9d12.md) | 164 | `result-track:a48977d76a7e9f2e1d6f9d126ebed94bc2cbf327489140dcc708a9734c34bc33` |
| 17 | `def` | [ι](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/anonymous--fd6bf27540df927fd3e9ac8b.md) | 170 | `declaration-track:fd6bf27540df927fd3e9ac8ba27ca7fc258a912f2bf9677d7ccca8dd658b95bc` |
| 18 | `lemma` | [ι_ι](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/anonymous--a40a5fd5c09b521cfa6a36b9.md) | 178 | `result-track:a40a5fd5c09b521cfa6a36b94816d00b300ca4bfb7b708507ee70a68e410214a` |
| 19 | `lemma` | [faceSingletonComplIso_inv_ι](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/facesingletoncompliso-inv--abc37705f73b96f4bc8753fb.md) | 182 | `result-track:abc37705f73b96f4bc8753fba9a4012cabf77cb288a43917a6745c71803f2490` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/instance--506e59d340e82edcfdd825c9.md) | 187 | `declaration-track:506e59d340e82edcfdd825c93dea7ded7d2058e635a68d617ba7993636a02c8f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/instance--a488d67c98f68b752fdea384.md) | 192 | `declaration-track:a488d67c98f68b752fdea384fc2fb02126c0099588de6e599fc333a7305cf5de` |
| 22 | `lemma` | [hom_ext](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/hom-ext--d0b0c24e0ae31a6a65932f0b.md) | 197 | `result-track:d0b0c24e0ae31a6a65932f0b6d240af9551ed9ae54829e20d47538833b201d46` |
| 23 | `lemma` | [hom_ext₀](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/declarations/hom-ext--e993df684e6d6a567773dbe2.md) | 207 | `result-track:e993df684e6d6a567773dbe2c384b3f2ffda55fef52761053bf142bdb56bddc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
