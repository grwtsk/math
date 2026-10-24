# Verification target: GRWTSK.Algebra.LinearAlgebra.QuadraticForm.Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7dcc0196155df31652a2106ddc987597c518fb3c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7dcc0196155df31652a2106ddc987597c518fb3c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuadraticForm/Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Two` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a.lean/declarations/b--d034d6261479a597cbac22d9.md) | 30 | `declaration-track:d034d6261479a597cbac22d9d412e04b66e52c2da696e2a04549089933f926f6` |
| 2 | `theorem` | [B_apply](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a.lean/declarations/b-apply--7c0a616aa00e36e56367960e.md) | 36 | `result-track:7c0a616aa00e36e56367960e29e759d331c6aea354bf2363ec8426bfa6039a92` |
| 3 | `theorem` | [isSymm_B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a.lean/declarations/issymm-b--e255e9faf3d08ad8cfdda961.md) | 40 | `result-track:e255e9faf3d08ad8cfdda9617ea134b17621480a6cdf38725272eb520b03efa4` |
| 4 | `theorem` | [isAlt_B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a.lean/declarations/isalt-b--0b558c65a570ca9afb4bca35.md) | 43 | `result-track:0b558c65a570ca9afb4bca354e063d1244b19c5d0d1f3de52b0150fc80aa0c21` |
| 5 | `theorem` | [B_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a.lean/declarations/b-ne-zero--04513d6e2619836a84c347d4.md) | 46 | `result-track:04513d6e2619836a84c347d4f0f42638c5c31dd9eb2d95a8b2b9766eb746dae2` |
| 6 | `theorem` | [BilinForm.not_injOn_toQuadraticForm_isSymm.](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a.lean/declarations/bilinform-not-injon-toquadraticform-issymm--1911ab5cbeeead71687047b7.md) | 53 | `result-track:1911ab5cbeeead71687047b717907456ea18085f0075c95f7056413f8aa89b18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
