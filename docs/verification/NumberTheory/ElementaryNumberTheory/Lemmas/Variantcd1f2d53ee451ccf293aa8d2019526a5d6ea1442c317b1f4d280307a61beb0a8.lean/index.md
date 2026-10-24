# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Lemmas.Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66077b1e0338e339e3217ada594ed979aff95f74",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66077b1e0338e339e3217ada594ed979aff95f74`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Parity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [num_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/num-dvd--066247f9473a8d4b00d5d1c8.md) | 27 | `result-track:066247f9473a8d4b00d5d1c881491c25dace71bd51ed7dd4bb41dab659d45a32` |
| 2 | `theorem` | [den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/den-dvd--21773397459051d33de34481.md) | 35 | `result-track:21773397459051d33de34481349bc557802701bf8239cb3ecb445323820886bb` |
| 3 | `theorem` | [num_den_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/num-den-mk--3cb0dfcec5a3b3c0c36bb7eb.md) | 42 | `result-track:3cb0dfcec5a3b3c0c36bb7eb6a62ad8ae77489294e84780d679af37eb4d85d90` |
| 4 | `theorem` | [num_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/num-mk--761ece6dfff5210ab6b316c8.md) | 59 | `result-track:761ece6dfff5210ab6b316c8e4612f886b6296d280b5e0df2f37e6473ec12ae2` |
| 5 | `theorem` | [den_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/den-mk--f97e2acb70cf1c1ee29a33b6.md) | 66 | `result-track:f97e2acb70cf1c1ee29a33b671dbb84783c3eeec6816aaddb28ca0b46e11f2ac` |
| 6 | `theorem` | [add_den_dvd_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/add-den-dvd-lcm--b88959d8578e88f21c12839c.md) | 73 | `result-track:b88959d8578e88f21c12839c9d082510d27a56c9aa39050a73fc9e56bd6715f0` |
| 7 | `theorem` | [add_den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/add-den-dvd--66e7ec1876dd68162d0cb1bb.md) | 83 | `result-track:66e7ec1876dd68162d0cb1bb27d4b497d45e28ad566b2d987209ab66adeffa32` |
| 8 | `theorem` | [mul_den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/mul-den-dvd--fda7a08d6c0e7190013eb56e.md) | 88 | `result-track:fda7a08d6c0e7190013eb56e99883d8bc1ef6c93eff36831045fcd7fe5f03b4b` |
| 9 | `theorem` | [mul_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/mul-num--4ca2aac9981380e88227c327.md) | 93 | `result-track:4ca2aac9981380e88227c32712cdf9861a342158e9be99cecfb072260defb2fa` |
| 10 | `theorem` | [mul_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/mul-den--e13316d16f04bd8e4966aa1a.md) | 97 | `result-track:e13316d16f04bd8e4966aa1a22d68d34f4f16298e63a50d959b40701752f2adb` |
| 11 | `theorem` | [mul_self_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/mul-self-num--bca61f6b5d8771dc801be00c.md) | 102 | `result-track:bca61f6b5d8771dc801be00c8f385d4460b86e18765210bc2438a08e0d335dde` |
| 12 | `theorem` | [mul_self_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/mul-self-den--8d4cf7848dec25e7520b8c77.md) | 106 | `result-track:8d4cf7848dec25e7520b8c77680174fddfd006ec87803a0f979e3f6d22a3dc8d` |
| 13 | `theorem` | [add_num_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/add-num-den--ebcd88c890543de96c746078.md) | 110 | `result-track:ebcd88c890543de96c746078917f3e70f4345c07c92211c835bc6f88227a0474` |
| 14 | `theorem` | [isSquare_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/issquare-iff--a40d650d43cd40edf6bb167b.md) | 118 | `result-track:a40d650d43cd40edf6bb167bc0afe23d5ffa53ef320ceba47026cf495f4c1b27` |
| 15 | `theorem` | [isSquare_natCast_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/issquare-natcast-iff--34f8f804a64221d9d3441923.md) | 128 | `result-track:34f8f804a64221d9d344192310c1278bdbbc63233d2e57dcf59a622c8589eba8` |
| 16 | `theorem` | [isSquare_intCast_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/issquare-intcast-iff--446fef85e5d17b4a3ed1e07d.md) | 132 | `result-track:446fef85e5d17b4a3ed1e07d6ff8badc69d8b7ae2faf57d8ecc074b3e91a95fd` |
| 17 | `theorem` | [isSquare_ofNat_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/issquare-ofnat-iff--7567769befb04f5f5c26e83b.md) | 136 | `result-track:7567769befb04f5f5c26e83b9165ed5eca8716387a1996d58e3b1129334eff7d` |
| 18 | `theorem` | [exists_eq_mul_div_num_and_eq_mul_div_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/exists-eq-mul-div-num-and-eq-mul-div-den--b68264dae36f41f74ad3541a.md) | 142 | `result-track:b68264dae36f41f74ad3541acdd4e74f18a89c0a6c48f1c124252ee9e7571ad4` |
| 19 | `theorem` | [mul_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/mul-num-den--ef6ce62cfd23d5353cf56fc4.md) | 147 | `result-track:ef6ce62cfd23d5353cf56fc4337a3def0e6c44fe5d935f666ead88a4708198ad` |
| 20 | `theorem` | [add_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/add-num-den--26eaf0018da36d10eb6c0aa4.md) | 161 | `result-track:26eaf0018da36d10eb6c0aa463cfaccd3cec69606ff9c0313b63f4ceb87f4f24` |
| 21 | `theorem` | [substr_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/substr-num-den--a94e721fb334450d41e9d95d.md) | 180 | `result-track:a94e721fb334450d41e9d95d9a51421d0527354c9d672e3e361de80b362fc077` |
| 22 | `theorem` | [inv_neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/inv-neg--e46d9e22276b44deaa9cdcf4.md) | 187 | `result-track:e46d9e22276b44deaa9cdcf4cf7329bdf19c6c1df85d2a6571ca01e9e0d51c76` |
| 23 | `theorem` | [num_div_eq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/num-div-eq-of-coprime--5f5c8266623fd486a5d3b5c1.md) | 191 | `result-track:5f5c8266623fd486a5d3b5c1e8d2fc896b4bf1ae2062d877c05ff8a938f4344a` |
| 24 | `theorem` | [den_div_eq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/den-div-eq-of-coprime--09941d2f49a5a5ef6b338869.md) | 197 | `result-track:09941d2f49a5a5ef6b3388698a397e462fec499b3531b9441f7d5bf11570f5fc` |
| 25 | `theorem` | [div_int_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/div-int-inj--8ed471d2fddfb3fb389ce939.md) | 203 | `result-track:8ed471d2fddfb3fb389ce939218eb3837371f652a6de8a28e79bf2e811f85b88` |
| 26 | `theorem` | [intCast_div_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/intcast-div-self--f5ef7530f712c197c32881af.md) | 210 | `result-track:f5ef7530f712c197c32881afa8a17da4f76685a31740a9c25af33483169eb581` |
| 27 | `theorem` | [natCast_div_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/natcast-div-self--f74b01a27239a490524eab07.md) | 218 | `result-track:f74b01a27239a490524eab07f32964e64f77c2f7944b33f001e0a523c0292c15` |
| 28 | `theorem` | [intCast_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/intcast-div--4b50e52193d78a45f8ad5e34.md) | 221 | `result-track:4b50e52193d78a45f8ad5e344e505d32a69066fdaf56e6270ff714f12a6eb7a3` |
| 29 | `theorem` | [natCast_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/natcast-div--0f80ed913de66de300f2464c.md) | 226 | `result-track:0f80ed913de66de300f2464cd853b6e342eb46392fe11c5b26e8c06ca8e6ad4b` |
| 30 | `theorem` | [den_div_intCast_eq_one_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/den-div-intcast-eq-one-iff--b28ef478eb96f51ce4c444f8.md) | 229 | `result-track:b28ef478eb96f51ce4c444f88c21aee5d3ffc7c45a5bb54b85901c323c93415a` |
| 31 | `theorem` | [den_div_natCast_eq_one_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/den-div-natcast-eq-one-iff--1bd5b14e3f14952dba5d3425.md) | 236 | `result-track:1bd5b14e3f14952dba5d3425dfa34e9f9ab5925126bf40f698341d1b47526591` |
| 32 | `theorem` | [inv_intCast_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/inv-intcast-num-of-pos--1739a9982f4ebb66607a3361.md) | 239 | `result-track:1739a9982f4ebb66607a3361d39a2b485830de15f1011644a32b50e797825049` |
| 33 | `theorem` | [inv_natCast_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/inv-natcast-num-of-pos--c7979dbca52ee01ad12c53c0.md) | 245 | `result-track:c7979dbca52ee01ad12c53c01f060861fdc408c684b1d252cbff9daf13105036` |
| 34 | `theorem` | [inv_intCast_den_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/inv-intcast-den-of-pos--8c12067353180243650cbd3c.md) | 248 | `result-track:8c12067353180243650cbd3c80e6bf239c1543c90e269316eb80d702dd83be8c` |
| 35 | `theorem` | [inv_natCast_den_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/inv-natcast-den-of-pos--13f1b0a3bda77f86daf6346c.md) | 254 | `result-track:13f1b0a3bda77f86daf6346c0831841b08b579bf50f47c6c89e801ef39887940` |
| 36 | `theorem` | [inv_intCast_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/inv-intcast-num--f69a2740cec4e1346418ad5d.md) | 259 | `result-track:f69a2740cec4e1346418ad5dbd7829379e77fb3b7b81946d77a493994c869edf` |
| 37 | `theorem` | [inv_natCast_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/inv-natcast-num--f54fc5dd3a25cffa04a45e66.md) | 268 | `result-track:f54fc5dd3a25cffa04a45e6610f63aaceb25fb4d2d68f123b8143caa6a2bcb5c` |
| 38 | `theorem` | [inv_ofNat_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/inv-ofnat-num--98ea2e7589d14664e87f122d.md) | 272 | `result-track:98ea2e7589d14664e87f122d43267e105cbee155fe9e9daf9cee53f109143a13` |
| 39 | `theorem` | [inv_intCast_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/inv-intcast-den--e0d7783ade61c04b11cc9441.md) | 276 | `result-track:e0d7783ade61c04b11cc94416d54d77993720567748fb0ac5f2c34f0af48fe3d` |
| 40 | `theorem` | [inv_natCast_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/inv-natcast-den--416700b740686e280c212da3.md) | 290 | `result-track:416700b740686e280c212da3c305e4716c69f1d2ab93801f51954ffdec6d5902` |
| 41 | `theorem` | [inv_ofNat_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/inv-ofnat-den--59bb80aa73e3fc4be95454a5.md) | 294 | `result-track:59bb80aa73e3fc4be95454a5f8173a9b11b5b4e8f48868bb05117a7c18520bea` |
| 42 | `theorem` | [«forall»](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/forall--833da948c0790aaa370992fb.md) | 298 | `result-track:833da948c0790aaa370992fb2693444bb457d9216ce45fa53beb718722b5b507` |
| 43 | `theorem` | [«exists»](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/exists--8142635508df0b6c98cc6a95.md) | 304 | `result-track:8142635508df0b6c98cc6a95196392f4506e66bb329e82f3635675205057c330` |
| 44 | `def` | [pnatDen](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/pnatden--73e879a7d7e11bdae1a40d48.md) | 315 | `declaration-track:73e879a7d7e11bdae1a40d48d11e4a03128a628cb68b9ae04fb2b590c60c6dd5` |
| 45 | `theorem` | [coe_pnatDen](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/coe-pnatden--5a16e7c9d0c3e777905f74e3.md) | 319 | `result-track:5a16e7c9d0c3e777905f74e38259c65a2d5427ba7028efac82b61e28fc4f92b5` |
| 46 | `theorem` | [pnatDen_eq_iff_den_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/pnatden-eq-iff-den-eq--068161530dff31fcbf439516.md) | 322 | `result-track:068161530dff31fcbf439516afbab35cd9bae15c3f8a45f54a305031731a88a6` |
| 47 | `theorem` | [pnatDen_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/pnatden-one--09470afec9a39af578659205.md) | 326 | `result-track:09470afec9a39af57865920516824349f2ec88cc0ca7c6a06d1cb99267c58147` |
| 48 | `theorem` | [pnatDen_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/declarations/pnatden-zero--1519802df3c324a225377d0c.md) | 330 | `result-track:1519802df3c324a225377d0c85902d2c3df6a29b0ab227d21465451348070e4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
