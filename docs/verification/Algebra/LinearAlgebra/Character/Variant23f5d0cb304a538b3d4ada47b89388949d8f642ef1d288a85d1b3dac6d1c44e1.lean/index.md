# Verification target: GRWTSK.Algebra.LinearAlgebra.Character.Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00697559f02b61b0b03d692c5f01e76d1007c65e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00697559f02b61b0b03d692c5f01e76d1007c65e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.FDRep` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Invariants` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [character](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/declarations/character--e3223b097a9be76ad015cbf5.md) | 56 | `declaration-track:e3223b097a9be76ad015cbf58cf1a4cce940471fbc12e647069f0eb0a278ab73` |
| 2 | `theorem` | [char_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/declarations/char-mul-comm--27fab7b0e6c6d9aea4c90fc7.md) | 59 | `result-track:27fab7b0e6c6d9aea4c90fc7252092962404be4de5e0e1600db6a82e6873551a` |
| 3 | `theorem` | [char_one](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/declarations/char-one--ba5401d56117bb1c7d713453.md) | 63 | `result-track:ba5401d56117bb1c7d7134537053fd419decade2dc89507b6b6039001b6b23b3` |
| 4 | `theorem` | [char_tensor](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/declarations/char-tensor--2593a134e281a49445baa65b.md) | 68 | `result-track:2593a134e281a49445baa65bd54bce2faecf0cae76fcec1322040c205e870e6f` |
| 5 | `theorem` | [char_iso](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/declarations/char-iso--3f5c0f309ad91ad8716c2947.md) | 72 | `result-track:3f5c0f309ad91ad8716c294730fd97ad4ca3d2e7be76fee9c4aed9d1ea450df4` |
| 6 | `theorem` | [char_conj](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/declarations/char-conj--fabd9625abcd4887bcda15db.md) | 85 | `result-track:fabd9625abcd4887bcda15dbd05f65fcd8349f2bcf5098c8a7fe92c1c3fedd39` |
| 7 | `theorem` | [char_dual](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/declarations/char-dual--d13caf78a69b8c06d1d321a8.md) | 89 | `result-track:d13caf78a69b8c06d1d321a8e507692b2e34804565acfb1f6c50f97f9c8e51f6` |
| 8 | `theorem` | [char_linHom](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/declarations/char-linhom--d71dcbd19bd3769867f72fbb.md) | 93 | `result-track:d71dcbd19bd3769867f72fbb3de993bedfeb896bc8dafed5794d78d3fb7b6351` |
| 9 | `theorem` | [average_char_eq_finrank_invariants](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/declarations/average-char-eq-finrank-invariants--73e9f1e49031059cf8c0832a.md) | 99 | `result-track:73e9f1e49031059cf8c0832a843c41807086996f0b2bc4dcba362605087b3131` |
| 10 | `theorem` | [scalar_product_char_eq_finrank_equivariant](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/declarations/scalar-product-char-eq-finrank-equivariant--049e119d3175cf3cee8d6636.md) | 109 | `result-track:049e119d3175cf3cee8d6636a0dc0f61a55109bbf639411e0fbb8de6889d893f` |
| 11 | `theorem` | [char_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant23f5d0cb304a538b3d4ada47b89388949d8f642ef1d288a85d1b3dac6d1c44e1.lean/declarations/char-orthonormal--c7ad080fb0d5ce51007e19e0.md) | 132 | `result-track:c7ad080fb0d5ce51007e19e021984a309cc4fa2f45c2f9134149afcc307d6582` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
