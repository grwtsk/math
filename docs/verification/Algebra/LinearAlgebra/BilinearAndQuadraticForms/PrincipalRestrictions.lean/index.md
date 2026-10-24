# Verification target: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.PrincipalRestrictions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce542af96f800144f35d767757ebdb692a4a0426",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce542af96f800144f35d767757ebdb692a4a0426`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Std` — import line 2; external provider; requires a separately pinned dependency.
- `Init.Data.Rat` — import line 3; external provider; requires a separately pinned dependency.
- `Init.GrindInstances.Ring.Rat` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairForm](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean/declarations/pairform--12ee0ea5c16e02b024dff283.md) | 15 | `declaration-track:12ee0ea5c16e02b024dff283f22c332a0d3ce4735b46383c111859569f9f75b5` |
| 2 | `def` | [globalForm](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean/declarations/globalform--9c24d2e4af9aa38b40748887.md) | 16 | `declaration-track:9c24d2e4af9aa38b4074888797efa37fb621bbdf62593c9bdf7bccd4eb8455ca` |
| 3 | `theorem` | [pair_identity](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean/declarations/pair-identity--07c2bb59ae0773b3749f1d09.md) | 19 | `result-track:07c2bb59ae0773b3749f1d09faed9bbb7701777f624b4adfb9491da8190745da` |
| 4 | `theorem` | [pair_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean/declarations/pair-nonnegative--407c0087fd3ee1ffe1441e93.md) | 23 | `result-track:407c0087fd3ee1ffe1441e93e633c6618e19167d5d24eda539467e6c82457537` |
| 5 | `theorem` | [principal_restrictions](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean/declarations/principal-restrictions--53b07791254d8defb8c781a0.md) | 33 | `result-track:53b07791254d8defb8c781a03be3e6c26a1dcbde1379e2d33058bc9c9ddea59b` |
| 6 | `theorem` | [global_negative](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean/declarations/global-negative--5efa2cc917bff764f5ffb855.md) | 40 | `result-track:5efa2cc917bff764f5ffb855060b9678f854ef2b62f9d7ba77b39c578460ada4` |
| 7 | `theorem` | [not_global_positive](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean/declarations/not-global-positive--11e9b3a064af86c4bc8fc350.md) | 44 | `result-track:11e9b3a064af86c4bc8fc350d803e28e5427a6920efb050ccfb54face6184328` |
| 8 | `theorem` | [lower_bound_transfer](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/PrincipalRestrictions.lean/declarations/lower-bound-transfer--291478a6160272192c31f02f.md) | 51 | `result-track:291478a6160272192c31f02fc4377986d9260991decb8fc1d88be24d8bbbc49a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
