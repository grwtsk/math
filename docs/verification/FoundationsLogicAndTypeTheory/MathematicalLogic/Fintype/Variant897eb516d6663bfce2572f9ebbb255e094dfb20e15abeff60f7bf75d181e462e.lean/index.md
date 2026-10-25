# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Fintype.Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f976978021185093ac8781577cd03421f49b2ee9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f976978021185093ac8781577cd03421f49b2ee9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.EquivFin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Inv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.Embedding.toEquivRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/function-embedding-toequivrange--9fdeb3ddb2d1d3592df4cc52.md) | 38 | `declaration-track:9fdeb3ddb2d1d3592df4cc526604adf76cd0e89ed927f911c274cb41a14c553a` |
| 2 | `theorem` | [Function.Embedding.toEquivRange_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/function-embedding-toequivrange-apply--e29a9f0f44ebc594a7c29040.md) | 42 | `result-track:e29a9f0f44ebc594a7c29040a0a015cd6abcd112df35c97233eecda947b7b343` |
| 3 | `theorem` | [Function.Embedding.toEquivRange_symm_apply_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/function-embedding-toequivrange-symm-apply-self--3518fe6063317de766fd5e6d.md) | 47 | `result-track:3518fe6063317de766fd5e6d8033a835164d6cf3cd545d6126cf9dd784ae048f` |
| 4 | `theorem` | [Function.Embedding.toEquivRange_eq_ofInjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/function-embedding-toequivrange-eq-ofinjective--11e0f236fd2d057259884b53.md) | 50 | `result-track:11e0f236fd2d057259884b53ce98b4825243f6d0fd0740c659967163e404a771` |
| 5 | `def` | [Equiv.Perm.viaFintypeEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/equiv-perm-viafintypeembedding--1ecbd5ebab6a8f85c9f37516.md) | 62 | `declaration-track:1ecbd5ebab6a8f85c9f375163af5c306668bc2b7d5f39709dd7caa49ac1cde6e` |
| 6 | `theorem` | [Equiv.Perm.viaFintypeEmbedding_apply_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/equiv-perm-viafintypeembedding-apply-image--2409305c3ef82ca99fde3e7d.md) | 66 | `result-track:2409305c3ef82ca99fde3e7dadb3b36e040900580875c4981c66b1a3a9de27d5` |
| 7 | `theorem` | [Equiv.Perm.viaFintypeEmbedding_apply_mem_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/equiv-perm-viafintypeembedding-apply-mem-range--49c706d560b05fdb344c6ebf.md) | 71 | `result-track:49c706d560b05fdb344c6ebf27ca1ff9412bc4c57e0c818f6b1732ae77ff5ad3` |
| 8 | `theorem` | [Equiv.Perm.viaFintypeEmbedding_apply_notMem_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/equiv-perm-viafintypeembedding-apply-notmem-range--513ce0d041c51b5d401d7374.md) | 77 | `result-track:513ce0d041c51b5d401d7374b1fa4d63fe0911333d23ada466b0c51b648705ac` |
| 9 | `def` | [toCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/tocompl--bbe6df3a89bbb9e26ddf8f72.md) | 96 | `declaration-track:bbe6df3a89bbb9e26ddf8f72d419da35154e1105df352d0c0386bae01acf869d` |
| 10 | `abbrev` | [extendSubtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/extendsubtype--c580c7396b6f88e423d45944.md) | 109 | `declaration-track:c580c7396b6f88e423d45944c4ef8e01b9bc4273947cf1ac407b6a8a8077e95e` |
| 11 | `theorem` | [extendSubtype_apply_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/extendsubtype-apply-of-mem--447a975d5fdb9f155998d5c5.md) | 112 | `result-track:447a975d5fdb9f155998d5c5987e598c172f75531716a6d1c1a4e343db727dff` |
| 12 | `theorem` | [extendSubtype_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/extendsubtype-mem--9693965b8589ff7f65fdd486.md) | 118 | `result-track:9693965b8589ff7f65fdd48666d9aff8c5859b0ddfe5369d84da51df48d0959d` |
| 13 | `theorem` | [extendSubtype_apply_of_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/extendsubtype-apply-of-not-mem--dd892025b23ebfa1cfc17c65.md) | 123 | `result-track:dd892025b23ebfa1cfc17c65eea1682f95a14a615ecc26284ac6a60ea4f067b8` |
| 14 | `theorem` | [extendSubtype_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variant897eb516d6663bfce2572f9ebbb255e094dfb20e15abeff60f7bf75d181e462e.lean/declarations/extendsubtype-not-mem--af712b27bc95b2dc653a4d88.md) | 129 | `result-track:af712b27bc95b2dc653a4d88ec59be4f25ddd757b6a78c21a977b1f445b253ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
