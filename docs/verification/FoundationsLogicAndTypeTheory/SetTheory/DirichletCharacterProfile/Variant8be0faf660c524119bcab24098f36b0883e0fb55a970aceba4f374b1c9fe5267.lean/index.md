# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.DirichletCharacterProfile.Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e43d2b19cc5274fcfcbb9696ec0e792cd950c93",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e43d2b19cc5274fcfcbb9696ec0e792cd950c93`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Bounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimitiveDirichletCharacter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/primitivedirichletcharacter--0ec2c1c5e48c2711402730e9.md) | 17 | `declaration-track:0ec2c1c5e48c2711402730e9b0e663500782adec4dd34382cb52d519db52b21f` |
| 2 | `def` | [parityExponent](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/parityexponent--b7931c338280f73cf2e29bc4.md) | 28 | `declaration-track:b7931c338280f73cf2e29bc48e4c4207529eaad35f31a8dfe45ba61f14980872` |
| 3 | `theorem` | [parityExponent_lt_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/parityexponent-lt-two--ba0e3451959df62b4c0896b8.md) | 30 | `result-track:ba0e3451959df62b4c0896b8a4d6d41b2a152c56712e8e5a862c685a79e4c20c` |
| 4 | `def` | [conjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/conjugate--de1c4fe54600ce2b22c0e923.md) | 35 | `declaration-track:de1c4fe54600ce2b22c0e92313227f97d0fb4f873c697d577ae89351dfda7e7d` |
| 5 | `theorem` | [conjugate_conductor](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/conjugate-conductor--b6609f83cb2505d3e62af8fc.md) | 53 | `result-track:b6609f83cb2505d3e62af8fcd827d2c6c40250cf5f3e786c39287c94448eefa6` |
| 6 | `theorem` | [conjugate_parity](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/conjugate-parity--ed840d3d0329d40155727677.md) | 58 | `result-track:ed840d3d0329d40155727677a092702ecf8bee38957df4ac3efd9c09d5b21dc8` |
| 7 | `theorem` | [conjugate_character](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/conjugate-character--0cebac736efb225d30c3aee9.md) | 63 | `result-track:0cebac736efb225d30c3aee968b2411921829d30f5027f6c08bbdb94cfcfe107` |
| 8 | `theorem` | [conjugate_conjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/conjugate-conjugate--814d056526d0b76b6f9d2067.md) | 68 | `result-track:814d056526d0b76b6f9d206717714a9bf7c001752164ea32ac28b28be0989ad0` |
| 9 | `structure` | [CharacterOrbit](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/characterorbit--709f6c7a491cf428e82a6f58.md) | 77 | `declaration-track:709f6c7a491cf428e82a6f58749af3474161bb35ee0f74a8e386648c7354593b` |
| 10 | `def` | [conjugateRepresentative](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/conjugaterepresentative--109d030b108d6cac5b68f6ee.md) | 82 | `declaration-track:109d030b108d6cac5b68f6ee1fc004d3fc15a721ac8a5387dbe04992f3aefac4` |
| 11 | `def` | [cardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/cardinal--916f9c9f0d98c6f33eaea781.md) | 87 | `declaration-track:916f9c9f0d98c6f33eaea781e3cc5c8603ea31d8b17927b37096ee3ee660dac7` |
| 12 | `theorem` | [cardinal_eq_one_or_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/cardinal-eq-one-or-two--37589ca23c7382a4df92e998.md) | 92 | `result-track:37589ca23c7382a4df92e998af28c116f49dc9447b1e5313f400c1ccc545b88b` |
| 13 | `abbrev` | [CharacterOrbit](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267.lean/declarations/characterorbit--70fa7f2ab3796923201e6d34.md) | 102 | `declaration-track:70fa7f2ab3796923201e6d343dfdd6c5d15ddc605c28c2493a01cec2c593242a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
