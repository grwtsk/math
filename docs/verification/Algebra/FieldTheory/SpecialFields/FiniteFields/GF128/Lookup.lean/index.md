# Verification target: GRWTSK.Algebra.FiniteField.GF128.Lookup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "352f02dad0fe6e4dfd183e41dfb239127aaac989",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteField/GF128/Lookup.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `352f02dad0fe6e4dfd183e41dfb239127aaac989`.

Source path: `GRWTSK/Algebra/FiniteField/GF128/Lookup.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteField/GF128/Lookup.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.FiniteField.GF128.Grouped`](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Grouped.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pythonTable](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/pythontable--20bbd193f20809a821007899.md) | 14 | `declaration-track:20bbd193f20809a8210078992aa2c107a3c189edff1da1cd03c9f814d2626f73` |
| 2 | `theorem` | [low_add_power_xor](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/low-add-power-xor--f6c2f816826149a557476188.md) | 20 | `result-track:f6c2f816826149a55747618863d2db586c1674eec7c2c4f612c555799c95b062` |
| 3 | `theorem` | [ofNat_power_eq_basis](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/ofnat-power-eq-basis--066dff72e57598ed100fb13d.md) | 31 | `result-track:066dff72e57598ed100fb13dcce0d9a6d41d3eeae3d1197b6eb9e08682838eea` |
| 4 | `theorem` | [pythonTable_spec](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/pythontable-spec--43a906c9177f8682b6270e7b.md) | 37 | `result-track:43a906c9177f8682b6270e7b2f1ef6ff2549f12fd36d0844c6c096f5f3a83ae9` |
| 5 | `def` | [pythonLookup](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/pythonlookup--5354fed181cbd13431b50809.md) | 58 | `declaration-track:5354fed181cbd13431b508094a2e385173d4f57241e3af8051c1288d049ede9b` |
| 6 | `theorem` | [pythonLookup_eq_mul](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/pythonlookup-eq-mul--181ecf51e1f0a669cf89ad77.md) | 61 | `result-track:181ecf51e1f0a669cf89ad77550c109c4c4c7758813485c75fa0cfa2a993e111` |
| 7 | `theorem` | [mulFuel_congr_low](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/mulfuel-congr-low--ec4e17618981c0e54637df39.md) | 68 | `result-track:ec4e17618981c0e54637df394d6e6a63ed0468e5b131dc50d07fb3db9b4b012a` |
| 8 | `theorem` | [mul_low_digit](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/mul-low-digit--4fac2492ee74aea391f1c819.md) | 81 | `result-track:4fac2492ee74aea391f1c819e98bbb40fb82c1237bca4bc15466a937ce005bd5` |
| 9 | `theorem` | [pythonLookup_low_digit](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/pythonlookup-low-digit--ac0f525f5c907c9f34a7a16a.md) | 105 | `result-track:ac0f525f5c907c9f34a7a16a8c78569b352d6c0a14aee65b4c740db1f6bce02e` |
| 10 | `def` | [tableApplyFuel](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/tableapplyfuel--0ef9a9c5d0653e1c5d264010.md) | 112 | `declaration-track:0ef9a9c5d0653e1c5d26401023286c257678d679b991fc24c205e6e9d9b0f221` |
| 11 | `theorem` | [tableApplyFuel_eq](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/tableapplyfuel-eq--eb5b3668dcec81e2ae372889.md) | 118 | `result-track:eb5b3668dcec81e2ae3728892cdc6afb1e9d15249c6a3f6361dfdf926f5d4039` |
| 12 | `theorem` | [python_byte_lookup_eq_mul](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/python-byte-lookup-eq-mul--64f5e8002b3ac40131881779.md) | 127 | `result-track:64f5e8002b3ac40131881779ead4461706ee1b364f411be9bc03c5306bcb8bf8` |
| 13 | `theorem` | [nibble_lookup_eq_mul](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/nibble-lookup-eq-mul--764b6dc4a9a22e628ec9f47e.md) | 132 | `result-track:764b6dc4a9a22e628ec9f47effeb13fffea11c426a9246d62169421490fc74fe` |
| 14 | `def` | [rustNibbleEntry](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/rustnibbleentry--3acb91a6ae1f362e46e62841.md) | 138 | `declaration-track:3acb91a6ae1f362e46e6284117b86cb6e5b5c5653228a3b62493105c2e2f1f32` |
| 15 | `def` | [rustNibbleTable](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/rustnibbletable--7a47f8e0f6083a5301756ca9.md) | 148 | `declaration-track:7a47f8e0f6083a5301756ca9d84d19f1164d86f88714ee9e2175130b17a8e941` |
| 16 | `theorem` | [rustNibbleTable_eq_pythonTable](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/rustnibbletable-eq-pythontable--a19b0da6e008e09560fc7610.md) | 152 | `result-track:a19b0da6e008e09560fc76107fd7fe0f1a4ab1b5a881f4f3e9fb7860ac50cb71` |
| 17 | `def` | [rustNibbleLookup](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/rustnibblelookup--f255b178a298194b27ab8c11.md) | 174 | `declaration-track:f255b178a298194b27ab8c11ec6911ae48891f77cd00c0e22e371081f45a265e` |
| 18 | `theorem` | [rustNibbleLookup_eq_pythonLookup](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/rustnibblelookup-eq-pythonlookup--db45c81b284b9550a540dd2e.md) | 177 | `result-track:db45c81b284b9550a540dd2e4c925dfdd99b110a0fca8c4882e2630980692d83` |
| 19 | `def` | [rustTableApplyFuel](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/rusttableapplyfuel--967029bdbb6d5b946e52f193.md) | 183 | `declaration-track:967029bdbb6d5b946e52f193d3444044884ebc4e92e2cdd46ab1de16ca28d734` |
| 20 | `theorem` | [rustTableApplyFuel_eq](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/rusttableapplyfuel-eq--afbe6d802a2b451ecbffb493.md) | 189 | `result-track:afbe6d802a2b451ecbffb4937d8446029f5650731d9b465077fb2bee58bb01d5` |
| 21 | `theorem` | [rust_nibble_lookup_eq_mul](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/declarations/rust-nibble-lookup-eq-mul--3645fc2b9ae62e5f770c491d.md) | 196 | `result-track:3645fc2b9ae62e5f770c491ded3bad3f672e12c2ec8ab2d4c32c5054fec18670` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
