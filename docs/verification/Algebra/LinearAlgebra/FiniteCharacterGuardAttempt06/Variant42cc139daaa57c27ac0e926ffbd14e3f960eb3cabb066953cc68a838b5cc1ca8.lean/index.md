# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteCharacterGuardAttempt06.Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14ac0b46d175fab3193ad32312bdc4edd71055fc",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14ac0b46d175fab3193ad32312bdc4edd71055fc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/coefficientmap--e982dff5a1519e60e99aac9d.md) | 14 | `declaration-track:e982dff5a1519e60e99aac9d9e3caa378f00b7c47c697252a05ffd1064146fc2` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/coefficient-eq-expect--bc48e90344e7dd73b1acd954.md) | 20 | `result-track:bc48e90344e7dd73b1acd9544fb6e6ef12ecd4af3395ab53bfc03ed16dd66c4e` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/trivial-coefficient-eq-mean--f714d47da802cd4954da4a88.md) | 25 | `result-track:f714d47da802cd4954da4a880e3a7bf09ce2859c8432785ff8c8d4c850c380bd` |
| 4 | `theorem` | [coefficient_character](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/coefficient-character--45d4bce70f0abc22c08738fd.md) | 30 | `result-track:45d4bce70f0abc22c08738fd4358d56c3ace7ed5df53365677b6b5d8a9552884` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/coefficient-eq-basis-repr--ce362ace8b7ed4e5038117a1.md) | 35 | `result-track:ce362ace8b7ed4e5038117a1df2ad5ef48008707fd02e0fc4b88ed93e48a0335` |
| 6 | `theorem` | [complete_reconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/complete-reconstruction--28df57feb0c84824821c0704.md) | 43 | `result-track:28df57feb0c84824821c0704f69f4b73b7b50f74aa0a95ad95bded4c504718d9` |
| 7 | `def` | [incompleteReconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/incompletereconstruction--1534153e7da54ca9419bf122.md) | 49 | `declaration-track:1534153e7da54ca9419bf122a5aff7fd3341b2b8d4b3fa7b44ee5635224a26ce` |
| 8 | `theorem` | [reconstruction_split](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/reconstruction-split--1fcc7f50ee78d0ab5e0978c8.md) | 54 | `result-track:1fcc7f50ee78d0ab5e0978c82fdecb2a0230781dad3f75c2a79c7c5e46398564` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/incomplete-eq-self-iff--994e4209a3000f5acb9d2aaf.md) | 68 | `result-track:994e4209a3000f5acb9d2aaf85133277bd490c00a1a247e7218fc4ffc7675188` |
| 10 | `def` | [nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/nontrivialspan--74a3151b5d1ad760f31df713.md) | 80 | `declaration-track:74a3151b5d1ad760f31df7134dd87096c688f9995be893c816921b70a4a897fe` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/nontrivialspan-le-trivial-kernel--c837413a81bb0d76e0cdb3ee.md) | 83 | `result-track:c837413a81bb0d76e0cdb3eee9dbaf2257da5343037b8552715e013a2434eeb0` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/trivial-not-mem-nontrivialspan--748effe48af0d9dc0b49243a.md) | 92 | `result-track:748effe48af0d9dc0b49243a7033d8668ece262044ba766115d8920f656a64c0` |
| 13 | `theorem` | [mem_nontrivialSpan_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/mem-nontrivialspan-iff--3cdd00dd77b597b77e40f767.md) | 104 | `result-track:3cdd00dd77b597b77e40f7679861ad7595f1c3c80d8c17803fee8cb0865a608c` |
| 14 | `theorem` | [nontrivialSpan_eq_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/nontrivialspan-eq-trivial-kernel--9063b54ed9cf3b17c71c405d.md) | 119 | `result-track:9063b54ed9cf3b17c71c405df86296e1b1cb63c2d931744a592ce6cd86a6235c` |
| 15 | `theorem` | [coefficient_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/coefficient-constant--5e43e3eae34308aee76a4027.md) | 124 | `result-track:5e43e3eae34308aee76a4027a501613b31b29c33eb5d490519b41b414b72fda4` |
| 16 | `def` | [nontrivialStack](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/nontrivialstack--6635a1960fdd32fe18fc3ca2.md) | 133 | `declaration-track:6635a1960fdd32fe18fc3ca2f2b3a4f5d52e0ae4344cf3b2bbacb6cd39194b47` |
| 17 | `theorem` | [nontrivialStack_add_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/nontrivialstack-add-constant--d6d67a2ef2bff72f88e5db45.md) | 136 | `result-track:d6d67a2ef2bff72f88e5db45a1592dfafddab077bc725735a1ad90ff31bca984` |
| 18 | `theorem` | [nontrivialStack_eq_iff_constant_difference](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/nontrivialstack-eq-iff-constant-difference--8b7da19e75c001b61e76a091.md) | 142 | `result-track:8b7da19e75c001b61e76a0912a405a13da3faa7be1bcbd764a58586fd555ff0b` |
| 19 | `theorem` | [no_trivial_coefficient_decoder](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/no-trivial-coefficient-decoder--09cae24627cd049f0952fa15.md) | 159 | `result-track:09cae24627cd049f0952fa152c4fbbdb11aff0ff78178301e7abcc65745c9065` |
| 20 | `def` | [scalarFiber](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/scalarfiber--c9a444322d76599d0a4d959d.md) | 172 | `declaration-track:c9a444322d76599d0a4d959d3d65fefa8548a10d1a6bb5a83b370b69e5eb6348` |
| 21 | `theorem` | [scalarFiber_sum](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/scalarfiber-sum--c7c3371022280f0f899a4b72.md) | 174 | `result-track:c7c3371022280f0f899a4b72d51fbe690995bea22c4170ba1d1ec5020cc43ea1` |
| 22 | `theorem` | [scalarFiber_positive_total](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/scalarfiber-positive-total--29a3f7bd2edc778be63c44d1.md) | 186 | `result-track:29a3f7bd2edc778be63c44d195f4bffcd8d385e891da0bb996088730dfcbe522` |
| 23 | `theorem` | [scalarFiber_negative_trivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/scalarfiber-negative-trivial--d1be043537b29a06471856dd.md) | 194 | `result-track:d1be043537b29a06471856dd7cdec47486e2958dda382f77634910d3c61b5570` |
| 24 | `theorem` | [scalarFiber_positive_nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/scalarfiber-positive-nontrivial--73e9a66b6baacaf10215b10c.md) | 198 | `result-track:73e9a66b6baacaf10215b10c81495341bdad4eb7b8d664f73d09eba1cc848fcb` |
| 25 | `theorem` | [positive_total_not_fiberwise](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/declarations/positive-total-not-fiberwise--2f769cbddfaf9fb4624559ea.md) | 203 | `result-track:2f769cbddfaf9fb4624559ea6146edb96b6db20b30484c8ecda8c131d18ead02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
