# Verification target: GRWTSK.LinearAlgebra.FiniteSpectralHeat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9989ca6c1ba332145bad98663c90d5442dcd93fd",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/FiniteSpectralHeat.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9989ca6c1ba332145bad98663c90d5442dcd93fd`.

Source path: `GRWTSK/LinearAlgebra/FiniteSpectralHeat.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/FiniteSpectralHeat.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat`](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spectralOperator](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/spectraloperator--a0b8e95d19cb2d67e31c44ef.md) | 16 | `declaration-track:a0b8e95d19cb2d67e31c44ef488a9ddf54fcfd0beca4a9bc85e50e374e28f357` |
| 2 | `def` | [spectralHeat](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/spectralheat--aaefa88f79c37c75362311c6.md) | 21 | `declaration-track:aaefa88f79c37c75362311c65bd3d00496ccca1cdc2bb30ebfe627b511ec5e2a` |
| 3 | `structure` | [Model](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/model--2bc0ee4a69ff5fc4ed89cf47.md) | 28 | `declaration-track:2bc0ee4a69ff5fc4ed89cf47c6380d9b9c3c5911717d95ba97708000e88e0115` |
| 4 | `def` | [pairing](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/pairing--202cb0f899f440427699c217.md) | 41 | `declaration-track:202cb0f899f440427699c2175f761e50550db5b4f097bd36e71d4788fc116396` |
| 5 | `theorem` | [pairing_self_eq_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/pairing-self-eq-zero-iff--aaedc3ce67d74269c5c10360.md) | 45 | `result-track:aaedc3ce67d74269c5c1036048c7dc535d5a44b4b3cce1656dc0b76dfb0302e4` |
| 6 | `theorem` | [operator_coordinates](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/operator-coordinates--5fc2d342bb435e797b2a2bfd.md) | 51 | `result-track:5fc2d342bb435e797b2a2bfdb8e89f7641a75817031f3f7adf259af21950623e` |
| 7 | `def` | [heat](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/heat--c62a04c2d72af60e328b976c.md) | 57 | `declaration-track:c62a04c2d72af60e328b976cb887633f330a4dd82e2f85715d66a3afa1a52478` |
| 8 | `theorem` | [heat_coordinates](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/heat-coordinates--36019b1e567f78a9284822b2.md) | 62 | `result-track:36019b1e567f78a9284822b2fe72f7b515369b25732338c678faa5902189fee4` |
| 9 | `theorem` | [heat_zero](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/heat-zero--53c7d8cb625abc2e185e83d8.md) | 67 | `result-track:53c7d8cb625abc2e185e83d88e844014ba89feed85ebb0f3bb539955b8899680` |
| 10 | `theorem` | [heat_add](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/heat-add--2428c33678a2081ee3cc86bd.md) | 74 | `result-track:2428c33678a2081ee3cc86bdff37b5d6a63b4518219b640fdd37ade010d60f3b` |
| 11 | `theorem` | [heat_operator_comm](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/heat-operator-comm--75c5c3d85f97b0e0326989f0.md) | 91 | `result-track:75c5c3d85f97b0e0326989f01559080a438021cba0ebf99950475c6c3d6c6d65` |
| 12 | `theorem` | [heat_fixed_of_operator_eq_zero](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/heat-fixed-of-operator-eq-zero--087dc52e2c8bb2d186ef7a46.md) | 107 | `result-track:087dc52e2c8bb2d186ef7a46a06781446a55722efeb7fc11bb72e6db97c6cae1` |
| 13 | `theorem` | [heat_contracts](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/heat-contracts--464aacbffc2f4b6211c12a3e.md) | 124 | `result-track:464aacbffc2f4b6211c12a3e918f0c6376bb31803fc1d3b75e0e2d72572d94d2` |
| 14 | `def` | [sectorProjector](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/sectorprojector--bffcadc5a2a853559ce4db97.md) | 148 | `declaration-track:bffcadc5a2a853559ce4db97a253d2a35bc50ed4874783b751db7efbbe9418c0` |
| 15 | `theorem` | [sectorProjector_idempotent](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/sectorprojector-idempotent--19d261228e0d2f2031fd63a9.md) | 153 | `result-track:19d261228e0d2f2031fd63a9923265e1512427a745823fa6d973c7068d3939c6` |
| 16 | `theorem` | [heat_sector_comm](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/declarations/heat-sector-comm--35fd38ccbd3374b21d684cff.md) | 164 | `result-track:35fd38ccbd3374b21d684cffc11e002fdce4f36114322e2b96446f71884adaab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
