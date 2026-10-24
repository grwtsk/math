# Verification target: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c.RoundCompositionAndInverse

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c71724d39bde6f531b940af6564fde126987c2e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/index.md) · [Full source](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c71724d39bde6f531b940af6564fde126987c2e`.

Source path: `GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Two` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Fintype` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 25; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c.PositiveCoprimePowerPermutation`](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/PositiveCoprimePowerPermutation.lean/index.md) — import line 27; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FieldRound](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/declarations/fieldround--ccdd160c35f13cd4fda512ae.md) | 65 | `declaration-track:ccdd160c35f13cd4fda512ae4e13fa219b191dd35dc7a1bcb4c52d170524422a` |
| 2 | `def` | [toEquiv](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/declarations/toequiv--a802a575106e2a95c64cf690.md) | 76 | `declaration-track:a802a575106e2a95c64cf6909a403a1fdc26b8292bb13b8f5851bfb8d2995985` |
| 3 | `def` | [run](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/declarations/run--ce2a3cd7bde9b8a1178d6b04.md) | 81 | `declaration-track:ce2a3cd7bde9b8a1178d6b047ac79d4e13461dabdc4450b8dbb2b3023a46d3a8` |
| 4 | `theorem` | [run_apply](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/declarations/run-apply--b0836ad0ba24599a3f19da18.md) | 85 | `result-track:b0836ad0ba24599a3f19da18613abe7e69870c96b340dcfe85109b14fcd806ab` |
| 5 | `theorem` | [run_bijective](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/declarations/run-bijective--5101c76118269520d8021566.md) | 91 | `result-track:5101c76118269520d8021566f6f12bf22640d7675446dd40122ccbd07bec7d09` |
| 6 | `def` | [inverse](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/declarations/inverse--fc6c6a967edac215ec270c71.md) | 96 | `declaration-track:fc6c6a967edac215ec270c719022bdbea78d302f52fa9c01a23888f4636be6da` |
| 7 | `theorem` | [inverse_apply](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/declarations/inverse-apply--d2b6e81505c1cb1de2907642.md) | 102 | `result-track:d2b6e81505c1cb1de29076425a23dce6de4f2418e7a8bfda8645822c04992f61` |
| 8 | `theorem` | [inverse_run](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/declarations/inverse-run--a8a87b240fc66c3ec2c14ed5.md) | 111 | `result-track:a8a87b240fc66c3ec2c14ed58c505004e53c5c0229474a1283f8a37e677c462d` |
| 9 | `theorem` | [run_inverse](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/declarations/run-inverse--b9b49351b897cbd3bcee827a.md) | 116 | `result-track:b9b49351b897cbd3bcee827ac7be0674d537341ad3bb91f9c3597c98757e5471` |
| 10 | `def` | [ofPower](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/declarations/ofpower--cc6e3b3255eaa47976022aea.md) | 122 | `declaration-track:cc6e3b3255eaa47976022aeac86dd314810ca8ac580fe6c7247403d82191fbee` |
| 11 | `theorem` | [ofPower_bijective](../../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteFieldSymmetries/ExplicitFieldPermutationRounds/Variant7b67a64e7cab240c/RoundCompositionAndInverse.lean/declarations/ofpower-bijective--2847949bf563d842683f0b9b.md) | 136 | `result-track:2847949bf563d842683f0b9b3c8fe6f582a550eb9156ae87f7c739839ceb9532` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
