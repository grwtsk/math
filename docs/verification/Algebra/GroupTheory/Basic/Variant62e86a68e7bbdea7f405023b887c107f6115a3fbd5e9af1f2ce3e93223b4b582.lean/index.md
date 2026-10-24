# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3270a52457afee013c872376476c9991d1966c33",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3270a52457afee013c872376476c9991d1966c33`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Unbundled.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Even` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_tsub_cancel_iff_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/add-tsub-cancel-iff-le--3d3b83dd290fa0495d8f9753.md) | 30 | `result-track:3d3b83dd290fa0495d8f975353da799a55768449bf7cff2a668c07e1b29c80c9` |
| 2 | `theorem` | [tsub_add_cancel_iff_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-add-cancel-iff-le--1d860c7fee4095da107bcb63.md) | 33 | `result-track:1d860c7fee4095da107bcb63db44626fd1e99dd08783f72de44d20f41f621887` |
| 3 | `theorem` | [tsub_eq_zero_iff_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-eq-zero-iff-le--735e0f03ad761f3bf3900f02.md) | 39 | `result-track:735e0f03ad761f3bf3900f0238b50da631daf5b10292ab449d36ee2eea23444f` |
| 4 | `theorem` | [tsub_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-self--34f44e1387f36ac8497cf385.md) | 45 | `result-track:34f44e1387f36ac8497cf385b4fbc6257ffdaf04b1023809624e4cf543edcfb1` |
| 5 | `theorem` | [tsub_le_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-le-self--acbefb971e04aca3b9ed5aea.md) | 48 | `result-track:acbefb971e04aca3b9ed5aeaa0784e453666ef718cfd068f8f6e282d7713ca8f` |
| 6 | `theorem` | [zero_tsub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/zero-tsub--5fac16434d237f3eb50739be.md) | 52 | `result-track:5fac16434d237f3eb50739bec21488fcc9a68a24dc4383ec744bdf96ee43c4e0` |
| 7 | `theorem` | [tsub_self_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-self-add--e6ec1a1b00e4057aa70cd367.md) | 55 | `result-track:e6ec1a1b00e4057aa70cd36799aa70e13c8f87fb26c2957cd8729972ed29abc3` |
| 8 | `theorem` | [tsub_pos_iff_not_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-pos-iff-not-le--cba773db1bab02e084358002.md) | 58 | `result-track:cba773db1bab02e084358002e296623a378d127a1e7e9ef34bdcc8357da55b71` |
| 9 | `theorem` | [tsub_pos_of_lt](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-pos-of-lt--af3f8a6373efe82634f5d97b.md) | 61 | `result-track:af3f8a6373efe82634f5d97b6485c93d815a3161c5d46ce1cda14d4f520f6d3d` |
| 10 | `theorem` | [tsub_lt_of_lt](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-lt-of-lt--91fa34e54dc16d57cfcbe118.md) | 64 | `result-track:91fa34e54dc16d57cfcbe118b97cadc84173945e24f40de7cdec61da200d9175` |
| 11 | `theorem` | [tsub_le_tsub_iff_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-le-tsub-iff-left--5cdd25a3c29cd4f4b899d861.md) | 69 | `result-track:5cdd25a3c29cd4f4b899d861402ef2b169d10ea2e8f14ca6ffb1888c869b5654` |
| 12 | `theorem` | [tsub_right_inj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-right-inj--12be37c8b0457bd08010d8c0.md) | 76 | `result-track:12be37c8b0457bd08010d8c0e8f291018b3e870c56f467f3f285a956a4119e43` |
| 13 | `theorem` | [tsub_le_tsub_iff_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-le-tsub-iff-left--e67102e1bd69c9fa349bc710.md) | 90 | `result-track:e67102e1bd69c9fa349bc71064fffc65a18ca8253c60dec42184db8b583fa400` |
| 14 | `theorem` | [tsub_right_inj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-right-inj--fc8eba738beee25c08140b61.md) | 93 | `result-track:fc8eba738beee25c08140b61e26c9c77bf1f48eefab24e9738103d85a1fefab3` |
| 15 | `abbrev` | [CanonicallyOrderedAddCommMonoid.toAddCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/canonicallyorderedaddcommmonoid-toaddcancelcommmonoid--f0f7aa37c98b42757759e2f5.md) | 103 | `declaration-track:f0f7aa37c98b42757759e2f53c9aa8ab456c0ded09f35bef3f7f4557e9035023` |
| 16 | `theorem` | [tsub_pos_iff_lt](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-pos-iff-lt--e796e6762266271b7f7e76cb.md) | 121 | `result-track:e796e6762266271b7f7e76cbaaf59d140f5112fc395d7c0afb290af3c57ee73d` |
| 17 | `theorem` | [tsub_eq_tsub_min](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-eq-tsub-min--4f8cb6ec39be20fa98055d48.md) | 123 | `result-track:4f8cb6ec39be20fa98055d486e073c5ec3e153f0810c9d099862bdcda41f38d2` |
| 18 | `theorem` | [lt_tsub_iff_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/lt-tsub-iff-right--b4d8dd985c1faa0a0b3dd527.md) | 131 | `result-track:b4d8dd985c1faa0a0b3dd52772950d56922296db2430ec0894523092e5699e15` |
| 19 | `theorem` | [lt_tsub_iff_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/lt-tsub-iff-left--dffc1006dfc30ea8e5ae0d25.md) | 135 | `result-track:dffc1006dfc30ea8e5ae0d25bfa0208c82610263a00827994173ae16262589ca` |
| 20 | `theorem` | [tsub_lt_tsub_iff_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-lt-tsub-iff-right--ebcd9602ca9c481bc5584a7c.md) | 138 | `result-track:ebcd9602ca9c481bc5584a7c63383fcfa8cd73fb6b1fd86c4a11c8a2b2bf5adc` |
| 21 | `theorem` | [tsub_lt_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-lt-self--d8ae298ec55bdc8a68f26755.md) | 141 | `result-track:d8ae298ec55bdc8a68f2675527db25d246590e60059db9b76d515637a1d5c423` |
| 22 | `theorem` | [tsub_lt_self_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-lt-self-iff--9e18d6b02828047f09ca712f.md) | 146 | `result-track:9e18d6b02828047f09ca712f9ef388ab88fd793610dd561bf899f599fa1553d9` |
| 23 | `theorem` | [tsub_lt_tsub_iff_left_of_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-lt-tsub-iff-left-of-le--6beb946305446357bf6921bc.md) | 154 | `result-track:6beb946305446357bf6921bcd3f23014ba295f83108cccd70aefa9f01de911c2` |
| 24 | `theorem` | [tsub_lt_tsub_iff_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-lt-tsub-iff-right--ed7a437754091faf3cf5b1eb.md) | 165 | `result-track:ed7a437754091faf3cf5b1eb8c9722e95f8b009b48037f37ce9a2623de3fd97a` |
| 25 | `theorem` | [tsub_lt_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-lt-self--190c40838e8fb6235efc4ea9.md) | 168 | `result-track:190c40838e8fb6235efc4ea9393402b447e33be4152608b312e1f8e802ac5212` |
| 26 | `theorem` | [tsub_lt_self_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-lt-self-iff--7dc9ac07b94478c119d5bda0.md) | 171 | `result-track:7dc9ac07b94478c119d5bda04c9841abc0d85c92e6ded5d7a71bc8af80ed3174` |
| 27 | `theorem` | [tsub_lt_tsub_iff_left_of_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-lt-tsub-iff-left-of-le--37e23d4998e64ef5ad2d3298.md) | 175 | `result-track:37e23d4998e64ef5ad2d32988835a9f1684997a03efbcb6207e8b1134269fa3a` |
| 28 | `lemma` | [tsub_tsub_eq_min](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-tsub-eq-min--7b45b81ff89e273244d3adb4.md) | 178 | `result-track:7b45b81ff89e273244d3adb4dc35ca0beea18df854bd1b7f2da2fae804c36e1f` |
| 29 | `theorem` | [tsub_add_eq_max](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-add-eq-max--6259574b2da008b474455aa1.md) | 186 | `result-track:6259574b2da008b474455aa1732d9d2c6fc702ccdce111c20f6d82b89b967b33` |
| 30 | `theorem` | [add_tsub_eq_max](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/add-tsub-eq-max--610ebc04e82aa57160392919.md) | 191 | `result-track:610ebc04e82aa571603929195890545bcb9e4bd1692a7ddd412c22e8bf5f48ae` |
| 31 | `theorem` | [tsub_min](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-min--3abbeeed8730c5f4aaf9e57b.md) | 193 | `result-track:3abbeeed8730c5f4aaf9e57b0e98a2611a289e687ef0eb7c7a476be3326f01a8` |
| 32 | `theorem` | [tsub_add_min](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/tsub-add-min--2297f0eae90c865cf5ee9b12.md) | 198 | `result-track:2297f0eae90c865cf5ee9b12afbe1bb066f6ab1277420fe2d43f4b8870e81b00` |
| 33 | `lemma` | [Even.tsub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant62e86a68e7bbdea7f405023b887c107f6115a3fbd5e9af1f2ce3e93223b4b582.lean/declarations/even-tsub--59dbf2324b5cd47cbd19d5fb.md) | 203 | `result-track:59dbf2324b5cd47cbd19d5fb0cdf6848d61842deee8e9f4a69e140af9dd14709` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
