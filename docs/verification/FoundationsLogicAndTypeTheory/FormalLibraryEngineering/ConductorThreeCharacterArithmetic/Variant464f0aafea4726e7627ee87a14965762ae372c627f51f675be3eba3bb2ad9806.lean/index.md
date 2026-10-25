# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeCharacterArithmetic.Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98e41b384a77950372f3612486ef84c5916d0925",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98e41b384a77950372f3612486ef84c5916d0925`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeIntegerCharacter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/conductorthreeintegercharacter--6a9b95f7790d07a512a12972.md) | 30 | `declaration-track:6a9b95f7790d07a512a129727258dbaa04dc69c64ca27365e32321a85f463c2e` |
| 2 | `def` | [conductorThreeIntegerValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/conductorthreeintegervalue--4e795e8726633906e3b9dfca.md) | 37 | `declaration-track:4e795e8726633906e3b9dfcaa0d1ed5237195e0f583d095bcba38ec4035a8958` |
| 3 | `theorem` | [conductorThreeIntegerValue_mod_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/conductorthreeintegervalue-mod-zero--e5dee9d8fceb4fea7907499d.md) | 41 | `result-track:e5dee9d8fceb4fea7907499d8727c58ba5b0ff33cc8173f5c77e85b210930010` |
| 4 | `theorem` | [conductorThreeIntegerValue_mod_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/conductorthreeintegervalue-mod-one--335d7e3a60256b5343af90db.md) | 49 | `result-track:335d7e3a60256b5343af90db704ce02fcef33c06f0d65beb0d63b61a32f5f02f` |
| 5 | `theorem` | [not_isSquare_two_zmod_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/not-issquare-two-zmod-three--00d732c7b03bd978f90dc33a.md) | 60 | `result-track:00d732c7b03bd978f90dc33a3bd819e3597dd1f000aef84a19fc2d76f9be0570` |
| 6 | `theorem` | [two_ne_zero_zmod_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/two-ne-zero-zmod-three--54f3df800cedc3f445081f2e.md) | 64 | `result-track:54f3df800cedc3f445081f2e3254a8a7d030c985625a327ae0f7309389b1cbca` |
| 7 | `theorem` | [conductorThreeIntegerValue_mod_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/conductorthreeintegervalue-mod-two--99c2e2fdbc7359cf5b328f3c.md) | 69 | `result-track:99c2e2fdbc7359cf5b328f3c45709cd989e5ba688b9d2f67e0f368be1d83e3c3` |
| 8 | `theorem` | [conductorThreeIntegerValue_cases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/conductorthreeintegervalue-cases--47808b39c1f37e40bf58d794.md) | 81 | `result-track:47808b39c1f37e40bf58d794ac0569a41b3f66625424a06c9219be5f587e45da` |
| 9 | `theorem` | [conductorThreeIntegerValue_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/conductorthreeintegervalue-eq-zero-iff--026f08625e9f307ac7e2c698.md) | 89 | `result-track:026f08625e9f307ac7e2c698d729211750599ddcc46b7b16db396a8d66c172af` |
| 10 | `theorem` | [conductorThreeIntegerValue_eq_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/conductorthreeintegervalue-eq-one-iff--39ad5a64b024990f920fc1c3.md) | 96 | `result-track:39ad5a64b024990f920fc1c30d385f2739d918aae0dd3b4bbeb5fa159735e02a` |
| 11 | `theorem` | [conductorThreeIntegerValue_eq_neg_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/conductorthreeintegervalue-eq-neg-one-iff--f3f2ad1c50dcb8a673fa4cf3.md) | 102 | `result-track:f3f2ad1c50dcb8a673fa4cf3624746ebec01816bf7b2143c3f490bbcb5de8ccb` |
| 12 | `theorem` | [conductorThreeIntegerValue_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/conductorthreeintegervalue-mul--bda17e7bbe21ada7d2c05064.md) | 109 | `result-track:bda17e7bbe21ada7d2c0506411eed062b335310fb55b709c0252e417e9d6fa53` |
| 13 | `theorem` | [conductorThreeCharacter_eq_intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variant464f0aafea4726e7627ee87a14965762ae372c627f51f675be3eba3bb2ad9806.lean/declarations/conductorthreecharacter-eq-intcast--48701f94d24979ee2fa00555.md) | 119 | `result-track:48701f94d24979ee2fa00555693b4a799535b29ad6b2bf0ba1fe0a2ce646dcd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
