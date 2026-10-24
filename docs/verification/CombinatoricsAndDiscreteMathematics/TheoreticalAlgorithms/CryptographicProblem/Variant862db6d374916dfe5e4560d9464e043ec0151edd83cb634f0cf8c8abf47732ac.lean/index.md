# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CryptographicProblem.Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98e845991fcdd4602355c338931c885588eafddf",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98e845991fcdd4602355c338931c885588eafddf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ComputationModel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/computationmodel--e3203aa11438db24f0f48f61.md) | 14 | `declaration-track:e3203aa11438db24f0f48f61ddf88c2dede2b0461f4e236752fb8262838ca775` |
| 2 | `inductive` | [OracleAccessModel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/oracleaccessmodel--585ed2746c1476966fbce786.md) | 20 | `declaration-track:585ed2746c1476966fbce7864aae0f1a0dcc6e6afcfbfe5c1c654a7834f45cfe` |
| 3 | `inductive` | [CryptographicProblemKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/cryptographicproblemkind--0eb6513d23da72d2009fb5d4.md) | 29 | `declaration-track:0eb6513d23da72d2009fb5d4d5bfc2d138adc63cf1dab43c72553e01ad2e1e96` |
| 4 | `inductive` | [GenericComplexityScale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/genericcomplexityscale--5e6f33d8c998d2040865bd18.md) | 38 | `declaration-track:5e6f33d8c998d2040865bd18d4df82fa76039273bf40a0eb8c2e5dcfa1dd9433` |
| 5 | `def` | [genericComplexityScale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/genericcomplexityscale--938cb9d511edc99611187a1d.md) | 46 | `declaration-track:938cb9d511edc99611187a1d8700ea46acbefea0a2c58aed151becff630fa2cd` |
| 6 | `theorem` | [quantum_collision_is_not_quantum_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/quantum-collision-is-not-quantum-preimage--7c924f4b82240153d0a205a4.md) | 58 | `result-track:7c924f4b82240153d0a205a4bc1d8c860b807faf2016984a00acfe8b64a6201a` |
| 7 | `theorem` | [permutation_collision_is_impossible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/permutation-collision-is-impossible--60bcfc3a5b3fa35801b46d96.md) | 63 | `result-track:60bcfc3a5b3fa35801b46d96344ba8e62b1c9337db0497319ce63f25d45d850b` |
| 8 | `structure` | [SecurityParameters](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/securityparameters--1e7773882a00c5c5df4854b8.md) | 69 | `declaration-track:1e7773882a00c5c5df4854b88a2b8af40ff09d2ed290c4265d72d9f8dfcee2cc` |
| 9 | `def` | [Collision](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/collision--a75fbab00e285218d968bbe4.md) | 77 | `declaration-track:a75fbab00e285218d968bbe4a7d5c26f785d882e7eddc187514305480008eab6` |
| 10 | `theorem` | [no_collision_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/no-collision-of-injective--f9fb39ff3d2d2114e19bf6c3.md) | 82 | `result-track:f9fb39ff3d2d2114e19bf6c3b5c0ba41ccbb35fc31374349ce1612fe5468ad5d` |
| 11 | `theorem` | [permutation_has_no_collision](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/permutation-has-no-collision--34b09ef4bd108d34f9a41d0a.md) | 91 | `result-track:34b09ef4bd108d34f9a41d0ad5343404bcffc2cd4dde0dd0ff7928aefbcbb8ed` |
| 12 | `inductive` | [SquareRootPhenomenon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/squarerootphenomenon--3c737b8f9f4a0b6f1ef7c6e5.md) | 99 | `declaration-track:3c737b8f9f4a0b6f1ef7c6e543ed6366b9818996b53259b4a356824720b441af` |
| 13 | `inductive` | [GoverningQuantity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/governingquantity--d0edd3b3b1421204b4375a1a.md) | 106 | `declaration-track:d0edd3b3b1421204b4375a1ae0f63c5ff424a0a5bdfbfc0659d227d8603793ad` |
| 14 | `inductive` | [AnalyticCarrierKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/analyticcarrierkind--fe6f6afc3c4f235fb8196d7f.md) | 114 | `declaration-track:fe6f6afc3c4f235fb8196d7f788f10917a87b5e16671fc7f911b97acbcd2f457` |
| 15 | `inductive` | [SymmetryVocabulary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/symmetryvocabulary--f6f4ad63155ce89e8c3780a9.md) | 119 | `declaration-track:f6f4ad63155ce89e8c3780a924d222ad9da32661537ad43a69b14e161b43e52a` |
| 16 | `def` | [vocabularyAdmissible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/vocabularyadmissible--3698a009d4da1cefea896686.md) | 124 | `declaration-track:3698a009d4da1cefea896686e28656efff703102ec0784f34ac74abf06d363fd` |
| 17 | `theorem` | [generalBanach_unitary_vocabulary_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/generalbanach-unitary-vocabulary-rejected--ef0c64933b1dc813c449a899.md) | 130 | `result-track:ef0c64933b1dc813c449a8993f13295a545fbfa21139d2f4fcdec3ffe8d162e6` |
| 18 | `def` | [SquareRootPhenomenon.quantity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/squarerootphenomenon-quantity--056f7d3b008b30949f6334e4.md) | 134 | `declaration-track:056f7d3b008b30949f6334e4d08eebada590a83adb5bc917cccc24efcd9ef185` |
| 19 | `def` | [squareRootPhenomena](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/squarerootphenomena--ecd5bd8903d4686d2ddb4f93.md) | 141 | `declaration-track:ecd5bd8903d4686d2ddb4f93878db52f7167492e29043929114dff9af92c413c` |
| 20 | `theorem` | [squareRootPhenomena_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CryptographicProblem/Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac.lean/declarations/squarerootphenomena-nodup--8f59d913e41e065d78c834c3.md) | 149 | `result-track:8f59d913e41e065d78c834c3278af0f894031dac322c3cc4afb8ee2c61de6f1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
