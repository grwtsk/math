# Verification target: GRWTSK.Algebra.LinearAlgebra.EqLocus.Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1462cc65e63d6608137e07e66c5c835350fbfb79",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1462cc65e63d6608137e07e66c5c835350fbfb79`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Ker` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eqLocus](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean/declarations/eqlocus--b85c38ffa6dfdb5b667806f8.md) | 43 | `declaration-track:b85c38ffa6dfdb5b667806f826830935c773035b79bd5638169c64382be77cbb` |
| 2 | `theorem` | [mem_eqLocus](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean/declarations/mem-eqlocus--045e976d4fb570b94a6e5ed4.md) | 51 | `result-track:045e976d4fb570b94a6e5ed461e07f9ffb4e40657327829428cdc7ac86a78bb7` |
| 3 | `theorem` | [eqLocus_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean/declarations/eqlocus-toaddsubmonoid--943d396e14f739ae7326d578.md) | 54 | `result-track:943d396e14f739ae7326d57807d1480ab1207dc3238289170decbc508b58779f` |
| 4 | `theorem` | [eqLocus_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean/declarations/eqlocus-eq-top--229621e2bbe86b6c8afc0db8.md) | 59 | `result-track:229621e2bbe86b6c8afc0db8bc99fa5dd6e35ee1e5705d7e159849ba9a73cfa8` |
| 5 | `theorem` | [eqLocus_same](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean/declarations/eqlocus-same--1a5042750083f29f384ee565.md) | 63 | `result-track:1a5042750083f29f384ee565a0fed4f0b7dd8021f42bf43f92c73bf75fec50f7` |
| 6 | `theorem` | [le_eqLocus](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean/declarations/le-eqlocus--de4eaab691d1893c91d3e1a9.md) | 65 | `result-track:de4eaab691d1893c91d3e1a93c6f4dc832870801b957a223b9e435113887355f` |
| 7 | `theorem` | [eqOn_sup](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean/declarations/eqon-sup--71131070cba2bf5dd8689339.md) | 68 | `result-track:71131070cba2bf5dd8689339d4f39f7ccb197c0ac65276fddf8c46750f05518f` |
| 8 | `theorem` | [ext_on_codisjoint](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean/declarations/ext-on-codisjoint--67752aeafb2a205b1a9419da.md) | 74 | `result-track:67752aeafb2a205b1a9419da75b24a2f1e3748c54c71793570a308484b6a1c79` |
| 9 | `theorem` | [eqLocus_eq_ker_sub](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantdd6315f2346e8707e37ee5f0fa70db4239b02e702e1029b486b4ac4cfa731ce7.lean/declarations/eqlocus-eq-ker-sub--914e33a9003ea24261013f5b.md) | 91 | `result-track:914e33a9003ea24261013f5b46b753625a4bc3eb24d04effb770b08bc44f6414` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
