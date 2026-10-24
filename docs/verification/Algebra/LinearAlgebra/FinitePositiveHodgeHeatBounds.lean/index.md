# Verification target: GRWTSK.LinearAlgebra.FinitePositiveHodgeHeatBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a24a5e5ccc49eb5021f88c8ec78f0b0b8483b930",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a24a5e5ccc49eb5021f88c8ec78f0b0b8483b930`.

Source path: `GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean.json)

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
| 1 | `theorem` | [heat_gap_contracts](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean/declarations/heat-gap-contracts--d8ed84f316f739b0b91a5d04.md) | 12 | `result-track:d8ed84f316f739b0b91a5d048475fcc122c2d91325503901e5fd63c16323169c` |
| 2 | `theorem` | [energy_smul](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean/declarations/energy-smul--aca952e371e084905e19ea82.md) | 58 | `result-track:aca952e371e084905e19ea82784a4be22be4e17efdbf7915a8b099b77c4235f3` |
| 3 | `theorem` | [energy_inv_smul](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean/declarations/energy-inv-smul--434cd418793343e59c5323ae.md) | 68 | `result-track:434cd418793343e59c5323aeb92fd337f7e36d5d9c66b1861cb44c231f9bbae9` |
| 4 | `def` | [signedQuadratic](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean/declarations/signedquadratic--5a63ec42e78464632f9141fc.md) | 73 | `declaration-track:5a63ec42e78464632f9141fc69a628afd33691669ea7741ac54f574d753f9471` |
| 5 | `theorem` | [signedQuadratic_negative](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean/declarations/signedquadratic-negative--330d5c537fcdb22e099b263b.md) | 77 | `result-track:330d5c537fcdb22e099b263b5f51fc5c445c42ba93be1cdf748fd238f79766ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
