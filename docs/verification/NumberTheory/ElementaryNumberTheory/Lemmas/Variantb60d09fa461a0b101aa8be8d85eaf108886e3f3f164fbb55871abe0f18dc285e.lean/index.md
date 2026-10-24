# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Lemmas.Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b801c7bd42cb0b235e03f51057be1e2228cb16e1",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b801c7bd42cb0b235e03f51057be1e2228cb16e1`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Div` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [num_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/num-dvd--2ea273d371b71c295a613d4c.md) | 31 | `result-track:2ea273d371b71c295a613d4ca2065d6811259b2945344edb2253d33d8d4c1d03` |
| 2 | `theorem` | [den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/den-dvd--566add96138e0bfac93e0aa4.md) | 39 | `result-track:566add96138e0bfac93e0aa475307604db6f8d6d1dc6545b6db808491a3a2959` |
| 3 | `theorem` | [num_den_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/num-den-mk--0c114419683fd06ea244d58f.md) | 47 | `result-track:0c114419683fd06ea244d58fbaeddddbdf0055ed19503844ed9557c094528b51` |
| 4 | `theorem` | [num_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/num-mk--f88f952bd3cdffbfada8f4a0.md) | 68 | `result-track:f88f952bd3cdffbfada8f4a089a558d13798cd5f6cfb6bf4688a00fe5a24f845` |
| 5 | `theorem` | [den_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/den-mk--8e133d8bb612d14dcabb82ec.md) | 75 | `result-track:8e133d8bb612d14dcabb82ecb24548dec6d4258dfc05cf005ee42c8d854a4948` |
| 6 | `theorem` | [add_den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/add-den-dvd--8dea9fedb6cfe91fc2cf6b9e.md) | 82 | `result-track:8dea9fedb6cfe91fc2cf6b9ed73894eb7a1847434e8be6b90da0cf2897fe8984` |
| 7 | `theorem` | [mul_den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/mul-den-dvd--81e10675899efecd923bbdae.md) | 88 | `result-track:81e10675899efecd923bbdae6e6601e087a0dc68ca54e754c0419aa66c83d9b4` |
| 8 | `theorem` | [mul_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/mul-num--90601dedcfaffcc01b950fd7.md) | 94 | `result-track:90601dedcfaffcc01b950fd79293d358a1adb1d25995f7fb0fa99bebbb3d73ff` |
| 9 | `theorem` | [mul_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/mul-den--1abfdcec594024812f102a58.md) | 99 | `result-track:1abfdcec594024812f102a580a4b3c8f51f84efeead61d66623b81d0cef9adf0` |
| 10 | `theorem` | [mul_self_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/mul-self-num--848fbe781100fc75b28b7bfc.md) | 105 | `result-track:848fbe781100fc75b28b7bfcc3cae08710e09a750a055d2df4c92bb1206bc578` |
| 11 | `theorem` | [mul_self_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/mul-self-den--1a9b26ed2fca34159219f436.md) | 110 | `result-track:1a9b26ed2fca34159219f436aa532ee20ca0fc9f6f85e6fa857672117840e5b7` |
| 12 | `theorem` | [add_num_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/add-num-den--ef41b575bb5069a66f3f6fdd.md) | 115 | `result-track:ef41b575bb5069a66f3f6fdd99eaddea877ed27bafec3d78887e33dfd5a3b930` |
| 13 | `theorem` | [exists_eq_mul_div_num_and_eq_mul_div_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/exists-eq-mul-div-num-and-eq-mul-div-den--d351e2109da6caf87858bb74.md) | 125 | `result-track:d351e2109da6caf87858bb74109a46e13f0aeeadeeddc89413d999f7148aa907` |
| 14 | `theorem` | [mul_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/mul-num-den--f70b6dd86c3c1638e5ec9254.md) | 131 | `result-track:f70b6dd86c3c1638e5ec9254e01c480679de7997cd407196dc273c0eed918eb8` |
| 15 | `theorem` | [add_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/add-num-den--b49a9e009d770132b49b23d5.md) | 153 | `result-track:b49a9e009d770132b49b23d5f821f846cd66e8c94d7defc178caaa16b13914b0` |
| 16 | `theorem` | [substr_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/substr-num-den--8faf1cae801580c14840c1aa.md) | 175 | `result-track:8faf1cae801580c14840c1aad377019df5831a1f922ff10202326115891f96e7` |
| 17 | `theorem` | [inv_def''](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/inv-def--4540a8745263628c3d297c60.md) | 183 | `result-track:4540a8745263628c3d297c60d070fa0e40d529c3bd7a48420659c486401d2ddc` |
| 18 | `theorem` | [inv_neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/inv-neg--2d895008f0380509ab5372c5.md) | 188 | `result-track:2d895008f0380509ab5372c5954f230ce9eea07778f6af347cff014e49287940` |
| 19 | `theorem` | [mul_den_eq_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/mul-den-eq-num--8139a339b4750648a6bd1891.md) | 194 | `result-track:8139a339b4750648a6bd189178d40c71df0ac582accb2ce9ce222320d880c915` |
| 20 | `theorem` | [den_div_cast_eq_one_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/den-div-cast-eq-one-iff--756bdf9493c5436efb0a5342.md) | 202 | `result-track:756bdf9493c5436efb0a53424eaae10fee58291b78e3a22987c3bf697b3a378c` |
| 21 | `theorem` | [num_div_eq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/num-div-eq-of-coprime--e47d15515b275620a64d43c7.md) | 216 | `result-track:e47d15515b275620a64d43c72be8ba86a382934e652866730de04bc861b9ba89` |
| 22 | `theorem` | [den_div_eq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/den-div-eq-of-coprime--ecd8bda587a0a2a60e8908fa.md) | 223 | `result-track:ecd8bda587a0a2a60e8908faa8c2a9ed16006ecd0f665782748968ae070d1279` |
| 23 | `theorem` | [div_int_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/div-int-inj--7d5913059906f0474312c5da.md) | 230 | `result-track:7d5913059906f0474312c5da28cc3e8f4cc071a08bedd17e45a612618b277185` |
| 24 | `theorem` | [coe_int_div_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/coe-int-div-self--e96eb65f01dc348ccae04ec6.md) | 238 | `result-track:e96eb65f01dc348ccae04ec6f70d58df75f75750815d2d16bfa1c99404dd64c0` |
| 25 | `theorem` | [coe_nat_div_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/coe-nat-div-self--2ab424a544312c7722d58e4b.md) | 247 | `result-track:2ab424a544312c7722d58e4b5cd786e59b1927f156b7271713e5b68c062fa004` |
| 26 | `theorem` | [coe_int_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/coe-int-div--048beb9536aabac5437b02fa.md) | 251 | `result-track:048beb9536aabac5437b02fa7c07a5b9fbf4cde2bc06f44f0b2971f4b2b17d8f` |
| 27 | `theorem` | [coe_nat_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/coe-nat-div--e9ae2328ae3a616da82eae79.md) | 257 | `result-track:e9ae2328ae3a616da82eae79d2d59bf2b86a3029d5825d9a5677c8b1f2cae8d6` |
| 28 | `theorem` | [inv_coe_int_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/inv-coe-int-num-of-pos--4d34d561e15854f1c814b3dd.md) | 263 | `result-track:4d34d561e15854f1c814b3dddae699e561bf6290743c9a6c329258d2d45d3137` |
| 29 | `theorem` | [inv_coe_nat_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/inv-coe-nat-num-of-pos--d63d1a137d49468ea6d9da89.md) | 270 | `result-track:d63d1a137d49468ea6d9da8926ce973d7134a8eb4f72a1a387575f87d6309c8c` |
| 30 | `theorem` | [inv_coe_int_den_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/inv-coe-int-den-of-pos--6a47c45979a8f89d989d2459.md) | 274 | `result-track:6a47c45979a8f89d989d24594749085be58e53347a9e2de5dccf22726e8975a3` |
| 31 | `theorem` | [inv_coe_nat_den_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/inv-coe-nat-den-of-pos--a780ac2ea6b8ec99504cb9c9.md) | 281 | `result-track:a780ac2ea6b8ec99504cb9c9eaceb46414e6dd1f0c4c7f7d0e8c2e3d96c184b5` |
| 32 | `theorem` | [inv_coe_int_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/inv-coe-int-num--147127dda6814c580cfa0903.md) | 287 | `result-track:147127dda6814c580cfa09030645224bd8d85f91ed6e5915c1f4b9bc31979701` |
| 33 | `theorem` | [inv_coe_nat_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/inv-coe-nat-num--ca9f542f501fe7f23beb17d0.md) | 295 | `result-track:ca9f542f501fe7f23beb17d0d2ab890c40daa59178afd8999d7c8428f932957d` |
| 34 | `theorem` | [inv_coe_int_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/inv-coe-int-den--64165f4f9105d4000dda2ec4.md) | 300 | `result-track:64165f4f9105d4000dda2ec4bd41b9ceef4e9c2502e7f9dfd820c51c97850cbd` |
| 35 | `theorem` | [inv_coe_nat_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/inv-coe-nat-den--9092c9d2e59c956942c578ac.md) | 307 | `result-track:9092c9d2e59c956942c578ac256df8be5942cd7dea7d73f344737e1e96018dbf` |
| 36 | `theorem` | [«forall»](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/forall--7272e560be316683825c6e22.md) | 311 | `result-track:7272e560be316683825c6e2257eaa5d92d27743e0418eaafe31005145b087a31` |
| 37 | `theorem` | [«exists»](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/exists--5868e77ca560fefa307292e6.md) | 318 | `result-track:5868e77ca560fefa307292e629875b66821ad829a625b648949f8f4dbb75aff1` |
| 38 | `def` | [pnatDen](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/pnatden--bf540685702e2f6967206e84.md) | 330 | `declaration-track:bf540685702e2f6967206e84ba6f8843fe57df5ea520fc443ce53e9f5d79168d` |
| 39 | `theorem` | [coe_pnatDen](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/coe-pnatden--f72f54d402da5c97023c5595.md) | 335 | `result-track:f72f54d402da5c97023c5595b0f2337e9fafdb9eaf2e4e181df3f9df8bd50dda` |
| 40 | `theorem` | [pnatDen_eq_iff_den_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/pnatden-eq-iff-den-eq--f2295f2f553c8973ab7badb4.md) | 341 | `result-track:f2295f2f553c8973ab7badb4d365cb12ffc7ede57adc147799d31c82a667c49a` |
| 41 | `theorem` | [pnatDen_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/pnatden-one--48d0f8c9c5941eaff889b692.md) | 346 | `result-track:48d0f8c9c5941eaff889b6921406002542994e0e9469a2a91189ccb27ea765ea` |
| 42 | `theorem` | [pnatDen_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantb60d09fa461a0b101aa8be8d85eaf108886e3f3f164fbb55871abe0f18dc285e.lean/declarations/pnatden-zero--1149865de251e1400e7cabff.md) | 351 | `result-track:1149865de251e1400e7cabff8a41007453adb3d2518d2ace026257ae4461ba6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
