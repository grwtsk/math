# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "930c2689951fa7154263a616603beb83576bf72f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `930c2689951fa7154263a616603beb83576bf72f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Multiset.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Multiset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Unbundled.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-erase--ee29b9d11034903679363081.md) | 36 | `result-track:ee29b9d11034903679363081b8c76788d04789d1f7522f786f2812e53b43a1ac` |
| 2 | `theorem` | [prod_map_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-map-erase--386883068f17fe4086671a75.md) | 40 | `result-track:386883068f17fe4086671a757191591d9304f5ebcef0eb5673293ab27f425745` |
| 3 | `theorem` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-add--c6f8215498df10fe9a1498bd.md) | 46 | `result-track:c6f8215498df10fe9a1498bda2a8b5b378835eb404119571e1aa6c67b175c9e5` |
| 4 | `theorem` | [prod_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-nsmul--2cea1b9ac713b897b2d1c9e4.md) | 50 | `result-track:2cea1b9ac713b897b2d1c9e419eb7fd2be13a9284e611ebda4ae9f82fc6ac3fe` |
| 5 | `theorem` | [prod_filter_mul_prod_filter_not](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-filter-mul-prod-filter-not--99cf19118beef2ba2d272e2e.md) | 57 | `result-track:99cf19118beef2ba2d272e2e1d5db0e98e93d1458ee89ce459abe65f6444e16a` |
| 6 | `theorem` | [prod_map_eq_pow_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-map-eq-pow-single--5bc7c932bce682c895026749.md) | 62 | `result-track:5bc7c932bce682c8950267498eacfe717737c87d82a758d76d07503521d919a0` |
| 7 | `theorem` | [prod_eq_pow_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-eq-pow-single--10ac7e8ff08b7910c9bef12e.md) | 68 | `result-track:10ac7e8ff08b7910c9bef12e29e9a6f7ba8d234a53faab4dd3040e89c869cc97` |
| 8 | `lemma` | [prod_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-eq-one--e191ea8a799e3884740aea96.md) | 73 | `result-track:e191ea8a799e3884740aea967f0de5d175e6fed45b9d63e68fd23f437f3e74a7` |
| 9 | `theorem` | [prod_hom_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-hom-ne-zero--c163bcecf2022f5c9486d0ab.md) | 77 | `result-track:c163bcecf2022f5c9486d0ab2912dadd4cd6b6a5080266f1da18550e8ffef151` |
| 10 | `theorem` | [prod_hom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-hom--0a43eb98fbabe26826bf28e7.md) | 83 | `result-track:0a43eb98fbabe26826bf28e7681b38014d0f2874d49c53485a0949c203cb8a47` |
| 11 | `theorem` | [prod_hom'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-hom--13257e4c42489ee9eba926f3.md) | 89 | `result-track:13257e4c42489ee9eba926f30488ef2e16a1e00477101955fbd5f504c2e48b64` |
| 12 | `theorem` | [prod_hom₂_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-hom-ne-zero--cd2651317adc3c6370ea229b.md) | 96 | `result-track:cd2651317adc3c6370ea229b8a693e3ca71fe96138f2d4e695936d66b95ea244` |
| 13 | `theorem` | [prod_hom₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-hom--6e973ad24598fc73c2685aba.md) | 102 | `result-track:6e973ad24598fc73c2685aba4efe37f7056a9e1f5b53297fe1e84abd96a81c7e` |
| 14 | `theorem` | [prod_map_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-map-mul--1aa2cff43ccede46f478556b.md) | 109 | `result-track:1aa2cff43ccede46f478556be8c9d21aae63d06cad8bac40c8a57205fd6755f0` |
| 15 | `theorem` | [prod_map_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-map-pow--de7d561239abba914753bb99.md) | 113 | `result-track:de7d561239abba914753bb99fc70b5cb71b22e7b072843dac53fdf4ed4b4528c` |
| 16 | `theorem` | [prod_map_prod_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-map-prod-map--589aad9e8176040003dda51e.md) | 117 | `result-track:589aad9e8176040003dda51ee24ce4ea1177a7029659bfe53830587695688209` |
| 17 | `theorem` | [prod_dvd_prod_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-dvd-prod-of-le--8f082a8b5d9f9132459aa6df.md) | 122 | `result-track:8f082a8b5d9f9132459aa6dfa45c47f78fed0a128150d2bb090493a82918020e` |
| 18 | `lemma` | [_root_.map_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/root-map-multiset-prod--ea6a908087a2b6bad05f6350.md) | 127 | `result-track:ea6a908087a2b6bad05f635028a0e51e693353f3be40fca52187e3807cb1cc8d` |
| 19 | `lemma` | [_root_.map_multiset_ne_zero_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/root-map-multiset-ne-zero-prod--fd15e8510bc3a37a6f9f809b.md) | 131 | `result-track:fd15e8510bc3a37a6f9f809bef2568de22fdcaacf2c8022ff7670d85873da156` |
| 20 | `lemma` | [_root_.MonoidHom.map_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/root-monoidhom-map-multiset-prod--c8a66cbcc13fc3fac285e965.md) | 136 | `result-track:c8a66cbcc13fc3fac285e965f53ebaa667941f037777ea766ea032d3de058777` |
| 21 | `lemma` | [_root_.MulHom.map_multiset_ne_zero_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/root-mulhom-map-multiset-ne-zero-prod--77205a9aed578f930db87726.md) | 140 | `result-track:77205a9aed578f930db877267de0e062057c90a619ace93434fea6f67be8a1b6` |
| 22 | `lemma` | [dvd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/dvd-prod--fbd7d00694a028c018739ca5.md) | 143 | `result-track:fbd7d00694a028c018739ca5014936bca5bed5c51d4f9a7a3f815146e4922081` |
| 23 | `lemma` | [fst_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/fst-prod--9ea1b48bd8d476d6f62bf160.md) | 146 | `result-track:9ea1b48bd8d476d6f62bf1604f466e766189eda801a70e2119ed885355429fe4` |
| 24 | `lemma` | [snd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/snd-prod--6bb731a6a39cd9336edf456f.md) | 149 | `result-track:6bb731a6a39cd9336edf456f5537a591adec51a0b342cb717d1be28aa25fd283` |
| 25 | `theorem` | [prod_dvd_prod_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-dvd-prod-of-dvd--f795a741b7107ecd02178829.md) | 154 | `result-track:f795a741b7107ecd021788295386233656ff7c652085c6a39bf456a5f7bd2de0` |
| 26 | `def` | [sumAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/sumaddmonoidhom--047f05dba5e44c9866f814fe.md) | 167 | `declaration-track:047f05dba5e44c9866f814feb064610c3b74bc66662d3eb4b0bb3e920fbea2d9` |
| 27 | `theorem` | [coe_sumAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/coe-sumaddmonoidhom--7bfc16183f43b9fa5cb6fa50.md) | 173 | `result-track:7bfc16183f43b9fa5cb6fa50ce3e92c0634ce4a44cd3503f59321ae21b5a9846` |
| 28 | `theorem` | [prod_map_inv'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-map-inv--17e9272c0fe5a36f7fe7932e.md) | 183 | `result-track:17e9272c0fe5a36f7fe7932e56137dad1106239d42d2f95e2f77511b2ebbd206` |
| 29 | `theorem` | [prod_map_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-map-inv--249be4396b406d59eff87faa.md) | 187 | `result-track:249be4396b406d59eff87faab0e852e7eb4dd5b7c6a36cb122b22bd934bd1886` |
| 30 | `theorem` | [prod_map_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-map-div--42644e10a21c92b7f9dc1511.md) | 191 | `result-track:42644e10a21c92b7f9dc1511971e05f80ee4be3cc95e7d9356fc93a41be84893` |
| 31 | `theorem` | [prod_map_zpow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-map-zpow--059f4208157908e899a57d50.md) | 195 | `result-track:059f4208157908e899a57d50ceaf951a665c63ea04030c318dce7c6bffb51514` |
| 32 | `theorem` | [sum_map_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/sum-map-singleton--744bfb8cba90b7e9a6cad9ca.md) | 202 | `result-track:744bfb8cba90b7e9a6cad9ca6c1f006cd7de9b29342f4ca3888f9d70328124e1` |
| 33 | `theorem` | [sum_nat_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/sum-nat-mod--8c2410e6d0610ae8a8f44b16.md) | 205 | `result-track:8c2410e6d0610ae8a8f44b16fa5d9d2ff75e581474c28c0d77f69758facdb811` |
| 34 | `theorem` | [prod_nat_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-nat-mod--3432c9d43b0ded7738108a24.md) | 208 | `result-track:3432c9d43b0ded7738108a24da4d85ea7e3e56eb4afa504acb1c90bdc603dcbc` |
| 35 | `theorem` | [sum_int_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/sum-int-mod--3ad5b505170ff5af0d4da2c6.md) | 211 | `result-track:3ad5b505170ff5af0d4da2c697ea26b419fac12e68088bfa43021a911e8afa45` |
| 36 | `theorem` | [prod_int_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/prod-int-mod--5f441ff91e801b3d0766784d.md) | 214 | `result-track:5f441ff91e801b3d0766784dca5d36e25abc04385935b6b5a6ac38a536fd0eb4` |
| 37 | `theorem` | [sum_map_tsub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa65208478a795863b30afa574d42f2169a59432c65a6468ad12ab32c9412d5d.lean/declarations/sum-map-tsub--b971384790050835f51449f4.md) | 219 | `result-track:b971384790050835f51449f461b5d858cadbe1ca97d47c16be51357165c41b07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
