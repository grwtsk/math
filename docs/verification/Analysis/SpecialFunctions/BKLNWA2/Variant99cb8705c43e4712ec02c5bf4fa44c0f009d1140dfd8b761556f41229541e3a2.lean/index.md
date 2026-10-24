# Verification target: GRWTSK.Analysis.SpecialFunctions.BKLNWA2.Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "531e83e58b158017670530c03474705f11dd9214",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `531e83e58b158017670530c03474705f11dd9214`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [a2_bound_20](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-bound-20--edc1435277569032599c361c.md) | 31 | `result-track:edc1435277569032599c361cf76c691803028a0f716f722a5b22718cae79ffcc` |
| 2 | `theorem` | [a2_lower_25_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-25-part1--956b8ae47f0cf595c41f3432.md) | 36 | `result-track:956b8ae47f0cf595c41f34328a40222d650581cb4dfe4d7b5124962e7e927a56` |
| 3 | `theorem` | [a2_upper_25_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-25-part1--da65aae6da40b5999badd5c3.md) | 40 | `result-track:da65aae6da40b5999badd5c330938c6a8a8a625980a98ca543a172dd63c18af0` |
| 4 | `theorem` | [a2_lower_25_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-25-part2--8673ba9c816ac2c1786b717a.md) | 44 | `result-track:8673ba9c816ac2c1786b717a46f959ac099b2a14671502461f78dad0fc152a29` |
| 5 | `theorem` | [a2_upper_25_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-25-part2--04ff0deb67f79dd0cfc5add0.md) | 48 | `result-track:04ff0deb67f79dd0cfc5add05ab57be6682374c8001a5f1516f42d7b781a37f5` |
| 6 | `theorem` | [a2_lower_25_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-25-part3--e4022de22ce2c701a243a4b7.md) | 52 | `result-track:e4022de22ce2c701a243a4b79b1d76d145d8865fcd176604344bc1ba0bc22aeb` |
| 7 | `theorem` | [a2_upper_25_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-25-part3--327270d656ac93128dc458c8.md) | 56 | `result-track:327270d656ac93128dc458c8bcc7a2c1a2c88190d977f19a34fb4ffa9be2cfda` |
| 8 | `theorem` | [a2_bound_25](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-bound-25--6850b52ff9527d162c5a118b.md) | 60 | `result-track:6850b52ff9527d162c5a118b7535b3abd352357cbbf0c3aa0e90ebc1be40949b` |
| 9 | `theorem` | [a2_lower_30_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-30-part1--3f297a7bf6b1cca9b45a40aa.md) | 73 | `result-track:3f297a7bf6b1cca9b45a40aa13ef1f4ebf39a4460e74b556d118f40f340a60d5` |
| 10 | `theorem` | [a2_upper_30_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-30-part1--b7f2dd24de978fdfa9e2dda6.md) | 77 | `result-track:b7f2dd24de978fdfa9e2dda697449f3ed09b9f5d57528a44fc4c585bdc527fdc` |
| 11 | `theorem` | [a2_lower_30_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-30-part2--6126c65217c021f35ce0523b.md) | 81 | `result-track:6126c65217c021f35ce0523b74ffda33c6e53e2226abfc1d03b300da1cbfb4e0` |
| 12 | `theorem` | [a2_upper_30_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-30-part2--aa101c7c7a2c6434cf4a99dd.md) | 85 | `result-track:aa101c7c7a2c6434cf4a99dd0fc07bd9e8190c46104d413f2048b1ef034405f3` |
| 13 | `theorem` | [a2_lower_30_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-30-part3--87d569c023434e7fd48cacbc.md) | 89 | `result-track:87d569c023434e7fd48cacbccff4f842a817629c703021381fca19e5c597cc2c` |
| 14 | `theorem` | [a2_upper_30_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-30-part3--db99dcefa89eb1e998d957ea.md) | 93 | `result-track:db99dcefa89eb1e998d957ea73ffe31305fba49742ccc43b7da951f46f251d77` |
| 15 | `theorem` | [a2_lower_30_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-30-part4--e5dac4fca538f0070fae4e8e.md) | 97 | `result-track:e5dac4fca538f0070fae4e8e783efd89deff77e812b0b66f2b3dcdf0262f1b7b` |
| 16 | `theorem` | [a2_upper_30_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-30-part4--d3ff0c46404313382bc2ee54.md) | 101 | `result-track:d3ff0c46404313382bc2ee54a26edd40835b419cb31f921712057b7fd46e0b8f` |
| 17 | `theorem` | [a2_bound_30](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-bound-30--a95320cf5705314cb19bd036.md) | 105 | `result-track:a95320cf5705314cb19bd036f1d7035aad2d9a1def6601360f6cbf6024e13409` |
| 18 | `theorem` | [a2_lower_35_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-35-part1--90448e896959b5c3bc73bbbd.md) | 120 | `result-track:90448e896959b5c3bc73bbbd9f5cfc1a14cd6724f5a4f378d0deee267cea6ab6` |
| 19 | `theorem` | [a2_upper_35_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-35-part1--4726433c76fa13ac45294b41.md) | 124 | `result-track:4726433c76fa13ac45294b413067d533ce0678af6c9e1fd9c98b002ea02fea6e` |
| 20 | `theorem` | [a2_lower_35_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-35-part2--0f590998a679dc2cbaa26fa9.md) | 128 | `result-track:0f590998a679dc2cbaa26fa973bc5d22ed7a6dfac9193ffc9203dc0027a8a57b` |
| 21 | `theorem` | [a2_upper_35_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-35-part2--42a422312b01dd5c1b7f69b9.md) | 132 | `result-track:42a422312b01dd5c1b7f69b93923b528f4b1adca70e77db9a6addb1bebc202ba` |
| 22 | `theorem` | [a2_lower_35_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-35-part3--336ffd510fd690d2b2660620.md) | 136 | `result-track:336ffd510fd690d2b26606209ec90399542d7f620619068fbc75597742a4702b` |
| 23 | `theorem` | [a2_upper_35_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-35-part3--fa981307c0a5243eed3b6f5c.md) | 140 | `result-track:fa981307c0a5243eed3b6f5c81cf32c05d075223dbf2c745a7ba5dd44458bc5a` |
| 24 | `theorem` | [a2_lower_35_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-35-part4--e693bd418fa7cf29f45ed273.md) | 144 | `result-track:e693bd418fa7cf29f45ed273095550d41682adb2a190c777557d2571d38ecc21` |
| 25 | `theorem` | [a2_upper_35_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-35-part4--e8ecb2964f1ea838460f97f8.md) | 148 | `result-track:e8ecb2964f1ea838460f97f8a55e60572b3627ebd1eef09850604dbef46b3ca0` |
| 26 | `theorem` | [a2_bound_35](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-bound-35--e638b010a18a6b3894f464d2.md) | 152 | `result-track:e638b010a18a6b3894f464d2a34b756e6b1eaff497d7dfb8aca25fb0c08077da` |
| 27 | `theorem` | [a2_lower_40_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-40-part1--2820e6216dc850c2089e9f5d.md) | 167 | `result-track:2820e6216dc850c2089e9f5de377ea9ecc8e7ea687036817dfd65a4c7eec0ae2` |
| 28 | `theorem` | [a2_upper_40_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-40-part1--3b69df9c6f0ea5cc9df93ba4.md) | 171 | `result-track:3b69df9c6f0ea5cc9df93ba499af4a2d7984e81760d2c9360a3e52841dfc948a` |
| 29 | `theorem` | [a2_lower_40_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-40-part2--1460e3b07bae84d0f86df215.md) | 175 | `result-track:1460e3b07bae84d0f86df215715ee98248fca4ee1e1425f065949c6d9afbf937` |
| 30 | `theorem` | [a2_upper_40_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-40-part2--f50aac8ac70d5e57d932d654.md) | 179 | `result-track:f50aac8ac70d5e57d932d6544fd0204ae6f66eb236aac353b61f465ae684dfc5` |
| 31 | `theorem` | [a2_lower_40_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-40-part3--99251806df0db5f0a267ad12.md) | 183 | `result-track:99251806df0db5f0a267ad121591ac308b2c6dee5504efb5016724ab59f8e770` |
| 32 | `theorem` | [a2_upper_40_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-40-part3--bc3e2a21d5fec3e88e3a6064.md) | 187 | `result-track:bc3e2a21d5fec3e88e3a606461c007b41a125013c9f5b498bf3f97c3f4cbb9e4` |
| 33 | `theorem` | [a2_lower_40_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-40-part4--e2ba8234b9c762b712857d62.md) | 191 | `result-track:e2ba8234b9c762b712857d62b9224c60cdfd0b099d0f72c27b6aa24fb945448a` |
| 34 | `theorem` | [a2_upper_40_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-40-part4--3b93e2b7e8e0c2b90e1a5112.md) | 195 | `result-track:3b93e2b7e8e0c2b90e1a5112ab45854e279b9e4b03fbecdd370e600c8df3442f` |
| 35 | `theorem` | [a2_lower_40_part5](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-40-part5--8577d8cac86d6c1e4bcd91ec.md) | 199 | `result-track:8577d8cac86d6c1e4bcd91ec55f185ee0719f42a384f089d85200aca1a496d1f` |
| 36 | `theorem` | [a2_upper_40_part5](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-40-part5--082a53c68b5ec6f69baf1a75.md) | 203 | `result-track:082a53c68b5ec6f69baf1a75c1a799aae5d50dd732e3331494e380567622da7f` |
| 37 | `theorem` | [a2_bound_40](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-bound-40--2261bc1678a4fa81e048bdc9.md) | 207 | `result-track:2261bc1678a4fa81e048bdc923e854927ae342bd4ab795cef7b8def1e121d624` |
| 38 | `theorem` | [a2_lower_43_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-43-part1--80bed09b1b6f1aca90c0a0df.md) | 224 | `result-track:80bed09b1b6f1aca90c0a0df8cf1e9486e039f4cc6c1994273e3991a61c4c54f` |
| 39 | `theorem` | [a2_upper_43_part1](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-43-part1--799b754758f8b41c38f748c1.md) | 228 | `result-track:799b754758f8b41c38f748c11d9beca5cd1e862478b713239a07f5876285cb5d` |
| 40 | `theorem` | [a2_lower_43_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-43-part2--f222a931c93e6a5642c0ae47.md) | 232 | `result-track:f222a931c93e6a5642c0ae478433d1ae48c891fec74ad932c11c258b073f4255` |
| 41 | `theorem` | [a2_upper_43_part2](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-43-part2--b4b132e2883d7e72ce91f65c.md) | 236 | `result-track:b4b132e2883d7e72ce91f65c510e99eef6986ab70d35a5cba0dc45441e31944b` |
| 42 | `theorem` | [a2_lower_43_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-43-part3--8156561287c9f3558c41be3a.md) | 240 | `result-track:8156561287c9f3558c41be3a3f9f463b0c2cd5c33c36a99f96729bdfcb41dd7e` |
| 43 | `theorem` | [a2_upper_43_part3](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-43-part3--4b99a4a301fb1059312f8db5.md) | 244 | `result-track:4b99a4a301fb1059312f8db57214bf6dbb53385767b9e98d0b86cc69be7958da` |
| 44 | `theorem` | [a2_lower_43_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-43-part4--81b8c1c25367818c9a46e26c.md) | 248 | `result-track:81b8c1c25367818c9a46e26c603da2bac31d7bb1ff28db17dcc6d5100f443be0` |
| 45 | `theorem` | [a2_upper_43_part4](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-43-part4--9b23af20955d3429f72a1674.md) | 252 | `result-track:9b23af20955d3429f72a1674d135a6be3b705d9bb0e932b58eb5f0f32ebff031` |
| 46 | `theorem` | [a2_lower_43_part5](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-43-part5--b2e8385fb0dd00be01c93412.md) | 256 | `result-track:b2e8385fb0dd00be01c934122d648c83377f1b6a9dc9bbb80c58ad7edbc3dca2` |
| 47 | `theorem` | [a2_upper_43_part5](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-43-part5--e722691cae40f4c8b5514eb7.md) | 260 | `result-track:e722691cae40f4c8b5514eb78732cc6ebd49bd10661a2c90ec708326fef1407c` |
| 48 | `theorem` | [a2_bound_43](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-bound-43--fc1a30ddd6e2f7e641cd283f.md) | 264 | `result-track:fc1a30ddd6e2f7e641cd283f57014faa4603e0dd79818ae19146243a1af7f3c1` |
| 49 | `theorem` | [a2_lower_100](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-100--a880e2dea26f84ccc2a67485.md) | 281 | `result-track:a880e2dea26f84ccc2a67485a66b25673aca192fcf5c1aba12e5f9acd43805e8` |
| 50 | `theorem` | [a2_upper_100](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-100--34e994420cf95406e6fe7ab8.md) | 285 | `result-track:34e994420cf95406e6fe7ab83bf11525a65425232116db8bcd34a39c9bae3fe5` |
| 51 | `theorem` | [a2_lower_150](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-150--bcffac819902afb7e6f782ff.md) | 290 | `result-track:bcffac819902afb7e6f782ff633b8e2682da0d1484610298c2f763aca2e232c9` |
| 52 | `theorem` | [a2_upper_150](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-150--fde2e47662e50a973a56f585.md) | 294 | `result-track:fde2e47662e50a973a56f585dd3fb9dd34884145c5c5c4b80cf1e782fdb76ad9` |
| 53 | `theorem` | [a2_lower_200](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-200--95f71b180179b4a0384bf3eb.md) | 299 | `result-track:95f71b180179b4a0384bf3eb80ac83f5cab65863a004cff928c8122632b340d4` |
| 54 | `theorem` | [a2_upper_200](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-200--8a826a7434ae8eac72afff89.md) | 303 | `result-track:8a826a7434ae8eac72afff897aa79365c39556ea938f61549e46bfccd4f5db04` |
| 55 | `theorem` | [a2_lower_250](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-250--41f249a2b5314cb575a6f152.md) | 308 | `result-track:41f249a2b5314cb575a6f1520b808fe23494f40d576e9d1ddd3dbc798292621d` |
| 56 | `theorem` | [a2_upper_250](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-250--59759a2a298fffbb111eba2c.md) | 312 | `result-track:59759a2a298fffbb111eba2c0fb921113613d40ad2e375e2da55d8eea29d18ea` |
| 57 | `theorem` | [a2_lower_300](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-lower-300--f7fb315ae88810785db498ba.md) | 317 | `result-track:f7fb315ae88810785db498baffba1684e56c975e442b5d5fff52b5dfde5d15a3` |
| 58 | `theorem` | [a2_upper_300](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2/Variant99cb8705c43e4712ec02c5bf4fa44c0f009d1140dfd8b761556f41229541e3a2.lean/declarations/a2-upper-300--a8563be068dd643ed4306bf3.md) | 321 | `result-track:a8563be068dd643ed4306bf3386b83c9df150b16fa8e64a6a109f855ce68a296` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
