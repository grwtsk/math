# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Well.Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8132235a6b39dc00735485218bc0d28d5c7950c7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8132235a6b39dc00735485218bc0d28d5c7950c7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean.json)

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
| 1 | `def` | [wellOrderExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean/declarations/wellorderextension--cd333db32a5ec2fcde755249.md) | 60 | `declaration-track:cd333db32a5ec2fcde755249ac57e20572bb47395de27ec0022ed303d8b8a596` |
| 2 | `instance` | [wellOrderExtension.wellFounded_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean/declarations/wellorderextension-wellfounded-lt--3b5c53a49e561ffb13470b21.md) | 64 | `declaration-track:3b5c53a49e561ffb13470b21632ba5425820734d4294fb9a383d586c700698d9` |
| 3 | `instance` | [wellOrderExtension.isWellOrder_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean/declarations/wellorderextension-iswellorder-lt--3a7000080cf9fd7dc34241d6.md) | 68 | `declaration-track:3a7000080cf9fd7dc34241d6af3026f6cb5636f2aba5a614e16ff083791321ec` |
| 4 | `theorem` | [exists_well_order_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean/declarations/exists-well-order-ge--23bef6662b78dc57bb2e7176.md) | 71 | `result-track:23bef6662b78dc57bb2e7176f2931a485af5dc0df9ced7c18ce020ddcf6c941a` |
| 5 | `def` | [WellOrderExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean/declarations/wellorderextension--327301bf43832d34aab587f2.md) | 77 | `declaration-track:327301bf43832d34aab587f2d082ec371560cd8f7d9c82a122610b2d783ac182` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean/declarations/instance--5c9d44bc00153cb28bb931c3.md) | 79 | `declaration-track:5c9d44bc00153cb28bb931c33bf0905dfcdd9f529b8d1301aab680577f692a1e` |
| 7 | `def` | [toWellOrderExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean/declarations/towellorderextension--2a3a559d35806f6adda6510a.md) | 82 | `declaration-track:2a3a559d35806f6adda6510a65a90f525c82fdb490db86098bb05f308f633eae` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean/declarations/instance--c3052ee80966057e710990b2.md) | 85 | `declaration-track:c3052ee80966057e710990b20c97bb6df3d37608f5852a352687d1cf351c8ac4` |
| 9 | `theorem` | [toWellOrderExtension_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variantcb37bd389d9d8d08be69b147db97e89d10aea9b4ebc9bbe33d604dc3fe691de5.lean/declarations/towellorderextension-strictmono--aff0bd98c7f37d2a574537e6.md) | 88 | `result-track:aff0bd98c7f37d2a574537e6c4f7604e5d341b2c84f299da20a34d66b2ee7ab5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
