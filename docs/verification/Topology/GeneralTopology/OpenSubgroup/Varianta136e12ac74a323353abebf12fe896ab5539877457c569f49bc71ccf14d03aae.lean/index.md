# Verification target: GRWTSK.Topology.GeneralTopology.OpenSubgroup.Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f41fe48d299df80fe901de5e54301038b15b21b",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f41fe48d299df80fe901de5e54301038b15b21b`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OpenAddSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/openaddsubgroup--97980218f3a4f0ad89e5b1b1.md) | 39 | `declaration-track:97980218f3a4f0ad89e5b1b1818af7ae6cd199915f0599021a50b1ffe54e3556` |
| 2 | `structure` | [OpenSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/opensubgroup--61665dda420239e5cec15b95.md) | 45 | `declaration-track:61665dda420239e5cec15b95cfcc79c1b70fddc3813cd70c57eb87b3a3c00ef3` |
| 3 | `instance` | [hasCoeSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/hascoesubgroup--11d93794380f1bba5e6c81f2.md) | 63 | `declaration-track:11d93794380f1bba5e6c81f2850160f857e73b33e74a0af5aa2b1175b0701665` |
| 4 | `theorem` | [toSubgroup_injective](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/tosubgroup-injective--7c12539ec9cba45e4192355e.md) | 69 | `result-track:7c12539ec9cba45e4192355e435f69256585c1d20d2a60c58a9028203f83e7ed` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/instance--213aa75bb9a7601306fada86.md) | 75 | `declaration-track:213aa75bb9a7601306fada86be641b8824e415dc4333e89a7e82878e87af840b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/instance--19220a585935b9749829fe1a.md) | 80 | `declaration-track:19220a585935b9749829fe1a9fa0cc932a9fe8ca5f7c047850bbbd56f880f9d1` |
| 7 | `def` | [toOpens](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/toopens--758dab1b6a6a1a5506329683.md) | 87 | `declaration-track:758dab1b6a6a1a550632968381d2c8eefef4ba41da702763ab729bab5a2340a6` |
| 8 | `instance` | [hasCoeOpens](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/hascoeopens--6269325928a4684d6018508a.md) | 90 | `declaration-track:6269325928a4684d6018508a6b129201f2a452431e4cf8df23be6ab03b73730e` |
| 9 | `theorem` | [coe_toOpens](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/coe-toopens--2556f375cc6a405699298ef7.md) | 95 | `result-track:2556f375cc6a405699298ef7b6f49ce5138af1809dfba6cc2ff201711145bb1c` |
| 10 | `theorem` | [coe_toSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/coe-tosubgroup--00d3b437c1f2163a59e6254b.md) | 101 | `result-track:00d3b437c1f2163a59e6254b9216a2b279f3cd004d8d4c4d53ec0a00c90789b9` |
| 11 | `theorem` | [mem_toOpens](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/mem-toopens--cb4e70ceda7c029d7be0647b.md) | 106 | `result-track:cb4e70ceda7c029d7be0647b5586c7af22ead51574431194aa3d910ac57aff7d` |
| 12 | `theorem` | [mem_toSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/mem-tosubgroup--f2433666b5998c0734905042.md) | 111 | `result-track:f2433666b5998c07349050420b7be09d0d9df1428a1564c05edc6ad0e3dc88f2` |
| 13 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/ext--4a11128953c596799292602c.md) | 116 | `result-track:4a11128953c596799292602cf4c7360e701b49b97c6126712ff2da85ca2d6a8b` |
| 14 | `theorem` | [isOpen](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/isopen--9c46a507cb0404e77b178538.md) | 124 | `result-track:9c46a507cb0404e77b1785389bd93c8a3359dea86d3ae73fe418c188c9f27337` |
| 15 | `theorem` | [mem_nhds_one](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/mem-nhds-one--43ff2c9512a6f4ce8f506a65.md) | 130 | `result-track:43ff2c9512a6f4ce8f506a65fd704bf77f53d1028177ba2b1bbadd8abb8577d4` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/instance--6ec5671053affa775b1e1ea0.md) | 137 | `declaration-track:6ec5671053affa775b1e1ea00cb7056c9d9baa73e9751f4d7b598e704e9c6c5f` |
| 17 | `theorem` | [mem_top](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/mem-top--96ca1c483010254599ac8a85.md) | 140 | `result-track:96ca1c483010254599ac8a85a827eed24d5dca34118fb86b8ea9810857d59143` |
| 18 | `theorem` | [coe_top](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/coe-top--fe8bc4627fd1a13d6a32fa68.md) | 146 | `result-track:fe8bc4627fd1a13d6a32fa68f0f1a37d2c0b85c9d45cd6a7407fd25283451f91` |
| 19 | `theorem` | [toSubgroup_top](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/tosubgroup-top--630da3feda97fc5a42092ef4.md) | 152 | `result-track:630da3feda97fc5a42092ef4279a01239ad6f7164ef4c97b65d8575ec45093f7` |
| 20 | `theorem` | [toOpens_top](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/toopens-top--c809993c701fd78dd76a1b9a.md) | 158 | `result-track:c809993c701fd78dd76a1b9a2d37b6d4586c9309efd3498df2c67bce70feecf0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/instance--12803fb852441ee12bf34b43.md) | 164 | `declaration-track:12803fb852441ee12bf34b43c6c8d1cf7d7a13008418171747a63b32f109fc6d` |
| 22 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/isclosed--6a7baabf660f7881d166fdcd.md) | 168 | `result-track:6a7baabf660f7881d166fdcd41a782a06f153c6c3778331b27b07fe1c3fd6d68` |
| 23 | `theorem` | [isClopen](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/isclopen--065afdb8d6bac3724698c684.md) | 181 | `result-track:065afdb8d6bac3724698c6844ba579eac15a67a29150289c782381e5a909f29d` |
| 24 | `def` | [prod](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/prod--6de745a5536c9a37d8364605.md) | 192 | `declaration-track:6de745a5536c9a37d8364605dd808e096a05d6c488a034a21e97f83b794b68fb` |
| 25 | `theorem` | [coe_prod](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/coe-prod--f15c2776e3d21f08c1f20bfe.md) | 198 | `result-track:f15c2776e3d21f08c1f20bfe0ff1ab4083e58b3f24ff9f2f40fac8c7f33300e3` |
| 26 | `theorem` | [toSubgroup_prod](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/tosubgroup-prod--72c17fc36a9eacfdedc844ab.md) | 205 | `result-track:72c17fc36a9eacfdedc844ab81fd119ef95c80e7bd9827cba49580956d649962` |
| 27 | `instance` | [instInfOpenSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/instinfopensubgroup--6bbd6f89ce5b4a326403aee1.md) | 214 | `declaration-track:6bbd6f89ce5b4a326403aee1ece60648baf479cde14cb1aab88bd2f277a461d5` |
| 28 | `theorem` | [coe_inf](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/coe-inf--ebbe7ba7e4f4336e9818c5c0.md) | 218 | `result-track:ebbe7ba7e4f4336e9818c5c07a093c149a2ec00e2ff892db44fb4a7a4d6e05cc` |
| 29 | `theorem` | [toSubgroup_inf](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/tosubgroup-inf--c466656e8183e7f652f3cf12.md) | 224 | `result-track:c466656e8183e7f652f3cf12e2ba76f32cfcadbae0d487c0959cb1dba0603862` |
| 30 | `theorem` | [toOpens_inf](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/toopens-inf--31e4e809496a16015353bdd6.md) | 230 | `result-track:31e4e809496a16015353bdd6e8d0bd97c7ea8d64fe6ba50c9ffa6d5459a7ca04` |
| 31 | `theorem` | [mem_inf](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/mem-inf--865f23ce4b71ec0fccb9eebd.md) | 236 | `result-track:865f23ce4b71ec0fccb9eebdfd62033d9b0fc6c69b15deb5cae1b54b83b22c16` |
| 32 | `instance` | [instPartialOrderOpenSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/instpartialorderopensubgroup--be487eec36b50cdf64ef9ccb.md) | 242 | `declaration-track:be487eec36b50cdf64ef9ccbbc7c35e44698f869692fdf9e188eedab0ff91a68` |
| 33 | `instance` | [instSemilatticeInfOpenSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/instsemilatticeinfopensubgroup--c4649271b663ca1fb783ed39.md) | 246 | `declaration-track:c4649271b663ca1fb783ed3959864e19879b49771e439a0619c0526cdf045edd` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/instance--c4a00dc44d0d235e094e96c9.md) | 252 | `declaration-track:c4a00dc44d0d235e094e96c918d6f346d2e27d5b9d2b9be739c231317f8d4bcc` |
| 35 | `theorem` | [toSubgroup_le](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/tosubgroup-le--c43e331f5dbf41e5e5f53b00.md) | 257 | `result-track:c43e331f5dbf41e5e5f53b00bf60b07a0564c25dcf1577029d6f7054e812a13c` |
| 36 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/comap--1c0206d689409851d163faf0.md) | 268 | `declaration-track:1c0206d689409851d163faf032559b6a56be519c5753d5cbdc0f5cd384e6b7be` |
| 37 | `theorem` | [coe_comap](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/coe-comap--6744d55b36a3b5783ac5b6e2.md) | 274 | `result-track:6744d55b36a3b5783ac5b6e26287b398d379a1b497e9c92b615631f1dc23730c` |
| 38 | `theorem` | [toSubgroup_comap](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/tosubgroup-comap--f0f4d166da5a200bd63e7416.md) | 281 | `result-track:f0f4d166da5a200bd63e7416c262f41d539b39d17b2f37382b6a5c11c1e91370` |
| 39 | `theorem` | [mem_comap](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/mem-comap--339e7084512a488752e00bf3.md) | 288 | `result-track:339e7084512a488752e00bf3241c2742af6d015160c01c1d392409efe6a10ee6` |
| 40 | `theorem` | [comap_comap](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/comap-comap--c542a0ec3f5835458c407cd7.md) | 295 | `result-track:c542a0ec3f5835458c407cd72d8c9bd30b82f0481072a4d12165597135ab0b0e` |
| 41 | `theorem` | [isOpen_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/isopen-of-mem-nhds--e633c506198fb02a4aa7e16c.md) | 309 | `result-track:e633c506198fb02a4aa7e16c998c459096918e215d81b1aaf7d8d3eba2f39622` |
| 42 | `theorem` | [isOpen_mono](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/isopen-mono--ef801973b5812e57c579eeb0.md) | 320 | `result-track:ef801973b5812e57c579eeb0554fdb82e7e8b082ca1614d9e3496c529823e08a` |
| 43 | `theorem` | [isOpen_of_openSubgroup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/isopen-of-opensubgroup--136d607a5cddac3216f074b7.md) | 327 | `result-track:136d607a5cddac3216f074b79f5ede827ce7e66777ddf62c6cdea972d7b0116a` |
| 44 | `theorem` | [isOpen_of_one_mem_interior](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/isopen-of-one-mem-interior--13c8bc82cd4eb836df9b331e.md) | 335 | `result-track:13c8bc82cd4eb836df9b331e8809777333a238f6af05222e114e81fe0abb9554` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/instance--672b6178012733f1929cdd79.md) | 348 | `declaration-track:672b6178012733f1929cdd79b8f06eea1eb95c2f9deb39082bec4aff11ef8a78` |
| 46 | `theorem` | [toSubgroup_sup](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/tosubgroup-sup--5e3033891842b88bbb985c6f.md) | 352 | `result-track:5e3033891842b88bbb985c6f0f4906151a461e9a03ef48058d80497787f1c87a` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/instance--59a700c48b671126c9170ec5.md) | 358 | `declaration-track:59a700c48b671126c9170ec5de3f7d167887e999a995aa34fac8ba0667ef8d8f` |
| 48 | `theorem` | [isOpen_mono](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/isopen-mono--157e7e1840f2872807c36f6d.md) | 373 | `result-track:157e7e1840f2872807c36f6d1cabe4b4cf05686fbec41baf5962384bed439a03` |
| 49 | `theorem` | [isOpen_of_open_subideal](../../../../../mathematics/Topology/GeneralTopology/OpenSubgroup/Varianta136e12ac74a323353abebf12fe896ab5539877457c569f49bc71ccf14d03aae.lean/declarations/isopen-of-open-subideal--1effba39046709ee6671638e.md) | 386 | `result-track:1effba39046709ee6671638e637264b50ee5735d77dc3a50637f90bd0936c2ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
