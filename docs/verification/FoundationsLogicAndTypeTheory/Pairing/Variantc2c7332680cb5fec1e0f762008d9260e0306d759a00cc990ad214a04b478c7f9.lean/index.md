# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Pairing.Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5fdca064af5a8eec4bf6e018fda306c86e4e3e2",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5fdca064af5a8eec4bf6e018fda306c86e4e3e2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Notation.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Sqrt` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/pair--e0daa485829ee891189b03d7.md) | 42 | `declaration-track:e0daa485829ee891189b03d7d38dacbc22f4651769e881881e1f1620ed5d7d23` |
| 2 | `def` | [unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/unpair--af9dcca44afc1edbde7d59ba.md) | 47 | `declaration-track:af9dcca44afc1edbde7d59ba1937b75b8695f5d70cafd8d4e0d8aaf89f900db2` |
| 3 | `theorem` | [pair_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/pair-unpair--04e0dde3107b0ba86c85fd47.md) | 52 | `result-track:04e0dde3107b0ba86c85fd47dd166dfd89a8ec492745abcae88b8afc7f84e926` |
| 4 | `theorem` | [pair_unpair'](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/pair-unpair--72f6a29de87c0f25a75acaa3.md) | 61 | `result-track:72f6a29de87c0f25a75acaa35eaee47d219c9d49abbff37dc295b30a933156e6` |
| 5 | `theorem` | [unpair_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/unpair-pair--84253e63dd1c61c38cf1b5cd.md) | 65 | `result-track:84253e63dd1c61c38cf1b5cd0c3d0ef2612120d4e66832233d6ee61f513451a9` |
| 6 | `def` | [pairEquiv](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/pairequiv--548977c368c9389809473bba.md) | 78 | `declaration-track:548977c368c9389809473bba72c678e2b855f68252fcf1208ef6d00599953d29` |
| 7 | `theorem` | [surjective_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/surjective-unpair--593f64a8a5274ef43bb568fa.md) | 81 | `result-track:593f64a8a5274ef43bb568fade7a120575312d7da938c4c14a2501eedd04a9bc` |
| 8 | `theorem` | [pair_eq_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/pair-eq-pair--4437eec53cb2a9bce391d2f4.md) | 85 | `result-track:4437eec53cb2a9bce391d2f4e9d0ba3996d4203be08d4e5b931a62440a6267ec` |
| 9 | `theorem` | [unpair_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/unpair-lt--f5431d87326d1319c3cbb1d7.md) | 88 | `result-track:f5431d87326d1319c3cbb1d7d9eaf782c04058e67b2c378043cb3e156ee1e889` |
| 10 | `theorem` | [unpair_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/unpair-zero--fb96c82976018f3738c9c887.md) | 98 | `result-track:fb96c82976018f3738c9c887a3e7b20e1c1fa8b1f34fd31f35d61974459fb4e0` |
| 11 | `theorem` | [unpair_left_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/unpair-left-le--4df5a9211bb36754f0459d2e.md) | 102 | `result-track:4df5a9211bb36754f0459d2ea17f504cd8e52ee234538d5fe60506136456f2f7` |
| 12 | `theorem` | [left_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/left-le-pair--14e304f4d66654f9469ff83b.md) | 106 | `result-track:14e304f4d66654f9469ff83b643e2790b9ed0bbcc7672d80a17fff2db815414e` |
| 13 | `theorem` | [right_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/right-le-pair--b3d113d46c93217e45a323b8.md) | 108 | `result-track:b3d113d46c93217e45a323b8bcd1a66349de32a3015b012cce6c989975964412` |
| 14 | `theorem` | [unpair_right_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/unpair-right-le--cb231598a35b86308c74ea66.md) | 113 | `result-track:cb231598a35b86308c74ea66169f86fbc7c7390ff5d5a660ddec8b7c5be2b291` |
| 15 | `theorem` | [pair_lt_pair_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/pair-lt-pair-left--aa7467c4fe72070f9974b122.md) | 116 | `result-track:aa7467c4fe72070f9974b122344b6c575789943422e16646ca259bf46c962212` |
| 16 | `theorem` | [pair_lt_pair_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/pair-lt-pair-right--5c9d7dbd32312c91979e5298.md) | 129 | `result-track:5c9d7dbd32312c91979e529832210d4b9062d96dd2c3cb422eb798f59a2ff975` |
| 17 | `theorem` | [pair_lt_max_add_one_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/pair-lt-max-add-one-sq--71c5c5215b4c59bda039d7fd.md) | 139 | `result-track:71c5c5215b4c59bda039d7fd76a97deb66f9a22489dd8bf9a43d2969ca6ae9ec` |
| 18 | `theorem` | [max_sq_add_min_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/max-sq-add-min-le-pair--966d83d3bd89d8eace03618b.md) | 143 | `result-track:966d83d3bd89d8eace03618b7e2150ad44f0bba763562ad17af9fccfee433082` |
| 19 | `theorem` | [add_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/add-le-pair--bd11b04e1beb2eb906cc2591.md) | 151 | `result-track:bd11b04e1beb2eb906cc259190e81f538516a1daf7ca6c449c933000648c9f2d` |
| 20 | `theorem` | [unpair_add_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/unpair-add-le--89b297881958d67392dd2a21.md) | 158 | `result-track:89b297881958d67392dd2a2172acc501ef28175f6bfd8dac983bbe20991585e8` |
| 21 | `theorem` | [iSup_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/isup-unpair--ff1da486aa89fe056b9eea73.md) | 167 | `result-track:ff1da486aa89fe056b9eea7361ba47cb51694b3a21a5550783af13d3a138139f` |
| 22 | `theorem` | [iInf_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/iinf-unpair--b31fc2fa7e83b699221445df.md) | 171 | `result-track:b31fc2fa7e83b699221445dfba4a378f50079672fc830cdf26b95ae576da35a8` |
| 23 | `theorem` | [iUnion_unpair_prod](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/iunion-unpair-prod--5e1f1605d977bbe4e6eb0b83.md) | 179 | `result-track:5e1f1605d977bbe4e6eb0b83ea85d2dc9787ea3f1cac8d33f4f396506cb982d1` |
| 24 | `theorem` | [iUnion_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/iunion-unpair--0dc477db7a01294cd20ab05e.md) | 184 | `result-track:0dc477db7a01294cd20ab05ec0b49a35201202feb78ea831c314e1131e160541` |
| 25 | `theorem` | [iInter_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantc2c7332680cb5fec1e0f762008d9260e0306d759a00cc990ad214a04b478c7f9.lean/declarations/iinter-unpair--60857972b656e75e0d632221.md) | 188 | `result-track:60857972b656e75e0d632221394d724463c0a3eb2e21447d78995d2fedd57eef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
