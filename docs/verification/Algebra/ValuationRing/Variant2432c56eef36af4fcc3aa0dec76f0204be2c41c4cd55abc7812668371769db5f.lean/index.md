# Verification target: GRWTSK.Algebra.ValuationRing.Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6a788bf200f4db0f407866e996b30e08b0eab68",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/index.md) · [Full source](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6a788bf200f4db0f407866e996b30e08b0eab68`.

Source path: `GRWTSK/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/prevaluationring--ce3f3e16e533224f20f5ff46.md) | 56 | `declaration-track:ce3f3e16e533224f20f5ff464bc140dcd63d3ea23c5c1a1b536513b0772cf0ea` |
| 2 | `lemma` | [PreValuationRing.cond](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/prevaluationring-cond--e15ee5cb7b7dafdb52a4bbbd.md) | 59 | `result-track:e15ee5cb7b7dafdb52a4bbbdad65e386264d997c88abb28aab3be3e69bcddfc6` |
| 3 | `class` | [ValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/valuationring--f7d8a7953010f844e6ba8b7e.md) | 64 | `declaration-track:f7d8a7953010f844e6ba8b7e6c4f1c6ce8ab0eacfc72991e3b9318daa24c4aff` |
| 4 | `def` | [ValueGroup](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/valuegroup--2a90c5fb42e25094fafa4c8f.md) | 77 | `declaration-track:2a90c5fb42e25094fafa4c8f0261640908c0c5315ff63157deb3c760a071cc6d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--3dfbaf1ac864b619ce602634.md) | 79 | `declaration-track:3dfbaf1ac864b619ce60263494215554781ef8aa6ba2b2dfc9b462c40a642f1d` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--55dcfef69837985c464c7dc2.md) | 81 | `declaration-track:55dcfef69837985c464c7dc2b339d31b40ca47cb9d01d5baf5ea6e15dd69418f` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--be4156ed5fac770d27ba7f23.md) | 95 | `declaration-track:be4156ed5fac770d27ba7f23f17a3efdad9df089167785c6c2144db9cc30d04d` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--c722a221892dd425f8a3f490.md) | 97 | `declaration-track:c722a221892dd425f8a3f4903dc0b8d4942e615adbcd29a8e64f3a43c61ca47b` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--39dabd489a46b6974e718e0b.md) | 99 | `declaration-track:39dabd489a46b6974e718e0b469c158f45d7ec649007bb05419413203ecf4e86` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--18c69756820f0b3d5507626c.md) | 110 | `declaration-track:18c69756820f0b3d5507626c359fd20ced97a10ec79a42154bd5ee2ba54c1eb7` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--053f17d8168fa54df875af15.md) | 121 | `declaration-track:053f17d8168fa54df875af15d626b3a92690e2a691a720547ea6dc95b53671ea` |
| 12 | `theorem` | [le_total](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/le-total--82651d673573d1a6174114ee.md) | 130 | `result-track:82651d673573d1a6174114eeac6affc610049163b55dacd7bd60571abb058cd7` |
| 13 | `instance` | [linearOrder](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/linearorder--7832ee1f0480b9f4ad26b291.md) | 148 | `declaration-track:7832ee1f0480b9f4ad26b291dacae38ad8326ea28489370e88ab7884edf94a13` |
| 14 | `instance` | [commGroupWithZero](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/commgroupwithzero--fdff3ef6219e0e98527b8d78.md) | 167 | `declaration-track:fdff3ef6219e0e98527b8d78b98440fa292fa3647da29df0e6e44881d0b1160c` |
| 15 | `instance` | [linearOrderedCommGroupWithZero](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/linearorderedcommgroupwithzero--7bd85053b4ace2f2c548bf2a.md) | 186 | `declaration-track:7bd85053b4ace2f2c548bf2a39f95a229de620944acbed2fe056ac7c775998c3` |
| 16 | `def` | [valuation](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/valuation--803df17d16f200d0d15cf014.md) | 202 | `declaration-track:803df17d16f200d0d15cf014e559361de575d962e54bd4686f11e4974d959ffc` |
| 17 | `theorem` | [mem_integer_iff](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/mem-integer-iff--4221cb706bd5877400084d4c.md) | 227 | `result-track:4221cb706bd5877400084d4c75d9d7166754a0e9e69b0b2329208647971d0d6a` |
| 18 | `def` | [equivInteger](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/equivinteger--478da7500b2e177f85cc0311.md) | 237 | `declaration-track:478da7500b2e177f85cc031179749844d38793878fadb1e7b6c36fd016dc5c17` |
| 19 | `theorem` | [coe_equivInteger_apply](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/coe-equivinteger-apply--c9fa75ec63b08a74a7ac1333.md) | 255 | `result-track:c9fa75ec63b08a74a7ac1333149bd9d7f30baea1c9be8774d9c4d7e2d8d6c392` |
| 20 | `theorem` | [range_algebraMap_eq](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/range-algebramap-eq--b24f99dad9d5c4d73d681c12.md) | 257 | `result-track:b24f99dad9d5c4d73d681c126895d08ae3e65acf303a049c26259ddeec0cad0d` |
| 21 | `theorem` | [integers](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/integers--66b927aff4181b0a5e11be11.md) | 260 | `result-track:66b927aff4181b0a5e11be1161232efa7d5aedf5f52ea9f97383896b06ca6f60` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--deb83aaba5d4d32d3bfcb5cf.md) | 271 | `declaration-track:deb83aaba5d4d32d3bfcb5cf4f92d560737cfecdcbf0786b63b15196a5710881` |
| 23 | `instance` | [le_total_ideal](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/le-total-ideal--7ec13a559ef2749e94bb0efc.md) | 281 | `declaration-track:7ec13a559ef2749e94bb0efcf223f22e8e8dfc3629a1ec4df6ab8948be27398a` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--9dde1e6df9001d1f809de6b8.md) | 299 | `declaration-track:9dde1e6df9001d1f809de6b883878af9b80704248d3ecb501e46db7b23ae7cca` |
| 25 | `theorem` | [_root_.PreValuationRing.iff_dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/root-prevaluationring-iff-dvd-total--3cd17c4d9e1866afd0f82285.md) | 310 | `result-track:3cd17c4d9e1866afd0f8228517f33d96254eb64e4ed7c55b75c008db056c7f0b` |
| 26 | `theorem` | [_root_.PreValuationRing.iff_ideal_total](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/root-prevaluationring-iff-ideal-total--2d7c9feed93098d04c874e0f.md) | 316 | `result-track:2d7c9feed93098d04c874e0f6a430d60d34e79718eb10a4e35c429b8da0eeab7` |
| 27 | `theorem` | [dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/dvd-total--ee59742fc3f708bea6ffb437.md) | 324 | `result-track:ee59742fc3f708bea6ffb437c2417508bf1dfa06d7c8492653dde04e275a6c75` |
| 28 | `theorem` | [iff_dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/iff-dvd-total--a7fba7d39624a4e28bfb66d8.md) | 332 | `result-track:a7fba7d39624a4e28bfb66d83e8232283457cdde4608735d8308c84331719c9f` |
| 29 | `theorem` | [iff_ideal_total](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/iff-ideal-total--18a8c4c2a268607f100e2d0b.md) | 336 | `result-track:18a8c4c2a268607f100e2d0b9c079800f01b3684ae736c403259eec2cad4c7bd` |
| 30 | `theorem` | [unique_irreducible](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/unique-irreducible--b2bed56c05f8416312e5a919.md) | 340 | `result-track:b2bed56c05f8416312e5a9190000a15d9a71609b0c1705bbd2c5131839881f46` |
| 31 | `theorem` | [iff_isInteger_or_isInteger](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/iff-isinteger-or-isinteger--d7fafdf5d3b4e89080fc8a3d.md) | 348 | `result-track:d7fafdf5d3b4e89080fc8a3da7b764a69901f91455a282168ba44e933f94e00e` |
| 32 | `theorem` | [isInteger_or_isInteger](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/isinteger-or-isinteger--c960ae71618b089d21d64bb3.md) | 374 | `result-track:c960ae71618b089d21d64bb3bfdc7d9b814668399036e5ea889df1ad9e70b2e6` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--5498c4c2963beda014e19bcb.md) | 381 | `declaration-track:5498c4c2963beda014e19bcbf992c3587e08c36691d0185761365db0c1951fa7` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--81da325e8b61833a281172e1.md) | 390 | `declaration-track:81da325e8b61833a281172e1fe979c922d063a745de7f19639d6c31b7244351e` |
| 35 | `theorem` | [iff_local_bezout_domain](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/iff-local-bezout-domain--38389f1cbd31ba4b3e9c26d1.md) | 406 | `result-track:38389f1cbd31ba4b3e9c26d1030d8356b5dbe8a218e2514b3139d0764663201e` |
| 36 | `theorem` | [TFAE](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/tfae--cf56e8309266eabd3028aceb.md) | 409 | `result-track:cf56e8309266eabd3028aceb86e4a66e3160b7a2ea04f45485c73a4b5c6072e2` |
| 37 | `theorem` | [_root_.Function.Surjective.preValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/root-function-surjective-prevaluationring--e353b75a839be3ed9938859d.md) | 422 | `result-track:e353b75a839be3ed9938859dba579b1e03590e12ffb0d9acb7b0ff0309f04778` |
| 38 | `theorem` | [_root_.Function.Surjective.valuationRing](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/root-function-surjective-valuationring--63d1ac889f00f2eea2be333f.md) | 430 | `result-track:63d1ac889f00f2eea2be333fd5d7c9b01d9a3c24c8a3f73ba19cd6f474cea648` |
| 39 | `lemma` | [_root_.isFractionRing_of_exists_eq_algebraMap_or_inv_eq_algebraMap_of_injective](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/root-isfractionring-of-exists-eq-algebramap-or-inv-eq-algebramap-of-inje--64e260ed4e77a8c37c6a75de.md) | 441 | `result-track:64e260ed4e77a8c37c6a75def751f9fabfd754786e4d23086c4c55c89a9e555a` |
| 40 | `lemma` | [_root_.Valuation.Integers.isFractionRing](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/root-valuation-integers-isfractionring--5b254844c4172de29befa023.md) | 459 | `result-track:5b254844c4172de29befa023afc3bed88e445292324173dafff27218c9475e20` |
| 41 | `instance` | [instIsFractionRingInteger](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instisfractionringinteger--33f74020f4bfd343bf612310.md) | 464 | `declaration-track:33f74020f4bfd343bf61231024c9dd4cc253c6212a7d588741eb0a5a509b6e0a` |
| 42 | `theorem` | [of_integers](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/of-integers--040379d051fb27b551d2a01f.md) | 469 | `result-track:040379d051fb27b551d2a01fc1ad2a9e19c4034adcf71964bd37cea9ede35287` |
| 43 | `instance` | [instValuationRingInteger](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instvaluationringinteger--5101afb9f443cd474973a275.md) | 482 | `declaration-track:5101afb9f443cd474973a2753551431c774c9689e59b9f99c9368b60fa112d58` |
| 44 | `theorem` | [isFractionRing_iff](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/isfractionring-iff--bf309673963c733c28c49740.md) | 485 | `result-track:bf309673963c733c28c4974096a0e1efde506aafd6681e948f93375073ddb321` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/declarations/instance--6e855e85a4ca2cb139412ed1.md) | 501 | `declaration-track:6e855e85a4ca2cb139412ed11e9af222d8980e1c9367e6539c3454823aaec4d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
