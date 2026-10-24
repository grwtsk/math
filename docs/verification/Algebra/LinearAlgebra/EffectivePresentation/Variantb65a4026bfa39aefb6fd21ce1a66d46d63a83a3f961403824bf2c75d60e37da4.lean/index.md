# Verification target: GRWTSK.Algebra.LinearAlgebra.EffectivePresentation.Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fde79a7bf342df5ac97a560745df15fabd48471",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fde79a7bf342df5ac97a560745df15fabd48471`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Permutation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.CryptographicProblem` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ResourceCost](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/resourcecost--61eee173a0b3354b6839b5f6.md) | 18 | `declaration-track:61eee173a0b3354b6839b5f644bb50b1cf36d0c6d7427aac54ac834aa7a2d1a7` |
| 2 | `def` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/zero--d95c93abb566a346567646df.md) | 26 | `declaration-track:d95c93abb566a346567646df4bb22c8a90237baeae80605099207a1af6bd026c` |
| 3 | `def` | [unit](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/unit--d9156139d3a304ab159cc3bf.md) | 29 | `declaration-track:d9156139d3a304ab159cc3bf5bda60ae129a6aa14f28755aca6709287ef79956` |
| 4 | `def` | [sequential](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/sequential--2d91ab3c9edd631194afc8c8.md) | 33 | `declaration-track:2d91ab3c9edd631194afc8c85d0b7cb42a4dee21a86e94f6823345d7ec880581` |
| 5 | `def` | [Le](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/le--7517b4fc402ea80e0d60ea2e.md) | 38 | `declaration-track:7517b4fc402ea80e0d60ea2edc0a731aed13a808114d46b203f5a81cf9f2cf04` |
| 6 | `theorem` | [le_refl](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/le-refl--d81f9d17b185454cda8ee9bd.md) | 43 | `result-track:d81f9d17b185454cda8ee9bd68609ef18987e5d16a0cd6e26ab6ec80243231f3` |
| 7 | `structure` | [CostedEquiv](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/costedequiv--e46ba28e23e4edf5617fcd7b.md) | 50 | `declaration-track:e46ba28e23e4edf5617fcd7b4d01713fc5bb67b2b18ddd877b8e2b862f1d5cbd` |
| 8 | `def` | [withCosts](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/withcosts--2dc60bf7b8fb590bbcc3710d.md) | 57 | `declaration-track:2dc60bf7b8fb590bbcc3710d7dc166eb48d1585667865fd163324fa4c8cecb9a` |
| 9 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/refl--a7b519c688f0310677109259.md) | 64 | `declaration-track:a7b519c688f0310677109259c68b3c256938fc943e4da420b2d0b851bb18d7cc` |
| 10 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/trans--905d6d6ccf55a253908efbaa.md) | 68 | `declaration-track:905d6d6ccf55a253908efbaacb5406c86cb2fd72c3ba9d5b440250169ee4c19c` |
| 11 | `theorem` | [erase_trans](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/erase-trans--39dbaea0a457d97db8c710e9.md) | 79 | `result-track:39dbaea0a457d97db8c710e914b6363eb7409ddb0ac94a1e916f8366d1716294` |
| 12 | `structure` | [PolynomialResourceBound](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/polynomialresourcebound--1b251dda035bf0fb0ea47b9f.md) | 88 | `declaration-track:1b251dda035bf0fb0ea47b9fdace207b3762c28ba57d2d5998bfc33b6d73434e` |
| 13 | `structure` | [PolynomialAutomorphismFamily](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/polynomialautomorphismfamily--0c42b042abdf1b868ff8cd44.md) | 109 | `declaration-track:0c42b042abdf1b868ff8cd4408a05645534916022a8ed430e75efab773dd498a` |
| 14 | `def` | [erase](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/erase--48a1892efc3637e947c4ebe7.md) | 121 | `declaration-track:48a1892efc3637e947c4ebe7e44358e8513dcaebf5f85cf74412200cef7465ea` |
| 15 | `def` | [InverseCostFactorsThroughErasure](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/inversecostfactorsthrougherasure--3405b20ea6cef8f358a34e75.md) | 128 | `declaration-track:3405b20ea6cef8f358a34e75218408f619ea0fb8b6a52c7b920d71241eb9a45f` |
| 16 | `theorem` | [erase_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/erase-not-injective--16a9304defb27f7b7ade1edd.md) | 133 | `result-track:16a9304defb27f7b7ade1eddc8b3e8ae3706b73590a99b7125ca5d57b252191a` |
| 17 | `theorem` | [inverseCost_does_not_factor_through_erasure](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/inversecost-does-not-factor-through-erasure--06d057daed5e791d1d248b2b.md) | 151 | `result-track:06d057daed5e791d1d248b2b05f4e261955757a7075086d65402cefb5f8adf79` |
| 18 | `structure` | [KeyedPermutationFamily](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/keyedpermutationfamily--bed4681eb37515607682cf44.md) | 172 | `declaration-track:bed4681eb37515607682cf4499a313d2868fee0e4e4bf7879f08cac3166e0550` |
| 19 | `theorem` | [keyedPermutation_has_no_collision](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/keyedpermutation-has-no-collision--1600642d4bf1032a3bd2a56d.md) | 178 | `result-track:1600642d4bf1032a3bd2a56d38dbf58592305625bf18f143ac27b0c165ad36ad` |
| 20 | `def` | [cyclicShift](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/cyclicshift--038219ccc275311898456b91.md) | 186 | `declaration-track:038219ccc275311898456b91b8b130f7f0b88a47944a25fa5dc594e03b67eb80` |
| 21 | `theorem` | [cyclicShift_apply](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/cyclicshift-apply--58ff0fe659553d38bae18b1f.md) | 191 | `result-track:58ff0fe659553d38bae18b1fc77948ea16c4d0a02f4a54423acb061f1eda2885` |
| 22 | `theorem` | [cyclicShift_inverseCost](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/cyclicshift-inversecost--6dfa624788d63124b8ad9b7e.md) | 197 | `result-track:6dfa624788d63124b8ad9b7e1b5d02d835407ef8d719b209f059588762657450` |
| 23 | `theorem` | [cyclicShift_inverse_time_lt_two](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/cyclicshift-inverse-time-lt-two--ed55c8181a4872438844b2f7.md) | 201 | `result-track:ed55c8181a4872438844b2f7bf0c52dfd04926c4a9e8699b7f2fafccb946c151` |
| 24 | `theorem` | [permutation_l2_operator_norm_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/EffectivePresentation/Variantb65a4026bfa39aefb6fd21ce1a66d46d63a83a3f961403824bf2c75d60e37da4.lean/declarations/permutation-l2-operator-norm-eq-one--419133c27193b42ad1fb8192.md) | 211 | `result-track:419133c27193b42ad1fb8192aa07bd95da8c26bfebab1d7823a617502e38fbc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
