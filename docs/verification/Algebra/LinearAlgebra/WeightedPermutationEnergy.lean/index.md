# Verification target: GRWTSK.LinearAlgebra.WeightedPermutationEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5afcf0ea9f5f4721ba1e757e368b0d48a8e6edb9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/WeightedPermutationEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5afcf0ea9f5f4721ba1e757e368b0d48a8e6edb9`.

Source path: `GRWTSK/LinearAlgebra/WeightedPermutationEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/WeightedPermutationEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transport](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/transport--bb563b47638014ee39876451.md) | 27 | `declaration-track:bb563b47638014ee398764512fe375cc1f2104215b074f82e346d141eccf1c2b` |
| 2 | `theorem` | [transport_at](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/transport-at--60e1a4c15370a193f4b10cb2.md) | 30 | `result-track:60e1a4c15370a193f4b10cb22dffabe9d5bdd85ce43632a29cf06e680731a995` |
| 3 | `def` | [energy](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energy--675f7696b36897441e625f20.md) | 35 | `declaration-track:675f7696b36897441e625f2008c58fedc885d37eb5d12bb48b90bfc73484c7c6` |
| 4 | `def` | [energyWith](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energywith--079cc20e6d1451f629398b95.md) | 38 | `declaration-track:079cc20e6d1451f629398b95bdb231de005e0988c839cbbfbb36ee6002a1ec84` |
| 5 | `theorem` | [energyWith_one](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energywith-one--fc05ea810710bea3143ff70b.md) | 40 | `result-track:fc05ea810710bea3143ff70bbcd9a8a0c34c3ec939dba00b57ab1de920d7a8ed` |
| 6 | `theorem` | [energy_nonneg](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energy-nonneg--16ccbe3cdfff4c1f230ac9f8.md) | 43 | `result-track:16ccbe3cdfff4c1f230ac9f84092ffb34e1f202da4c78994613d2d9e644196e1` |
| 7 | `theorem` | [energy_eq_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energy-eq-zero-iff--1f5d29b29ef5181d2fb3c1fc.md) | 47 | `result-track:1f5d29b29ef5181d2fb3c1fc2c76dcfb62174977a01fb6053003a99944ebe82d` |
| 8 | `theorem` | [energyWith_transport](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energywith-transport--815b66de20e2a04514f5e5b4.md) | 60 | `result-track:815b66de20e2a04514f5e5b465ff750e72b88d4350b7fdff38fe850c274542a4` |
| 9 | `theorem` | [energy_transport](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energy-transport--a35585d26aeeac60cb8671fe.md) | 70 | `result-track:a35585d26aeeac60cb8671fe768f7b53c6e01ac4421fd2dcd4573e2ff4f0e2e7` |
| 10 | `theorem` | [energyWith_bounds](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energywith-bounds--e7d6fb1fd7ca15b62b84bdbf.md) | 76 | `result-track:e7d6fb1fd7ca15b62b84bdbf247a6890f65d68a960e3ff3bc075fad760c35d13` |
| 11 | `theorem` | [energyWith_conformal](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energywith-conformal--a7c57f20640bd99191643d48.md) | 86 | `result-track:a7c57f20640bd99191643d48bcb8edc8adc4ac9de727efdb3757ae482cf0cd97` |
| 12 | `theorem` | [energyWith_scale](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energywith-scale--5442731dc738aa8b1d7f23d0.md) | 96 | `result-track:5442731dc738aa8b1d7f23d0c6c1b9177c5e0badac84e33b2105162eb0dc2475` |
| 13 | `def` | [unitVector](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/unitvector--41c027a95f1c49906d8ea53e.md) | 105 | `declaration-track:41c027a95f1c49906d8ea53eeb657a1ddbbf61d7ec116fd217a179335f874ae2` |
| 14 | `theorem` | [energyWith_unitVector](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energywith-unitvector--2098cfd181bfe863215cbb7b.md) | 107 | `result-track:2098cfd181bfe863215cbb7bdb50882ef9b8d884d35eb083c0464a3a78e13266` |
| 15 | `theorem` | [energy_unitVector](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energy-unitvector--0a92bf7f78f71a4d391bdeee.md) | 111 | `result-track:0a92bf7f78f71a4d391bdeee53ebed49e9e7514df4cfaaaab84c735a9e547051` |
| 16 | `theorem` | [energy_transport_unitVector](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/declarations/energy-transport-unitvector--31d253df241c6e186f2cee6f.md) | 115 | `result-track:31d253df241c6e186f2cee6fa847b707e6ee45b1980981087f4d93bbfee1848a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
