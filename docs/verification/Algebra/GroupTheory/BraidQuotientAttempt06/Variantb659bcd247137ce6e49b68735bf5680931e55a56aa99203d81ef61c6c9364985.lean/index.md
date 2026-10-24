# Verification target: GRWTSK.Algebra.GroupTheory.BraidQuotientAttempt06.Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a50ecfb402109cac3b7cb585dec0b3704c85f0d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a50ecfb402109cac3b7cb585dec0b3704c85f0d`.

Source path: `GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/braidrelator--a58fbbec038f15ce09a61b19.md) | 15 | `declaration-track:a58fbbec038f15ce09a61b19d5f3bd31df45a43f2ffa3e8c82b319237189070a` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/braidrelations--88709dbc172d9ce7dab7d402.md) | 19 | `declaration-track:88709dbc172d9ce7dab7d402ff5c36f8a1a395c17e4f6866e5fd80c00dac625a` |
| 3 | `abbrev` | [B3](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/b3--605bddabc454d8f58a3dc836.md) | 21 | `declaration-track:605bddabc454d8f58a3dc836437fc67ba18f07581f729fd56c8050f19f4071b9` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/sigma1--abdbe9f4b0aaaf88ef680d9e.md) | 23 | `declaration-track:abdbe9f4b0aaaf88ef680d9e7b0a8b32eb8d3e70b36c3b12dfa9456e5aa6982f` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/sigma2--0f65960da5cd123434515990.md) | 25 | `declaration-track:0f65960da5cd12343451599020e20891e8ad8bae3ed1547b77fd429ce9e2be3d` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/braid-relation--20bac787644c495cfc21483d.md) | 27 | `result-track:20bac787644c495cfc21483d71d12766013f9e8de5c20b0a25ff67cab73a87f1` |
| 7 | `def` | [halfTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/halftwist--6e0db40cc8eb51874664b894.md) | 36 | `declaration-track:6e0db40cc8eb51874664b89497cb68d2c86c8b896624376e70300359754ba6e9` |
| 8 | `def` | [fullTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/fulltwist--f98e0836e7aa1d3521c87348.md) | 39 | `declaration-track:f98e0836e7aa1d3521c87348000615355f4dbeb2cd9464f26199126623dc805f` |
| 9 | `theorem` | [halfTwist_swap_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/halftwist-swap-sigma1--2fe6a509525b7c464e9e8b8e.md) | 41 | `result-track:2fe6a509525b7c464e9e8b8e5655fd19b078909b50bd18ce0f46bc016f7eb428` |
| 10 | `theorem` | [halfTwist_swap_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/halftwist-swap-sigma2--37b4fcc286741cef37330c9a.md) | 48 | `result-track:37b4fcc286741cef37330c9a3891711f07098e82aba8d1694c7ac640568e2f9c` |
| 11 | `theorem` | [halfTwist_sq](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/halftwist-sq--3e325f6a7d8846d4c9c2842f.md) | 56 | `result-track:3e325f6a7d8846d4c9c2842fca95feb317a1600f9328c8c22b9c073f06b8cc3a` |
| 12 | `theorem` | [fullTwist_commute_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/fulltwist-commute-sigma1--003310f19dfefe54346f48b3.md) | 65 | `result-track:003310f19dfefe54346f48b36366ab7ee4c104a21b0cf3f12fb85ec31c64fda1` |
| 13 | `theorem` | [fullTwist_commute_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/fulltwist-commute-sigma2--0ab9569992054e148dfd1c66.md) | 74 | `result-track:0ab9569992054e148dfd1c669abbdaecbefd5dd4f7e1fb42d904ab5eb6c5132c` |
| 14 | `theorem` | [fullTwist_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/fulltwist-central--f1d8229d85263246fdd3cba3.md) | 83 | `result-track:f1d8229d85263246fdd3cba34478c03b212f262a2d4b28ee50ca432397f1d65b` |
| 15 | `def` | [upperGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/uppergenerator--5b5417e08335406807911aac.md) | 92 | `declaration-track:5b5417e08335406807911aacc125516d753d62b117389ae51cdc92150f4d305d` |
| 16 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/lowergenerator--46bb2b9ce406a1ce92dc081e.md) | 95 | `declaration-track:46bb2b9ce406a1ce92dc081e65e0ceb7d060b61a0df2aaa99b2c86692768f414` |
| 17 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/matrix-braid-relation--793e89ee4df2992d550ef418.md) | 98 | `result-track:793e89ee4df2992d550ef41810ce2e5353cb3e5f2b506f40a2038c6a7d5a032c` |
| 18 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/generatormatrix--4a6e54d102566b4a3efd3b8e.md) | 108 | `declaration-track:4a6e54d102566b4a3efd3b8e73264a56fef825fe3a848d7d893a2e79145a661e` |
| 19 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/matrix-relator-identity--4e3f4c3f9753519eb03f2587.md) | 110 | `result-track:4e3f4c3f9753519eb03f2587a67773b88196d8dc622ce5109a7d70ad61a572b7` |
| 20 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/matrixrepresentation--ef48af9418e04e1f8d6f6f0c.md) | 120 | `declaration-track:ef48af9418e04e1f8d6f6f0cee6470a4bebb4ddc879542561af52ce152893e18` |
| 21 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/matrixrepresentation-sigma1--85e4b6bd26dd60a884d6fd92.md) | 123 | `result-track:85e4b6bd26dd60a884d6fd9292bc2fb2aec2d966db75bfa63fd20c6572233ba4` |
| 22 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/matrixrepresentation-sigma2--bda3a88b752d847773d2a418.md) | 126 | `result-track:bda3a88b752d847773d2a41862c9fad4bab36a96df8a0ade7693d389faabed2e` |
| 23 | `def` | [generatorExponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/generatorexponent--d58f31321563dfbb9e5d5726.md) | 130 | `declaration-track:d58f31321563dfbb9e5d572600b0b9626838200d1dc93b52c91fa2889d84c079` |
| 24 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/exponent-relator-identity--b713d431426be55a83ea2336.md) | 132 | `result-track:b713d431426be55a83ea2336483fb47f6d3751c6404fd99757696258dcacb010` |
| 25 | `def` | [exponentHom](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/exponenthom--8412e4c8d1adb7353c93ec0e.md) | 140 | `declaration-track:8412e4c8d1adb7353c93ec0ef6e813109f854a86175e84c606a587979c82dfcf` |
| 26 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/exponenthom-sigma1--49c3ef3502c739c57d9f2450.md) | 143 | `result-track:49c3ef3502c739c57d9f2450d7c404478ead68d40ea7e06de89b0e1367de59e5` |
| 27 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/exponenthom-sigma2--cdcd8e08b8f997b2c2127fda.md) | 146 | `result-track:cdcd8e08b8f997b2c2127fda23b6c48d694230d81919069c5b4c1ab5cd8ee57f` |
| 28 | `def` | [lostBraid](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/lostbraid--73483252cc7373f4a07d3bd0.md) | 150 | `declaration-track:73483252cc7373f4a07d3bd007f5819f73e797aee81d335c8d722a7d654643fb` |
| 29 | `theorem` | [lostBraid_eq_fullTwist_square](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/lostbraid-eq-fulltwist-square--4d2c0095682a925509cb93f5.md) | 152 | `result-track:4d2c0095682a925509cb93f5969f8e0add52171a2a95dc07f2384511da7b62c2` |
| 30 | `theorem` | [lostBraid_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/lostbraid-central--f60301f8a23187038ea140ba.md) | 156 | `result-track:f60301f8a23187038ea140ba1dda7f5254a75136fc682f50455d97fc9398b87d` |
| 31 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/generator-product-matrix--35044f135f23b585a2450dd8.md) | 165 | `result-track:35044f135f23b585a2450dd89ffddc139a1b6c8b29a0dcba2103a8b257ce9614` |
| 32 | `theorem` | [generator_product_cube_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/generator-product-cube-matrix--bf55a63f9246e2399ac1c6a7.md) | 174 | `result-track:bf55a63f9246e2399ac1c6a7ced1fad34e2d08eba5d87dc6e42a59028940b160` |
| 33 | `theorem` | [fullTwist_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/fulltwist-matrix--37e83b73a8085a51e43e997c.md) | 182 | `result-track:37e83b73a8085a51e43e997c8ae141bc5b8846129c19dbb4cfdca5681aa356cf` |
| 34 | `theorem` | [fullTwist_matrix_ne_one](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/fulltwist-matrix-ne-one--d6832b0a124f7b6faa821ec9.md) | 187 | `result-track:d6832b0a124f7b6faa821ec9f20da91d0ea99b2d1a008b03346667605f3c4634` |
| 35 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/generator-product-sixth--da21c062c47fc856b891d9ca.md) | 194 | `result-track:da21c062c47fc856b891d9ca3a5d2a7aac27bc104db684c8a0636c3ef40d2c88` |
| 36 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/lostbraid-matrix-identity--331c32e106e40a7b90897218.md) | 202 | `result-track:331c32e106e40a7b9089721842570185d3baf4502d4d92c038833245a262fbc1` |
| 37 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/lostbraid-exponent--e61304acfccd5133368aca21.md) | 206 | `result-track:e61304acfccd5133368aca212c4bee5c8511e615cf7911191eea50c95505c554` |
| 38 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/lostbraid-ne-one--7c09897a8b51bea56fdf4c11.md) | 209 | `result-track:7c09897a8b51bea56fdf4c116ae24eebc642ffb4924931b162e5b12d51b27f53` |
| 39 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/matrixrepresentation-not-injective--9dc89f587a94634e72780472.md) | 215 | `result-track:9dc89f587a94634e72780472aadd14cbb2107abf86e79486b406cacad31feaaf` |
| 40 | `theorem` | [beta_mul_lostBraid_ne](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/beta-mul-lostbraid-ne--1660a852eff14fe5f09b9c40.md) | 219 | `result-track:1660a852eff14fe5f09b9c404eeb131f4dbe264ebfed8d81d19dcdd844c4af32` |
| 41 | `def` | [FactorsThrough](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/factorsthrough--ed1df8e77027eec0f2e3996e.md) | 224 | `declaration-track:ed1df8e77027eec0f2e3996ee822f76b3e64bf99cfd639947a541a26c161caad` |
| 42 | `theorem` | [factored_kernel_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/factored-kernel-blindness--c6a64de8f540a50427fb25a0.md) | 227 | `result-track:c6a64de8f540a50427fb25a0c1d5877e7c2a4d8e0c8fd840ae184bc10282929e` |
| 43 | `theorem` | [factored_lostBraid_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/factored-lostbraid-blindness--b49b5c6a81d3d57e1b977556.md) | 233 | `result-track:b49b5c6a81d3d57e1b977556f6d7e0ce10191f4e210819475aa40a01153f61ce` |
| 44 | `theorem` | [factored_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/declarations/factored-not-injective--cd7f5cdae8a716bb8d089b7e.md) | 237 | `result-track:cd7f5cdae8a716bb8d089b7ec8f43d34869787360caf1ff8f6b3016b939b2184` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
