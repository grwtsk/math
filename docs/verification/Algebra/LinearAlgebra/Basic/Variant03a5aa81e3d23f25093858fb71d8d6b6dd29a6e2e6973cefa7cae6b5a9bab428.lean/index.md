# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a1a3ff7041d6740ba1cfdfc2244f84d1be6dbe4",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a1a3ff7041d6740ba1cfdfc2244f84d1be6dbe4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Alternating.Curry` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ExteriorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/exterioralgebra--86ce4ce0ffb7f591694fd72b.md) | 63 | `declaration-track:86ce4ce0ffb7f591694fd72baa6536e32c861d1d7df1906546814688f4feb82a` |
| 2 | `abbrev` | [ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/anonymous--5c7afaeaeb375bd895c35b7d.md) | 72 | `declaration-track:5c7afaeaeb375bd895c35b7dadfe699f625b9cd8759a879ab1ef11115e6775a3` |
| 3 | `abbrev` | [exteriorPower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/exteriorpower--189cbb06ad19f143ccbd980b.md) | 82 | `declaration-track:189cbb06ad19f143ccbd980bf751da67af4a8fa991a37c755e1fe4f981404014` |
| 4 | `theorem` | [ι_sq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/sq-zero--41d26d10d06667a9c57b09ac.md) | 93 | `result-track:41d26d10d06667a9c57b09ac27802bfadd3fe0cbaceac68260843bbe658b0266` |
| 5 | `theorem` | [comp_ι_sq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/comp-sq-zero--5f073b111da7f0aa65a645ad.md) | 99 | `result-track:5f073b111da7f0aa65a645adebda49f71adfa6973c4090ac411f26356563a8a3` |
| 6 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/lift--b6bd5571f094b8ee2c4b6265.md) | 109 | `declaration-track:b6bd5571f094b8ee2c4b6265bc2c80449d1e2d5acf24c0177f9b591c54be6a9c` |
| 7 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/comp-lift--4b5bc63ac3412ffe5a569cec.md) | 113 | `result-track:4b5bc63ac3412ffe5a569cec6535e39850e68875104dd0896c61b86984e189a0` |
| 8 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/lift-apply--3060a204f58487c45023f2e5.md) | 118 | `result-track:3060a204f58487c45023f2e56bd63d3ef9e09ca56ddbc3860100098d2203c32e` |
| 9 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/lift-unique--8380687b31f91a0ebf154964.md) | 123 | `result-track:8380687b31f91a0ebf154964d1e94a995bbac4a0c5c15898c5e7197950a20346` |
| 10 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/lift-comp--535a85a2aadac8ac0a52de28.md) | 130 | `result-track:535a85a2aadac8ac0a52de28b65f7bf3aa27103229d11ca289af13fc14fdebfa` |
| 11 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/hom-ext--f7b868b938cece76dcbb0562.md) | 136 | `result-track:f7b868b938cece76dcbb056261769c496b94b18c7eb6f029872fa6ef439d2ed2` |
| 12 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/induction--18b24ebd33b79ad370bfede5.md) | 144 | `result-track:18b24ebd33b79ad370bfede593f27dcddf1e574b50f6a280752fd2c333db6617` |
| 13 | `def` | [algebraMapInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/algebramapinv--1a9029fed255384340e0bec7.md) | 151 | `declaration-track:1a9029fed255384340e0bec7e1faee4a4d9a722e151a231c36dd22f7af6d3f60` |
| 14 | `theorem` | [algebraMap_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/algebramap-leftinverse--b9c134edc6a09107fdc21b79.md) | 156 | `result-track:b9c134edc6a09107fdc21b79651ca65d9169f18950d883b3d13668921ff3f795` |
| 15 | `theorem` | [algebraMap_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/algebramap-inj--dea9a0aa3985f9d37fcfe231.md) | 161 | `result-track:dea9a0aa3985f9d37fcfe231199d3b7dafbddca1656947a362b62bd8f68fb046` |
| 16 | `theorem` | [algebraMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/algebramap-eq-zero-iff--389651d7e9d8ab64eb519b88.md) | 166 | `result-track:389651d7e9d8ab64eb519b88c2b39fba85acf3f335b63c9d55225a8c7a760e71` |
| 17 | `theorem` | [algebraMap_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/algebramap-eq-one-iff--a7c0d92cb1394aa73bc45bda.md) | 170 | `result-track:a7c0d92cb1394aa73bc45bda7a9bb49a713dadff29b770dd249304f6d43265eb` |
| 18 | `theorem` | [isLocalHom_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/islocalhom-algebramap--203e5c5343bc0cc2f6eefcde.md) | 174 | `result-track:203e5c5343bc0cc2f6eefcdec8ec2f78a2002bfabd022dbc99c9ae72b9f40678` |
| 19 | `theorem` | [isUnit_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/isunit-algebramap--89fa602ae0d99d8678dcc90c.md) | 177 | `result-track:89fa602ae0d99d8678dcc90c1a53930395e57446ec399fa2cf3f63d80eda2470` |
| 20 | `def` | [invertibleAlgebraMapEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/invertiblealgebramapequiv--cc0821b707f1b4208e38a2c8.md) | 182 | `declaration-track:cc0821b707f1b4208e38a2c896041cb866236493905383df1d1454ab46879bb7` |
| 21 | `def` | [toTrivSqZeroExt](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/totrivsqzeroext--24dde0bc705c1ba83c42ecc5.md) | 190 | `declaration-track:24dde0bc705c1ba83c42ecc5a4100fbee9f69e4aed86148606e50e6a04ebb13b` |
| 22 | `theorem` | [toTrivSqZeroExt_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/totrivsqzeroext--5725812a633f257aed7ab34f.md) | 195 | `result-track:5725812a633f257aed7ab34fd21b0207063fc0591e0bfb774170eec19560ebd6` |
| 23 | `def` | [ιInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/inv--142b5f1d582630de87ee281b.md) | 203 | `declaration-track:142b5f1d582630de87ee281b5a655043974b06359c1be77e7576be8fcedc5c17` |
| 24 | `theorem` | [ι_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/leftinverse--31f0667ffc4825220910c8fe.md) | 208 | `result-track:31f0667ffc4825220910c8fea9461b1e6018fa959bb0546c2de585ec4a126076` |
| 25 | `theorem` | [ι_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/inj--c609c396446bb9fc454d29ac.md) | 213 | `result-track:c609c396446bb9fc454d29ac89a8713f7a1f9de26579bca0e35e64ed0f8a4fc3` |
| 26 | `theorem` | [ι_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/eq-zero-iff--30c7881f1e03ac3ab8140a68.md) | 217 | `result-track:30c7881f1e03ac3ab8140a68cf2bf766a33f8b03519878781e9a74842f3d0dad` |
| 27 | `theorem` | [ι_eq_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/eq-algebramap-iff--ea194bae84fe39c75a857ec6.md) | 220 | `result-track:ea194bae84fe39c75a857ec64df91a30cc41ee41b487409fa81f0974118a9176` |
| 28 | `theorem` | [ι_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/ne-one--f814a788a6350059e4879174.md) | 232 | `result-track:f814a788a6350059e48791749e04bca1c8ea4fbc52f3eca7751f8129e7940e3d` |
| 29 | `theorem` | [ι_range_disjoint_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/range-disjoint-one--f3ceb478cb5bd9407362b3e7.md) | 237 | `result-track:f3ceb478cb5bd9407362b3e7e67a7d16f62271f40bf99380835dd47dec1f8518` |
| 30 | `theorem` | [ι_add_mul_swap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/add-mul-swap--f58246abec8a7c1a22f386d8.md) | 247 | `result-track:f58246abec8a7c1a22f386d809c3d1b6e9f7e170fc8af23f2b1bf16e520fc2f5` |
| 31 | `theorem` | [ι_mul_prod_list](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/mul-prod-list--73fbbd46552ba9aff95965db.md) | 250 | `result-track:73fbbd46552ba9aff95965dbdacd9076384cc22c7e22635b82f54f4f782df6fe` |
| 32 | `def` | [ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/multi--a0b7dee9649259dc608e6651.md) | 272 | `declaration-track:a0b7dee9649259dc608e6651411ffefce8cfba6c46959eb8a81ba916c2511ada` |
| 33 | `theorem` | [ιMulti_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/multi-apply--c456cb6c4e6e07dfe6756962.md) | 301 | `result-track:c456cb6c4e6e07dfe6756962cb438a77f6d3b3a870af768ce01a3603d7670032` |
| 34 | `theorem` | [ιMulti_zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/multi-zero-apply--4dc1ff965a48970fe0c72f7f.md) | 305 | `result-track:4dc1ff965a48970fe0c72f7f97fa18012edf3f802cd521b79779db7a9eebe16f` |
| 35 | `theorem` | [ιMulti_succ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/multi-succ-apply--d5aa676e2d4d7317df7da0ae.md) | 309 | `result-track:d5aa676e2d4d7317df7da0aeba3f0968ea2b208a6d3f353b150b6624f7da4e60` |
| 36 | `theorem` | [ιMulti_succ_curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/multi-succ-curryleft--6144a2ffd7a27e9d4b49d7df.md) | 313 | `result-track:6144a2ffd7a27e9d4b49d7df672d798ddddd29cfff4fd1ce7f10a4eb3d2526eb` |
| 37 | `lemma` | [ιMulti_range](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/multi-range--4cd9f2bb87fc4f40e2a1e2d5.md) | 323 | `result-track:4cd9f2bb87fc4f40e2a1e2d533f7edaf57e6787956d4d93304110f2a0ca74148` |
| 38 | `lemma` | [ιMulti_span_fixedDegree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/multi-span-fixeddegree--f3dccc753540bbbc6ebb1f29.md) | 334 | `result-track:f3dccc753540bbbc6ebb1f29d5b6626ed483f909a991132f848cffa18f3fd3c4` |
| 39 | `abbrev` | [ιMulti_family](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/multi-family--adaf5cfff96fc63e4bd22fad.md) | 348 | `declaration-track:adaf5cfff96fc63e4bd22fadb43cb4681629f9e3d0e481fd4b781a44fab9b19c` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/instance--2f4b8176c5db4b38a91b5a8c.md) | 355 | `declaration-track:2f4b8176c5db4b38a91b5a8cfc8480cbce45a478dc47d36b9d18d45580ab2335` |
| 41 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/map--eb7d46954cc20d1918dddc24.md) | 363 | `declaration-track:eb7d46954cc20d1918dddc24a9e54bfb58bf990c1414b9309860971be59aacea` |
| 42 | `theorem` | [map_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/map-comp--13c6bb43dc22edb1a268f6a4.md) | 367 | `result-track:13c6bb43dc22edb1a268f6a4f2589ee91dfb45a1879fba7399850d209cb6a548` |
| 43 | `theorem` | [map_apply_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/map-apply--6bd79128740ec08e9f448857.md) | 371 | `result-track:6bd79128740ec08e9f448857095fbbb6f4fe49fbd216a9e3848fcf5c1853141b` |
| 44 | `theorem` | [map_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/map-apply-multi--ff4752920ff22df9a541858d.md) | 375 | `result-track:ff4752920ff22df9a541858dfc56e441b0d665fedc584b1c465247b66ae33093` |
| 45 | `theorem` | [map_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/map-comp-multi--a250549332530170cc253d99.md) | 381 | `result-track:a250549332530170cc253d99339ba3542d06ff6185ef81da4fb4347b8a0b04c7` |
| 46 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/map-id--218bf64dbc4c05293a82e075.md) | 388 | `result-track:218bf64dbc4c05293a82e075812d07916438f67d3371b7dc2544b13fdc446c8e` |
| 47 | `theorem` | [map_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/map-comp-map--8cc50b61283fcd4c2f95a84c.md) | 393 | `result-track:8cc50b61283fcd4c2f95a84cc0874f0a48b6aecf2289029d205744f3ef12d354` |
| 48 | `theorem` | [ι_range_map_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/range-map-map--b6fcee6c3a7573415212ef8e.md) | 398 | `result-track:b6fcee6c3a7573415212ef8ee6a2c66a272778eb3b2213f96f0d693beeb2ec1c` |
| 49 | `theorem` | [toTrivSqZeroExt_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/totrivsqzeroext-comp-map--fba626726e659724a94e07d0.md) | 403 | `result-track:fba626726e659724a94e07d0af5e4e4451778c632d496b5bda0b2d4694026c1e` |
| 50 | `theorem` | [ιInv_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/inv-comp-map--57f0cb246ca4bdaab56eb98f.md) | 411 | `result-track:57f0cb246ca4bdaab56eb98f778ef15be8d5b41529572d46cc20ff6694bd8710` |
| 51 | `lemma` | [leftInverse_map_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/leftinverse-map-iff--d72c7b5d6cee3b314f6e3b59.md) | 427 | `result-track:d72c7b5d6cee3b314f6e3b59023f6c3e68c0e7e0df80990922772dd0bf454bf6` |
| 52 | `lemma` | [map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/map-injective--098fd388a8c89c83557a0617.md) | 434 | `result-track:098fd388a8c89c83557a0617dc031dfe5fc9b050e7a2c7389893f60dba4438d1` |
| 53 | `lemma` | [map_surjective_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/map-surjective-iff--a8829328df93809e90979a40.md) | 441 | `result-track:a8829328df93809e90979a409037672bed7bca29ddd4712f0a44db490e252d9f` |
| 54 | `lemma` | [map_injective_field](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/map-injective-field--9efe0f99549775bde1cad480.md) | 453 | `result-track:9efe0f99549775bde1cad480c9469da4835f6e11b81f050778da84b4d81f36f8` |
| 55 | `def` | [toExterior](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/toexterior--6cf62a420aaddffdd4bc7ae8.md) | 465 | `declaration-track:6cf62a420aaddffdd4bc7ae8234bf124313b414e5e565e738b0dab3310c52c55` |
| 56 | `theorem` | [toExterior_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/declarations/toexterior--c6b5a03d83bc9327a559cee5.md) | 469 | `result-track:c6b5a03d83bc9327a559cee5a4670a85ce30c8c5cad49d92e3000720b4afd9c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
