# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.StateDependentCorrections

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dfa455d96d99e85df482255bc3c38396d6bbc91",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/StateDependentCorrections.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/StateDependentCorrections.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/StateDependentCorrections.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dfa455d96d99e85df482255bc3c38396d6bbc91`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/StateDependentCorrections.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/StateDependentCorrections.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.RoundComposition`](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/RoundComposition.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [addCorrection](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/StateDependentCorrections.lean/declarations/addcorrection--3744cbb45765ddeb2d565bba.md) | 64 | `declaration-track:3744cbb45765ddeb2d565bba7de0e4053f04b7e98b55be50782b2387848caa09` |
| 2 | `theorem` | [identity_add_identity_correction](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/StateDependentCorrections.lean/declarations/identity-add-identity-correction--fa0ddedbd026374a0b6dabfc.md) | 68 | `result-track:fa0ddedbd026374a0b6dabfcef4bcb8525b1005fe2579f0c21f21bcfeb685f73` |
| 3 | `theorem` | [identity_add_identity_not_injective](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/StateDependentCorrections.lean/declarations/identity-add-identity-not-injective--baf7adbb4d72ead2e38c63e9.md) | 77 | `result-track:baf7adbb4d72ead2e38c63e988faa55ca3022f0a312bd98d952ae42d8ac699ea` |
| 4 | `theorem` | [state_dependent_correction_can_destroy_bijectivity](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/StateDependentCorrections.lean/declarations/state-dependent-correction-can-destroy-bijectivity--b22b30881ffbeacafc405f31.md) | 90 | `result-track:b22b30881ffbeacafc405f31da194134ed12fe747f39d0ff69b5399dcdb9be87` |
| 5 | `theorem` | [constant_translation_preserves_bijectivity](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/StateDependentCorrections.lean/declarations/constant-translation-preserves-bijectivity--d412baa2eb9424f466c861db.md) | 99 | `result-track:d412baa2eb9424f466c861dba050a14e3fc943f7d458236db7a3c8601dfaeac8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
