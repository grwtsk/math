# Verification target: GRWTSK.Algebra.Basic.Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b17fb595662cb629674f210e3e78e690cb9590a2",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b17fb595662cb629674f210e3e78e690cb9590a2`.

Source path: `GRWTSK/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Int.LemmasAux` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Semiring](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/semiring--b57e3702f5546fa2a1d19243.md) | 56 | `declaration-track:b57e3702f5546fa2a1d19243b2b610b41338e9a4418a6b71b7b69b8ddd26eda6` |
| 2 | `class` | [Ring](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/ring--2ec80a23963808505c0f5943.md) | 113 | `declaration-track:2ec80a23963808505c0f5943f456d51ffd38d6c7b010ae41087091d4f8fcea73` |
| 3 | `class` | [CommSemiring](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/commsemiring--fba6f26cfd24352591a98ec2.md) | 138 | `declaration-track:fba6f26cfd24352591a98ec239338603d9c1639b2736156db150273fc72c2841` |
| 4 | `class` | [CommRing](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/commring--54565b6c2654644204d7dab0.md) | 148 | `declaration-track:54565b6c2654644204d7dab01e0a125bef836a041b711439c8183bd8ed3b5d41` |
| 5 | `example` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/example--81331d5d10ba223824880ba1.md) | 162 | `declaration-track:81331d5d10ba223824880ba114691df42da1c9a8251f2aec0dac0ae998c13e6f` |
| 6 | `theorem` | [natCast_eq_ofNat](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-eq-ofnat--c9dd418e35c64f474b67e06e.md) | 170 | `result-track:c9dd418e35c64f474b67e06eefa80ee7262545e06c75fc13b61c0407b969d8d5` |
| 7 | `theorem` | [natCast_zero](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-zero--ede2dd7e8a12e7f7c0acc5aa.md) | 173 | `result-track:ede2dd7e8a12e7f7c0acc5aa83a39ef6837ab1fd791c90b4ad5823dafe3b5ae1` |
| 8 | `theorem` | [natCast_one](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-one--d2aa27e323caf9dac75d27c9.md) | 175 | `result-track:d2aa27e323caf9dac75d27c9d8bb842a4909e94f1af4dab44e1dceb6db5b6e03` |
| 9 | `theorem` | [ofNat_add](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/ofnat-add--27f3ca7d807627da369b83df.md) | 177 | `result-track:27f3ca7d807627da369b83df94b74e8373fddf9532fb764c31a1c641a4f471c3` |
| 10 | `instance` | [toNatModule](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/tonatmodule--b1ce40e02af351618d80ab8c.md) | 182 | `declaration-track:b1ce40e02af351618d80ab8c34da159ec2088f87a372363a37013b1a976780ee` |
| 11 | `theorem` | [natCast_add](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-add--93c1815dc40164b57d8dbe19.md) | 188 | `result-track:93c1815dc40164b57d8dbe19316309de67c7bfa05322fcd4495f59583b6ea119` |
| 12 | `theorem` | [natCast_succ](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-succ--a898514784f8e5fb2e8a5a3d.md) | 190 | `result-track:a898514784f8e5fb2e8a5a3d67b6f0764312138fd4434f42244637a0ed87de41` |
| 13 | `theorem` | [ofNat_mul](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/ofnat-mul--ad56a910dfa429e55919b4d9.md) | 193 | `result-track:ad56a910dfa429e55919b4d9ade1928393c7205a9b7140001324c2f2d8bfd2f9` |
| 14 | `theorem` | [natCast_mul](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-mul--8a575ec953c4081e42cdc819.md) | 198 | `result-track:8a575ec953c4081e42cdc819895d735b7d6f70cde0700d5ded65d3f0f8632108` |
| 15 | `theorem` | [natCast_mul_comm](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-mul-comm--9547b91f2f7afe8142a4e539.md) | 201 | `result-track:9547b91f2f7afe8142a4e539031fe7c5a3b5e606a853779245421c48c53d410c` |
| 16 | `theorem` | [natCast_mul_left_comm](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-mul-left-comm--6f40fa0f750d0b9e7c20d997.md) | 208 | `result-track:6f40fa0f750d0b9e7c20d997c459689eacd7d11f6e75614903cf7707c347476a` |
| 17 | `theorem` | [pow_one](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/pow-one--27876c2955a306e3680837f1.md) | 215 | `result-track:27876c2955a306e3680837f17686f143e73ac6d91b287a08a7418ab2b80db4b2` |
| 18 | `theorem` | [pow_two](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/pow-two--9fbcda471bda006955b3aad3.md) | 218 | `result-track:9fbcda471bda006955b3aad316533a24be8b52d588a9ef1776a4a8eaea3b4fa3` |
| 19 | `theorem` | [pow_add](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/pow-add--8ee08be6927cfac1c5794f7f.md) | 221 | `result-track:8ee08be6927cfac1c5794f7f40f0cae4a523eee72a7cf14be341723aa4bb06cd` |
| 20 | `theorem` | [pow_add_congr](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/pow-add-congr--f9d776744cac13669bac2a72.md) | 226 | `result-track:f9d776744cac13669bac2a7218d75de08c1d2d9540e728a09452173cae23af70` |
| 21 | `theorem` | [one_pow](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/one-pow--9f7703d48b5555734f384f5f.md) | 229 | `result-track:9f7703d48b5555734f384f5f08bf387a68106ffb30d7b2365c1631f43a05a1db` |
| 22 | `theorem` | [natCast_pow](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-pow--a67cbff8f732949b34b0da73.md) | 234 | `result-track:a67cbff8f732949b34b0da73393c104d13fb979751f974fadf1f398162a066fc` |
| 23 | `theorem` | [nsmul_eq_ofNat_mul](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/nsmul-eq-ofnat-mul--e625049bb862aec63a0a22e9.md) | 239 | `result-track:e625049bb862aec63a0a22e91db03180b22bcfae99b4b0c936666866a235f2ff` |
| 24 | `theorem` | [intCast_natCast](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-natcast--ba4fba6f22a0bfb3a9c95ebe.md) | 251 | `result-track:ba4fba6f22a0bfb3a9c95ebe30b19f13bcd2d548cccdd46cd347023dafd998bf` |
| 25 | `instance` | [toAddCommGroup](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/toaddcommgroup--95b05ca6b24fdf105aa739ed.md) | 255 | `declaration-track:95b05ca6b24fdf105aa739edb3e72cbd630be61bf0434a215142507cbf7a16fa` |
| 26 | `theorem` | [intCast_zero](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-zero--440046a9a8a94eb983d78c1a.md) | 258 | `result-track:440046a9a8a94eb983d78c1a63199b0acc458cc4cf63eab66f832c89375de990` |
| 27 | `theorem` | [intCast_one](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-one--0b43f5d80357c81da7c5286d.md) | 260 | `result-track:0b43f5d80357c81da7c5286dc9421830eb6b0e707edb71854eadb847226c9679` |
| 28 | `theorem` | [intCast_neg_one](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-neg-one--51bf36647d99be681a4ecb3e.md) | 261 | `result-track:51bf36647d99be681a4ecb3e39fbf309bd939e49605d3a32d8405527c760b09c` |
| 29 | `theorem` | [intCast_natCast_add_one](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-natcast-add-one--5156195a38b6347bab59dcf5.md) | 262 | `result-track:5156195a38b6347bab59dcf5e048a8ca85136d7e4f7118ebe8b4737c8c970ff8` |
| 30 | `theorem` | [intCast_negSucc](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-negsucc--9b64b8eba6a873cfc26c217f.md) | 264 | `result-track:9b64b8eba6a873cfc26c217fb7e85e4ba4caeee20b46b7592a1b9f32230037f6` |
| 31 | `theorem` | [intCast_nat_add](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-nat-add--c1e292074cc238d58d3276b3.md) | 266 | `result-track:c1e292074cc238d58d3276b3b833e4dd5f79540d641326588c14d6bb855e8bee` |
| 32 | `theorem` | [intCast_eq_ofNat_of_nonneg](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-eq-ofnat-of-nonneg--448a7d04d4b68c6a9e682cad.md) | 269 | `result-track:448a7d04d4b68c6a9e682cade22be257a88dbcc46218f821f832c3195c02c637` |
| 33 | `theorem` | [intCast_eq_ofNat_of_nonpos](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-eq-ofnat-of-nonpos--f788b0c5eae33b25c9d375b3.md) | 276 | `result-track:f788b0c5eae33b25c9d375b3ac02cadb9beca4bebbac5d836c2a83b74b6e5fc3` |
| 34 | `theorem` | [intCast_nat_sub](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-nat-sub--48d089cfee6f2b4d10fde8db.md) | 283 | `result-track:48d089cfee6f2b4d10fde8db4a4eb7df0c89d5b051b42f1864886ec47a44f226` |
| 35 | `theorem` | [intCast_add](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-add--47a297c1e50590a2857b8c7b.md) | 297 | `result-track:47a297c1e50590a2857b8c7bea30e96a7bfeb6fbc470405b7e83b5bf2a37aca5` |
| 36 | `theorem` | [intCast_sub](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-sub--0c8ad31050dce332d544a641.md) | 317 | `result-track:0c8ad31050dce332d544a64197fc4e239846e9c1fe197ff961179c60d854baa6` |
| 37 | `theorem` | [ofNat_sub](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/ofnat-sub--36bd4b329337dc028c331161.md) | 320 | `result-track:36bd4b329337dc028c331161a1e1147c760fa2fab5a646e7ccfae6f3724695d6` |
| 38 | `theorem` | [neg_ofNat_sub](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/neg-ofnat-sub--e31fc227bb948c832419f28e.md) | 325 | `result-track:e31fc227bb948c832419f28e1020fb18efd08bb5189739e9a28c5988f92c2ff2` |
| 39 | `theorem` | [neg_eq_neg_one_mul](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/neg-eq-neg-one-mul--881e6cd56762fe6d760e3149.md) | 328 | `result-track:881e6cd56762fe6d760e3149f924c5437e7cff54ca5451c7e438a5c2fc8f550f` |
| 40 | `theorem` | [neg_eq_mul_neg_one](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/neg-eq-mul-neg-one--f4e7a90e6c85e00f69f7c54a.md) | 334 | `result-track:f4e7a90e6c85e00f69f7c54a5b34477029e2e2f239e9fe4e8264e0167c4a4e32` |
| 41 | `theorem` | [neg_mul](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/neg-mul--a3cfed0db39783041c3498a3.md) | 340 | `result-track:a3cfed0db39783041c3498a367d021bb0735c435735bfd79d3c1f3be087ac02b` |
| 42 | `theorem` | [mul_neg](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/mul-neg--f92a3d83c3042859f3fdedd9.md) | 343 | `result-track:f92a3d83c3042859f3fdedd91bbec0d5347df75e6eadd229ba60441dad123d2f` |
| 43 | `theorem` | [zsmul_eq_intCast_mul](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/zsmul-eq-intcast-mul--d50a15699368325dbc50d9c7.md) | 347 | `result-track:d50a15699368325dbc50d9c72b10905ede122cd3c5d63be5e3222a78975d1af6` |
| 44 | `instance` | [toIntModule](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/tointmodule--8d5274dbb6ee68e217488db7.md) | 354 | `declaration-track:8d5274dbb6ee68e217488db70a7662bc317f325283404be516736541952a301e` |
| 45 | `theorem` | [intCast_mul_aux](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-mul-aux--d085d425aa5f622d1878dc0f.md) | 360 | `result-track:d085d425aa5f622d1878dc0f59a1d34a2206b543811ad6a5d8d5e1fb49a50e7a` |
| 46 | `theorem` | [intCast_mul](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-mul--19dbd3063af32d0c2eb76b75.md) | 363 | `result-track:19dbd3063af32d0c2eb76b756e44205ca9c29786a74113694ee780fbcf6f7ff7` |
| 47 | `theorem` | [intCast_mul_comm](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-mul-comm--1ee6739a7b4b9787dc65a928.md) | 375 | `result-track:1ee6739a7b4b9787dc65a928a7dff7f37684aaddabe4c9ce50d1b5d353c798a8` |
| 48 | `theorem` | [intCast_mul_left_comm](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-mul-left-comm--e883d97e6d9a3780801cc7d0.md) | 381 | `result-track:e883d97e6d9a3780801cc7d02048fd8a54c0dc5b839bfa087366ce1865285719` |
| 49 | `theorem` | [intCast_pow](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-pow--f1ca12811e164f47b1434598.md) | 387 | `result-track:f1ca12811e164f47b1434598e596575fed2530a4ca9f96e7e019f0eb46232469` |
| 50 | `example` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/example--8e777c5916fcd90092ee353b.md) | 393 | `declaration-track:8e777c5916fcd90092ee353bd7a7f5df779eef515cc899733be7206d2c232fcf` |
| 51 | `theorem` | [mul_left_comm](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/mul-left-comm--48a361ec78b9e86025798e8b.md) | 403 | `result-track:48a361ec78b9e86025798e8b8348eb9cf335f77918612997955d3260c56c5a04` |
| 52 | `theorem` | [mul_pow](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/mul-pow--1bb2cc17b4e2d3928ff3cd7d.md) | 406 | `result-track:1bb2cc17b4e2d3928ff3cd7ddc5666febbd96d59e1528766f68ee598dfbb65d3` |
| 53 | `class` | [IsCharP](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/ischarp--3baf9a2c0e4d581006297341.md) | 425 | `declaration-track:3baf9a2c0e4d5810062973413a8115cf177935843788d4b7f63ba144601a083b` |
| 54 | `theorem` | [ofNat_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/ofnat-eq-zero-iff--16cf1f7d25d8debf78c15dde.md) | 435 | `result-track:16cf1f7d25d8debf78c15dde6594043afdbedc7ee114cff4bdc8f2cd2e0e6cb6` |
| 55 | `theorem` | [ofNat_ext](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/ofnat-ext--403d457b6ea9a3c8affe4718.md) | 440 | `result-track:403d457b6ea9a3c8affe471883770d506283ffbcb885f1c1e9cda3f7ebe78f9f` |
| 56 | `theorem` | [ofNat_eq_zero_iff_of_lt](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/ofnat-eq-zero-iff-of-lt--41eaddc7a493aaaa9d34cf49.md) | 442 | `result-track:41eaddc7a493aaaa9d34cf49bd0020f45c55d1e42e67276c654c4328ace83026` |
| 57 | `theorem` | [ofNat_eq_iff_of_lt](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/ofnat-eq-iff-of-lt--03cf19e3f1e711078630aa5f.md) | 445 | `result-track:03cf19e3f1e711078630aa5f87978d96127c39d4e8ed540d60a57db620a697e7` |
| 58 | `theorem` | [natCast_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-eq-zero-iff--645318c2684ab7f1b420b741.md) | 457 | `result-track:645318c2684ab7f1b420b741763c5cbbd268ac7937c6b074c0841dba2565d167` |
| 59 | `theorem` | [natCast_ext](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-ext--9619c185cbb1860c0b3dac4c.md) | 461 | `result-track:9619c185cbb1860c0b3dac4c7ea1943925735d7a318516e7bb4db65c5de3eb5b` |
| 60 | `theorem` | [natCast_ext_iff](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-ext-iff--05bc35d3d090c2c2369a841a.md) | 465 | `result-track:05bc35d3d090c2c2369a841a62dc889a658d033376bde05d437b86803c0bd2f2` |
| 61 | `theorem` | [natCast_emod](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-emod--fe5ab6082d84de6a2aa62490.md) | 469 | `result-track:fe5ab6082d84de6a2aa62490d16b346ae6af935d0cc49caf72a3068a9094948b` |
| 62 | `theorem` | [ofNat_emod](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/ofnat-emod--7f46e6b41d2aabad3638edfe.md) | 472 | `result-track:7f46e6b41d2aabad3638edfe50b9cd2c24dc6bae7909cfba4f367b4647568be9` |
| 63 | `theorem` | [natCast_eq_zero_iff_of_lt](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-eq-zero-iff-of-lt--4e41e3b168afbdeaa96d3bae.md) | 476 | `result-track:4e41e3b168afbdeaa96d3bae271fe550353e7a847308838bd4b31118c2908fa8` |
| 64 | `theorem` | [natCast_eq_iff_of_lt](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/natcast-eq-iff-of-lt--5e5065cec4fb4f5cc2e6cc79.md) | 479 | `result-track:5e5065cec4fb4f5cc2e6cc79f084ecfacdc9cf1461d451d1c6bfa2ce9e33f708` |
| 65 | `theorem` | [mk'_aux](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/mk-aux--88765958d3dbe60e4e5bd865.md) | 491 | `result-track:88765958d3dbe60e4e5bd8650fa69dbe6a9ca9bc3aaae207dad4754ce3c6a9f8` |
| 66 | `def` | [mk'](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/mk--f7797767185c7f239949dc89.md) | 514 | `declaration-track:f7797767185c7f239949dc89963007726054667c0293786913438b091cfe3139` |
| 67 | `theorem` | [intCast_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-eq-zero-iff--8888525e5080f6b9824800eb.md) | 533 | `result-track:8888525e5080f6b9824800ebe2c26dee7ac40c20a778c2a1e07310fb259d653b` |
| 68 | `theorem` | [intCast_ext_iff](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-ext-iff--a5bea2fc75219c75a77d6296.md) | 557 | `result-track:a5bea2fc75219c75a77d6296179918fb9f19212b2d2078d628c87f49328b221d` |
| 69 | `theorem` | [intCast_emod](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/intcast-emod--347cb26cb0a95f3804549235.md) | 569 | `result-track:347cb26cb0a95f3804549235c9bfffb00288127a9b4a66f438704047e7980e06` |
| 70 | `class` | [PowIdentity](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/powidentity--005de194a75e6530f1d8b7b6.md) | 586 | `declaration-track:005de194a75e6530f1d8b7b672fb65db4b8682e4a133e5995516290a471cea17` |
| 71 | `theorem` | [pow](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/pow--0e21e10f40cea6c91e723647.md) | 594 | `result-track:0e21e10f40cea6c91e723647dbbaf1245b9557264c0ff8156cafd964ecccb436` |
| 72 | `theorem` | [no_int_zero_divisors](../../../../mathematics/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/declarations/no-int-zero-divisors--cd956cb2c067b674b25f5739.md) | 600 | `result-track:cd956cb2c067b674b25f57396e1c8f03bb88fa56974d0d177024d0a242ab5ded` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
