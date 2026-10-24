# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Ramification.Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cabd68d8f78b56ac8db99dae2abde11ab27886ce",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cabd68d8f78b56ac8db99dae2abde11ab27886ce`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean.json)

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
| 1 | `theorem` | [IsRamified.finrank_eq_two](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/declarations/isramified-finrank-eq-two--2b4a1d9be406c45cbb4370d5.md) | 48 | `result-track:2b4a1d9be406c45cbb4370d55651904503fd88c0d9768d0093b508ef1386268c` |
| 2 | `theorem` | [IsUnramified.finrank_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/declarations/isunramified-finrank-eq-one--368735a0214afad53c96faa3.md) | 58 | `result-track:368735a0214afad53c96faa3b654bd91332456f6b53e7098e4678428b3cdb7d8` |
| 3 | `theorem` | [mult_mul_finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/declarations/mult-mul-finrank--62244671483cd5122f323c49.md) | 87 | `result-track:62244671483cd5122f323c497acb2b11935a876d22bb998a14a1d2f47f902268` |
| 4 | `def` | [inertiaDeg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/declarations/inertiadeg--6a20a0eb8f883a0127708d4b.md) | 100 | `declaration-track:6a20a0eb8f883a0127708d4bf77fdf5184cb8e9e5467eeb6cc85c2ad1ff7f776` |
| 5 | `theorem` | [inertiaDeg_of_liesOver](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/declarations/inertiadeg-of-liesover--06107a8eb077e5dcd17f81b0.md) | 103 | `result-track:06107a8eb077e5dcd17f81b062536ccb2991c5e0ca81edbdd2e86aec9e884c07` |
| 6 | `theorem` | [inertiaDeg_eq_finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/declarations/inertiadeg-eq-finrank--70fa0126d315e6fb35edcaf8.md) | 107 | `result-track:70fa0126d315e6fb35edcaf86f0aa58b6a6f9941dfa16b3d3ca4928130503ef8` |
| 7 | `theorem` | [inertiaDeg_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/declarations/inertiadeg-eq-one--144d576f6a492e832c0a1289.md) | 114 | `result-track:144d576f6a492e832c0a12895fdeec0274bd05260859f5ca1e3c79368ebc01f7` |
| 8 | `theorem` | [inertiaDeg_eq_two](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/declarations/inertiadeg-eq-two--1ab33f8ec5e1f6240a5411ee.md) | 118 | `result-track:1ab33f8ec5e1f6240a5411ee6308f55589c479e9227722379b004f0af6ca6263` |
| 9 | `theorem` | [sum_inertiaDeg_eq_finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/declarations/sum-inertiadeg-eq-finrank--a6e09b3f9393b71d46f94e2e.md) | 125 | `result-track:a6e09b3f9393b71d46f94e2e2dacb3d1bd44c8e63df69d8f19c2c4dc46edd391` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
