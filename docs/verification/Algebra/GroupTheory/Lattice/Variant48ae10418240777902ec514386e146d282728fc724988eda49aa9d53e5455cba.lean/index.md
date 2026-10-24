# Verification target: GRWTSK.Algebra.GroupTheory.Lattice.Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d04a1ded8be9f5fbb6aaad209db0c1ea968efe7",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d04a1ded8be9f5fbb6aaad209db0c1ea968efe7`.

Source path: `GRWTSK/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iInter_inv](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iinter-inv--5f8447a7c8586401a81f1ed1.md) | 48 | `result-track:5f8447a7c8586401a81f1ed1719b7dd3158d3bcd4d1a97cdca987fbeafc3d407` |
| 2 | `theorem` | [sInter_inv](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/sinter-inv--11001bff3a1a4f1ce76e7fc1.md) | 52 | `result-track:11001bff3a1a4f1ce76e7fc1525b048817b8c130d23290cf64ab892c482ea75a` |
| 3 | `theorem` | [iUnion_inv](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-inv--5aa3929ea81783dd6382000c.md) | 56 | `result-track:5aa3929ea81783dd6382000c072d7f0cd941afb8f8245c4c160d4c5c003835ae` |
| 4 | `theorem` | [sUnion_inv](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/sunion-inv--084d5c0317f5638187b482f8.md) | 60 | `result-track:084d5c0317f5638187b482f898001ceb9c7c046f75faec241809d4e7811e2508` |
| 5 | `theorem` | [iUnion_mul_left_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-mul-left-image--6263a937f689a7afdb19c03c.md) | 75 | `result-track:6263a937f689a7afdb19c03cf84439c37f2b336e986d2433378e468d790fd44f` |
| 6 | `theorem` | [iUnion_mul_right_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-mul-right-image--86cd0186641744622becd01d.md) | 79 | `result-track:86cd0186641744622becd01df886d54236fe3066b303b521e20ca795e9d2ed3d` |
| 7 | `theorem` | [iUnion_mul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-mul--30bdf9c685074623ad87e8d8.md) | 83 | `result-track:30bdf9c685074623ad87e8d84bd68fc5a8ace6c1e67b8118dcb882af53a9e008` |
| 8 | `theorem` | [mul_iUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/mul-iunion--038c9e07feee98e34b8562ba.md) | 87 | `result-track:038c9e07feee98e34b8562ba9b6ddef9e0bcd17373fe3e35660865dcb2d19090` |
| 9 | `theorem` | [sUnion_mul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/sunion-mul--2ecaf2d3fe234ba226f6d894.md) | 91 | `result-track:2ecaf2d3fe234ba226f6d8945a6ef6e8e82a6aad85b64088e761933b5aee5905` |
| 10 | `theorem` | [mul_sUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/mul-sunion--6f0b42af5dba4da7b151ac28.md) | 95 | `result-track:6f0b42af5dba4da7b151ac2861c4e5498d24e7331ebab60256210ec551fc0195` |
| 11 | `theorem` | [iUnion₂_mul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-mul--b09dae1d5769e180c12c744c.md) | 99 | `result-track:b09dae1d5769e180c12c744cdee3257a62b47be6db76bba546ea374380895bb5` |
| 12 | `theorem` | [mul_iUnion₂](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/mul-iunion--7c13f2ab84dceb1851c9754c.md) | 104 | `result-track:7c13f2ab84dceb1851c9754c40a8f0d579c3e70ca8df12ffe678c1ce8a0f2f19` |
| 13 | `theorem` | [iInter_mul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iinter-mul-subset--1527eb0036e512f9813af110.md) | 109 | `result-track:1527eb0036e512f9813af110c998973875e00736e82501be94412420edfaec1a` |
| 14 | `theorem` | [mul_iInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/mul-iinter-subset--17c791e0b8ec63f25ea8aa94.md) | 113 | `result-track:17c791e0b8ec63f25ea8aa9424fc6c8581839334e58076220659806e99118fbf` |
| 15 | `lemma` | [mul_sInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/mul-sinter-subset--109668c06e3b7fb82a8ae73c.md) | 117 | `result-track:109668c06e3b7fb82a8ae73cffdf7d1568d2293c8bbe86f2164dd1b2dacf32ac` |
| 16 | `lemma` | [sInter_mul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/sinter-mul-subset--32bfbd4493b8a4b5d8499053.md) | 121 | `result-track:32bfbd4493b8a4b5d8499053072162bac6ec046ca1ef0159ffb072141541baa1` |
| 17 | `theorem` | [iInter₂_mul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iinter-mul-subset--a3f7fd0f9a16d0e36847d522.md) | 125 | `result-track:a3f7fd0f9a16d0e36847d52212a56a23a544b634c4bd0f4f9306959d33bdf55e` |
| 18 | `theorem` | [mul_iInter₂_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/mul-iinter-subset--b0e02dd930253c14277efde9.md) | 130 | `result-track:b0e02dd930253c14277efde9bc196124214d6f77b90ef2cdad20af5f97b2911c` |
| 19 | `theorem` | [iUnion_div_left_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-div-left-image--da5d85f5d42e7761397581e2.md) | 144 | `result-track:da5d85f5d42e7761397581e2d37bc8e96f241c2563612abbf4fc076cf014450c` |
| 20 | `theorem` | [iUnion_div_right_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-div-right-image--9a52d9cbdfaa566bd7fbc1ad.md) | 148 | `result-track:9a52d9cbdfaa566bd7fbc1ad30242201b106a3aaf488d2759b5ac7d71abeaad1` |
| 21 | `theorem` | [iUnion_div](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-div--ef6aad46f7d0132ddd8bce1e.md) | 152 | `result-track:ef6aad46f7d0132ddd8bce1ed60806008a137e59f41750bb34c317a546216536` |
| 22 | `theorem` | [div_iUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/div-iunion--13998741f27394bd36fc3e11.md) | 156 | `result-track:13998741f27394bd36fc3e111542407d4cee657728e399f8451c0156aa315986` |
| 23 | `theorem` | [sUnion_div](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/sunion-div--8b8fad71e5bd9ed25967d84f.md) | 160 | `result-track:8b8fad71e5bd9ed25967d84fa5b95d0cb45891b438a311aed5ebb8870b4ad753` |
| 24 | `theorem` | [div_sUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/div-sunion--4d8abc06b1e398e4f0447f20.md) | 164 | `result-track:4d8abc06b1e398e4f0447f20729a512a20e4e3edeae76d65f45d73970c9f2305` |
| 25 | `theorem` | [iUnion₂_div](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-div--a360821025969502430f6645.md) | 168 | `result-track:a360821025969502430f66451fc8c063a0a84d3e446b87be7cb0bcfb48de8f26` |
| 26 | `theorem` | [div_iUnion₂](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/div-iunion--527ac8820de17064607c49a3.md) | 173 | `result-track:527ac8820de17064607c49a30c159ca965c55e3291a44658613159bc11fbd7a7` |
| 27 | `theorem` | [iInter_div_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iinter-div-subset--7ce6cbe00d49ddbe2594a740.md) | 178 | `result-track:7ce6cbe00d49ddbe2594a740aefe5ce04b065b174b85b325f9a249dcadfe2c99` |
| 28 | `theorem` | [div_iInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/div-iinter-subset--c6e8f651674cc7b3450c5436.md) | 182 | `result-track:c6e8f651674cc7b3450c54364e72e92ab16ed272507addc139d2d37be66d4923` |
| 29 | `theorem` | [sInter_div_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/sinter-div-subset--3085c873460195d8737d1072.md) | 186 | `result-track:3085c873460195d8737d1072b51faf06c2c0855dd3da42136438e53e8d08771d` |
| 30 | `theorem` | [div_sInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/div-sinter-subset--ff6819fa1a557b455b6872b1.md) | 190 | `result-track:ff6819fa1a557b455b6872b1954d69db91a68906559233faff8969f0b411e275` |
| 31 | `theorem` | [iInter₂_div_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iinter-div-subset--14ae6963b2f96dcd2ce82812.md) | 194 | `result-track:14ae6963b2f96dcd2ce828121071829d8d6f29d07da85406f578e5d2b499228c` |
| 32 | `theorem` | [div_iInter₂_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/div-iinter-subset--ca8471d7b0c73a9d07997e3d.md) | 199 | `result-track:ca8471d7b0c73a9d07997e3da041a74732fc4edb8a89deae8ffbf93f71ea5cb6` |
| 33 | `lemma` | [iUnion_smul_left_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-smul-left-image--5b316756204f42f359ebf70d.md) | 212 | `result-track:5b316756204f42f359ebf70dfbc3e3f5f52ecf3ac89f62b5fc4d7aa9f289d12c` |
| 34 | `lemma` | [iUnion_smul_right_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-smul-right-image--795f193636f4cebc9a73708d.md) | 215 | `result-track:795f193636f4cebc9a73708d2de50f1aa3a1e293658de19c4247e1e01f792ecc` |
| 35 | `lemma` | [iUnion_smul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-smul--6c959244b94b8afabec29629.md) | 218 | `result-track:6c959244b94b8afabec296299ac7b720c9e7455cad21128e0060f6f9fb6ba1d6` |
| 36 | `lemma` | [smul_iUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-iunion--d679eaa912904ac3615c9c12.md) | 222 | `result-track:d679eaa912904ac3615c9c12e6ad3ec65d033ad74de04388482f7b5c690412e2` |
| 37 | `lemma` | [sUnion_smul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/sunion-smul--9afe5bad7e593b4a30a4f989.md) | 226 | `result-track:9afe5bad7e593b4a30a4f98915ae2e2a8ea16c704a568c19e341210c1a714f48` |
| 38 | `lemma` | [smul_sUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-sunion--6b6eb456fef08cb829ef8406.md) | 230 | `result-track:6b6eb456fef08cb829ef8406dc439ca1af91eda94ae38506b11aad315ec8d627` |
| 39 | `lemma` | [iUnion₂_smul](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-smul--4d265c74a2d4a3cdbe6b16e3.md) | 234 | `result-track:4d265c74a2d4a3cdbe6b16e39418afedfc49c69fdaed37d0fa124b698632ff8f` |
| 40 | `lemma` | [smul_iUnion₂](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-iunion--73a64bd372cec291e5b80cb7.md) | 238 | `result-track:73a64bd372cec291e5b80cb7cb08ecc924d0ef155ab4dba6b8e4326d4f8ccbd8` |
| 41 | `lemma` | [iInter_smul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iinter-smul-subset--2b8f724115fc94321ae59487.md) | 242 | `result-track:2b8f724115fc94321ae59487ea6d534c543eed4f7340f4eb10743b63f55ae968` |
| 42 | `lemma` | [smul_iInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-iinter-subset--35995c7db02ee88a56b92c51.md) | 246 | `result-track:35995c7db02ee88a56b92c51c1439882a43363ccd7ffc33d95af3fa9d50c61ad` |
| 43 | `lemma` | [sInter_smul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/sinter-smul-subset--26e926f640c5d344bfa1689e.md) | 250 | `result-track:26e926f640c5d344bfa1689e59182b6fdd11d9ee4d5bab57082cb36070990f95` |
| 44 | `lemma` | [smul_sInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-sinter-subset--7945268669885a0df215a7a8.md) | 254 | `result-track:7945268669885a0df215a7a8914bed1e7c1586eb4ef2c7988ef62c8d30e873d1` |
| 45 | `lemma` | [iInter₂_smul_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iinter-smul-subset--9d565ccf25482ade124e390d.md) | 258 | `result-track:9d565ccf25482ade124e390d666ca59459a49cbdd77ce94667d14229882e8534` |
| 46 | `lemma` | [smul_iInter₂_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-iinter-subset--86e15f62e97f2b8b8b08ef97.md) | 262 | `result-track:86e15f62e97f2b8b8b08ef972ad93524d15decc04afe172b640f71368682c2aa` |
| 47 | `lemma` | [iUnion_smul_set](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-smul-set--cb86377c5e89c6278bbcbcb3.md) | 266 | `result-track:cb86377c5e89c6278bbcbcb3fc7ea249f7e57345ea27cfc904096a66043dff55` |
| 48 | `lemma` | [smul_set_iUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-set-iunion--a948fe0179b07f52c4efc932.md) | 274 | `result-track:a948fe0179b07f52c4efc93221fcf5f6f6cb7f713dfa71e65b1c7ffcdd7030dc` |
| 49 | `lemma` | [smul_set_iUnion₂](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-set-iunion--8302db3ede7b23d4b43c104c.md) | 278 | `result-track:8302db3ede7b23d4b43c104cd3aea436bc151a5c7dbfbedeb1f0164c7c4eb2f7` |
| 50 | `lemma` | [smul_set_sUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-set-sunion--fb1bfcad8cffe6a7aae13f34.md) | 282 | `result-track:fb1bfcad8cffe6a7aae13f340884912bbda45f358417f0192d39428727ae94d9` |
| 51 | `lemma` | [smul_set_iInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-set-iinter-subset--da5c9d9e0b3a1b3b74f0365a.md) | 286 | `result-track:da5c9d9e0b3a1b3b74f0365a8808fbb674f3c8625301d8a5a2d356471b2e955e` |
| 52 | `lemma` | [smul_set_sInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-set-sinter-subset--d08a90ff19a2cef02d72abfa.md) | 290 | `result-track:d08a90ff19a2cef02d72abfab24c275de6dd172139309849f0c030734a8cef50` |
| 53 | `lemma` | [smul_set_iInter₂_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/smul-set-iinter-subset--d57608178a3d79b33a16458b.md) | 294 | `result-track:d57608178a3d79b33a16458ba518e34983916c089b8db1e7cdf330005c13c3e5` |
| 54 | `lemma` | [iUnion_vsub_left_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-vsub-left-image--89c97800c3a3798b1b4d1fb8.md) | 304 | `result-track:89c97800c3a3798b1b4d1fb86fb27037bbcd0ed49d14b0819da15e95f524089d` |
| 55 | `lemma` | [iUnion_vsub_right_image](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-vsub-right-image--85f66901a94f82a4d09b01dc.md) | 305 | `result-track:85f66901a94f82a4d09b01dc96e474ec6c992c4d25cb716bf6a7bcf4a9dc1030` |
| 56 | `lemma` | [iUnion_vsub](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-vsub--90e19d9c6371312b7478f4d4.md) | 307 | `result-track:90e19d9c6371312b7478f4d4af29a32482b1869c1daced245547395079faccb8` |
| 57 | `lemma` | [vsub_iUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/vsub-iunion--f4efdc931e5dce298b88a739.md) | 310 | `result-track:f4efdc931e5dce298b88a7398f40c88875a398bbe887fe55e152d2e95be53f0e` |
| 58 | `lemma` | [sUnion_vsub](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/sunion-vsub--07a70b251b0847cac096b9e3.md) | 313 | `result-track:07a70b251b0847cac096b9e3a4a952fc04a7431e9c0f5bde3f3967b548cb4081` |
| 59 | `lemma` | [vsub_sUnion](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/vsub-sunion--6278e1a811fdad261e59cf6a.md) | 316 | `result-track:6278e1a811fdad261e59cf6ab3234c5dc92ebf376c781cf145403f1152c87f6c` |
| 60 | `lemma` | [iUnion₂_vsub](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iunion-vsub--b68d8e0dd74fecdc102873fa.md) | 319 | `result-track:b68d8e0dd74fecdc102873fa7d8d8d22f7d8418b9f69029625ba99838af49c33` |
| 61 | `lemma` | [vsub_iUnion₂](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/vsub-iunion--d5602cb81fc829a257e13c6a.md) | 322 | `result-track:d5602cb81fc829a257e13c6aa27554fee6f2e186b0d825c25a8ad3a6d85de970` |
| 62 | `lemma` | [iInter_vsub_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iinter-vsub-subset--abd19aec06761b28fbfd78f6.md) | 325 | `result-track:abd19aec06761b28fbfd78f65743444eaedf66bfa2b7d8654ba9e4d7d965281c` |
| 63 | `lemma` | [vsub_iInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/vsub-iinter-subset--19d4ea07feedb83b81b84907.md) | 328 | `result-track:19d4ea07feedb83b81b8490749ad162a06babb33a525c0145bd183bce08bb8b0` |
| 64 | `lemma` | [sInter_vsub_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/sinter-vsub-subset--dd02090178763f80e8286689.md) | 331 | `result-track:dd02090178763f80e8286689454b83d329da9b50831109471168ab0daef97aab` |
| 65 | `lemma` | [vsub_sInter_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/vsub-sinter-subset--357d7aad262480ffc523c686.md) | 334 | `result-track:357d7aad262480ffc523c6865e306ba196ebd1605512417e207f900d0be8a29a` |
| 66 | `lemma` | [iInter₂_vsub_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/iinter-vsub-subset--4eb1c5329962d0317bd9ab1c.md) | 337 | `result-track:4eb1c5329962d0317bd9ab1cc506429d9bf296c592caf4909e9f63dc44a82de3` |
| 67 | `lemma` | [vsub_iInter₂_subset](../../../../../mathematics/Algebra/GroupTheory/Lattice/Variant48ae10418240777902ec514386e146d282728fc724988eda49aa9d53e5455cba.lean/declarations/vsub-iinter-subset--1994058fdd9181e686041609.md) | 340 | `result-track:1994058fdd9181e68604160930fec09920cd2a2da1d4dbf4858f88c4df49219a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
