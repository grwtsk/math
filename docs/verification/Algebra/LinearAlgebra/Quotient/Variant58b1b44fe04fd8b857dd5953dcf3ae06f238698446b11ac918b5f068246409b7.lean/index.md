# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06726e1c1130b8af3c3a909df5b6b256ce29bdb8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06726e1c1130b8af3c3a909df5b6b256ce29bdb8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Hilbert.Null` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreRhetoricalSpace](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/prerhetoricalspace--10b501b0bf5c9099cc2a085b.md) | 30 | `declaration-track:10b501b0bf5c9099cc2a085bfb7c958aa3d4fb9047737d50994c0e435041a447` |
| 2 | `def` | [preRhetoricalMk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/prerhetoricalmk--5736dc498aedfd14bb9b2e28.md) | 34 | `declaration-track:5736dc498aedfd14bb9b2e28ba143759ebb38fbbdece933ccbfdaf58e2dc867f` |
| 3 | `theorem` | [preRhetoricalInner_representative_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/prerhetoricalinner-representative-invariant--a9e6c0c3e2b74195e44641d1.md) | 41 | `result-track:a9e6c0c3e2b74195e44641d12bfac2a2e35a17a7f2fdf2ae29ce3c09865fa20b` |
| 4 | `def` | [preRhetoricalInner](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/prerhetoricalinner--a50f543b38ab669a9a09db30.md) | 58 | `declaration-track:a50f543b38ab669a9a09db30c1a4e07f19a2f23f8dbc7337a20661cbb9ba6181` |
| 5 | `theorem` | [preRhetoricalInner_wellDefined](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/prerhetoricalinner-welldefined--5a49e74e5a872d768d9a4bdc.md) | 66 | `result-track:5a49e74e5a872d768d9a4bdcd193e06505d3b53fc2f4904dd5e0f1ddc1bf072b` |
| 6 | `def` | [preRhetoricalPreCore](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/prerhetoricalprecore--543e51ad4b6b75a7811aeec4.md) | 74 | `declaration-track:543e51ad4b6b75a7811aeec454bb7b4db721a5edbed9812e824eb06a58f3f5d3` |
| 7 | `def` | [preRhetoricalCore](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/prerhetoricalcore--6c87019ec7a6139be604638f.md) | 122 | `declaration-track:6c87019ec7a6139be604638f612d5d14189ea495de66452886367c12d731fee3` |
| 8 | `instance` | [instPreRhetoricalNormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/instprerhetoricalnormedaddcommgroup--240900498299f18e20ad2856.md) | 134 | `declaration-track:240900498299f18e20ad2856f5b316e649356a97b44c2dae06bccf6f64074cfe` |
| 9 | `instance` | [instPreRhetoricalInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/instprerhetoricalinnerproductspace--be5c8e9b3a40cb8c45d47b3c.md) | 141 | `declaration-track:be5c8e9b3a40cb8c45d47b3c98df070b05e84573c73fe7b768443877c4e23fb6` |
| 10 | `theorem` | [preRhetorical_inner_self_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/prerhetorical-inner-self-eq-zero-iff--3eb7582f54fd28ced49763bd.md) | 146 | `result-track:3eb7582f54fd28ced49763bddc8076129134e34867f3a7e40e147729291a42ca` |
| 11 | `theorem` | [preRhetoricalMk_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/prerhetoricalmk-eq-zero-iff--d31d3db67994237ea2c68459.md) | 154 | `result-track:d31d3db67994237ea2c68459edb5cec22defef713c0bc05607ab9507a329542c` |
| 12 | `theorem` | [preRhetoricalInner_basisVector](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant58b1b44fe04fd8b857dd5953dcf3ae06f238698446b11ac918b5f068246409b7.lean/declarations/prerhetoricalinner-basisvector--da0af0ca2f35931ace0d486f.md) | 163 | `result-track:da0af0ca2f35931ace0d486fc6c26a7aee7b7de67915a6ef47aeae0b17ad9546` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
