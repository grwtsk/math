# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Square.Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "427c27766f72d9e48888f5e4b226a6bb5cf8e3f2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `427c27766f72d9e48888f5e4b226a6bb5cf8e3f2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.CommSq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Square` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [cokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean/declarations/cokernelcofork--608039d3065c4aafcbb13d56.md) | 27 | `declaration-track:608039d3065c4aafcbb13d5623f9df9481de9a2a70e786c8cbf95c86ff69c874` |
| 2 | `def` | [isPushoutEquivIsColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean/declarations/ispushoutequiviscolimitcokernelcofork--658b3b67808a6d84297e67bf.md) | 33 | `declaration-track:658b3b67808a6d84297e67bf7c6b53e2ac7f05343e07c1060573383050334af2` |
| 3 | `def` | [IsPushout.isColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean/declarations/ispushout-iscolimitcokernelcofork--35170189b22c06d163f3a6b9.md) | 44 | `declaration-track:35170189b22c06d163f3a6b9b9b87dd6081535146f580f3c76bef37d26bd2081` |
| 4 | `abbrev` | [kernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean/declarations/kernelfork--31b389af0a3a346ced676ad0.md) | 49 | `declaration-track:31b389af0a3a346ced676ad00c1bc84a9014b306e5c3b04bc3426d409933a0a0` |
| 5 | `def` | [isPullbackEquivIsLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean/declarations/ispullbackequivislimitkernelfork--231097922b91092d42a9f04d.md) | 55 | `declaration-track:231097922b91092d42a9f04dd5661a11063f45b0cf261eab406dcd8e5727efcb` |
| 6 | `def` | [IsPullback.isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe.lean/declarations/ispullback-islimitkernelfork--f45ae1e8e7a17eb56acf5dad.md) | 66 | `declaration-track:f45ae1e8e7a17eb56acf5dad1b93d113a55a76fea9ddbbb3809a22e19d1c9179` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
