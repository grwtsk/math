# Verification target: GRWTSK.Algebra.GroupTheory.NatPowAssoc.Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0de75eaf147d140d67b9daac08982117490cdf03",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0de75eaf147d140d67b9daac08982117490cdf03`.

Source path: `GRWTSK/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Int.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NatPowAssoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/natpowassoc--0cd38339615ce04606dde104.md) | 42 | `declaration-track:0cd38339615ce04606dde1041d5b643d40b7b14684c030111463279da8700621` |
| 2 | `theorem` | [npow_add](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/npow-add--18dd24b0d1600c46a9b297c8.md) | 54 | `result-track:18dd24b0d1600c46a9b297c8b3d939d7cc909d0f7482e38b0451f0126ad5787b` |
| 3 | `theorem` | [npow_zero](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/npow-zero--9bf01b3bdb793b733ce854d1.md) | 58 | `result-track:9bf01b3bdb793b733ce854d197a66b25760c99b33585f1d40335d310c86a267d` |
| 4 | `theorem` | [npow_one](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/npow-one--67db19d09c4b45394245d548.md) | 62 | `result-track:67db19d09c4b45394245d548565ce137ea90fe763e6cde8b067e5859832beba0` |
| 5 | `theorem` | [npow_mul_assoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/npow-mul-assoc--f0e228990c66b476bcd0bc99.md) | 65 | `result-track:f0e228990c66b476bcd0bc99b1ac6ce4454645b27b3fb21d14d43ec1fcfe6815` |
| 6 | `theorem` | [npow_mul_comm](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/npow-mul-comm--37587b63dce0424b8bbd3cd5.md) | 69 | `result-track:37587b63dce0424b8bbd3cd5f4304502aac2bdc77ff6a2c88e1613460174e1e0` |
| 7 | `theorem` | [npow_mul](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/npow-mul--8f057a6bc9b0581a5f35b8ee.md) | 72 | `result-track:8f057a6bc9b0581a5f35b8ee44bc7f4a460161e64c27fee5929082545caec81b` |
| 8 | `theorem` | [npow_mul'](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/npow-mul--e6b1c700d5a1b0b56e42577a.md) | 77 | `result-track:e6b1c700d5a1b0b56e42577afa5f098eddffdd6d8ba6be021b56da90ccfc2274` |
| 9 | `theorem` | [neg_npow_assoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/neg-npow-assoc--85dec0f379a4c0c16ebaa328.md) | 85 | `result-track:85dec0f379a4c0c16ebaa328d1a5e7bb8f3c9e5b843ae4c36018e3545f7a8ef2` |
| 10 | `instance` | [Pi.instNatPowAssoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/pi-instnatpowassoc--aefeda6f1562641c6b287f9f.md) | 95 | `declaration-track:aefeda6f1562641c6b287f9f73097bd4a76a1424daa0f5face492ea47c49257e` |
| 11 | `instance` | [Prod.instNatPowAssoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/prod-instnatpowassoc--cf6f2b7980bc6f3813546a69.md) | 101 | `declaration-track:cf6f2b7980bc6f3813546a6997fcaea75f41e0e1cfa53026d62cb8c61da946e6` |
| 12 | `instance` | [Monoid.PowAssoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/monoid-powassoc--040a459d6147bc15255cc4f9.md) | 111 | `declaration-track:040a459d6147bc15255cc4f9e9710dcc029dbb483aba3827b4ebbe08c3589d8f` |
| 13 | `theorem` | [Nat.cast_npow](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/nat-cast-npow--c0143689dd4bf2807f520f09.md) | 117 | `result-track:c0143689dd4bf2807f520f097ed605bdd24c0082a6b8c2fb9c02c0c2e9c587e9` |
| 14 | `theorem` | [Int.cast_npow](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/declarations/int-cast-npow--5ac0f187e10d0d58f8909830.md) | 124 | `result-track:5ac0f187e10d0d58f890983010894d60fe8f9315d4581e6ef14c9fb41adf7dc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
