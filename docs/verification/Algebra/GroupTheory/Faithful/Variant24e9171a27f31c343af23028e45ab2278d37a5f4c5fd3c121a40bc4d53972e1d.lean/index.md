# Verification target: GRWTSK.Algebra.GroupTheory.Faithful.Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83eae5f921866fd801de14d28d5ea312e0707187",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83eae5f921866fd801de14d28d5ea312e0707187`.

Source path: `GRWTSK/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean.json)

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
| 1 | `class` | [FaithfulVAdd](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/faithfulvadd--3735cb6bee2450cec93ec3c7.md) | 49 | `declaration-track:3735cb6bee2450cec93ec3c76633cb704ab30630338580d85adb407fd4075606` |
| 2 | `class` | [FaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/faithfulsmul--551c361f6f7014ff413a09b7.md) | 55 | `declaration-track:551c361f6f7014ff413a09b72311f13b5305a80d3c006cb492dcf57ceb507a0e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/instance--ccc37abb36a3992dff0f73d6.md) | 62 | `declaration-track:ccc37abb36a3992dff0f73d6412fd4d4ca50cf583ad386355cf44681f00602e4` |
| 4 | `lemma` | [smul_left_injective'](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/smul-left-injective--dcde085a275adf7ea0c93f8a.md) | 66 | `result-track:dcde085a275adf7ea0c93f8a1f5bd4ed977656073b51014398be926b0788ba11` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/instance--d07c9184e514bc04f4bbebec.md) | 71 | `declaration-track:d07c9184e514bc04f4bbebec6327428bbbb0a8d683a189deab0f8529cce8dda2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/instance--e752dec81151fd5760df1eb2.md) | 76 | `declaration-track:e752dec81151fd5760df1eb20cab0d2f97c3cfd9e75191c49a725432d98d17e9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/instance--519d2aa457450f7773dda69e.md) | 81 | `declaration-track:519d2aa457450f7773dda69e7c640cca871bf071ea7ab9a2dd8bc55df459ca4d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/instance--3d54633f4471b40d8bf7ae7a.md) | 86 | `declaration-track:3d54633f4471b40d8bf7ae7a20e758fb0e8a344cf4b9179fdc1e647f32cef92b` |
| 9 | `lemma` | [faithfulSMul_iff_injective_smul_one](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/faithfulsmul-iff-injective-smul-one--1f6e26d642b0f992692c8931.md) | 90 | `result-track:1f6e26d642b0f992692c8931731b14e9a7c4f85439b6c48aa47d37e91758bc26` |
| 10 | `theorem` | [faithfulSMul_iff](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/faithfulsmul-iff--4db31f5b0632c481f61d7a7c.md) | 99 | `result-track:4db31f5b0632c481f61d7a7c247f77863ba960b08d0fa26911778607924a9647` |
| 11 | `lemma` | [FaithfulSMul.tower_bot](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/faithfulsmul-tower-bot--14aac3a7eb87fd69d6e9da48.md) | 107 | `result-track:14aac3a7eb87fd69d6e9da484d7b60345da4bf2a58b7d7f5fedfaf9f7800730f` |
| 12 | `lemma` | [FaithfulSMul.trans](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/faithfulsmul-trans--7b1d414c715ad727d7b541df.md) | 116 | `result-track:7b1d414c715ad727d7b541dfeffbf624e398148387757930ef89fcd43c064136` |
| 13 | `lemma` | [IsScalarTower.to₁₂₃](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/isscalartower-to--d5cad96b0fd3e8580097ef3e.md) | 128 | `result-track:d5cad96b0fd3e8580097ef3e4d94fedbadef96964da322d1bfe62494574099d8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Faithful/Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d.lean/declarations/instance--d92a8b456d042110397a851f.md) | 134 | `declaration-track:d92a8b456d042110397a851f77a0875880c98ee9cb7321e1e9a60733bc9ccc78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
