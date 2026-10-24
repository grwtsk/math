# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Pochhammer.Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3e72f1bfd6c728bee050e7cda463456adced908",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3e72f1bfd6c728bee050e7cda463456adced908`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Algebra` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ascPochhammer](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer--ff1e852b17c2e330802a956b.md) | 56 | `declaration-track:ff1e852b17c2e330802a956b97e71ef3c190a5db6b2c6e74fc3da6743ff2037c` |
| 2 | `theorem` | [ascPochhammer_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-zero--bfbd456b6b703d0e7047beb1.md) | 61 | `result-track:bfbd456b6b703d0e7047beb1474b7d44bd7f608976de8d84af25040712032af5` |
| 3 | `theorem` | [ascPochhammer_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-one--a200ee72f533380c299a7850.md) | 65 | `result-track:a200ee72f533380c299a78501c886a9fcb9c9aaf469fd654e048198e1f708142` |
| 4 | `theorem` | [ascPochhammer_succ_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-succ-left--dff99392167354c3eab930c9.md) | 67 | `result-track:dff99392167354c3eab930c95a333b111b03b5facb11c6449235cd4ba5b73000` |
| 5 | `theorem` | [monic_ascPochhammer](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/monic-ascpochhammer--769040c4f51f77ac29e095c7.md) | 71 | `result-track:769040c4f51f77ac29e095c7cee33d95ba545e842849a0f5d748242187281d21` |
| 6 | `theorem` | [ascPochhammer_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-map--4e487ab1fdeb6a8901d8ed4b.md) | 85 | `result-track:4e487ab1fdeb6a8901d8ed4bd6228c92b30ddf4d4fbe8d0379338b4ba770a351` |
| 7 | `theorem` | [ascPochhammer_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-eval--854dfcb52df08998ef2facb3.md) | 91 | `result-track:854dfcb52df08998ef2facb308b33946e487cbf2cd45ee4aa4320e043233fd75` |
| 8 | `theorem` | [ascPochhammer_eval_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-eval-comp--bb91df86b9aa32db0ac7e47c.md) | 96 | `result-track:bb91df86b9aa32db0ac7e47c19740bf4ec330baf4a2a53df42bcf52c77707462` |
| 9 | `theorem` | [ascPochhammer_eval_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-eval-cast--02ad80a23286304020973e68.md) | 105 | `result-track:02ad80a23286304020973e68327ace42e114d9d67eab89d2d6a7988ae66efc6b` |
| 10 | `theorem` | [ascPochhammer_eval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-eval-zero--57f84d54b1b8ea96f9be96ee.md) | 110 | `result-track:57f84d54b1b8ea96f9be96ee6f4ba7bb3115ba34fa632b007cd120765e909b7a` |
| 11 | `theorem` | [ascPochhammer_zero_eval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-zero-eval-zero--12f56900a4b32f6ad04b3e64.md) | 115 | `result-track:12f56900a4b32f6ad04b3e649e5c24aaf673e6cfde0352de2b6e361906b2edb2` |
| 12 | `theorem` | [ascPochhammer_ne_zero_eval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-ne-zero-eval-zero--e84a888b3cd237fb3db5dd0a.md) | 118 | `result-track:e84a888b3cd237fb3db5dd0a196a60987031b96b5e464d77943ab30bb6ad4933` |
| 13 | `theorem` | [ascPochhammer_succ_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-succ-right--a57aa80fa187c8415fde3c5b.md) | 121 | `result-track:a57aa80fa187c8415fde3c5b23f7034ee6b8cb3b999f2ed5cef7a5cf5d96ea51` |
| 14 | `theorem` | [ascPochhammer_succ_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-succ-eval--3e22c9c4dc001551b7409078.md) | 134 | `result-track:3e22c9c4dc001551b7409078469e933da2d338251883f28b17a8697e4b974ae6` |
| 15 | `theorem` | [ascPochhammer_succ_comp_X_add_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-succ-comp-x-add-one--012a407a58afd8a4eb154fb5.md) | 139 | `result-track:012a407a58afd8a4eb154fb5fc77451a211500002655a54a9a933c372887796c` |
| 16 | `theorem` | [ascPochhammer_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-mul--ab665221ad8d366431dbc535.md) | 150 | `result-track:ab665221ad8d366431dbc5357ee4377a0ab46fe82eb5abff9b3d2648c56d7d39` |
| 17 | `theorem` | [ascPochhammer_nat_eq_ascFactorial](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-nat-eq-ascfactorial--b832f575ad9ae01c87a96787.md) | 157 | `result-track:b832f575ad9ae01c87a967876b90d59de95b514ad84dfaa90cfa4f7897cfec97` |
| 18 | `theorem` | [ascPochhammer_nat_eq_natCast_ascFactorial](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-nat-eq-natcast-ascfactorial--c109adcb1bc6073d10549791.md) | 164 | `result-track:c109adcb1bc6073d10549791a73e8a375d8286d76a56a923a15d41307401aaf2` |
| 19 | `theorem` | [ascPochhammer_nat_eq_descFactorial](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-nat-eq-descfactorial--641117e0938a87d9e6975842.md) | 169 | `result-track:641117e0938a87d9e6975842de224e083b32f8ed086d02fcb68f099a4929e208` |
| 20 | `theorem` | [ascPochhammer_nat_eq_natCast_descFactorial](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-nat-eq-natcast-descfactorial--0a5004c7ae94d894c21a2f17.md) | 173 | `result-track:0a5004c7ae94d894c21a2f17ca58d8922da108ec5689184f31cb7da29485577e` |
| 21 | `theorem` | [ascPochhammer_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-natdegree--7f8e5bd7937b2703ad7fe8f9.md) | 179 | `result-track:7f8e5bd7937b2703ad7fe8f99b4e717efda76869c46896b6cf0172f921b8891d` |
| 22 | `theorem` | [ascPochhammer_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-pos--cbdfc8efa06c60ff105ed02f.md) | 196 | `result-track:cbdfc8efa06c60ff105ed02fa72d49005ab19d36e998314394495a123311b70c` |
| 23 | `theorem` | [ascPochhammer_eval_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-eval-one--3be27f5d81a2cf435c09ef93.md) | 215 | `result-track:3be27f5d81a2cf435c09ef93a142e81828e8b9e5a121e6be3ca563b045037df5` |
| 24 | `theorem` | [factorial_mul_ascPochhammer](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/factorial-mul-ascpochhammer--0e21f86040513b715c092b2b.md) | 219 | `result-track:0e21f86040513b715c092b2b8ccb7b16ae21248d060830b9b69a5dae7f9cb282` |
| 25 | `theorem` | [ascPochhammer_nat_eval_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-nat-eval-succ--b40779ad1657d1e2c62393a1.md) | 223 | `result-track:b40779ad1657d1e2c62393a10a14ac031c17669924dd65b5a5b31f093fed6c28` |
| 26 | `theorem` | [ascPochhammer_eval_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-eval-succ--6d635e77f5186670457e143a.md) | 231 | `result-track:6d635e77f5186670457e143a2bb0ccc79604785fa62485c7955dc51f9a5befc7` |
| 27 | `def` | [descPochhammer](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer--9ad6d285523f41506d48e764.md) | 245 | `declaration-track:9ad6d285523f41506d48e76442cc8bfc6c47ec94f7d15119659510bb776690ed` |
| 28 | `theorem` | [descPochhammer_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-zero--af6567a521f685c5edb26380.md) | 250 | `result-track:af6567a521f685c5edb2638036b49a00b51cd22ec395bd59503f2f242731d14b` |
| 29 | `theorem` | [descPochhammer_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-one--4855f7e4b80e7f5f4515d1ab.md) | 254 | `result-track:4855f7e4b80e7f5f4515d1ab1cbafe416130035bb3c8dfb5068b04f5b451312a` |
| 30 | `theorem` | [descPochhammer_succ_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-succ-left--9b1c8a892135098cbcd75946.md) | 256 | `result-track:9b1c8a892135098cbcd75946342b5a01078e52790ef5cd2604c1ce5045ac5055` |
| 31 | `theorem` | [monic_descPochhammer](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/monic-descpochhammer--e03ff1b53518ab28657d8bc8.md) | 260 | `result-track:e03ff1b53518ab28657d8bc8b8eb43225efffaeba72e7beb54168bf7f628f447` |
| 32 | `theorem` | [descPochhammer_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-map--0d52a730375b700d17220a47.md) | 274 | `result-track:0d52a730375b700d17220a4751ab2d827e4456d1b87095df3ff767f418211b02` |
| 33 | `theorem` | [descPochhammer_eval_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-eval-cast--b2260e897c7e4de6059d5010.md) | 282 | `result-track:b2260e897c7e4de6059d501089b63ecd0734e58c35ccf3bce2f33f0e8cd3e375` |
| 34 | `theorem` | [descPochhammer_eval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-eval-zero--5e08d81308bc52feb258b0a9.md) | 287 | `result-track:5e08d81308bc52feb258b0a9878f86b2b857f49497b50ac86cd0e9c26e87bdaa` |
| 35 | `theorem` | [descPochhammer_zero_eval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-zero-eval-zero--c89d9008b110f585950fd1fa.md) | 293 | `result-track:c89d9008b110f585950fd1fa1879f5b988de1fabb2524b71fc1bd926c51bc512` |
| 36 | `theorem` | [descPochhammer_ne_zero_eval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-ne-zero-eval-zero--3766e779cc693f2ae8968fcd.md) | 296 | `result-track:3766e779cc693f2ae8968fcd5877c810a7fdad903d4e8ffbc95c3f477b622b1a` |
| 37 | `theorem` | [descPochhammer_succ_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-succ-right--be228af7906e9fab3529000b.md) | 299 | `result-track:be228af7906e9fab3529000bb66ea8f248f7b2c072444c499598fac6fddced7d` |
| 38 | `theorem` | [descPochhammer_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-natdegree--b279ef1b5c854450cdf533fa.md) | 314 | `result-track:b279ef1b5c854450cdf533fa121c552b55d90c514fc4b52e3e4477c85bde5ed5` |
| 39 | `theorem` | [descPochhammer_succ_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-succ-eval--dfe74b4e9cd15c3b057e61d0.md) | 325 | `result-track:dfe74b4e9cd15c3b057e61d036747c56826fea25d67fd01dd98b9ddd04c2fdf3` |
| 40 | `theorem` | [descPochhammer_succ_comp_X_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-succ-comp-x-sub-one--3bef71bae72ba3759010a712.md) | 330 | `result-track:3bef71bae72ba3759010a7120fab66c49743bf06f12054e5a13fc7d21673fe08` |
| 41 | `theorem` | [descPochhammer_eq_ascPochhammer](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-eq-ascpochhammer--173b0b43ef723e0bf23662a8.md) | 340 | `result-track:173b0b43ef723e0bf23662a8aa5784c579991cfd682bcc536b3825f360cfbbf1` |
| 42 | `theorem` | [descPochhammer_eval_eq_ascPochhammer](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-eval-eq-ascpochhammer--366ffe02f50c3337d0b19560.md) | 348 | `result-track:366ffe02f50c3337d0b195607b6880d19553f5dbafe3b0f53e90afb2865e9b88` |
| 43 | `theorem` | [descPochhammer_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-mul--1a0da2dd8ee0504860cbcc48.md) | 358 | `result-track:1a0da2dd8ee0504860cbcc483080e6d639cf85eac6c9c8fae157ce3079a39762` |
| 44 | `theorem` | [ascPochhammer_eval_neg_eq_descPochhammer](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-eval-neg-eq-descpochhammer--3a04b3f8c40f6a18e2805b61.md) | 365 | `result-track:3a04b3f8c40f6a18e2805b61d00236c321b965ef5ea4f4f67f5ddbd26ab7ff2e` |
| 45 | `theorem` | [descPochhammer_eval_eq_descFactorial](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-eval-eq-descfactorial--c8b26145d92352fb649132a9.md) | 377 | `result-track:c8b26145d92352fb649132a97185033726f57cae090da25e5f72669c3f08b0ef` |
| 46 | `theorem` | [descPochhammer_int_eq_ascFactorial](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-int-eq-ascfactorial--374d5614f3590e1374d44036.md) | 388 | `result-track:374d5614f3590e1374d440361c142b091f694c93345bd1341ee2125abcd610a1` |
| 47 | `theorem` | [ascPochhammer_eval_neg_coe_nat_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-eval-neg-coe-nat-of-lt--f7387b905ec3d95bfa3e9a0f.md) | 396 | `result-track:f7387b905ec3d95bfa3e9a0f891b5de291cc123a375950448ae290befd72bebd` |
| 48 | `theorem` | [ascPochhammer_eval_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/ascpochhammer-eval-eq-zero-iff--46042e79dbe87781b448ee22.md) | 410 | `result-track:46042e79dbe87781b448ee22791067071f9be801b59c67a60834032311e87e62` |
| 49 | `theorem` | [descPochhammer_eval_coe_nat_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-eval-coe-nat-of-lt--ed38753e23182efebf40653a.md) | 428 | `result-track:ed38753e23182efebf40653aee12f74637a9b764cf35b2190eccdba8703aa1a1` |
| 50 | `lemma` | [descPochhammer_eval_eq_prod_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-eval-eq-prod-range--7e4667da3d4deea157884cd6.md) | 434 | `result-track:7e4667da3d4deea157884cd608d86592dd93dfcb61993e102360803a0c18d17d` |
| 51 | `theorem` | [descPochhammer_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-pos--406943e3f6577b8498b4bf5d.md) | 447 | `result-track:406943e3f6577b8498b4bf5d67571839586cab8fe46ead805beec7f729253eaa` |
| 52 | `theorem` | [descPochhammer_nonneg](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/descpochhammer-nonneg--b05bfaf6af804295b67ffca1.md) | 454 | `result-track:b05bfaf6af804295b67ffca1946383fa0cc08dd07c944e53e2db0873f2175947` |
| 53 | `theorem` | [pow_le_descPochhammer_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/pow-le-descpochhammer-eval--4e4d3fc042ffdaef05899b7f.md) | 463 | `result-track:4e4d3fc042ffdaef05899b7f1bf583cba9eb4348043ae98adbdfc2afeabb8079` |
| 54 | `theorem` | [monotoneOn_descPochhammer_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/declarations/monotoneon-descpochhammer-eval--489d506f7682526569ce2a6f.md) | 475 | `result-track:489d506f7682526569ce2a6ffd75db6959219384ad50a4d94c1b069df70321c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
