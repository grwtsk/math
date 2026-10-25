# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e559e5e8e57ed5a303946e3261583448ab17442c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e559e5e8e57ed5a303946e3261583448ab17442c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Nontrivial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EuclideanDomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/euclideandomain--f563839f4c090f247e2f420f.md) | 74 | `declaration-track:f563839f4c090f247e2f420f00748558a1f0fa117bd04c51049d438d142eb957` |
| 2 | `instance` | [wellFoundedRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/wellfoundedrelation--84d5fd43e8ddcaf92c534c47.md) | 113 | `declaration-track:84d5fd43e8ddcaf92c534c47b0c46e2149a0d561f48cf30bf5199deae6b82b20` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/instance--c20f6b2f23d34349f6d9ed63.md) | 117 | `declaration-track:c20f6b2f23d34349f6d9ed63ebd78986ad482376331c558a6c9f9c7516ff2465` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/instance--9cb4d0e475e53327371efc44.md) | 121 | `declaration-track:9cb4d0e475e53327371efc440a3ee44574cc8f7e6e2c9bc44e9d50d6141bdbd5` |
| 5 | `theorem` | [div_add_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/div-add-mod--3220c2727046693419c9d920.md) | 124 | `result-track:3220c2727046693419c9d920c09bd5ecff1f32f986d19671afda303485ba5d26` |
| 6 | `theorem` | [mod_add_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/mod-add-div--0a01d90cd4d6af3bb8bf9b5a.md) | 128 | `result-track:0a01d90cd4d6af3bb8bf9b5aa1da1b0c2c5bbe0df1ee3f4ce66c76b3ce692db9` |
| 7 | `theorem` | [mod_add_div'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/mod-add-div--2f9708ae05585be3dcf42bd1.md) | 132 | `result-track:2f9708ae05585be3dcf42bd10ee4513169be4c5b9f0736e5a216811db2f7bd50` |
| 8 | `theorem` | [div_add_mod'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/div-add-mod--3826e4f92dd745c4c236c6c1.md) | 137 | `result-track:3826e4f92dd745c4c236c6c151030e806c2e05a5c9f60b833a78a846e7d06a89` |
| 9 | `theorem` | [mod_eq_sub_mul_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/mod-eq-sub-mul-div--0e1e5ba16eacbcd33ed24758.md) | 142 | `result-track:0e1e5ba16eacbcd33ed2475812f5f3f5667466afa577e6d3de8b3f1c330593cc` |
| 10 | `theorem` | [mod_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/mod-lt--84f656c03196ab7206658b59.md) | 148 | `result-track:84f656c03196ab7206658b59007c780cb749a3bf5d68b3e2a1b9837d6ab94c06` |
| 11 | `theorem` | [mul_right_not_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/mul-right-not-lt--28416494babe9715336ac2f4.md) | 152 | `result-track:28416494babe9715336ac2f4605c803713b0c734585b38e7c2b8cef7772f161d` |
| 12 | `theorem` | [mod_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/mod-zero--22133c87d5ca0d06172ce7b1.md) | 158 | `result-track:22133c87d5ca0d06172ce7b1ba1f2b4bc2fd7bb4281d772f2b9a96f21996dbaf` |
| 13 | `theorem` | [lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/lt-one--fb415b3edc16c5b4c2b38245.md) | 161 | `result-track:fb415b3edc16c5b4c2b38245a49f0f8ac5cee5d5167ad53903c054dbaf064a9f` |
| 14 | `theorem` | [val_dvd_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/val-dvd-le--a9fbaacaa1253dd3a2c46126.md) | 166 | `result-track:a9fbaacaa1253dd3a2c46126444d2f28edbb994479ea12661431762b72fb1e7c` |
| 15 | `theorem` | [div_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/div-zero--2b91e49ea9a3cb80af25840a.md) | 171 | `result-track:2b91e49ea9a3cb80af25840a0792b8b11c54938a78617a3ebae3398f5db60124` |
| 16 | `theorem` | [GCD.induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/gcd-induction--9a37a5a4366dd4c16f384faa.md) | 180 | `result-track:9a37a5a4366dd4c16f384faaf899409a021ae3615a9bc19152fdb60eec8d8e83` |
| 17 | `def` | [gcd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/gcd--4f0070d98a4375cd34d9475e.md) | 201 | `declaration-track:4f0070d98a4375cd34d9475ed31fe7c39ed374d2efccf6f7e94bf9bc8d2d10f4` |
| 18 | `theorem` | [gcd_zero_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/gcd-zero-left--4c09909356acedffceffc6d7.md) | 210 | `result-track:4c09909356acedffceffc6d7c0458de7841e08e051f5df8c21883f6dae4463a1` |
| 19 | `def` | [xgcdAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/xgcdaux--0eaa0f37c73aa09a92edb3bd.md) | 224 | `declaration-track:0eaa0f37c73aa09a92edb3bde9ee41ae1327741cfbfe190ff2a7e562e558d64d` |
| 20 | `theorem` | [xgcd_zero_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/xgcd-zero-left--3cd41b224874af42e551d9b1.md) | 234 | `result-track:3cd41b224874af42e551d9b116153d20fc333750d5e4e222eeb87eb71e49816b` |
| 21 | `theorem` | [xgcdAux_rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/xgcdaux-rec--2d02249301450549bbb7fdda.md) | 239 | `result-track:2d02249301450549bbb7fddae6aed5d3cd62af82ab72a0621321116989ac6080` |
| 22 | `def` | [xgcd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/xgcd--757a68de5d5591d53d6eceeb.md) | 249 | `declaration-track:757a68de5d5591d53d6eceeb10d0ab45c351e10601f788ad3604b3d336500cec` |
| 23 | `def` | [gcdA](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/gcda--c34f91900a4405e4a4b55363.md) | 254 | `declaration-track:c34f91900a4405e4a4b55363b2ec3fada349e16389f2d7b75495bd5709fa488b` |
| 24 | `def` | [gcdB](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/gcdb--a995825242ec3e17b060ef91.md) | 259 | `declaration-track:a995825242ec3e17b060ef91a48dd84b14fae5384724cecfb3baec19d571e39c` |
| 25 | `theorem` | [gcdA_zero_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/gcda-zero-left--e1b1b2585b85764fdf83e894.md) | 264 | `result-track:e1b1b2585b85764fdf83e8948d5b15a85b5cbb26f26f9205bb93f5bc9306fd64` |
| 26 | `theorem` | [gcdB_zero_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/gcdb-zero-left--ea5a2e97eb571871a03bb4ae.md) | 270 | `result-track:ea5a2e97eb571871a03bb4ae2f534adb67b23be8dc6bcd8e6075a7e7cacd2179` |
| 27 | `theorem` | [xgcd_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/xgcd-val--1322d8c2ce28da69e2811fdd.md) | 275 | `result-track:1322d8c2ce28da69e2811fdda97255d006ccfca41c63e80a15e2b17ce5bf1c99` |
| 28 | `def` | [lcm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/declarations/lcm--91d6d5b797afd5116c8da352.md) | 287 | `declaration-track:91d6d5b797afd5116c8da352de2a9a621fb49fad858ac3384b6944dfda2b6be6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
