# Verification target: GRWTSK.Algebra.LinearAlgebra.Extension.Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ef9f9aa0afb7e955491159007a3c85d0622bd48",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ef9f9aa0afb7e955491159007a3c85d0622bd48`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearPMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [step](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean/declarations/step--8d325bd5b25ac1fcca4f5f0b.md) | 61 | `result-track:8d325bd5b25ac1fcca4f5f0b5a9d310843e8c51f63c6f68471055260b70eafc2` |
| 2 | `theorem` | [exists_top](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean/declarations/exists-top--33a81f21f7f478af1450c693.md) | 108 | `result-track:33a81f21f7f478af1450c69316f461493aa1d1439a7c694511b609fdbea09923` |
| 3 | `theorem` | [riesz_extension](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean/declarations/riesz-extension--d1774de098a8318bb312da2d.md) | 140 | `result-track:d1774de098a8318bb312da2dec5ff09d1f37e53e8b6e6846a39c3c1b89f80c4c` |
| 4 | `theorem` | [exists_extension_of_le_sublinear](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean/declarations/exists-extension-of-le-sublinear--b740588ebc4b7e6945a1d2c9.md) | 154 | `result-track:b740588ebc4b7e6945a1d2c916b759f1e5ee5aee6e7cfd73ec0fb6fe86070b86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
