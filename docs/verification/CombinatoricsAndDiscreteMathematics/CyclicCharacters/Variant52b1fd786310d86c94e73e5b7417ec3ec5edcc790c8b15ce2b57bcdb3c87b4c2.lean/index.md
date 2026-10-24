# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CyclicCharacters.Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47d533bdb68501f73d0d11b2b5cb53627a3a16d5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47d533bdb68501f73d0d11b2b5cb53627a3a16d5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.CyclicCubical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_02ba69e230364621` — import line 9; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_143519467ea15a13` — import line 10; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_2f57ce7ce804bfc6` — import line 11; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_9d51bf74a19cefa9` — import line 12; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_c6db419b9a8344dc` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclicCharacter_normSq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/declarations/cycliccharacter-normsq--495b58b963b7885a0162b3af.md) | 36 | `result-track:495b58b963b7885a0162b3afa8e0cca7f6e308b50acccab06a807b977d778666` |
| 2 | `theorem` | [cyclicCharacter_conj_mul_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/declarations/cycliccharacter-conj-mul-self--45b834327571bf34241c6502.md) | 42 | `result-track:45b834327571bf34241c650280d3043158c299be5cc42fdfcf2935dbaa46672f` |
| 3 | `theorem` | [cyclicCharacterCoefficient_projector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/declarations/cycliccharactercoefficient-projector--c729d2434e6d5fc41786954c.md) | 47 | `result-track:c729d2434e6d5fc41786954c194f47e5d2cbb14292ef9a9919fea7b014c0c1da` |
| 4 | `theorem` | [cyclicCharacterProjector_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/declarations/cycliccharacterprojector-idempotent--ff1aac32a51efdbf2f1eaf65.md) | 84 | `result-track:ff1aac32a51efdbf2f1eaf6555d5e46b0d7d37803ce46ec6076ee71638224e5d` |
| 5 | `theorem` | [conj_cyclicCharacterCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/declarations/conj-cycliccharactercoefficient--019843edd1cdcf9cc9a08c65.md) | 96 | `result-track:019843edd1cdcf9cc9a08c651b519d45325535e8a849b8bcdba198ba18268391` |
| 6 | `theorem` | [conj_natCast_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/declarations/conj-natcast-inv--8a4497e95b4aeb7979015a15.md) | 110 | `result-track:8a4497e95b4aeb7979015a158497f14ba91ceb68f120f3efdd324aa4bb2abcc7` |
| 7 | `theorem` | [cyclicInnerProduct_projector_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/declarations/cyclicinnerproduct-projector-left--da0f54cf7ebbd8211e06d40b.md) | 114 | `result-track:da0f54cf7ebbd8211e06d40b8904e773ed1f25cab1763d07bb91e9eb1530a2df` |
| 8 | `theorem` | [cyclicInnerProduct_projector_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/declarations/cyclicinnerproduct-projector-right--45273da27337eeb7d21be0cb.md) | 144 | `result-track:45273da27337eeb7d21be0cbfba79929d2aaee3d0c2b0b007820c6e2cfc75f13` |
| 9 | `theorem` | [cyclicCharacterProjector_selfAdjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant52b1fd786310d86c94e73e5b7417ec3ec5edcc790c8b15ce2b57bcdb3c87b4c2.lean/declarations/cycliccharacterprojector-selfadjoint--364156ae2fad3663d9a8bda8.md) | 176 | `result-track:364156ae2fad3663d9a8bda84931ec99bb1b84595c8f1914454092644a6ef61f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
