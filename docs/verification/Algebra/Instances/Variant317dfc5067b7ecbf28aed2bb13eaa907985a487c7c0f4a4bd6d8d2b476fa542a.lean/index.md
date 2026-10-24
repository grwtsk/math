# Verification target: GRWTSK.Algebra.Instances.Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5d8b3a6a41897a507719b238c18dceb0ae87829",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5d8b3a6a41897a507719b238c18dceb0ae87829`.

Source path: `GRWTSK/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instZero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instzero--494a6a8ad6fa32b372983006.md) | 53 | `declaration-track:494a6a8ad6fa32b372983006a787014e725bf7e88ee124fc7de671c771a26284` |
| 2 | `instance` | [instOne](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instone--e0b4240de9bcce1c14c42275.md) | 55 | `declaration-track:e0b4240de9bcce1c14c42275c00091c37f16bbcc228ef2e658bef9d580a9841a` |
| 3 | `instance` | [instZeroLEOneClass](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instzeroleoneclass--a9c1455a9bb07b9d7180a91e.md) | 57 | `declaration-track:a9c1455a9bb07b9d7180a91e6e9c7872078eeddea8c84705652cdbdb47c5b5bd` |
| 4 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-zero--37b8c29e72714e126a6c0816.md) | 60 | `result-track:37b8c29e72714e126a6c08167b7f2a81010acaea20d65bca5de58746337d42df` |
| 5 | `theorem` | [coe_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-one--3fd7f12c73088ab12cdb3346.md) | 64 | `result-track:3fd7f12c73088ab12cdb33467f7a0f88ee18eea201341fa54c1127ec90f491bd` |
| 6 | `theorem` | [mk_zero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/mk-zero--febc93f22c3fb0ceb29bd6df.md) | 68 | `result-track:febc93f22c3fb0ceb29bd6df6372c9cde50c578d90e5ac3151614de54abb74e8` |
| 7 | `theorem` | [mk_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/mk-one--9e100ca1e6923ad5b5b88526.md) | 72 | `result-track:9e100ca1e6923ad5b5b8852644401be19ef06697118166e173b1ed2d887e528f` |
| 8 | `theorem` | [coe_eq_zero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-eq-zero--bf887000f3b364e3ee61027b.md) | 76 | `result-track:bf887000f3b364e3ee61027bd0b1d878533fff0db0f3fe3ae25ccb99b7abc07d` |
| 9 | `theorem` | [coe_ne_zero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-ne-zero--af3de38eaa5d7b4508418be4.md) | 80 | `result-track:af3de38eaa5d7b4508418be4b5df9f3d184e6e4d3ed5ef7e24512b5c9379f64a` |
| 10 | `theorem` | [coe_eq_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-eq-one--9a00a298ba76327b5b0d4c13.md) | 84 | `result-track:9a00a298ba76327b5b0d4c13d0f1448c481d7c9b893bd2d2684450fb8c66173d` |
| 11 | `theorem` | [coe_ne_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-ne-one--8f75754c4150735617a59af6.md) | 88 | `result-track:8f75754c4150735617a59af6d51e54321ecbd2e2ac3cf4a42d392b320e6dbdd8` |
| 12 | `theorem` | [coe_nonneg](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-nonneg--a1f608cf22ae52c0fcfae0e8.md) | 92 | `result-track:a1f608cf22ae52c0fcfae0e8d4c5864a46dcf6f27be9ac814b892d63c9d7145b` |
| 13 | `theorem` | [coe_le_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-le-one--970ed300a49019f1a6a6b0d9.md) | 96 | `result-track:970ed300a49019f1a6a6b0d9ab31faed28c8e209020e52bbca9862f41b36c8d6` |
| 14 | `theorem` | [nonneg](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/nonneg--0b23214239d12f7a9afda8bc.md) | 100 | `result-track:0b23214239d12f7a9afda8bc0a095f62942619a5c3c9562fb2938aa82e456d45` |
| 15 | `theorem` | [le_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/le-one--61c0782db519355e20d6cad5.md) | 104 | `result-track:61c0782db519355e20d6cad5baec7461d8bf7d2a91d30fa6ddf003d10aa10937` |
| 16 | `instance` | [instMul](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instmul--3e027ddab840579cb5e8e7dd.md) | 107 | `declaration-track:3e027ddab840579cb5e8e7dd183f8a34a09e11148328e22a2ccb5befe28ed667` |
| 17 | `instance` | [instPow](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instpow--4a4d2775e0b2af83233b2d03.md) | 110 | `declaration-track:4a4d2775e0b2af83233b2d03fa6b80e42117507723b7036e2c44480c424c9b12` |
| 18 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-mul--dae16b82658536714cea0913.md) | 114 | `result-track:dae16b82658536714cea0913107efed7db8042f29192c8b5973851ecf4c44080` |
| 19 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-pow--b1fd6b0724a4538b26153749.md) | 118 | `result-track:b1fd6b0724a4538b26153749429eca07715d3e9e1393b918d23adeec006cd1a1` |
| 20 | `theorem` | [mul_le_left](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/mul-le-left--4d5199b527b728ec3a69435b.md) | 121 | `result-track:4d5199b527b728ec3a69435b47c473e964c341ee3529e1d59c67ac1a85bcdc2f` |
| 21 | `theorem` | [mul_le_right](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/mul-le-right--7df4e446eefda60cf1b9a7be.md) | 124 | `result-track:7df4e446eefda60cf1b9a7be8c18aa3a05e843f7e389889946c02d5335b96096` |
| 22 | `instance` | [instMonoidWithZero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instmonoidwithzero--60f20909a824eae9d3293a44.md) | 127 | `declaration-track:60f20909a824eae9d3293a440f7bda4564d77a7ef7e667593b26427a31988e2b` |
| 23 | `instance` | [instCommMonoidWithZero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instcommmonoidwithzero--5728e90f5fd4e0f2204bd830.md) | 130 | `declaration-track:5728e90f5fd4e0f2204bd8305bfe1659f46cb4879a76aef9e74165fc297e6a93` |
| 24 | `instance` | [instCancelMonoidWithZero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instcancelmonoidwithzero--4a3b4d122749bf717b721bf1.md) | 134 | `declaration-track:4a3b4d122749bf717b721bf16579b755b512d9941f8bc17b99480694a29adbfa` |
| 25 | `instance` | [instCancelCommMonoidWithZero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instcancelcommmonoidwithzero--285f765334817333bae57915.md) | 140 | `declaration-track:285f765334817333bae57915bb7efaab533280f07e5bd9a8c00a46620ae53278` |
| 26 | `theorem` | [one_sub_mem](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/one-sub-mem--83b517ad4c68e32133d5aa7e.md) | 148 | `result-track:83b517ad4c68e32133d5aa7eae24affe253f76b371f723131ead1cbfeec42187` |
| 27 | `theorem` | [mem_iff_one_sub_mem](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/mem-iff-one-sub-mem--ad56a4e6ce0eefd6ee158b8d.md) | 152 | `result-track:ad56a4e6ce0eefd6ee158b8d66c5fa9e23fbfd080365df69e259c0a97c8099f7` |
| 28 | `theorem` | [one_sub_nonneg](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/one-sub-nonneg--bf3a9a21372d4d96cd49da58.md) | 155 | `result-track:bf3a9a21372d4d96cd49da58ff349116ea3b803c80caf88c82209c3d4b03ad5c` |
| 29 | `theorem` | [one_sub_le_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/one-sub-le-one--c6e6cd14a0d5f317cfd8aed5.md) | 157 | `result-track:c6e6cd14a0d5f317cfd8aed51e44666d7e0a8efeb7ea71064b50c80aebb15103` |
| 30 | `instance` | [instZero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instzero--7d37df4ce4bbcb1aedc74c2d.md) | 166 | `declaration-track:7d37df4ce4bbcb1aedc74c2deabcb3cbafb0a29f41b1afb72b921446b5dd823d` |
| 31 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-zero--416e928a116aabeabcd845a5.md) | 169 | `result-track:416e928a116aabeabcd845a5dcce26b521cbf2f924da67f69b183f1de4493d66` |
| 32 | `theorem` | [mk_zero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/mk-zero--0a7c920bfd66fc05b0d47fad.md) | 173 | `result-track:0a7c920bfd66fc05b0d47fade63d85d0aeaf54ad5363e942e1c73c612051f443` |
| 33 | `theorem` | [coe_eq_zero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-eq-zero--45df13a447ec76ed4665df2a.md) | 177 | `result-track:45df13a447ec76ed4665df2a8380bfc0042ac3cf836010d6dd37c7716f16c51c` |
| 34 | `theorem` | [coe_ne_zero](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-ne-zero--f20bbf024a1730547c15ce70.md) | 181 | `result-track:f20bbf024a1730547c15ce705f9d1b04c6a631d637a72af69fc9e3dd5bc1adf0` |
| 35 | `theorem` | [coe_nonneg](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-nonneg--a6511a258e53ff320c64c283.md) | 185 | `result-track:a6511a258e53ff320c64c2833217a556dbfc3566373e08f2eca4dc404e103907` |
| 36 | `theorem` | [coe_lt_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-lt-one--8eb03a5ee0ad3efd7aab1ebb.md) | 189 | `result-track:8eb03a5ee0ad3efd7aab1ebba34019f4e5b0dba9632a3899ba329be50fb8d591` |
| 37 | `theorem` | [nonneg](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/nonneg--159e74bc00e7a84c1d288f78.md) | 193 | `result-track:159e74bc00e7a84c1d288f7836aca3d085c01b8193c5f0d19765dec2939b7fba` |
| 38 | `instance` | [instMul](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instmul--bde14325e0d67a96d58e6c7f.md) | 196 | `declaration-track:bde14325e0d67a96d58e6c7f9ed6476892ae1cde87247d2a128530138c70c47a` |
| 39 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-mul--bafdb8f500f1960437376aa3.md) | 201 | `result-track:bafdb8f500f1960437376aa36e7055d959be63353d22b3ad0facbb4ac563d398` |
| 40 | `instance` | [instSemigroup](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instsemigroup--8e9d14df58764c44884076de.md) | 204 | `declaration-track:8e9d14df58764c44884076de674101461458df5cc3fd4d899135d9998afc78bd` |
| 41 | `instance` | [instCommSemigroup](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instcommsemigroup--cadc3200d07ce98448be485c.md) | 207 | `declaration-track:cadc3200d07ce98448be485c022c1d425c1e498c0ea07c420a7748bfb4564b33` |
| 42 | `instance` | [instOne](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instone--e802f4223a2b520dd19e3144.md) | 222 | `declaration-track:e802f4223a2b520dd19e3144d0f182c74e428f1f7bda066ba115804930e3de4c` |
| 43 | `theorem` | [coe_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-one--2fbd6fce4df410285ed68cdd.md) | 225 | `result-track:2fbd6fce4df410285ed68cdd85d0d4de8f76becce8bdf4ccf8ef23f5bb169a3b` |
| 44 | `theorem` | [mk_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/mk-one--260363f4558252845af433d9.md) | 229 | `result-track:260363f4558252845af433d993c8d9d7d00e0ed7bf741bb4b747e97df92e7a62` |
| 45 | `theorem` | [coe_eq_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-eq-one--ddc38d67c5812d66b6ef489c.md) | 233 | `result-track:ddc38d67c5812d66b6ef489c7d819d3da459ea998c34f7f16b462c2cc5b6829c` |
| 46 | `theorem` | [coe_ne_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-ne-one--4662bcaf8e803336e090415c.md) | 237 | `result-track:4662bcaf8e803336e090415c657474531408b29ebe17bc41dffef8bd2a8f5e41` |
| 47 | `theorem` | [coe_pos](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-pos--8cb83f1e3fe904b9b73a2e46.md) | 241 | `result-track:8cb83f1e3fe904b9b73a2e46b7d25110434357ebea9c96b9b84e427af8d0fac1` |
| 48 | `theorem` | [coe_le_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-le-one--9681bc561a67f0e8bea8ed07.md) | 245 | `result-track:9681bc561a67f0e8bea8ed0790f7a7bac3fd3b7bf99e8ff4c6a46f8447ccd9f7` |
| 49 | `theorem` | [le_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/le-one--d232b20c86f3ce32c59e915a.md) | 249 | `result-track:d232b20c86f3ce32c59e915a85d113e9b0b6a79290e81c7037e48236b3f6da74` |
| 50 | `instance` | [instMul](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instmul--4166d25defe2115f2af72389.md) | 252 | `declaration-track:4166d25defe2115f2af72389516bde987fc520174c17bc6075ae6ce9b2845781` |
| 51 | `instance` | [instPow](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instpow--8154b258c1404e92d4bad671.md) | 255 | `declaration-track:8154b258c1404e92d4bad671172e3b69631cac9d47ae48f166481773a0bad2a1` |
| 52 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-mul--b947b2a577cb59d687556f06.md) | 259 | `result-track:b947b2a577cb59d687556f0616aef07e521f739626d9b2d28807621497e88417` |
| 53 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-pow--0f8c2c1353d3e3de7fa15b2f.md) | 263 | `result-track:0f8c2c1353d3e3de7fa15b2fbdb03bbc2aff31e5273f40cdfb4076a211ae9d29` |
| 54 | `instance` | [instSemigroup](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instsemigroup--99447ff121f28c2b758f4e71.md) | 266 | `declaration-track:99447ff121f28c2b758f4e718e4dbe8d70aacdebd12de605cbba26b60b9d1250` |
| 55 | `instance` | [instMonoid](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instmonoid--b4155fb0bf8bab7465da5d19.md) | 269 | `declaration-track:b4155fb0bf8bab7465da5d19abc1ce5a6b722874432008fdf851420431a068b8` |
| 56 | `instance` | [instCommSemigroup](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instcommsemigroup--b5b31b7ade65382f4f5c4eef.md) | 272 | `declaration-track:b5b31b7ade65382f4f5c4eef4dab47ff423f76219bf12dd911e221f4494f11b5` |
| 57 | `instance` | [instCommMonoid](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instcommmonoid--128f9d9f485dfdc8a3eb0e63.md) | 276 | `declaration-track:128f9d9f485dfdc8a3eb0e634f3ef491323b5fcadb229ef58c17456e15e7018e` |
| 58 | `instance` | [instCancelMonoid](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instcancelmonoid--53a654984e14d72828d2c428.md) | 280 | `declaration-track:53a654984e14d72828d2c428d3369c248ebb5a3497e5a45178d3c2e08bfdaef4` |
| 59 | `instance` | [instCancelCommMonoid](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instcancelcommmonoid--aeb303332cf6059ae12e8c48.md) | 288 | `declaration-track:aeb303332cf6059ae12e8c488e7ecb5c7efc11fdea4ab7386f5c74bb4ebabb22` |
| 60 | `theorem` | [pos](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/pos--397d10a30dfe319378388508.md) | 301 | `result-track:397d10a30dfe319378388508e05fbed03a0a5cfa6163336989150595424c35d4` |
| 61 | `theorem` | [lt_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/lt-one--525651c691251d331184388d.md) | 305 | `result-track:525651c691251d331184388dc37bc677e3065907180e9a4ca647dcb5add4b209` |
| 62 | `instance` | [instMul](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instmul--7979e4e4e0a2274cc81c7f3f.md) | 308 | `declaration-track:7979e4e4e0a2274cc81c7f3f049ca5e3e34df7174dfe0ea620682ed13008fbb8` |
| 63 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/coe-mul--131ca74e8a82338cd49f341c.md) | 313 | `result-track:131ca74e8a82338cd49f341cb104331b0258c7c186a6a629ef036ee15a1a9926` |
| 64 | `instance` | [instSemigroup](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instsemigroup--395911fcbf88cf5a2c626c10.md) | 316 | `declaration-track:395911fcbf88cf5a2c626c10a4c9ee373afd87c6229819ffe4f4b5d2f4eb1d2a` |
| 65 | `instance` | [instCommSemigroup](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/instcommsemigroup--ad07935bd6100afe650e4dd1.md) | 319 | `declaration-track:ad07935bd6100afe650e4dd10f75c4ee124145d25fbe8bef51ea1c34a7e13e1f` |
| 66 | `theorem` | [one_sub_mem](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/one-sub-mem--98e0b9bcb388a1f787581867.md) | 325 | `result-track:98e0b9bcb388a1f787581867a99c7f6b7053df086210b7b70af5b8886961ac1a` |
| 67 | `theorem` | [mem_iff_one_sub_mem](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/mem-iff-one-sub-mem--d158e585edbabafcb2651deb.md) | 330 | `result-track:d158e585edbabafcb2651deb97e521db6cfaa3f74b2a09c17da75bed05c20956` |
| 68 | `theorem` | [one_minus_pos](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/one-minus-pos--5e51818fb5c3a9802980f891.md) | 333 | `result-track:5e51818fb5c3a9802980f891f045314b56f7a074980af693898ca17d495b478c` |
| 69 | `theorem` | [one_minus_lt_one](../../../../mathematics/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/declarations/one-minus-lt-one--5696498438c25bdcc5f213ab.md) | 335 | `result-track:5696498438c25bdcc5f213ab7d7f6b0c6542ac569f5be197a07333a71c4f8501` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
