# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.NoGo.Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da330bf5103593c1b0574082337913229e285b3d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da330bf5103593c1b0574082337913229e285b3d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Halting` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumFourSquares` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProgramHalts](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/programhalts--62065a76432188efc73a8edd.md) | 17 | `declaration-track:62065a76432188efc73a8edd5668fae2be582a6314fa2b40d891837a20ed5c6f` |
| 2 | `theorem` | [finite_observation_halting_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/finite-observation-halting-no-go--c16325e3546288aa397c3add.md) | 23 | `result-track:c16325e3546288aa397c3add03f5149e034217979462b7c1940a560fbc838dd5` |
| 3 | `theorem` | [accepted_certificates_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/accepted-certificates-re--4b61b6163d3481d564b6c0f5.md) | 36 | `result-track:4b61b6163d3481d564b6c0f5f372a6094d87a761f7e964ce8a3c723e125bcad3` |
| 4 | `structure` | [EffectiveBinaryCertificates](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/effectivebinarycertificates--1b435deb39ed17abd6acc08e.md) | 53 | `declaration-track:1b435deb39ed17abd6acc08e8a3517a49c681f5052ac3eb7c1c48050b3c3617f` |
| 5 | `theorem` | [bidirectional_certificate_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/bidirectional-certificate-no-go--e3314346a2cf4cbc377ebbc9.md) | 70 | `result-track:e3314346a2cf4cbc377ebbc94b88eb25f13113c5b6252b42edc3db5a642e245e` |
| 6 | `structure` | [EffectiveHaltingProofCost](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/effectivehaltingproofcost--6500254855911a3007fff79e.md) | 78 | `declaration-track:6500254855911a3007fff79ec4b1569f10358bf5eabf81510ec6b10a7e7b9fcc` |
| 7 | `def` | [UniversalHaltingProofBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/universalhaltingproofbound--ad87800f71f154a3f9464ab3.md) | 111 | `declaration-track:ad87800f71f154a3f9464ab3f0392b785ae7fc2d53f73b5dcdc00ced5f8fd44b` |
| 8 | `theorem` | [halting_proof_cost_bound_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/halting-proof-cost-bound-no-go--8485724ce572d69ed506529f.md) | 120 | `result-track:8485724ce572d69ed506529fcf904bf0d08f41dc8799842342150a2645a86fce` |
| 9 | `def` | [SameProgramBehavior](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/sameprogrambehavior--f3209258136828e96130b786.md) | 142 | `declaration-track:f3209258136828e96130b786f1bbd00e411dc1f08883244585468c37d62b6295` |
| 10 | `theorem` | [computable_behavior_class_trivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/computable-behavior-class-trivial--104ab1116fc4b70ad3eecb5f.md) | 146 | `result-track:104ab1116fc4b70ad3eecb5f23946a1ff790798634c07a7995d0511022fb0d39` |
| 11 | `theorem` | [behavioral_canonicalization_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/behavioral-canonicalization-no-go--c9f45ca8e6eeef685934d264.md) | 154 | `result-track:c9f45ca8e6eeef685934d264b4046856f0f833ab69407e6bf60134ea1da2c003` |
| 12 | `theorem` | [four_squares_plus_one_no_integer_solution](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/four-squares-plus-one-no-integer-solution--4d3340cf46af3c4d3ea6f328.md) | 183 | `result-track:4d3340cf46af3c4d3ea6f3285f95b0a3a127e4b37ab8fd829a54e4833bb0c4d3` |
| 13 | `theorem` | [four_squares_plus_one_modular_solution](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Varianta13c9c01dfc49594f2887e403670778f4106ee45b1ba5e59eb0b80f6e6788f91.lean/declarations/four-squares-plus-one-modular-solution--c80839b6a01dfc1188c8813c.md) | 189 | `result-track:c80839b6a01dfc1188c8813c49d82efcf393fedd6a89e912bd08fd1bcbb71229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
