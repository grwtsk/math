# Verification target: GRWTSK.Topology.GeneralTopology.Interval.Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c2312998c5d84dc832049100ea1651f5548c7a9",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c2312998c5d84dc832049100ea1651f5548c7a9`.

Source path: `GRWTSK/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.OrdConnected` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.SmallSets` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Bases.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TendstoIxxClass](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendstoixxclass--38d5cf741261d22fe4ac17f2.md) | 103 | `declaration-track:38d5cf741261d22fe4ac17f26209d148ee6dbdb2beb62f32639996e128d6f9bf` |
| 2 | `theorem` | [tendstoIxxClass_principal](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendstoixxclass-principal--835f2c91480cedf153c1ddfb.md) | 110 | `result-track:835f2c91480cedf153c1ddfb5353366db48f31b7815e8a59ee870d1bdc6b18c8` |
| 3 | `theorem` | [tendstoIxxClass_inf](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendstoixxclass-inf--fc401d432b1ef7ad7266dd22.md) | 116 | `result-track:fc401d432b1ef7ad7266dd22e0fec1e0d194ae57ae3dfe0f9698f6ee1907ba20` |
| 4 | `theorem` | [tendstoIxxClass_of_subset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendstoixxclass-of-subset--caaca9cf22f42130652b6682.md) | 120 | `result-track:caaca9cf22f42130652b6682fec49aaffc5a7b9b1dd0864e6d8e7677e91d86ef` |
| 5 | `theorem` | [HasBasis.tendstoIxxClass](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/hasbasis-tendstoixxclass--897ae21bde9245ede6e4d462.md) | 124 | `result-track:897ae21bde9245ede6e4d462cb3853699ecef4aadc55d8bb966a0d4974c7160e` |
| 6 | `theorem` | [Tendsto.Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-icc--2a7e4a8feea5310f715f2440.md) | 131 | `result-track:2a7e4a8feea5310f715f24409c3621cd233dc6c62aab3d03aa5e0a2d77c43ed0` |
| 7 | `theorem` | [Tendsto.Ioc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioc--de1b327e39ec4c3828af7b03.md) | 136 | `result-track:de1b327e39ec4c3828af7b037c12135ead1412d8457933c017aa6896b12369a4` |
| 8 | `theorem` | [Tendsto.Ico](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ico--f5f89c3016674aaab1c90fdb.md) | 141 | `result-track:f5f89c3016674aaab1c90fdbafa28c9a45a997d3a53177eb247972dd22abd087` |
| 9 | `theorem` | [Tendsto.Ioo](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioo--49334b4dc80959f2b24bfbaf.md) | 146 | `result-track:49334b4dc80959f2b24bfbafe9361da926ad0ed9fc3709f9cadb3cf5cdc1170c` |
| 10 | `instance` | [tendsto_Icc_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-icc-attop-attop--e19793f8f30cdf9f9f7bc011.md) | 152 | `declaration-track:e19793f8f30cdf9f9f7bc01195dba55981a2cd1d69eb24c7d0674a9d8eaa7c7d` |
| 11 | `instance` | [tendsto_Ico_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ico-attop-attop--d74640b6e7ff673084ee0db0.md) | 156 | `declaration-track:d74640b6e7ff673084ee0db086438a30cfcf212365c7d840fb27fb0ce7f7987c` |
| 12 | `instance` | [tendsto_Ioc_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioc-attop-attop--85d1ffaa4ea0adcae00a6381.md) | 159 | `declaration-track:85d1ffaa4ea0adcae00a6381c810cbc5fb3cc3dacbfeb4b3796dd737c910a723` |
| 13 | `instance` | [tendsto_Ioo_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioo-attop-attop--2a14f7177a368e64862f9720.md) | 162 | `declaration-track:2a14f7177a368e64862f972089b2322b95fb094fb59161922749064fb077d7c4` |
| 14 | `instance` | [tendsto_Icc_atBot_atBot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-icc-atbot-atbot--54331480862cce9bcee286b7.md) | 165 | `declaration-track:54331480862cce9bcee286b72ab966249ebeed08627b25af7b6790889e69926c` |
| 15 | `instance` | [tendsto_Ico_atBot_atBot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ico-atbot-atbot--1cf9ba93bcff29fc3b1fd0d5.md) | 169 | `declaration-track:1cf9ba93bcff29fc3b1fd0d50aa9929aa7b5bd8da2433ab87dc2a1964bc5968b` |
| 16 | `instance` | [tendsto_Ioc_atBot_atBot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioc-atbot-atbot--db3e2386c4451feaad3734b6.md) | 172 | `declaration-track:db3e2386c4451feaad3734b62572a5817690b8b24a1360724c7e321b77c3b738` |
| 17 | `instance` | [tendsto_Ioo_atBot_atBot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioo-atbot-atbot--fd3d09fa49bd1997ee8f2a8e.md) | 175 | `declaration-track:fd3d09fa49bd1997ee8f2a8efeeb65f2edc0038a5841e8215c755398645bd5c0` |
| 18 | `instance` | [OrdConnected.tendsto_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/ordconnected-tendsto-icc--fdd317df112cf55cf2afcae1.md) | 178 | `declaration-track:fdd317df112cf55cf2afcae1b068c983656518797ff0f25a2626fdec1b478df4` |
| 19 | `instance` | [tendsto_Ico_Ici_Ici](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ico-ici-ici--ed594c5558a2481a7aec006b.md) | 182 | `declaration-track:ed594c5558a2481a7aec006b9bfca76240c23f24cd6e058d01200c3b2ffa5e83` |
| 20 | `instance` | [tendsto_Ico_Ioi_Ioi](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ico-ioi-ioi--94df8eb9d6838db383333eed.md) | 185 | `declaration-track:94df8eb9d6838db383333eed121bce6667f6db4080ba43c13e8b5acf2bec53ad` |
| 21 | `instance` | [tendsto_Ico_Iic_Iio](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ico-iic-iio--f0977e1a999292835145a5d7.md) | 188 | `declaration-track:f0977e1a999292835145a5d779c25f72a46c3dbaffb1eb99b9e10ea9962f1a0d` |
| 22 | `instance` | [tendsto_Ico_Iio_Iio](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ico-iio-iio--b10fc669e49228fb4a94b119.md) | 191 | `declaration-track:b10fc669e49228fb4a94b11934e699895135e8fc345e95a95454a590a990a8a2` |
| 23 | `instance` | [tendsto_Ioc_Ici_Ioi](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioc-ici-ioi--d49a81d14c4c560adc490346.md) | 194 | `declaration-track:d49a81d14c4c560adc490346b8331bc7183fd2993d6283c25ff13223bb2418cd` |
| 24 | `instance` | [tendsto_Ioc_Iic_Iic](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioc-iic-iic--4156b357fbcd5c25ff6f6240.md) | 197 | `declaration-track:4156b357fbcd5c25ff6f62404e796c042914bf15a6928dd0bc7e62000f2361e6` |
| 25 | `instance` | [tendsto_Ioc_Iio_Iio](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioc-iio-iio--5a48cd30e6449e03237c8389.md) | 200 | `declaration-track:5a48cd30e6449e03237c838911141ab1cfe5199f048b121ce5856b1315583f6e` |
| 26 | `instance` | [tendsto_Ioc_Ioi_Ioi](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioc-ioi-ioi--be1cac4446a42b49891a13aa.md) | 203 | `declaration-track:be1cac4446a42b49891a13aa86399a061e2c1d5a0c90562cda4e61d6c5dff612` |
| 27 | `instance` | [tendsto_Ioo_Ici_Ioi](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioo-ici-ioi--8804a2c995af1bb7c74828fb.md) | 206 | `declaration-track:8804a2c995af1bb7c74828fbf3e052d757ef337784ee932cf0cf1f4d5583fb57` |
| 28 | `instance` | [tendsto_Ioo_Iic_Iio](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioo-iic-iio--9182c2231c046a3c61cb2bcb.md) | 209 | `declaration-track:9182c2231c046a3c61cb2bcbbe31e9a0fe380434fdcc9c2eb540eb66cce1c4ad` |
| 29 | `instance` | [tendsto_Ioo_Ioi_Ioi](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioo-ioi-ioi--2e6a2e329e15051b514377da.md) | 212 | `declaration-track:2e6a2e329e15051b514377da0c3ea6feea0aeb3497edfb01f09fbf430c81c868` |
| 30 | `instance` | [tendsto_Ioo_Iio_Iio](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioo-iio-iio--6048a11282281af928499fbf.md) | 215 | `declaration-track:6048a11282281af928499fbf513877fbd1407bd6b174fbb6add533f67c1f7b52` |
| 31 | `instance` | [tendsto_Icc_Icc_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-icc-icc-icc--d0b2bce58220a609630d312d.md) | 218 | `declaration-track:d0b2bce58220a609630d312d13d0f7a93f090fcaefc944aa81dbabc4c82a3fc7` |
| 32 | `instance` | [tendsto_Ioc_Icc_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioc-icc-icc--87eec7c87d700bf3393961d5.md) | 221 | `declaration-track:87eec7c87d700bf3393961d55ae4c2a44d01f2ead3a9504bd3f284e1b76b59b3` |
| 33 | `instance` | [tendsto_Icc_pure_pure](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-icc-pure-pure--abd01f578cfb40db2d4d905e.md) | 230 | `declaration-track:abd01f578cfb40db2d4d905e50acf947bf50a77ec8795266939e4a8531670bff` |
| 34 | `instance` | [tendsto_Ico_pure_bot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ico-pure-bot--de114a2d4a0bf362d1ead61b.md) | 234 | `declaration-track:de114a2d4a0bf362d1ead61b37ebf9d27c69503c7d33a36a8863b441c24b21e8` |
| 35 | `instance` | [tendsto_Ioc_pure_bot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioc-pure-bot--71863032436c831a142208fc.md) | 237 | `declaration-track:71863032436c831a142208fc07dfef369d41a861c131ebab2ae35a0254cd08ea` |
| 36 | `instance` | [tendsto_Ioo_pure_bot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioo-pure-bot--198280b51d796e8d0a5ca8e9.md) | 240 | `declaration-track:198280b51d796e8d0a5ca8e9844bc6f1fd1020e7dd2b80cfafa5c3d766944388` |
| 37 | `instance` | [tendsto_Icc_uIcc_uIcc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-icc-uicc-uicc--f5621c859a065f2ba9ced312.md) | 251 | `declaration-track:f5621c859a065f2ba9ced312158f45150bdd8e31d6d4a7e9d1a68fb1a4bbe26f` |
| 38 | `instance` | [tendsto_Ioc_uIcc_uIcc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-ioc-uicc-uicc--06fb570bcb7f1c7e19955857.md) | 254 | `declaration-track:06fb570bcb7f1c7e199558578400e2e4cf37ac85dd8d4fc2fac728593ba62761` |
| 39 | `instance` | [tendsto_uIcc_of_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-uicc-of-icc--7fcb50aada31bb41090c47e7.md) | 257 | `declaration-track:7fcb50aada31bb41090c47e7e71cd52e126c824af7424566cb7ac0321967326e` |
| 40 | `theorem` | [Tendsto.uIcc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/declarations/tendsto-uicc--bb98c1a4e4c85067b119bf26.md) | 269 | `result-track:bb98c1a4e4c85067b119bf2614b718d9bd19707966a30a3bf13c4f418c2b2476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
