# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FixedPoints.Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57a974b23c7d71adf6cfb396a4cb1062f1dbb8ed",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57a974b23c7d71adf6cfb396a4cb1062f1dbb8ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OmegaCompletePartialOrder` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/lfp--bbd699eaf32e17ebbe0a511c.md) | 53 | `declaration-track:bbd699eaf32e17ebbe0a511c7838edef8ce71ff36f4dbb5c80718c63e4af1e04` |
| 2 | `def` | [gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/gfp--0b011fa7e9a1c613ef99def2.md) | 58 | `declaration-track:0b011fa7e9a1c613ef99def2def581912d0a65de04d5640d971315565a26473c` |
| 3 | `theorem` | [lfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/lfp-le--ce0514c41c9ea2d2f8eceae8.md) | 62 | `result-track:ce0514c41c9ea2d2f8eceae87602314593e073d6d7c9ac9ab95ead6c967541cb` |
| 4 | `theorem` | [lfp_le_fixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/lfp-le-fixed--47583e8053bf7ba3ae8fc9e3.md) | 65 | `result-track:47583e8053bf7ba3ae8fc9e348d0a47964d166153ab75fbc65637742dd879292` |
| 5 | `theorem` | [le_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/le-lfp--75f5c0659e642de051f86102.md) | 68 | `result-track:75f5c0659e642de051f861027cf89073867edb70883157d8685888c681e8294d` |
| 6 | `theorem` | [map_le_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/map-le-lfp--2ce8de6ca43892ac0b9725fd.md) | 71 | `result-track:2ce8de6ca43892ac0b9725fd5815b753352c1d5a04e05921397d361afa874650` |
| 7 | `theorem` | [map_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/map-lfp--21fb705bac7a8e5aecd1ad7e.md) | 75 | `result-track:21fb705bac7a8e5aecd1ad7e6f1877241e4fe33e2668cbc53551769e859d6458` |
| 8 | `theorem` | [isFixedPt_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/isfixedpt-lfp--82a1dc08b7c84ed959c88da8.md) | 79 | `result-track:82a1dc08b7c84ed959c88da85032d945a511cda5706d455780daa8fad2336d66` |
| 9 | `theorem` | [lfp_le_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/lfp-le-map--bcae18a846b4ead4b46be97f.md) | 82 | `result-track:bcae18a846b4ead4b46be97f70ad7ce2529539217ad7bca3027f45df4075ac81` |
| 10 | `theorem` | [isLeast_lfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/isleast-lfp-le--a28a455350b657a19db40366.md) | 87 | `result-track:a28a455350b657a19db4036622dc336ebfec94a846f8992a02f41ca2635d4743` |
| 11 | `theorem` | [isLeast_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/isleast-lfp--25d606c3089355e819b18ada.md) | 90 | `result-track:25d606c3089355e819b18ada5fbc1cf0f65342a1db4d87f59fe9850b188bfff4` |
| 12 | `theorem` | [lfp_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/lfp-induction--cd0cb0e7cf3367c8e4a9aa04.md) | 93 | `result-track:cd0cb0e7cf3367c8e4a9aa046bd7bc0ae1155f8ff51b5fd7b82b18446c1936af` |
| 13 | `theorem` | [le_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/le-gfp--9b8ca1ad3e37fc1d2f6566b0.md) | 102 | `result-track:9b8ca1ad3e37fc1d2f6566b0b42dd3efb1e8159b5d16702a10a47b7ac4518641` |
| 14 | `theorem` | [gfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/gfp-le--903030bfffdcedeea03d2a12.md) | 105 | `result-track:903030bfffdcedeea03d2a1259bffad459542e995b9a72b2e2ff3d9f7c5546d1` |
| 15 | `theorem` | [isFixedPt_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/isfixedpt-gfp--d4676640cc79e591727e54a3.md) | 108 | `result-track:d4676640cc79e591727e54a353443635a9beaa4cddfbf827eda63cb8c7191ba5` |
| 16 | `theorem` | [map_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/map-gfp--394343a4d1c08e857718a55f.md) | 112 | `result-track:394343a4d1c08e857718a55f674c230fc24f72dce5e7808fe121389c180636de` |
| 17 | `theorem` | [map_le_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/map-le-gfp--9bf8260def7a397961a0ba3c.md) | 115 | `result-track:9bf8260def7a397961a0ba3c81016b36224bbceabc856e4c2b943c691739088b` |
| 18 | `theorem` | [gfp_le_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/gfp-le-map--4b16f78b8f223d33e4077d51.md) | 118 | `result-track:4b16f78b8f223d33e4077d5126eb2e0ce81d51b588443803851f23c714f7a7d6` |
| 19 | `theorem` | [isGreatest_gfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/isgreatest-gfp-le--297c70f1e49105121d1424c6.md) | 121 | `result-track:297c70f1e49105121d1424c67e0ba7858b2943fe09c91179b208a1e0687fa88a` |
| 20 | `theorem` | [isGreatest_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/isgreatest-gfp--23a77eb6cc0c98a391bffecc.md) | 124 | `result-track:23a77eb6cc0c98a391bffecc56a3764969f0992f1eba9ac97357591ac791312c` |
| 21 | `theorem` | [gfp_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/gfp-induction--e0cb4320674e2ecb86cc04cd.md) | 127 | `result-track:e0cb4320674e2ecb86cc04cdf6786629cdf5f7a9124096bd5fe67b4a5769faa9` |
| 22 | `theorem` | [map_lfp_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/map-lfp-comp--0a72efdd34d49275439c3984.md) | 138 | `result-track:0a72efdd34d49275439c39844507d0af411d325773f0c7eedcad941e742acf8a` |
| 23 | `theorem` | [map_gfp_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/map-gfp-comp--6ed52686889b4435bf49b0af.md) | 142 | `result-track:6ed52686889b4435bf49b0af25c061c5180aefba7fea1e840951489ce6cc60ff` |
| 24 | `theorem` | [lfp_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/lfp-lfp--b90bdb3e9f8d5f9fbd886fdf.md) | 146 | `result-track:b90bdb3e9f8d5f9fbd886fdf8f6ec6bc5b7ac40946ec1dab11ad23354ce43a9b` |
| 25 | `theorem` | [gfp_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/gfp-gfp--fced435aeaa37d2538f7df67.md) | 156 | `result-track:fced435aeaa37d2538f7df67af986d414ea2d580bf1f4fe699587da2f8001bbd` |
| 26 | `theorem` | [gfp_const_inf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/gfp-const-inf-le--2cd7530da6069983fd889094.md) | 165 | `result-track:2cd7530da6069983fd889094beb439dbd671edf07a86c3be12df2a3d2de8d619` |
| 27 | `def` | [prevFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/prevfixed--baefc7fa0f07c0a587ea614b.md) | 171 | `declaration-track:baefc7fa0f07c0a587ea614beb6f8f35f07d644d569bc3b98106e2badb9e8d43` |
| 28 | `def` | [nextFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/nextfixed--693cade4e36385c6643dbade.md) | 182 | `declaration-track:693cade4e36385c6643dbade38d78d8fd4581f86cf6953df2be36f955bd62f70` |
| 29 | `theorem` | [prevFixed_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/prevfixed-le--7e59fb6bdc459d46cbed535d.md) | 185 | `result-track:7e59fb6bdc459d46cbed535ddb09a08e8e4a155e7e2c11807cb699376ab9926a` |
| 30 | `theorem` | [le_nextFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/le-nextfixed--9e76e5ecccc39346b919f3fd.md) | 188 | `result-track:9e76e5ecccc39346b919f3fd04bac276cd62de38d04ba23b7f33f29863f6234a` |
| 31 | `theorem` | [nextFixed_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/nextfixed-le--b77f14ccfeef3fa7b8c278ba.md) | 191 | `result-track:b77f14ccfeef3fa7b8c278ba3c519021d0f2390eb079da148eff8d464972c772` |
| 32 | `theorem` | [nextFixed_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/nextfixed-le-iff--820d8c7d4895b313f8f69763.md) | 196 | `result-track:820d8c7d4895b313f8f6976300780436f9125b51f27f03ba0cf3bf9e32ab56ef` |
| 33 | `theorem` | [le_prevFixed_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/le-prevfixed-iff--b62f42a81676ab7d6151fd65.md) | 201 | `result-track:b62f42a81676ab7d6151fd652e36462bb0147465f0560e161277b0c58ef63422` |
| 34 | `theorem` | [le_prevFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/le-prevfixed--336feea5bd0d3ee699517aad.md) | 205 | `result-track:336feea5bd0d3ee699517aadb997852d31ff81fb062ded3afaedde223733d93b` |
| 35 | `theorem` | [le_map_sup_fixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/le-map-sup-fixedpoints--d49d0873bc56ac2e29527ef2.md) | 209 | `result-track:d49d0873bc56ac2e29527ef245a52d55c00762cd884bea5b69d1817144a9f448` |
| 36 | `theorem` | [map_inf_fixedPoints_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/map-inf-fixedpoints-le--89886c8dba5fe73a6487b514.md) | 215 | `result-track:89886c8dba5fe73a6487b5145ae49f7783b36ca69232a78ad5a9640e1717aa94` |
| 37 | `theorem` | [le_map_sSup_subset_fixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/le-map-ssup-subset-fixedpoints--868e19e72a332dd3a6ca4099.md) | 218 | `result-track:868e19e72a332dd3a6ca4099c2a2e962262b5a5bfa03b28fc0d820dccc04d69d` |
| 38 | `theorem` | [map_sInf_subset_fixedPoints_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/map-sinf-subset-fixedpoints-le--b512e3f2a15e0b5bedb15788.md) | 222 | `result-track:b512e3f2a15e0b5bedb1578884d87e66ababd849a2833507591cb6492e1f851e` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/instance--9d020c91453e13c8dd69dbf1.md) | 236 | `declaration-track:9d020c91453e13c8dd69dbf1ed75e6f124c1b36800950dd312339dd3f6136dd2` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/instance--3e86a4103ffc5548d56db1a3.md) | 243 | `declaration-track:3e86a4103ffc5548d56db1a324166d3611765537fbe4de050d8dd2607bb6f07b` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/instance--c1fb50d22a3bac583257b1a6.md) | 247 | `declaration-track:c1fb50d22a3bac583257b1a663f5513dfcda9b63f52bab7256c06b78294e2ce8` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/instance--2bf44447b48c5d3d0e2a5e5a.md) | 257 | `declaration-track:2bf44447b48c5d3d0e2a5e5a0ce178097598fc45183e97e3b5d3b79dc784ec21` |
| 43 | `instance` | [completeLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/completelattice--ed0374cca96828b91b5496ee.md) | 267 | `declaration-track:ed0374cca96828b91b5496ee76c7292152802587bef6e5263606a8ab303ab722` |
| 44 | `theorem` | [lfp_eq_sSup_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/lfp-eq-ssup-iterate--6b723f6a24dae09130db4aa9.md) | 281 | `result-track:6b723f6a24dae09130db4aa9282befddbcbffd14070eb6c65187431422c621dd` |
| 45 | `theorem` | [gfp_eq_sInf_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/declarations/gfp-eq-sinf-iterate--cb5442253ee5dbe4efdce2af.md) | 291 | `result-track:cb5442253ee5dbe4efdce2afcfe227ffbcef5304c6839ef9f4ed07f1303bbc56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
