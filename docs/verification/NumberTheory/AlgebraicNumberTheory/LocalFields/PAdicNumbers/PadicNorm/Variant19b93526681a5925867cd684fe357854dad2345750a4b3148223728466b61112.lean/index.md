# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.PadicNorm.Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "661598ba2f70e41c2e4619639842ebe4eca766dc",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `661598ba2f70e41c2e4619639842ebe4eca766dc`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Power` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [padicNorm](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/padicnorm--5b047f367531f0162579f1a5.md) | 50 | `declaration-track:5b047f367531f0162579f1a5b8be5c35898ac5d00f7886e1a7a8ebcf4899404a` |
| 2 | `theorem` | [eq_zpow_of_nonzero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/eq-zpow-of-nonzero--89e864c0bd3adb8677c811f0.md) | 62 | `result-track:89e864c0bd3adb8677c811f036a5c411b9693327662a7525c851910c1a1023f0` |
| 3 | `theorem` | [nonneg](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/nonneg--b4db51f86315525b95ea514c.md) | 67 | `result-track:b4db51f86315525b95ea514cf0ed5b234add6bffb06893bb012bf937c5773b88` |
| 4 | `theorem` | [zero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/zero--e1ea49d47b1edb6db7fe1749.md) | 78 | `result-track:e1ea49d47b1edb6db7fe17493aaf7acdd4fb527bda0f7bb4f09b6581a6a1a3d6` |
| 5 | `theorem` | [one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/one--c832bb44d19eea641877762f.md) | 83 | `result-track:c832bb44d19eea641877762fa97642932061346e2956ef674a9142dd66b06a76` |
| 6 | `theorem` | [padicNorm_p](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/padicnorm-p--2e51d0288c5fcd23d9052431.md) | 89 | `result-track:2e51d0288c5fcd23d9052431c854cd0352ed641257dc8eb5fdd1c12be5ef5d71` |
| 7 | `theorem` | [padicNorm_p_of_prime](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/padicnorm-p-of-prime--f9078fe54a21c042474eda5b.md) | 97 | `result-track:f9078fe54a21c042474eda5b0db4c8545cc4e1ac14a5f34150a5c8264530e476` |
| 8 | `theorem` | [padicNorm_of_prime_of_ne](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/padicnorm-of-prime-of-ne--a279929460a8becdc2f8a4a3.md) | 102 | `result-track:a279929460a8becdc2f8a4a368bc9703252a5b673775ebd9c03068e8d07ebf54` |
| 9 | `theorem` | [padicNorm_p_lt_one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/padicnorm-p-lt-one--741c45df9083885714a08f36.md) | 112 | `result-track:741c45df9083885714a08f36e524f8de72bbc033a89cbdb4e4800f76fd38fdb2` |
| 10 | `theorem` | [padicNorm_p_lt_one_of_prime](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/padicnorm-p-lt-one-of-prime--a984f02aafdc94589b9c95eb.md) | 120 | `result-track:a984f02aafdc94589b9c95eb09a0ebf657d9dc285f41ee638b2f64a52d37290e` |
| 11 | `theorem` | [values_discrete](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/values-discrete--0606d6cb38f0fcf742fefada.md) | 125 | `result-track:0606d6cb38f0fcf742fefada6cbf4e3f26eb97241d6837c9f78747bdc5172d9c` |
| 12 | `theorem` | [neg](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/neg--2ba30e100d48075a19680d89.md) | 131 | `result-track:2ba30e100d48075a19680d895127542698a7bdc89f5c6c7140e667283f070931` |
| 13 | `theorem` | [nonzero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/nonzero--7bee9fcbaa4769fe705322d9.md) | 138 | `result-track:7bee9fcbaa4769fe705322d93433d12082d1ade6e6660fd3a802d6f71c86f31c` |
| 14 | `theorem` | [zero_of_padicNorm_eq_zero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/zero-of-padicnorm-eq-zero--64cda8edf55e6b30fb99405d.md) | 145 | `result-track:64cda8edf55e6b30fb99405d9e5d9f45fea4227f97648a978516a0a132e37503` |
| 15 | `theorem` | [mul](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/mul--88034c017f1fce6f139980a5.md) | 155 | `result-track:88034c017f1fce6f139980a50673878a835dfdabd8970e887510819366bcaa76` |
| 16 | `theorem` | [div](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/div--5c5ecddc01ad2a140f4d6b0e.md) | 166 | `result-track:5c5ecddc01ad2a140f4d6b0e97d2c403bfefbf2a03805133e754b2b24332f37c` |
| 17 | `theorem` | [of_int](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/of-int--e0f7cffdca0749b1b62d6e0f.md) | 172 | `result-track:e0f7cffdca0749b1b62d6e0fe5c67bb25d66d0476fad1893cd6a121fce2f3fc7` |
| 18 | `theorem` | [nonarchimedean_aux](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/nonarchimedean-aux--608bab7d5fc5dcf1c34aa99e.md) | 185 | `result-track:608bab7d5fc5dcf1c34aa99e8cb8d537ec5bb1afa23f5448678104a41e7bffcf` |
| 19 | `theorem` | [nonarchimedean](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/nonarchimedean--f510cf09deaeefe6877c9c5f.md) | 207 | `result-track:f510cf09deaeefe6877c9c5f35d8e569cacce71fd4460dd96306cd0c6ec96e1e` |
| 20 | `theorem` | [triangle_ineq](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/triangle-ineq--ac712e029b9491f16ac8869c.md) | 217 | `result-track:ac712e029b9491f16ac8869c20375b39c2e4de7e2a52db1dc1ed08df3952f3ef` |
| 21 | `theorem` | [sub](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/sub--9901a9a97ea88448022e85da.md) | 226 | `result-track:9901a9a97ea88448022e85da85230e2042049d4a44b0f7a46fe9adb8344fbfe0` |
| 22 | `theorem` | [add_eq_max_of_ne](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/add-eq-max-of-ne--68e58b03df8b21408339e49f.md) | 233 | `result-track:68e58b03df8b21408339e49f1ce1a18dc2c4ec324daec076998ebbee027331cf` |
| 23 | `instance` | [(anonymous)](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/instance--9fe621855da682234702262e.md) | 256 | `declaration-track:9fe621855da682234702262e1d26d7b2834a6270385ac19545987d2881eca463` |
| 24 | `theorem` | [dvd_iff_norm_le](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/dvd-iff-norm-le--382387fc6474d925c39da9bd.md) | 263 | `result-track:382387fc6474d925c39da9bdd461be61fa65b78108efa8367802df6c1b561af4` |
| 25 | `theorem` | [int_eq_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/int-eq-one-iff--b09669377f12f24d3e50b7fa.md) | 277 | `result-track:b09669377f12f24d3e50b7fac83f33a471cff57e07bb9c2206dcffca7992affa` |
| 26 | `theorem` | [int_lt_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/int-lt-one-iff--2516b1225a515706dacf41a2.md) | 298 | `result-track:2516b1225a515706dacf41a226610066aba314c1e210743c8ffbce07d7447d9e` |
| 27 | `theorem` | [of_nat](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/of-nat--73e9e863415a7b22a514f909.md) | 303 | `result-track:73e9e863415a7b22a514f909dfc3509a19dfb80c4d13cc9458e62269c98727c9` |
| 28 | `theorem` | [nat_eq_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/nat-eq-one-iff--fd630d5fe652e35b86dbcbea.md) | 308 | `result-track:fd630d5fe652e35b86dbcbea317fe7fd676edc896041dde0f26251b2546459d1` |
| 29 | `theorem` | [nat_lt_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/nat-lt-one-iff--84af4fb66cbed6bdd688ecf2.md) | 312 | `result-track:84af4fb66cbed6bdd688ecf252b933b9a1bff325592af4f12009649589786bd2` |
| 30 | `theorem` | [sum_lt](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/sum-lt--270a580136faff68085efb55.md) | 318 | `result-track:270a580136faff68085efb554ac09fab771bc8ca99b66cb7e2535c5f21f8938f` |
| 31 | `theorem` | [sum_le](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/sum-le--f72119adbdc9635c8e311427.md) | 332 | `result-track:f72119adbdc9635c8e31142736c35237221f442fbc7ccaea3dde83e43e67ce8c` |
| 32 | `theorem` | [sum_lt'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/sum-lt--1ef60a7c78050e4f47aebe2b.md) | 346 | `result-track:1ef60a7c78050e4f47aebe2b33329924581ac02736d5d7a5df8b78a386675e3a` |
| 33 | `theorem` | [sum_le'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant19b93526681a5925867cd684fe357854dad2345750a4b3148223728466b61112.lean/declarations/sum-le--5d7686c38b425cb9eb7ac728.md) | 353 | `result-track:5d7686c38b425cb9eb7ac728b20e54eed537b546187df462d466d86585862b1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
