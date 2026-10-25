# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.DirichletCharacterProfile.Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c31a8c0c34dc690bd64c0b0c55b0ab3bd9be8b5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c31a8c0c34dc690bd64c0b0c55b0ab3bd9be8b5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimitiveDirichletCharacter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/primitivedirichletcharacter--fe7916ccec8929631ef6e2ac.md) | 25 | `declaration-track:fe7916ccec8929631ef6e2aca8bbd53a861d66edbd78445a93ec0c8e166c7c65` |
| 2 | `def` | [parityExponent](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/parityexponent--56cf4572730df89bbf776bcc.md) | 36 | `declaration-track:56cf4572730df89bbf776bcc6a9bcd176dbe8b8b1396e88dae8e5b7c91a2bb61` |
| 3 | `theorem` | [parityExponent_lt_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/parityexponent-lt-two--f989a98ec3212d961eb8aae4.md) | 38 | `result-track:f989a98ec3212d961eb8aae476da0c2765327bc9681ced244bdb718d950b7fae` |
| 4 | `def` | [conjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/conjugate--311465eba9e81280631ea0d3.md) | 43 | `declaration-track:311465eba9e81280631ea0d38c241b75cc99d9b28661f8851caf9a4a16d523eb` |
| 5 | `theorem` | [conjugate_conductor](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/conjugate-conductor--2f070b41bc0d868c316a465c.md) | 61 | `result-track:2f070b41bc0d868c316a465c58cd0feb0208820b942a9e5b055bb00fd9618794` |
| 6 | `theorem` | [conjugate_parity](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/conjugate-parity--7cf76acbe17d9035593542ab.md) | 66 | `result-track:7cf76acbe17d9035593542ab5b4f8b0a2dc083669474bce1904c2d21db06f673` |
| 7 | `theorem` | [conjugate_character](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/conjugate-character--d8a00330558d7bc94166c1e5.md) | 71 | `result-track:d8a00330558d7bc94166c1e5d3d5a2657afcc5c7f7f556fe6dd1d50f5fca83c6` |
| 8 | `theorem` | [conjugate_conjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/conjugate-conjugate--793b224848bce1c69bab02ba.md) | 76 | `result-track:793b224848bce1c69bab02bae3a7e8f04af81f9db9c3848a5dfbc08f245b809e` |
| 9 | `structure` | [CharacterOrbit](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/characterorbit--6c504d71e424fd8e68b070e5.md) | 85 | `declaration-track:6c504d71e424fd8e68b070e5988de52d90a7ef877127a33fcac491d7e693a52c` |
| 10 | `def` | [conjugateRepresentative](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/conjugaterepresentative--c1f54b848a3bf61ab9c9e5dd.md) | 90 | `declaration-track:c1f54b848a3bf61ab9c9e5ddd81a30819181d70b803129e18406959e4ec80112` |
| 11 | `def` | [cardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/cardinal--0747f17d097b61175fb3f796.md) | 95 | `declaration-track:0747f17d097b61175fb3f796ef38e20de98ff90eaae0ae2177be508c71cee2e5` |
| 12 | `theorem` | [cardinal_eq_one_or_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/cardinal-eq-one-or-two--3203805a16e799c28b9ab770.md) | 100 | `result-track:3203805a16e799c28b9ab770d0bce0870534ca2a36a188014cbb119236bd8353` |
| 13 | `abbrev` | [CharacterOrbit](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/declarations/characterorbit--329274024776e7915e254888.md) | 110 | `declaration-track:329274024776e7915e2548888cf29b5c2970ea706ed6e68de9ecd4428d68a5bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
