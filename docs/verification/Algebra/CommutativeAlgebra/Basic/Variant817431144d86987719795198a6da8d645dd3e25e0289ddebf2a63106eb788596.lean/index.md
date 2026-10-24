# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9439a14dd0c0438f36739e8b47ab21d5af456c3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9439a14dd0c0438f36739e8b47ab21d5af456c3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Derivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.DoubleFactorial` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hermite](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/hermite--69ccf788e10c8f7680a4581b.md) | 48 | `declaration-track:69ccf788e10c8f7680a4581bc28c1c709dc6de43fc385acedc9c5e1d4cfb9f16` |
| 2 | `theorem` | [hermite_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/hermite-succ--08d93184200a2052be035ec9.md) | 55 | `result-track:08d93184200a2052be035ec9ade4d628d4963fd89d63eb0ca8e1b0c4f033d930` |
| 3 | `theorem` | [hermite_eq_iterate](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/hermite-eq-iterate--48ef8442212e4fde47de594f.md) | 59 | `result-track:48ef8442212e4fde47de594fb2bc2e8443d12f62b941cce1387274fe25058d13` |
| 4 | `theorem` | [hermite_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/hermite-zero--3c5deea98d9f44b0cbf65efe.md) | 66 | `result-track:3c5deea98d9f44b0cbf65efe8d45e955f1147186fdd6c5cb6b3adfa1f41d753d` |
| 5 | `theorem` | [hermite_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/hermite-one--cf4271bc9c8a61322b9fb790.md) | 72 | `result-track:cf4271bc9c8a61322b9fb7901b9fde88068d7fb1d2240780257c51019b65361b` |
| 6 | `theorem` | [coeff_hermite_succ_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/coeff-hermite-succ-zero--385ccc680ce9f94f85cea40e.md) | 82 | `result-track:385ccc680ce9f94f85cea40e49c3c62e6d7d9fa8d8dec8a5ac7d01c431901a1b` |
| 7 | `theorem` | [coeff_hermite_succ_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/coeff-hermite-succ-succ--c477f4cd2f227c2377eabc12.md) | 86 | `result-track:c477f4cd2f227c2377eabc126262c4454f48aa13bc64caaa34d95e36cae8299b` |
| 8 | `theorem` | [coeff_hermite_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/coeff-hermite-of-lt--e269a2ded06066787af84d05.md) | 92 | `result-track:e269a2ded06066787af84d050753cd96c49f49132df0927e4dcbcf1d3a86e2de` |
| 9 | `theorem` | [coeff_hermite_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/coeff-hermite-self--7c95815c5e6f01efbf306c80.md) | 103 | `result-track:7c95815c5e6f01efbf306c80325ae278e1b8dc29226775ba92df7fa7010afc22` |
| 10 | `theorem` | [degree_hermite](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/degree-hermite--813c75d27bca1664b3a5779c.md) | 111 | `result-track:813c75d27bca1664b3a5779c6491d9dd51823fa33edcd732255dae48dbc82c20` |
| 11 | `theorem` | [natDegree_hermite](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/natdegree-hermite--5e87c8af71bcd444904d947a.md) | 120 | `result-track:5e87c8af71bcd444904d947a9d564d1a71a0df190c670b41d05fe85287e63bbb` |
| 12 | `theorem` | [leadingCoeff_hermite](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/leadingcoeff-hermite--af31c063205e2862275601a3.md) | 125 | `result-track:af31c063205e2862275601a36476880f3fcc1982135be959bacca394ace027c7` |
| 13 | `theorem` | [hermite_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/hermite-monic--b9e88cf83a1182c9db9159dc.md) | 129 | `result-track:b9e88cf83a1182c9db9159dce919a2fb4ff4c2a8f393a0c3c07ca4eea5036ac1` |
| 14 | `theorem` | [coeff_hermite_of_odd_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/coeff-hermite-of-odd-add--e3e18b63428c5258bb5364d5.md) | 133 | `result-track:e3e18b63428c5258bb5364d56e099debeeeeb96fd7d3254925ec97fbd5a36d0f` |
| 15 | `theorem` | [coeff_hermite_explicit](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/coeff-hermite-explicit--d2f02136328438c5cd6d9a49.md) | 153 | `result-track:d2f02136328438c5cd6d9a49cb208c58f9f414ff16b4fbff57656825d356c56b` |
| 16 | `theorem` | [coeff_hermite_of_even_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/coeff-hermite-of-even-add--a1a62fb81705060a296e9f4e.md) | 205 | `result-track:a1a62fb81705060a296e9f4e31864e4e660184ade8c38442ef336e90fc6566fd` |
| 17 | `theorem` | [coeff_hermite](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/declarations/coeff-hermite--6197e9c6d4defc725a7bcce0.md) | 216 | `result-track:6197e9c6d4defc725a7bcce03cbeecf7e9b39971eee21b5aef440a34d5a20356` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
