# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.PadicNorm.Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "262c19a892cf480eae035521bc8e60b8de797acb",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `262c19a892cf480eae035521bc8e60b8de797acb`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Power` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [padicNorm](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/padicnorm--d528dacf3218de62e7c0e33f.md) | 42 | `declaration-track:d528dacf3218de62e7c0e33f812c8d1fdf7ee43547e7b19f68f910f23334d839` |
| 2 | `theorem` | [eq_zpow_of_nonzero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/eq-zpow-of-nonzero--9ee14f14b1c276d9771e7782.md) | 54 | `result-track:9ee14f14b1c276d9771e7782700a6e45c22a3dda784b8a09db0c710fa81d812c` |
| 3 | `theorem` | [nonneg](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/nonneg--fed23bc33511422de83d2dde.md) | 59 | `result-track:fed23bc33511422de83d2ddede22013de37490c861d406ced3eb156ea88d697f` |
| 4 | `theorem` | [zero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/zero--de554e09d271b7950f9f0fe9.md) | 70 | `result-track:de554e09d271b7950f9f0fe9ee06e95f80c161ee936fa51a733ff8d24799ec0e` |
| 5 | `theorem` | [one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/one--2bb61b8280c5435889ab8c30.md) | 75 | `result-track:2bb61b8280c5435889ab8c30095865baf69e70fa22202d1a04397ea4eb613c42` |
| 6 | `theorem` | [padicNorm_p](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/padicnorm-p--1500a84da3c774276b2ac53d.md) | 81 | `result-track:1500a84da3c774276b2ac53d66e7ca7eacc292dfce6cffbb1a01467ea46dba3b` |
| 7 | `theorem` | [padicNorm_p_of_prime](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/padicnorm-p-of-prime--e83220a23d68abf125161b76.md) | 89 | `result-track:e83220a23d68abf125161b76abeb0ba5c191075153e596f47f4e99619c07924e` |
| 8 | `theorem` | [padicNorm_of_prime_of_ne](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/padicnorm-of-prime-of-ne--acf0986b1ea37e80501b33de.md) | 94 | `result-track:acf0986b1ea37e80501b33dea4c5cd922b5698d6845620a559acf092984a7fdb` |
| 9 | `theorem` | [padicNorm_p_lt_one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/padicnorm-p-lt-one--aa3fe06ab47d1e1a5b1ad9a6.md) | 104 | `result-track:aa3fe06ab47d1e1a5b1ad9a6aec8469086133e96e0f326ec489345fd6c83ce27` |
| 10 | `theorem` | [padicNorm_p_lt_one_of_prime](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/padicnorm-p-lt-one-of-prime--bd3d28d9ee51db86c98eaff0.md) | 112 | `result-track:bd3d28d9ee51db86c98eaff057ffe6975b5c7fe6ce1fc7d9aade917e97b3e59e` |
| 11 | `theorem` | [values_discrete](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/values-discrete--ddfa03150168861d791a5670.md) | 117 | `result-track:ddfa03150168861d791a56703dca05b26d925d7d5ada0727bbd674549c4c4259` |
| 12 | `theorem` | [neg](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/neg--aa93dbd8ade499fc285f2ead.md) | 123 | `result-track:aa93dbd8ade499fc285f2eadf4f20977fac36d477d877934eaa2c810e783c249` |
| 13 | `theorem` | [nonzero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/nonzero--98125b34f6613f7d0325a670.md) | 130 | `result-track:98125b34f6613f7d0325a670847ff2fb4409330d157a2008f2fff2aa4ab77371` |
| 14 | `theorem` | [zero_of_padicNorm_eq_zero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/zero-of-padicnorm-eq-zero--81254e933265551582d4e767.md) | 137 | `result-track:81254e933265551582d4e7673dd4399d6a9558e444ea19146397d20cb3eb777b` |
| 15 | `theorem` | [mul](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/mul--3f941c428cc9ed42ded06b90.md) | 147 | `result-track:3f941c428cc9ed42ded06b9039843c32f18dc7247e171bd14fb5d9164b004227` |
| 16 | `theorem` | [div](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/div--2325e0cc0a6d93535a8e0180.md) | 158 | `result-track:2325e0cc0a6d93535a8e01807459cfd25a5329d5d795bff083b8dbd8d6db3ff4` |
| 17 | `theorem` | [of_int](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/of-int--52a98941607f3da50b62d997.md) | 164 | `result-track:52a98941607f3da50b62d9973640ce5923ec46a62c6b073629b899dd138441eb` |
| 18 | `theorem` | [nonarchimedean_aux](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/nonarchimedean-aux--7d24356a50a8778ab8b34e6d.md) | 177 | `result-track:7d24356a50a8778ab8b34e6db50cf90d52d99b1f7b96c2bd0e141a45a41ddc04` |
| 19 | `theorem` | [nonarchimedean](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/nonarchimedean--c5860c5014b2b40e66fd2a18.md) | 199 | `result-track:c5860c5014b2b40e66fd2a18dda40a2192799a4107840765e174d25b71530a13` |
| 20 | `theorem` | [triangle_ineq](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/triangle-ineq--b69ad1d4e166eccceeedc90d.md) | 209 | `result-track:b69ad1d4e166eccceeedc90d21164398792ae68fcd558ce563a32990671cd3e8` |
| 21 | `theorem` | [sub](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/sub--e17a1764f9233e2a12b88c0e.md) | 218 | `result-track:e17a1764f9233e2a12b88c0ea94624fd2ebf996dea0b6483da99de45ab6d0493` |
| 22 | `theorem` | [add_eq_max_of_ne](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/add-eq-max-of-ne--615f970c073ea55681e180e8.md) | 225 | `result-track:615f970c073ea55681e180e8aa2e14a3b7df734164bbb5bba8495ccd7cfe05af` |
| 23 | `instance` | [(anonymous)](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/instance--7a6a8fc8cb501793c44da726.md) | 248 | `declaration-track:7a6a8fc8cb501793c44da726f98e4fb1018412c342e4a920fed4a62f5bda31bc` |
| 24 | `theorem` | [dvd_iff_norm_le](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/dvd-iff-norm-le--c45f0caa237db92df126778d.md) | 255 | `result-track:c45f0caa237db92df126778d7d46ac535c1dbf820aeadef8a8b8e12be99bb3ed` |
| 25 | `theorem` | [int_eq_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/int-eq-one-iff--872222584040562764442e12.md) | 269 | `result-track:872222584040562764442e12ef8a0cae26a9ebd769c3c5b97bb58b38820be467` |
| 26 | `theorem` | [int_lt_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/int-lt-one-iff--2d57f35f04e5df393124a1e7.md) | 290 | `result-track:2d57f35f04e5df393124a1e7e807308fbfd215e7e5e057e1e5dd75cd1993af42` |
| 27 | `theorem` | [of_nat](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/of-nat--fba67e83108dfc4a54487d52.md) | 295 | `result-track:fba67e83108dfc4a54487d521a1f86c443e6e01b5f78893d1c2ec8342634269f` |
| 28 | `theorem` | [nat_eq_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/nat-eq-one-iff--546b5b3e48c7a64bc2234819.md) | 300 | `result-track:546b5b3e48c7a64bc22348193fe5e1dc41b0964f339379554217f6951ae949cb` |
| 29 | `theorem` | [nat_lt_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/nat-lt-one-iff--08405a07ebecebe2543dc595.md) | 304 | `result-track:08405a07ebecebe2543dc59565dec9aa25827ca17d3ef0a5564ad94eb3ce72a6` |
| 30 | `theorem` | [sum_lt](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/sum-lt--f7ca013165d4a5e56fd180fb.md) | 310 | `result-track:f7ca013165d4a5e56fd180fb3e9d665d0c6f31edf3b03cd5a8e6dfd00f662402` |
| 31 | `theorem` | [sum_le](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/sum-le--7c07a854c180aa9e110691e1.md) | 324 | `result-track:7c07a854c180aa9e110691e1b0b70a782d417182d57d40c94ae34606e939ee34` |
| 32 | `theorem` | [sum_lt'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/sum-lt--8b2c32e7502ecc42310d3727.md) | 338 | `result-track:8b2c32e7502ecc42310d372795523ac8875cc0544a089f357b527f4c63721969` |
| 33 | `theorem` | [sum_le'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/declarations/sum-le--01bbecff1378378d0b65ff3d.md) | 345 | `result-track:01bbecff1378378d0b65ff3dc6f00c515d83041c3275cfc0f06ede8f98a0aa4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
