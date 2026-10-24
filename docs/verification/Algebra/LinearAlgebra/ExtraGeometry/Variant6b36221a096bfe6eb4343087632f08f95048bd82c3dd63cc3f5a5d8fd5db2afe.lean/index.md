# Verification target: GRWTSK.Algebra.LinearAlgebra.ExtraGeometry.Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65ebbdbd30a6de7cf4c2f43a6461241fa52ff25b",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65ebbdbd30a6de7cf4c2f43a6461241fa52ff25b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Geometry` — import line 6; external provider; requires a separately pinned dependency.
- `Certificates` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rational_ldl_real_positive](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/rational-ldl-real-positive--77f357d177b455143b317b0e.md) | 29 | `result-track:77f357d177b455143b317b0e97d3902fb2511b452e5519efbb8bb03680b2fb1a` |
| 2 | `def` | [d4RealCartan](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4realcartan--5e3676ac62c95dac46e94c15.md) | 56 | `declaration-track:5e3676ac62c95dac46e94c15abfcd7133a6af46caf33907521a849469dac674f` |
| 3 | `def` | [e8RealCartan](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8realcartan--7a50374e068141b6b3fb2132.md) | 59 | `declaration-track:7a50374e068141b6b3fb21322f821837119959f438b4b6cc1a6b70c3d41e6925` |
| 4 | `theorem` | [d4_real_positive_definite](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-real-positive-definite--3e4fdc9cc98ae63c4cd7c370.md) | 61 | `result-track:3e4fdc9cc98ae63c4cd7c370b329c28501b30d967e748cf3f184f7329d7862b1` |
| 5 | `theorem` | [e8_real_positive_definite](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-real-positive-definite--3d37c79c2e24e5bbc6441c19.md) | 69 | `result-track:3d37c79c2e24e5bbc6441c19e2a6a53f05f4e38a82a70362c85988f827ac3c14` |
| 6 | `theorem` | [d4_real_quadratic_positive](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-real-quadratic-positive--8678d1511da0f6cb09d079f3.md) | 77 | `result-track:8678d1511da0f6cb09d079f3431517558f36ffc4b7712d718295a614a8daecb9` |
| 7 | `theorem` | [e8_real_quadratic_positive](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-real-quadratic-positive--50b5adc0e06ca650a2228f6e.md) | 82 | `result-track:50b5adc0e06ca650a2228f6e6ff8bbcdd47064e29da13b9b062522e177a75097` |
| 8 | `def` | [height](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/height--acf361736e34d4cf11799e19.md) | 88 | `declaration-track:acf361736e34d4cf11799e1984944b282ce4600fe33a5006af8cbf153aaf1c05` |
| 9 | `def` | [d4Highest](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4highest--1c81a3eb75e60b1696495056.md) | 91 | `declaration-track:1c81a3eb75e60b1696495056f4154454e74cff01596aacbe8da2f73d07c5c771` |
| 10 | `def` | [e8Highest](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8highest--a7092b5e7cfdcde0dc9c284a.md) | 94 | `declaration-track:a7092b5e7cfdcde0dc9c284a41e23e97fd2000295a8c121f2d52d9bd0a4332b4` |
| 11 | `theorem` | [d4_highest_membership](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-highest-membership--239f6f3377af51e9c576edbc.md) | 96 | `result-track:239f6f3377af51e9c576edbcca009f210200021fa7f63e2ba7af595956a3e3cc` |
| 12 | `theorem` | [e8_highest_membership](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-highest-membership--5e50c4fbba9637d4e18fc610.md) | 98 | `result-track:5e50c4fbba9637d4e18fc610fed1ed560d1a7feaf8c2323a049a6beab1d72874` |
| 13 | `theorem` | [d4_lowest_membership](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-lowest-membership--61e408842960327c0bd073f9.md) | 100 | `result-track:61e408842960327c0bd073f98d92e097403d7bfd3b810e0f9d4505f0fdc518ce` |
| 14 | `theorem` | [e8_lowest_membership](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-lowest-membership--85272d42ecd815953bf02d6a.md) | 102 | `result-track:85272d42ecd815953bf02d6a17055353e7c4f02c656d1397f9adea044e4d4b41` |
| 15 | `theorem` | [d4_highest_positive](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-highest-positive--f9bc075ba2b0e62768627736.md) | 104 | `result-track:f9bc075ba2b0e627686277363f6cc78eb67df3c7ada87911a229cf946605a8d6` |
| 16 | `theorem` | [e8_highest_positive](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-highest-positive--bff309d52c797a57721ce6ed.md) | 107 | `result-track:bff309d52c797a57721ce6ed08ddc652bcef7db251c34e917da4214925dcb302` |
| 17 | `theorem` | [d4_highest_reachable](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-highest-reachable--0bbf3889bc04b92df64953bc.md) | 110 | `result-track:0bbf3889bc04b92df64953bc12842e34649653dd9a575664c45dd69c7f4d71f5` |
| 18 | `theorem` | [e8_highest_reachable](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-highest-reachable--6696815bc0c8d73599cbcfdc.md) | 113 | `result-track:6696815bc0c8d73599cbcfdcb1ba2ed2daaf98a9678c0d988fcb88b17c5cdfcf` |
| 19 | `theorem` | [d4_lowest_reachable](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-lowest-reachable--7e618ad1df7e4da04a153c5c.md) | 116 | `result-track:7e618ad1df7e4da04a153c5c4a6fa957ddf3602721db1d966a640e11d658e07c` |
| 20 | `theorem` | [e8_lowest_reachable](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-lowest-reachable--2049f5baefafd3fec899a7df.md) | 119 | `result-track:2049f5baefafd3fec899a7df06cb83f0c90437daff99c9d75b5dfb4e183308f6` |
| 21 | `theorem` | [d4_height_bound_checked](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-height-bound-checked--00ed0c75c4a0d27f7950ba76.md) | 122 | `result-track:00ed0c75c4a0d27f7950ba766276d7f2ef0951a0b7052c326c45269e961e2e8a` |
| 22 | `theorem` | [e8_height_bound_checked](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-height-bound-checked--0bbb27088537aa701a2fb9f0.md) | 125 | `result-track:0bbb27088537aa701a2fb9f0172ae3569d87a247bd7b1828551cb83ecc8906a9` |
| 23 | `theorem` | [d4_highest_unique_checked](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-highest-unique-checked--9ceb00320d2f6ec53fdd2703.md) | 128 | `result-track:9ceb00320d2f6ec53fdd2703541cb1b9ac102b04416f369204899813ab0bd18f` |
| 24 | `theorem` | [e8_highest_unique_checked](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-highest-unique-checked--75882fbf7b11e45484e1ce1b.md) | 131 | `result-track:75882fbf7b11e45484e1ce1bad5fec2c76e4a00b3f5ba5f2805cde6c51b39fb2` |
| 25 | `theorem` | [d4_height_bound](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-height-bound--51fdb45ffab225ea5839f3db.md) | 134 | `result-track:51fdb45ffab225ea5839f3dbbe009c832759b3be9ea3f9c3fd2eb7e86517719c` |
| 26 | `theorem` | [e8_height_bound](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-height-bound--efd363479a7df5b551993bc5.md) | 140 | `result-track:efd363479a7df5b551993bc57532c902fd3ba38b0e531eb1185de980927e637f` |
| 27 | `theorem` | [d4_highest_unique](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-highest-unique--c12cf86fd88030cd7d7fa5a1.md) | 146 | `result-track:c12cf86fd88030cd7d7fa5a16599322f010004952f0dbc4ff72683273bec42ab` |
| 28 | `theorem` | [e8_highest_unique](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-highest-unique--17137d03de71749ff057fc80.md) | 152 | `result-track:17137d03de71749ff057fc80b9b300dc043ab6348d66f6d18d21de628471292a` |
| 29 | `theorem` | [d4_coordinate_bounds_checked](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-coordinate-bounds-checked--9246067335f742b2643dbb24.md) | 158 | `result-track:9246067335f742b2643dbb24797543e8fa1aa76bb74c107773b2e2ad2efaa5b9` |
| 30 | `theorem` | [e8_coordinate_bounds_checked](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-coordinate-bounds-checked--53fb72e9f1b4076e2c48ee5e.md) | 162 | `result-track:53fb72e9f1b4076e2c48ee5e6accd7f1ca3f7b5274939af8a2ede02821e8f0b7` |
| 31 | `theorem` | [d4_coordinate_bounds](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/d4-coordinate-bounds--732954500959ee8935fa1cfb.md) | 166 | `result-track:732954500959ee8935fa1cfb30a61e09d6e7c65e2c90b7d9396947d4b8817667` |
| 32 | `theorem` | [e8_coordinate_bounds](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/e8-coordinate-bounds--7e51a0d9185e8d5409e90e0d.md) | 171 | `result-track:7e51a0d9185e8d5409e90e0d2ce880571db6f5604192ba80451e9124fab36fe2` |
| 33 | `def` | [diagramPermutation](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagrampermutation--2783362a5e749e6b28380ec0.md) | 177 | `declaration-track:2783362a5e749e6b28380ec003e0d408ac591ac02292324b4d96c689a8ac4fb0` |
| 34 | `def` | [diagramMatrix](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagrammatrix--d62834da7ed3f1fa30063408.md) | 182 | `declaration-track:d62834da7ed3f1fa30063408f54cf9ce9598c9540a5f482b9168ffa41fafc6e3` |
| 35 | `def` | [diagramComposition](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagramcomposition--ef62e6dd58d8fcb83ae2a9b0.md) | 186 | `declaration-track:ef62e6dd58d8fcb83ae2a9b0934dd1ececbac3dde1e9e40c69fc0fbd10fdf140` |
| 36 | `theorem` | [diagram_permutation_injective](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagram-permutation-injective--3213709ce1d2dd737df44984.md) | 190 | `result-track:3213709ce1d2dd737df44984e1432e2c69eafa7883d05db84531fac703bbf195` |
| 37 | `theorem` | [diagram_permutations_distinct](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagram-permutations-distinct--934beba69d7f60087fe8d6e7.md) | 193 | `result-track:934beba69d7f60087fe8d6e7baab73e5dd3898fd68d5f5b42b09d00d6edf8857` |
| 38 | `theorem` | [diagram_permutation_fixes_center](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagram-permutation-fixes-center--64284bcfad6a275b762b3e89.md) | 196 | `result-track:64284bcfad6a275b762b3e89cfda56222539c551aa7349a0aaf92801b58d918f` |
| 39 | `theorem` | [diagram_composition_checked](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagram-composition-checked--67b47caf1c5d8eb1f950fac0.md) | 199 | `result-track:67b47caf1c5d8eb1f950fac03fc1d3cc4ae9e2b4ba8bcee1442d6151d834778a` |
| 40 | `theorem` | [diagram_identity](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagram-identity--4b407edbc88bf5ab6f7752a8.md) | 203 | `result-track:4b407edbc88bf5ab6f7752a886d46ead71c13e0cc80aa647eba85c8067c073b8` |
| 41 | `theorem` | [diagram_matrix_composition](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagram-matrix-composition--73247b5f404e1b18c3687991.md) | 205 | `result-track:73247b5f404e1b18c36879917f49940c01467057717c73f690265c4780c9d9aa` |
| 42 | `theorem` | [diagram_metric](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagram-metric--e042e9e4f6e1a57fc57b1323.md) | 209 | `result-track:e042e9e4f6e1a57fc57b132389e5a5bc878c367054cfa4499ddaec1586d4c298` |
| 43 | `theorem` | [diagram_mutation_equivariance](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagram-mutation-equivariance--98f2b87ed3b5e106e9661dde.md) | 212 | `result-track:98f2b87ed3b5e106e9661ddebc997864621706dbdd3f961868cab4b56659e876` |
| 44 | `theorem` | [diagram_adjacency_preservation](../../../../../mathematics/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/declarations/diagram-adjacency-preservation--1ccc8cb7c8b43178a73b4366.md) | 217 | `result-track:1ccc8cb7c8b43178a73b436628fd060c85ccf488854cc69e778ddda1826a626e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
