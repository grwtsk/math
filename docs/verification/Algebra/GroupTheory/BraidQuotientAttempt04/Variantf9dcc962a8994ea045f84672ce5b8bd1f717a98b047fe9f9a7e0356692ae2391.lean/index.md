# Verification target: GRWTSK.Algebra.GroupTheory.BraidQuotientAttempt04.Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf1a7441b52f8d01cd0c19c49fdb6ea88e838a9b",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf1a7441b52f8d01cd0c19c49fdb6ea88e838a9b`.

Source path: `GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean.json)

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
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/braidrelator--fe42f3875a65e8d221eeb973.md) | 15 | `declaration-track:fe42f3875a65e8d221eeb973c5efc3d6e1b0fb9cafc6af2c36a411f55778ca09` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/braidrelations--0c15b0a96c1a3baccbd93096.md) | 19 | `declaration-track:0c15b0a96c1a3baccbd93096228dea8a8ad96acebd1756f50a94f57f2e72d138` |
| 3 | `abbrev` | [B3](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/b3--07a873fa4bc89d0899a6bb8d.md) | 21 | `declaration-track:07a873fa4bc89d0899a6bb8da38bb660c539cac452ba408f7e1b20cd707743fd` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/sigma1--1c6be73be9fd5db6f72c1d1f.md) | 23 | `declaration-track:1c6be73be9fd5db6f72c1d1f0efe423e684b9578d751c5eef436c1def532d259` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/sigma2--85efed1c8d333831b2c862fe.md) | 25 | `declaration-track:85efed1c8d333831b2c862fedaf26084e3a337d1ea9b44612b1a783e7e37188c` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/braid-relation--952c2d47e4fdd5e504ca6aff.md) | 27 | `result-track:952c2d47e4fdd5e504ca6aff014812bc47ca9b89c67836a0805ee4db56554187` |
| 7 | `def` | [halfTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/halftwist--6db79dfe8736acb7aa2d2ff6.md) | 36 | `declaration-track:6db79dfe8736acb7aa2d2ff630419128c6aaaa965a55095b81ca0d56c7f6788b` |
| 8 | `def` | [fullTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/fulltwist--e3b6719c032b3faf72ed7a3d.md) | 39 | `declaration-track:e3b6719c032b3faf72ed7a3d4f03b31acc64f50f5bae5b2c6a91cfc9e3a13d74` |
| 9 | `theorem` | [halfTwist_swap_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/halftwist-swap-sigma1--5a6a51d28014f8c57a61269a.md) | 41 | `result-track:5a6a51d28014f8c57a61269a1b3ac0e91a87ff4f2e236e8b93ae29aba2383312` |
| 10 | `theorem` | [halfTwist_swap_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/halftwist-swap-sigma2--dd4aa047131b7d0961092aa1.md) | 48 | `result-track:dd4aa047131b7d0961092aa1098d07a143d0f45cf31f47439e65371ee82511d3` |
| 11 | `theorem` | [halfTwist_sq](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/halftwist-sq--5beb642726844d1f1b0e26b1.md) | 56 | `result-track:5beb642726844d1f1b0e26b1d8425eed09fad3cfa049564d5c2ed667b009adee` |
| 12 | `theorem` | [fullTwist_commute_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/fulltwist-commute-sigma1--bc9581418120c5add37f33b6.md) | 65 | `result-track:bc9581418120c5add37f33b6eb50fd4dfb073a5a5bf00bece71ecadff60f2168` |
| 13 | `theorem` | [fullTwist_commute_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/fulltwist-commute-sigma2--47649e74771110f69bf463a9.md) | 74 | `result-track:47649e74771110f69bf463a932dc2c46bcd7431b19cd8ceacd789a41e33fb9c3` |
| 14 | `theorem` | [fullTwist_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/fulltwist-central--c74af1b6e4c6a4478042ac78.md) | 83 | `result-track:c74af1b6e4c6a4478042ac78088a21c00cc823f718a16d6afecca2e2d83f5c3c` |
| 15 | `def` | [upperGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/uppergenerator--68de0680d5545ca930b2a1ab.md) | 92 | `declaration-track:68de0680d5545ca930b2a1aba04532e41348ecdbe9300e640d7e88e26929b14f` |
| 16 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/lowergenerator--46492b136e85ee44739dff2b.md) | 95 | `declaration-track:46492b136e85ee44739dff2bbb7d99004081fb03051fc9210fa2de99ccae3a72` |
| 17 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/matrix-braid-relation--b8ef216b3354cdd6a3149a83.md) | 98 | `result-track:b8ef216b3354cdd6a3149a83772b9c1f32af866899ded12d1dc014d710141a3b` |
| 18 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/generatormatrix--2d4a9e1baa5f5786f4422184.md) | 108 | `declaration-track:2d4a9e1baa5f5786f44221844690786194eafd8e0df465b168dae67a818436af` |
| 19 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/matrix-relator-identity--2e744f0aac2d8a13f0587f17.md) | 110 | `result-track:2e744f0aac2d8a13f0587f172e98c67e1372544649bd82fa42b57426c2533c22` |
| 20 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/matrixrepresentation--2c72464230aad8f7ef241e75.md) | 120 | `declaration-track:2c72464230aad8f7ef241e754e57e98e064a087affe80a5bbf1a933550a1efa7` |
| 21 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/matrixrepresentation-sigma1--bdeea80fd9a33642e0f7fd7e.md) | 123 | `result-track:bdeea80fd9a33642e0f7fd7ede755caa66e8b91ceb4f7ced6636c013fc09f576` |
| 22 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/matrixrepresentation-sigma2--e061f48f8453ba9f1d90d79a.md) | 126 | `result-track:e061f48f8453ba9f1d90d79ab863a84e95411b5f940cc266a99283a5ccaf7fb3` |
| 23 | `def` | [generatorExponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/generatorexponent--5e894731e3eda7c9d6861a2c.md) | 130 | `declaration-track:5e894731e3eda7c9d6861a2c792f6fc4ff374b217d0428f1055bd39efcd89057` |
| 24 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/exponent-relator-identity--96aef588431a7b6690e0f5a0.md) | 132 | `result-track:96aef588431a7b6690e0f5a01787a7d1c65ef39256fe8ed5fd42e5b88fdb0d2f` |
| 25 | `def` | [exponentHom](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/exponenthom--fa47a26b51659756b6a8fa74.md) | 140 | `declaration-track:fa47a26b51659756b6a8fa74e6ab147e9356c7ccae288b9e8839512b48c4e26d` |
| 26 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/exponenthom-sigma1--80f722c0883260a3f7af3551.md) | 143 | `result-track:80f722c0883260a3f7af35510ea8054d9b71a24fb078fbfffbf607dce9faa6ad` |
| 27 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/exponenthom-sigma2--4dc7f0f0bdac26025b4c2ae9.md) | 146 | `result-track:4dc7f0f0bdac26025b4c2ae917f60e90a98d28ea4c721bd95522b8e544e2dfce` |
| 28 | `def` | [lostBraid](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/lostbraid--d0d5a2836c8230aa0d604674.md) | 150 | `declaration-track:d0d5a2836c8230aa0d604674d835fa19415bff9f6028e6a54e0586aba94f3fe3` |
| 29 | `theorem` | [lostBraid_eq_fullTwist_square](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/lostbraid-eq-fulltwist-square--4173148cab6cb96f835bac73.md) | 152 | `result-track:4173148cab6cb96f835bac732e9823161755972942422d2cb21c92484bf8f00e` |
| 30 | `theorem` | [lostBraid_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/lostbraid-central--3b2e12d87f15586715461575.md) | 156 | `result-track:3b2e12d87f15586715461575f93af23bff4edec9f65b3e9e7e9d3b458975c45e` |
| 31 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/generator-product-matrix--bbe16df36024a23f34f39a7b.md) | 165 | `result-track:bbe16df36024a23f34f39a7b656b6cb8a5e7fb163d0927aa2d893d4779c2aa3c` |
| 32 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/generator-product-sixth--6fab5492458362a30b9be412.md) | 173 | `result-track:6fab5492458362a30b9be412b6d86dbf76d2490c059f2098b7bc114646ed3bfd` |
| 33 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/lostbraid-matrix-identity--22198d73cae0648f208594cb.md) | 181 | `result-track:22198d73cae0648f208594cb8c5adc627c357743a9487e94cfe2e4794860c37b` |
| 34 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/lostbraid-exponent--fa827f5b9b61f3ec4bd0b266.md) | 185 | `result-track:fa827f5b9b61f3ec4bd0b2665e099aec415278f169263e35ce94061ae1244930` |
| 35 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/lostbraid-ne-one--8051a66d81d3da81a82f63b9.md) | 188 | `result-track:8051a66d81d3da81a82f63b9bf0546020c85234a78e3251d86cba39eac383623` |
| 36 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/matrixrepresentation-not-injective--ea44b43825472252d8c2b389.md) | 194 | `result-track:ea44b43825472252d8c2b38945ff840e447b7e11fb9acce2aad7b9fd1ef37471` |
| 37 | `def` | [FactorsThrough](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/factorsthrough--d2d8da1e09a2bd8902f8012b.md) | 199 | `declaration-track:d2d8da1e09a2bd8902f8012bf5a7df87f35433d791384117bce0fe6b6d4a9c77` |
| 38 | `theorem` | [factored_kernel_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/factored-kernel-blindness--908d16a6f5d706b5f87ac58f.md) | 202 | `result-track:908d16a6f5d706b5f87ac58f7f3f92341a2dc4a9a4e82b190603337c38f08c8e` |
| 39 | `theorem` | [factored_lostBraid_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/factored-lostbraid-blindness--f5d72bf6d335bf8a897b90ed.md) | 208 | `result-track:f5d72bf6d335bf8a897b90edf146af397ea677e630226aa40a7e078157b3bb01` |
| 40 | `theorem` | [factored_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variantf9dcc962a8994ea045f84672ce5b8bd1f717a98b047fe9f9a7e0356692ae2391.lean/declarations/factored-not-injective--d9b9255725bc0707c47d2056.md) | 212 | `result-track:d9b9255725bc0707c47d20560b049e2b7296b87ae364e201078ca005f21526d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
