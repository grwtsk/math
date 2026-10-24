# Verification target: GRWTSK.Algebra.LinearAlgebra.Core.Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "943204c8e8865faddf74e65062ef3af7b9e7469d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Core/Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Core/Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Core/Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `943204c8e8865faddf74e65062ef3af7b9e7469d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Core/Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Core/Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveKernel](../../../../../mathematics/Algebra/LinearAlgebra/Core/Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d.lean/declarations/positivekernel--22292db421d63205e6c906d8.md) | 30 | `declaration-track:22292db421d63205e6c906d85ec88c0cc3e688903935e1668ea98fc76c66924c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Core/Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d.lean/declarations/instance--9876c6871988e19eadf6e0e6.md) | 38 | `declaration-track:9876c6871988e19eadf6e0e6ef5354fa7bd43ceddb6d2ba69417a6314ad62890` |
| 3 | `theorem` | [isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/Core/Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d.lean/declarations/ishermitian--758d7182fe05064a8ca4066d.md) | 42 | `result-track:758d7182fe05064a8ca4066d1b933115d68795d6c61f51cdd9fddb6d27ddca79` |
| 4 | `theorem` | [conj_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d.lean/declarations/conj-apply-symm--a09bb1162938646342ee65f7.md) | 48 | `result-track:a09bb1162938646342ee65f70c59621e80e38adad1fea22efef46b9f11f753ca` |
| 5 | `theorem` | [conj_matrix_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d.lean/declarations/conj-matrix-apply-symm--622977a2d66901da7dd23eb6.md) | 54 | `result-track:622977a2d66901da7dd23eb6ab7532548d6eba2f6769bfad52e33dbaed50bb8f` |
| 6 | `theorem` | [quadratic_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Core/Varianta6c541a2415f5fd41493e960f32f406de2dc3fad64d3959151e119d6a728ef1d.lean/declarations/quadratic-nonnegative--22445605cf54607a9003939b.md) | 60 | `result-track:22445605cf54607a9003939b55e6647e127df15071971a32cdd6114de6ad85c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
