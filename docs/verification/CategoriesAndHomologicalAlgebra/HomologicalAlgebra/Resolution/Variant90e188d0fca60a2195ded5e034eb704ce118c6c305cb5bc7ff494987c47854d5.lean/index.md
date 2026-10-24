# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Resolution.Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26b561b060a328938510908e8c96c8d199637048",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26b561b060a328938510908e8c96c8d199637048`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.QuasiIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.SingleHomology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/projectiveresolution--f22434da5f463abceae26284.md) | 36 | `declaration-track:f22434da5f463abceae2628450f4cf6601723aa4931ff2d22df6f0dd8275da95` |
| 2 | `class` | [HasProjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/hasprojectiveresolution--646b51790d718f1e90f0db5e.md) | 53 | `declaration-track:646b51790d718f1e90f0db5e739b074e1b716350910f704c6c4abce6592d4846` |
| 3 | `class` | [HasProjectiveResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/hasprojectiveresolutions--99e541dd69d6845575c28908.md) | 62 | `declaration-track:99e541dd69d6845575c289082cbd7763c92fccef013a847e9fd6c07473b2c162` |
| 4 | `lemma` | [complex_exactAt_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/complex-exactat-succ--11c8ed7e2a2a7727134fcab2.md) | 72 | `result-track:11c8ed7e2a2a7727134fcab2ba647a2aafd41faa34764a6c13ab27ae41f59c84` |
| 5 | `lemma` | [exact_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/exact-succ--fa44fd75569266bda4b07aae.md) | 77 | `result-track:fa44fd75569266bda4b07aae1095602f41aaf9cf5695a57b6b4959be9db56a01` |
| 6 | `theorem` | [π_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/f-succ--12a20ae81a5ca11affc86aba.md) | 83 | `result-track:12a20ae81a5ca11affc86aba9a6e302804c9e8492a474d6cb6a604ac2d4da2e7` |
| 7 | `theorem` | [complex_d_comp_π_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/complex-d-comp-f-zero--556b197177dfcacdf5d66430.md) | 87 | `result-track:556b197177dfcacdf5d66430c373ba5b81f3f034e1c9b3429b8c15483603db81` |
| 8 | `theorem` | [complex_d_succ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/complex-d-succ-comp--9b2e7e9e06a94b4ee794f65a.md) | 91 | `result-track:9b2e7e9e06a94b4ee794f65ad7c0451f469084fd621198c53144a7708ab710a6` |
| 9 | `def` | [cokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/cokernelcofork--56a919564e84c48f9ca7f8e5.md) | 98 | `declaration-track:56a919564e84c48f9ca7f8e5d928ba394158d4d3dfc1a5424fa442fd10020594` |
| 10 | `def` | [isColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/iscolimitcokernelcofork--c3f63702b0325120e77670ed.md) | 102 | `declaration-track:c3f63702b0325120e77670edb701e8a3bc8925f8498fb3710f5de57eac6832e7` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/instance--47086b2076d35ffbd6cdbb5a.md) | 113 | `declaration-track:47086b2076d35ffbd6cdbb5aaf0fe7f46feea4a2dfe2f47f0a682e2ac4c4f85f` |
| 12 | `def` | [self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant90e188d0fca60a2195ded5e034eb704ce118c6c305cb5bc7ff494987c47854d5.lean/declarations/self--d7586ba5f75ae1c37350e9cc.md) | 122 | `declaration-track:d7586ba5f75ae1c37350e9ccf6cce982250189cfce75bbf3d131e8b63fc33935` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
