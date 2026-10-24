# Verification target: GRWTSK.Algebra.GroupTheory.Stabilizer.Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efb480d34be82e72e284b306b2116e1931035419",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efb480d34be82e72e284b306b2116e1931035419`.

Source path: `GRWTSK/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean.json)

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
| 1 | `def` | [stabilizer](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/declarations/stabilizer--25f1ac25237fc67345aa825a.md) | 27 | `declaration-track:25f1ac25237fc67345aa825a0fc19477861a09ad059417aa07c9f5f21c134d7f` |
| 2 | `lemma` | [mem_stabilizer](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/declarations/mem-stabilizer--639e52264ea643c26c487dfe.md) | 36 | `result-track:639e52264ea643c26c487dfe49bbaf7910c65ccc7093fa6eb34ccbaba69e523f` |
| 3 | `lemma` | [stabilizer_zero](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/declarations/stabilizer-zero--bac243953f5f43070fff1257.md) | 40 | `result-track:bac243953f5f43070fff1257ca7383be2312803bb94504a3c4e7b7dc84e021c5` |
| 4 | `lemma` | [le_stabilizer_smul](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/declarations/le-stabilizer-smul--e3313f5f93e7b979a0aff81b.md) | 43 | `result-track:e3313f5f93e7b979a0aff81b4d508e280a09860e44848d69351ccbf51ed25fed` |
| 5 | `lemma` | [le_stabilizer_add](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/declarations/le-stabilizer-add--bc6fb13e85d835518df2a39f.md) | 47 | `result-track:bc6fb13e85d835518df2a39fd5786dd41160da383a2e0b8d9dc5c0f496bb6197` |
| 6 | `lemma` | [le_stabilizer_sum](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/declarations/le-stabilizer-sum--a53c614dd206fe69a139afaf.md) | 51 | `result-track:a53c614dd206fe69a139afafa64729040e22bbde5551d3610564a45af58067b9` |
| 7 | `lemma` | [IntertwiningMap.stabilizer_le](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/declarations/intertwiningmap-stabilizer-le--3c9920ca8b8e5159a96521ad.md) | 55 | `result-track:3c9920ca8b8e5159a96521ad5422ef09267c45912f1dc67248f78d3aaa2d2cf5` |
| 8 | `lemma` | [stabilizer_conj](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantbdb614d92eca618e847ec4836f7ba3ee2653fddaa62c17c2ea4414dcd9ec61c0.lean/declarations/stabilizer-conj--b9ed794bdb226470f8d939ae.md) | 60 | `result-track:b9ed794bdb226470f8d939ae31462f233d056813111ad89d272ad91421cb4c10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
