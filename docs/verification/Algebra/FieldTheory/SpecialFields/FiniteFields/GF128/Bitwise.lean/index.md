# Verification target: GRWTSK.Algebra.FiniteField.GF128.Bitwise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa2867bdbe3e41ddf2c50bbbbfd564400e272af7",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteField/GF128/Bitwise.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa2867bdbe3e41ddf2c50bbbbfd564400e272af7`.

Source path: `GRWTSK/Algebra/FiniteField/GF128/Bitwise.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteField/GF128/Bitwise.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Word](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/word--75c59cd044ad17135b3816b5.md) | 9 | `declaration-track:75c59cd044ad17135b3816b5a3829e6746ae0b20b09f43b37e5cee4026c3353b` |
| 2 | `def` | [double](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/double--8f8ecbb1b8fd9c89797bf462.md) | 12 | `declaration-track:8f8ecbb1b8fd9c89797bf46206cfa59a1bec3113ad58a31121ce6c940bbdf7d3` |
| 3 | `def` | [mulFuel](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/mulfuel--15bfd17dea891dcbbccdcdf6.md) | 16 | `declaration-track:15bfd17dea891dcbbccdcdf6a58b83382d435712a5374c5114796b319e45e601` |
| 4 | `def` | [mul](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/mul--32601e7bc417ee2534d17e97.md) | 21 | `declaration-track:32601e7bc417ee2534d17e97380a25a5c56402d969b3b213cecf3b3adff0e084` |
| 5 | `def` | [fastMulFuel](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/fastmulfuel--93f2dfcea5d7eea9bd969f0b.md) | 23 | `declaration-track:93f2dfcea5d7eea9bd969f0baa08fcb2ce56a808b5efbb238bb0381694eff4fd` |
| 6 | `def` | [powFuel](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/powfuel--26e71910bb94f7290b2b5115.md) | 28 | `declaration-track:26e71910bb94f7290b2b5115e694848921d34b33f8cf2a7d09c15de833b8d871` |
| 7 | `def` | [inv](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/inv--1e983a7e561717bf10839214.md) | 35 | `declaration-track:1e983a7e561717bf108392146360a442743aacc129bfd897e82c47f859c918a6` |
| 8 | `theorem` | [xor_left_comm](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/xor-left-comm--47f36c0d3e4fc6505aee100f.md) | 38 | `result-track:47f36c0d3e4fc6505aee100fadb4c64c808c9ec7259ab6eb0ddb720481c3a342` |
| 9 | `theorem` | [xor_cancel_left](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/xor-cancel-left--5b868abb268ba6a8865ca917.md) | 41 | `result-track:5b868abb268ba6a8865ca9172096b807b58e5fd255802d9f0724265e4f528b01` |
| 10 | `theorem` | [double_xor](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/double-xor--3358f5b33d1ef4da891a9e1b.md) | 44 | `result-track:3358f5b33d1ef4da891a9e1b77c24b0553a41557dc1a492783bc5fb2ed9004d7` |
| 11 | `theorem` | [double_zero](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/double-zero--00b0820c88d99789ff69b9ab.md) | 49 | `result-track:00b0820c88d99789ff69b9ab9fedebdd9e011c4b0b15250de853d349e3f6bc03` |
| 12 | `theorem` | [xor_four](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/xor-four--45aac8108a76a35a4b9bc879.md) | 51 | `result-track:45aac8108a76a35a4b9bc87952bbc803eec4ac2fbd492601cb79a1ca7272e5b9` |
| 13 | `theorem` | [mulFuel_xor_left](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/mulfuel-xor-left--288ec465f08a1b23cd71ba26.md) | 55 | `result-track:288ec465f08a1b23cd71ba26ea486c6d4cec90756ef1bd292d36fce521d1c64b` |
| 14 | `theorem` | [mulFuel_zero_left](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/mulfuel-zero-left--cb15436f4eecbc5438d9ab62.md) | 63 | `result-track:cb15436f4eecbc5438d9ab62666d77e87eea60f30bf8f94f2f31ba5072ae2eaa` |
| 15 | `theorem` | [mulFuel_zero_right](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/mulfuel-zero-right--0254524e2fddf06c9aa251f9.md) | 70 | `result-track:0254524e2fddf06c9aa251f9a7eace035a529c247d1702574a642162835c4816` |
| 16 | `theorem` | [mulFuel_xor_right](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/mulfuel-xor-right--7b5204569e498e2a33f5bdb1.md) | 76 | `result-track:7b5204569e498e2a33f5bdb1b6a4f5fcf791efa3469ebcb1b54ffad4b42b813e` |
| 17 | `theorem` | [mul_xor_left](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/mul-xor-left--22785f5abdd12ac958a758a0.md) | 86 | `result-track:22785f5abdd12ac958a758a0ee0d2ffc25f890fd01842c5ac7ba28d67e345794` |
| 18 | `theorem` | [mul_xor_right](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/mul-xor-right--2edff65f169dcbc33b91a65d.md) | 89 | `result-track:2edff65f169dcbc33b91a65d344784483232b6bd3b7d9a6f8b73492e5fd746bb` |
| 19 | `theorem` | [mul_zero_left](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/mul-zero-left--a0f19a3a22a091d6163cdb8e.md) | 92 | `result-track:a0f19a3a22a091d6163cdb8eadee7d5efbe378e24d89164fe009153b2663f1c0` |
| 20 | `theorem` | [mul_zero_right](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/mul-zero-right--8c4de26bd4293103b612f214.md) | 93 | `result-track:8c4de26bd4293103b612f214d0a416ad9213f2e0e54294ae6c4d5142278c4083` |
| 21 | `theorem` | [fastMulFuel_eq](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/fastmulfuel-eq--5dc9ccda66c3e1eda447ec03.md) | 95 | `result-track:5dc9ccda66c3e1eda447ec03c681189d06c1c6e46597ed805a1c183caad8154c` |
| 22 | `def` | [fastMul](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/fastmul--f58e3a7b3b97b5b88d4b2684.md) | 106 | `declaration-track:f58e3a7b3b97b5b88d4b26848fb374a496f3f3c1e5f4d10f03cf299e25607fc9` |
| 23 | `theorem` | [fastMul_eq](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/fastmul-eq--8ab7d181a9fccf6f0aea0aa2.md) | 108 | `result-track:8ab7d181a9fccf6f0aea0aa2df2a660c1ec358cd44c0a47cd504af284d192fc9` |
| 24 | `def` | [basis](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/basis--117ee61a0b00ccc1789af68c.md) | 110 | `declaration-track:117ee61a0b00ccc1789af68ce11bc1f3f42f5df0890a273d9e244548826671b5` |
| 25 | `def` | [XorLinear](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/xorlinear--9e07f2a3ab2349eabf9403d4.md) | 112 | `declaration-track:9e07f2a3ab2349eabf9403d47831260e43738226a66a7e986bc0621277a32371` |
| 26 | `theorem` | [split_low_bit](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/split-low-bit--a4dda5fffd13cf5da8c30a0e.md) | 115 | `result-track:a4dda5fffd13cf5da8c30a0ef63800929b52ccb530f6013b203a0960708a5cec` |
| 27 | `theorem` | [linear_eq_of_basis_low](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/linear-eq-of-basis-low--8e726977426a8d3df6ebe6cd.md) | 127 | `result-track:8e726977426a8d3df6ebe6cd282769a6dbb993c459c8c090ff4f97617972c8ea` |
| 28 | `theorem` | [linear_eq_of_basis](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/declarations/linear-eq-of-basis--6167ce18a110097ea34308ce.md) | 175 | `result-track:6167ce18a110097ea34308cee5a99655f6a51bae53fa2a946d4a42087a33f540` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
