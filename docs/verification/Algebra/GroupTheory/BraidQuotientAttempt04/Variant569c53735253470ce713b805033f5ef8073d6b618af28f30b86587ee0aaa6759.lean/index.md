# Verification target: GRWTSK.Algebra.GroupTheory.BraidQuotientAttempt04.Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29c681a8fd024c19fb1c915afeff2737d21a9e82",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29c681a8fd024c19fb1c915afeff2737d21a9e82`.

Source path: `GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/braidrelator--8a59d5983865dd3a0bfa77ca.md) | 23 | `declaration-track:8a59d5983865dd3a0bfa77ca6b555fb3c2d03551b1e018dde22ca1a790497dbe` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/braidrelations--5c73eda5bc0e7be472f2446d.md) | 27 | `declaration-track:5c73eda5bc0e7be472f2446d3406a9415b9a7489ae91a87bcfe3de950968020c` |
| 3 | `abbrev` | [B3](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/b3--07106c62520b4a1160ea56e6.md) | 29 | `declaration-track:07106c62520b4a1160ea56e640bfc11c94599ec5c1ef9a7dcb9308551dbc96b2` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/sigma1--ea19f97930e555791a89dbfb.md) | 31 | `declaration-track:ea19f97930e555791a89dbfbab48ec6fccc557c458a21185b78090dbeb39f23c` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/sigma2--03d68e6a87ee12333750b9bc.md) | 33 | `declaration-track:03d68e6a87ee12333750b9bc4ff468e9598baf7a1371ff230cd00ec0a2ea322c` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/braid-relation--b9d0bd03cb670bcfc3bf6aed.md) | 35 | `result-track:b9d0bd03cb670bcfc3bf6aedaf0f86e7c6d5f7e6c3cd00874f7d18ba625d3b58` |
| 7 | `def` | [halfTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/halftwist--afc192e155ddbc38675ce9dc.md) | 44 | `declaration-track:afc192e155ddbc38675ce9dc15201c3719e06ee0076656e6e80a79ffe795af49` |
| 8 | `def` | [fullTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/fulltwist--8a404e3755498376268b1ebb.md) | 47 | `declaration-track:8a404e3755498376268b1ebbe27694724739f642e2f6ba073ac3c5d0450b3b27` |
| 9 | `theorem` | [halfTwist_swap_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/halftwist-swap-sigma1--effb27ba4b51cb695aaedd48.md) | 49 | `result-track:effb27ba4b51cb695aaedd4824bfe8e98c1dd88ef530c508a77b24efd8a215cb` |
| 10 | `theorem` | [halfTwist_swap_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/halftwist-swap-sigma2--5d5d54f34fc7ce9fdb8ec7fa.md) | 56 | `result-track:5d5d54f34fc7ce9fdb8ec7fa00957184c99e29dd0df00b536109134517c1cf4a` |
| 11 | `theorem` | [halfTwist_sq](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/halftwist-sq--6da791ed1fa6d58f09ab0b7b.md) | 64 | `result-track:6da791ed1fa6d58f09ab0b7b23c26426b9b17b8ff26625e3b32ff40b850f2dcb` |
| 12 | `theorem` | [fullTwist_commute_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/fulltwist-commute-sigma1--b64cd25d599e104594a4fafd.md) | 73 | `result-track:b64cd25d599e104594a4fafd6989b2d15187eac12288b90b7a579490760dcf74` |
| 13 | `theorem` | [fullTwist_commute_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/fulltwist-commute-sigma2--4454112402df268db8ccd8df.md) | 82 | `result-track:4454112402df268db8ccd8dffcc7ec189b4a1fbf7de77fe695c1d409d63dfbf2` |
| 14 | `theorem` | [fullTwist_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/fulltwist-central--39ce3f22b96717e3422f212f.md) | 91 | `result-track:39ce3f22b96717e3422f212faebf39fd507bd609b70ce4a4382908ee8ab1d8da` |
| 15 | `def` | [upperGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/uppergenerator--5ad837e76b08f4e25b520cbd.md) | 100 | `declaration-track:5ad837e76b08f4e25b520cbd7038c7177202e8e1f3b4d112a19555dd7ecf93a2` |
| 16 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/lowergenerator--fbd446b269af36485ad2082d.md) | 103 | `declaration-track:fbd446b269af36485ad2082d723e8d9fd175d4001d65997b633b34bdc86bc58b` |
| 17 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/matrix-braid-relation--98440cae5b90e247bf9ff5e8.md) | 106 | `result-track:98440cae5b90e247bf9ff5e87a3250ff94186bcdb7b3571b0b2fb0ea083dad2c` |
| 18 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/generatormatrix--1ce7d81ecb084f4c34f114b0.md) | 116 | `declaration-track:1ce7d81ecb084f4c34f114b0f330942133e6f0cc383bb6973359fffc6a449b79` |
| 19 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/matrix-relator-identity--1f3932e24f46dde887dd44d0.md) | 118 | `result-track:1f3932e24f46dde887dd44d05db25bf257c8667fec71ebe10e611a12782eab07` |
| 20 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/matrixrepresentation--3dc0cef62a9e252153be5ded.md) | 128 | `declaration-track:3dc0cef62a9e252153be5dede96b01b28775251f8d758fb716f6aa4c7398f2cd` |
| 21 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/matrixrepresentation-sigma1--60c9bf91bc0cd385ae02772e.md) | 131 | `result-track:60c9bf91bc0cd385ae02772e891e7a59c3c5191068c5fd422823a42307f5e48d` |
| 22 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/matrixrepresentation-sigma2--1fe30d17a52d415ebfb1c3a8.md) | 134 | `result-track:1fe30d17a52d415ebfb1c3a86e148218b75eda9adab48f260ae39d88e6caf835` |
| 23 | `def` | [generatorExponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/generatorexponent--ab54579997a0381e86109b9f.md) | 138 | `declaration-track:ab54579997a0381e86109b9f34db0794621a55154c998f9665a326d649a4c6a8` |
| 24 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/exponent-relator-identity--a9a560ce89d673b3ad1cead0.md) | 140 | `result-track:a9a560ce89d673b3ad1cead0951b0c39b7fe9f0f0c252d7eb05e542b507fbb28` |
| 25 | `def` | [exponentHom](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/exponenthom--55de39acf5a232472f5ffd40.md) | 148 | `declaration-track:55de39acf5a232472f5ffd40baf23656eef0c763fd5cc82769aaf62147e0033b` |
| 26 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/exponenthom-sigma1--78ca7b6d70ea1330b1f41a06.md) | 151 | `result-track:78ca7b6d70ea1330b1f41a06ad5ac5a45408d31c708c00b1056fca935f90f328` |
| 27 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/exponenthom-sigma2--9bf5dc24aa5f33a5679b3b67.md) | 154 | `result-track:9bf5dc24aa5f33a5679b3b67daee09f65e38c9ddeb68e185dc82139132a64360` |
| 28 | `def` | [lostBraid](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/lostbraid--1308f48abe06eaaf73fbbde3.md) | 158 | `declaration-track:1308f48abe06eaaf73fbbde35e57617f3c42ffc9e7f1295554719b9bba686d87` |
| 29 | `theorem` | [lostBraid_eq_fullTwist_square](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/lostbraid-eq-fulltwist-square--1035e824ff4ca1beed73cc06.md) | 160 | `result-track:1035e824ff4ca1beed73cc06300b507126d0f4a0502473155ed76dc3d331f00a` |
| 30 | `theorem` | [lostBraid_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/lostbraid-central--47dfb3204731ea8f621a9024.md) | 164 | `result-track:47dfb3204731ea8f621a9024bd18862df346cbf8c906807107f33fb4aebbf7ce` |
| 31 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/generator-product-matrix--b316fc27e122bd73c49f3ea6.md) | 173 | `result-track:b316fc27e122bd73c49f3ea678d1d2ad2e4332496ff3c1e69489c23f1e913b72` |
| 32 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/generator-product-sixth--e85f3ab692eb7ebd9035a3e3.md) | 181 | `result-track:e85f3ab692eb7ebd9035a3e3add4bb4a73e60d9196b92cded99d1ce89d2b1858` |
| 33 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/lostbraid-matrix-identity--19915491610ec18f5e5d630f.md) | 189 | `result-track:19915491610ec18f5e5d630fe791122f54e370d912d831609b028dfc6b12ac33` |
| 34 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/lostbraid-exponent--62e26bb610f0d672fe843db1.md) | 193 | `result-track:62e26bb610f0d672fe843db14af361d6137a7ae87734cfddaa0002deaaa98a9d` |
| 35 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/lostbraid-ne-one--e973c3788f99f4d0234574cb.md) | 196 | `result-track:e973c3788f99f4d0234574cbd8371e78ca8d261a55025b985dce7af4dedbb8f6` |
| 36 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/matrixrepresentation-not-injective--f1fbd0362d0b220f2968062c.md) | 202 | `result-track:f1fbd0362d0b220f2968062cd5162903ca148a7810fe47f678d36663b863e626` |
| 37 | `def` | [FactorsThrough](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/factorsthrough--0082da7a6d05342edfeba232.md) | 207 | `declaration-track:0082da7a6d05342edfeba232bc4adbb9467eb901c2c546a4058cb9a35b01707d` |
| 38 | `theorem` | [factored_kernel_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/factored-kernel-blindness--8d27147f94353c4ad9dab74d.md) | 210 | `result-track:8d27147f94353c4ad9dab74d7dd4688f8cb61d677fe549dc7cb766f98b749519` |
| 39 | `theorem` | [factored_lostBraid_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/factored-lostbraid-blindness--224a8709b34efe332c548cc2.md) | 216 | `result-track:224a8709b34efe332c548cc2d065219a9f31f912f9dea3dac73d63e8ca9c9b8e` |
| 40 | `theorem` | [factored_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt04/Variant569c53735253470ce713b805033f5ef8073d6b618af28f30b86587ee0aaa6759.lean/declarations/factored-not-injective--d4235d89d951b9148a932a77.md) | 220 | `result-track:d4235d89d951b9148a932a77f2622b7eff89976acc2e8a1d450022b4404aad64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
