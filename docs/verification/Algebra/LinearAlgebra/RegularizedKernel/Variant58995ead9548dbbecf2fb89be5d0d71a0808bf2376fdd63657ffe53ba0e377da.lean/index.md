# Verification target: GRWTSK.Algebra.LinearAlgebra.RegularizedKernel.Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f0e8dd9280fe62848fb7b16333324c18b0ac437",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f0e8dd9280fe62848fb7b16333324c18b0ac437`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.Kernel.Channel` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identityRegularizer](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean/declarations/identityregularizer--292017e8b202c71db96f500d.md) | 30 | `declaration-track:292017e8b202c71db96f500dc0aa79f8497931615afefc9c4397de168a17e715` |
| 2 | `theorem` | [identityRegularizer_posDef](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean/declarations/identityregularizer-posdef--c3dd95ba83d1dd4d97796b33.md) | 34 | `result-track:c3dd95ba83d1dd4d97796b337f4d1981b7e8efe4c6243b241b3ab84a5a53773a` |
| 3 | `def` | [regularizedKernel](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean/declarations/regularizedkernel--5feafa0eb2886789be676997.md) | 40 | `declaration-track:5feafa0eb2886789be676997122b49397b9afb13daddb85cdcf5ddf079631a98` |
| 4 | `theorem` | [regularizedKernel_apply](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean/declarations/regularizedkernel-apply--7b62a7c4b291b7dd1c3df207.md) | 50 | `result-track:7b62a7c4b291b7dd1c3df207f382a609890c5ce2ebc6c77aab9cb23b435356bf` |
| 5 | `theorem` | [regularizedKernel_posDef](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean/declarations/regularizedkernel-posdef--1a60a39067f81f138988af5b.md) | 64 | `result-track:1a60a39067f81f138988af5bed068506e65695b637389b00206ae94e8fbc8fe7` |
| 6 | `theorem` | [regularizedKernel_strictOnDistinct](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean/declarations/regularizedkernel-strictondistinct--c599bc0fa1031939d83ee7d2.md) | 73 | `result-track:c599bc0fa1031939d83ee7d23b876f7000743cfb4b6fd3163ba052d34cef06d9` |
| 7 | `def` | [zeroSemanticKernel](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean/declarations/zerosemantickernel--4b95e09c665d6859db937d74.md) | 85 | `declaration-track:4b95e09c665d6859db937d74ee3b37d9f45805649eda603f970797b6aea18882` |
| 8 | `theorem` | [zeroSemanticKernel_apply](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variant58995ead9548dbbecf2fb89be5d0d71a0808bf2376fdd63657ffe53ba0e377da.lean/declarations/zerosemantickernel-apply--38a9c57899713b1d7e314ef7.md) | 91 | `result-track:38a9c57899713b1d7e314ef7f5fae38104b93d98ef3245a1dc866d42720571ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
