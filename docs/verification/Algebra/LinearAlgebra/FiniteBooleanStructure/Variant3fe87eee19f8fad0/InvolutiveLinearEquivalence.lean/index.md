# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant3fe87eee19f8fad0.InvolutiveLinearEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98586a8268afedb44d9d0e2294cc2932379c5d8b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/InvolutiveLinearEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/InvolutiveLinearEquivalence.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/InvolutiveLinearEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98586a8268afedb44d9d0e2294cc2932379c5d8b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/InvolutiveLinearEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/InvolutiveLinearEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GlobalProjection` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Galois` — import line 20; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Involution` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 22; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant3fe87eee19f8fad0.OneHotMatrixAction`](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/OneHotMatrixAction.lean/index.md) — import line 24; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [f2LinearMap](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/InvolutiveLinearEquivalence.lean/declarations/f2linearmap--a94f790aa4b13d09baff23df.md) | 44 | `declaration-track:a94f790aa4b13d09baff23dfe62a90f9f61cf2cff914ff52f21366a05d4c4993` |
| 2 | `theorem` | [f2LinearMap_apply](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/InvolutiveLinearEquivalence.lean/declarations/f2linearmap-apply--92c2be50fde02e842f4782ae.md) | 49 | `result-track:92c2be50fde02e842f4782aecea62da36811792d51734af9c33ed15c0169590c` |
| 3 | `theorem` | [f2LinearMap_involutive](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/InvolutiveLinearEquivalence.lean/declarations/f2linearmap-involutive--27678701a8f4269e2505fda0.md) | 54 | `result-track:27678701a8f4269e2505fda0c3f99d447813defadc304baad43befa4ac6ffde9` |
| 4 | `def` | [f2LinearEquiv](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/InvolutiveLinearEquivalence.lean/declarations/f2linearequiv--4eb8b5ec64dd05b81c617f15.md) | 61 | `declaration-track:4eb8b5ec64dd05b81c617f156236660076872ee4f6d96989b562d7c844e55328` |
| 5 | `theorem` | [f2LinearMap_injective](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/InvolutiveLinearEquivalence.lean/declarations/f2linearmap-injective--b21e3005c73e83652322933c.md) | 70 | `result-track:b21e3005c73e83652322933cc89a32baa67e1257a6e41965f4ab0849e54718cb` |
| 6 | `theorem` | [f2LinearMap_ker](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/InvolutiveLinearEquivalence.lean/declarations/f2linearmap-ker--99ba2d172ba64802fa0c7408.md) | 78 | `result-track:99ba2d172ba64802fa0c7408e2a6f8d0f1c6538b22182d25fa8c3560bfcd91d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
