# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "799c7d4df031551e0467412fa854f7d5043feb50",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `799c7d4df031551e0467412fa854f7d5043feb50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [small_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean/declarations/small-subtype--ccc7a0ae67e0960901b28cf9.md) | 30 | `declaration-track:ccc7a0ae67e0960901b28cf92dd2efb9352e27ef30e2df29f03b55728fed5bd5` |
| 2 | `theorem` | [small_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean/declarations/small-of-injective--03d6c493902c5c55bd032203.md) | 33 | `result-track:03d6c493902c5c55bd032203e5c44bbc21278742de106ce39a8c0b2fdef124dc` |
| 3 | `theorem` | [small_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean/declarations/small-of-surjective--98ee69d0b34aebbcbadb1a94.md) | 37 | `result-track:98ee69d0b34aebbcbadb1a94000159fd0e5472ede787e599cc4dabd1f7bcdf87` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean/declarations/instance--ce8ed1eed5f9247f0e421e05.md) | 41 | `declaration-track:ce8ed1eed5f9247f0e421e052c8d2e24876586941403a2d1649789bd2da799e5` |
| 5 | `theorem` | [small_of_injective_of_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean/declarations/small-of-injective-of-exists--334f30f5c255a8864771f727.md) | 49 | `result-track:334f30f5c255a8864771f727b267c50fe22057d1ea1696bb8df40f68a1deed95` |
| 6 | `instance` | [small_Pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean/declarations/small-pi--34407e3b578a83deea17a23d.md) | 63 | `declaration-track:34407e3b578a83deea17a23df68f2f1304bb0603ccd0b8a78bef75fa8354352d` |
| 7 | `instance` | [small_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean/declarations/small-prod--b07f7fccac6df773be2fe6b5.md) | 68 | `declaration-track:b07f7fccac6df773be2fe6b5e7c8d3903a70c4e39d259dde2c335e9e972e99ed` |
| 8 | `instance` | [small_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean/declarations/small-sum--11d6e89d39472ac83b2bd3ca.md) | 71 | `declaration-track:11d6e89d39472ac83b2bd3ca5d702b14e1ed69826ece5225d1ff5868b04746aa` |
| 9 | `instance` | [small_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd0626551e9c3a24b2cf776904ebe2bfdeed956e3785bead5fc1874c3720544cd.lean/declarations/small-set--e0ee62d5b23b586c43c0986f.md) | 74 | `declaration-track:e0ee62d5b23b586c43c0986f7cd889cfc0bd9bff00178fa75dd9d72439202510` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
