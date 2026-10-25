# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.NoGo.Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02f57db9e30061902c51cd9a73168d2cd755052f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02f57db9e30061902c51cd9a73168d2cd755052f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Halting` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumFourSquares` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProgramHalts](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/programhalts--51b94c9eee5143165de827ad.md) | 25 | `declaration-track:51b94c9eee5143165de827ad206ec11bbcaa75d41a26a9cf324b184eec8a1c02` |
| 2 | `theorem` | [finite_observation_halting_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/finite-observation-halting-no-go--322a5885ac55ae078af9656e.md) | 31 | `result-track:322a5885ac55ae078af9656efe927d69bd47b56162ccdf7450adb1419174b771` |
| 3 | `theorem` | [accepted_certificates_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/accepted-certificates-re--6c5b4632305a1d84a8a53c8c.md) | 44 | `result-track:6c5b4632305a1d84a8a53c8cec09dbdc7526acb95be34095b796526a225def95` |
| 4 | `structure` | [EffectiveBinaryCertificates](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/effectivebinarycertificates--97a6ceb298e8b927f0bc9921.md) | 61 | `declaration-track:97a6ceb298e8b927f0bc9921400c699fdf12b041ec87f211e3f3645e9353ff46` |
| 5 | `theorem` | [bidirectional_certificate_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/bidirectional-certificate-no-go--6aa133f2ab75aa4bbafec93b.md) | 78 | `result-track:6aa133f2ab75aa4bbafec93b0bcdc8b5ee28a34647a1404e54cbf5ba48dfa0cf` |
| 6 | `structure` | [EffectiveHaltingProofCost](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/effectivehaltingproofcost--6d46eb6471a0e93cae5c499b.md) | 86 | `declaration-track:6d46eb6471a0e93cae5c499be7af0e88a7b28c771db956c98bc6e468ad0ccb20` |
| 7 | `def` | [UniversalHaltingProofBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/universalhaltingproofbound--f22478dde133a756ef64552d.md) | 119 | `declaration-track:f22478dde133a756ef64552dc1469c3bf1c2d942ac9039219d566d7d28c54621` |
| 8 | `theorem` | [halting_proof_cost_bound_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/halting-proof-cost-bound-no-go--906878a595f2faf28a61e201.md) | 128 | `result-track:906878a595f2faf28a61e201c1721cae318a3294a60f7e9e0cbad0272ddb0d2d` |
| 9 | `def` | [SameProgramBehavior](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/sameprogrambehavior--84c2c9288bec565ce91ba0be.md) | 150 | `declaration-track:84c2c9288bec565ce91ba0bee584c46ca452b191cc23fde71496436e1a8228dc` |
| 10 | `theorem` | [computable_behavior_class_trivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/computable-behavior-class-trivial--5d4e7bef9405886444b7c697.md) | 154 | `result-track:5d4e7bef9405886444b7c6975c5b197103b7259c2a1571790b70f72d7effd528` |
| 11 | `theorem` | [behavioral_canonicalization_no_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/behavioral-canonicalization-no-go--f56a6d20beb915a5a5d79acb.md) | 162 | `result-track:f56a6d20beb915a5a5d79acb140aa07c624bfc4a5ee7ec25b638aec4f2fe72a9` |
| 12 | `theorem` | [four_squares_plus_one_no_integer_solution](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/four-squares-plus-one-no-integer-solution--ae2ebb9d89fe3058aa2a5b1d.md) | 191 | `result-track:ae2ebb9d89fe3058aa2a5b1dc6464ddf61fe0082f1d122cc45ab8adf451a8a84` |
| 13 | `theorem` | [four_squares_plus_one_modular_solution](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/declarations/four-squares-plus-one-modular-solution--ad8743faddcf9bd79f135adc.md) | 197 | `result-track:ad8743faddcf9bd79f135adc02205739a5019ff1ea1c235684eea616598713b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
