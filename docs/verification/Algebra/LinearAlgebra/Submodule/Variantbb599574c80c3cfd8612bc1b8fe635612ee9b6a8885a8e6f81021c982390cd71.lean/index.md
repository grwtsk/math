# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc44e3cdcdb2ce3f5e96d9b834bc16d97e057d78",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc44e3cdcdb2ce3f5e96d9b834bc16d97e057d78`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Invariant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/declarations/invtsubmodule--0be081330426fbac55b0b1b2.md) | 21 | `declaration-track:0be081330426fbac55b0b1b230584ff4a23eb223523d5c9139cfd159c4227006` |
| 2 | `lemma` | [mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/declarations/mem-invtsubmodule--8f20f1849c1914a0c02e0343.md) | 24 | `result-track:8f20f1849c1914a0c02e0343b3d42c1be8529e8a1aefac77f743496e8c50817f` |
| 3 | `lemma` | [top_mem](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/declarations/top-mem--08fd9b5015ecae59ad5e0787.md) | 30 | `result-track:08fd9b5015ecae59ad5e07879b85b5999073a48020c4885fafb221f0f1d1bd40` |
| 4 | `lemma` | [bot_mem](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/declarations/bot-mem--9c6a3961c887507f02af5c8c.md) | 32 | `result-track:9c6a3961c887507f02af5c8c41931e9b1b2d86a20c7b8098eea4c0c709326b5c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/declarations/instance--24525e3c8500ea1ed5f91c3c.md) | 34 | `declaration-track:24525e3c8500ea1ed5f91c3c610708c61cbc41601ca058aef9f62dee5b0e1e94` |
| 6 | `lemma` | [coe_top](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/declarations/coe-top--ef706067b85a636c4ffc5e77.md) | 40 | `result-track:ef706067b85a636c4ffc5e77ef7f79d64dfdce57943e8b182674a6922e69fae2` |
| 7 | `lemma` | [coe_bot](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/declarations/coe-bot--d4696a01d2868b00aa4307dd.md) | 42 | `result-track:d4696a01d2868b00aa4307ddcf0adce1b649dae13c2c3fa56f7a3abbdeac7d92` |
| 8 | `lemma` | [nontrivial_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/declarations/nontrivial-iff--0c113884c2d640fa8c85829b.md) | 44 | `result-track:0c113884c2d640fa8c85829b417f4b68b74f39f182f9e4a1dccd80c87b95f4f8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/declarations/instance--94e3b8532e749640e865af6d.md) | 53 | `declaration-track:94e3b8532e749640e865af6d75de3cd3f969e2087b933469f973626ae25fba55` |
| 10 | `lemma` | [asAlgebraHom_mem_of_forall_mem](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/declarations/asalgebrahom-mem-of-forall-mem--c7b95d42d6a19e9e75f0c4c4.md) | 58 | `result-track:c7b95d42d6a19e9e75f0c4c47b146c86a47f5f9d314fe849c020a2c9947e4efe` |
| 11 | `def` | [mapSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantbb599574c80c3cfd8612bc1b8fe635612ee9b6a8885a8e6f81021c982390cd71.lean/declarations/mapsubmodule--92148f72e7fb729cf36d3e78.md) | 64 | `declaration-track:92148f72e7fb729cf36d3e78239dfd48b8cb7d53136915319c3eae4fb2628d7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
