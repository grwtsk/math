# Verification target: GRWTSK.Algebra.FieldTheory.GaloisObservation.Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d321ae382b2d27382c0d0154638a8b2226128008",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d321ae382b2d27382c0d0154638a8b2226128008`.

Source path: `GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Observation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduction](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/declarations/reduction--df28b17cb9c4fc74e115a8f8.md) | 31 | `declaration-track:df28b17cb9c4fc74e115a8f8889409151dc2420ba02cd2909137bb26cb33cc59` |
| 2 | `structure` | [GoodPrimeFactorization](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/declarations/goodprimefactorization--b45eda23fead4a2a4891f193.md) | 36 | `declaration-track:b45eda23fead4a2a4891f193a1b6b86e740ee10c118804733570873efed7d668` |
| 3 | `def` | [factorDegrees](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/declarations/factordegrees--c96e34c76f6046eb3166c0f1.md) | 54 | `declaration-track:c96e34c76f6046eb3166c0f1d757aafdfcde21501eb8654c874f0d5b8b7bdc07` |
| 4 | `def` | [fullCycleType](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/declarations/fullcycletype--4c238fd9f670c27813f0d49d.md) | 59 | `declaration-track:4c238fd9f670c27813f0d49d10df309773d44f6fee68e7176bf8d7e64206bcea` |
| 5 | `theorem` | [full_cycle_type_identity](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/declarations/full-cycle-type-identity--2036af3cc1dd188ba540fbfa.md) | 64 | `result-track:2036af3cc1dd188ba540fbfafed2d27dd1d1ecd6830d8ee1b69e83ab8d18df02` |
| 6 | `theorem` | [full_cycle_type_sum](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/declarations/full-cycle-type-sum--1c9307e0c43ddad7efbca0a0.md) | 69 | `result-track:1c9307e0c43ddad7efbca0a067a38181a20025ab895fe3e037c3680672d1536c` |
| 7 | `structure` | [FactorCycleWitness](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/declarations/factorcyclewitness--8ee998d695ff4063f28cfbe6.md) | 77 | `declaration-track:8ee998d695ff4063f28cfbe6b7f0dd0e039d42dfdad3af6ffaee50227845b0f1` |
| 8 | `theorem` | [factor_degrees_identify_cycles](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/declarations/factor-degrees-identify-cycles--049f7f76e7303c6d171dda29.md) | 99 | `result-track:049f7f76e7303c6d171dda2980650ca17e8cc9b5040ce4182e2fc4fe8ec80766` |
| 9 | `theorem` | [cycle_observation_does_not_determine_group](../../../../../mathematics/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/declarations/cycle-observation-does-not-determine-group--dc689c702878429b8303c5d1.md) | 107 | `result-track:dc689c702878429b8303c5d1e5f291b728abb4933d2d7767f4dd0b5bd2a86951` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
