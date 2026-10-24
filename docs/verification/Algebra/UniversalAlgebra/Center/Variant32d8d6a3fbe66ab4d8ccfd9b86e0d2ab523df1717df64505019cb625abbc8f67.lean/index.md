# Verification target: GRWTSK.Algebra.UniversalAlgebra.Center.Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ae164483c00d919b762e9db9657081fe7c61456",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Center/Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ae164483c00d919b762e9db9657081fe7c61456`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Center/Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Center/Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Centralizer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Pointwise` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.star_mem_center](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67.lean/declarations/set-star-mem-center--1e3133bcc1c418a05cdef2bd.md) | 15 | `result-track:1e3133bcc1c418a05cdef2bd80c8da1e1262d2c58a036f54e3e1fb6b86ffb3ee` |
| 2 | `theorem` | [Set.star_mem_centralizer'](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67.lean/declarations/set-star-mem-centralizer--639b2f98b4e636abdb6db102.md) | 19 | `result-track:639b2f98b4e636abdb6db102614e6057a5adbd1d326b56e876bb0596160048d8` |
| 3 | `theorem` | [Set.star_mem_centralizer](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67.lean/declarations/set-star-mem-centralizer--b6b8150688d166889067f973.md) | 24 | `result-track:b6b8150688d166889067f9730eed325bdcf7314f6344aea84a87bba5ed8d418c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
