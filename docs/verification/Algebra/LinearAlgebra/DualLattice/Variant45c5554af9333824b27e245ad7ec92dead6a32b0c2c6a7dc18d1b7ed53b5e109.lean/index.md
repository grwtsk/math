# Verification target: GRWTSK.Algebra.LinearAlgebra.DualLattice.Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2bd67dbb9371238a61150d066f8c2afea9204e9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2bd67dbb9371238a61150d066f8c2afea9204e9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.Properties` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/declarations/dualsubmodule--bad5cba05a4c7a2e57136eb4.md) | 40 | `declaration-track:bad5cba05a4c7a2e57136eb441d1921dfbce802f7374c88565b2a897d8005fe6` |
| 2 | `lemma` | [mem_dualSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/declarations/mem-dualsubmodule--343f141beb9af602ce56a8c3.md) | 49 | `result-track:343f141beb9af602ce56a8c3b4d462492619738fa06c6be8ac8918b74373a3b4` |
| 3 | `lemma` | [le_flip_dualSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/declarations/le-flip-dualsubmodule--cf79eea827b16da21a8c0e34.md) | 52 | `result-track:cf79eea827b16da21a8c0e345ff0ea8783909a284703db7186af8d57145f97ba` |
| 4 | `def` | [dualSubmoduleParing](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/declarations/dualsubmoduleparing--31145350d38217f67e86c0ed.md) | 61 | `declaration-track:31145350d38217f67e86c0edc1e6f2971e3d07286ff3479c7ac1533e8d70a5a5` |
| 5 | `lemma` | [dualSubmoduleParing_spec](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/declarations/dualsubmoduleparing-spec--98191c086df9c36f758612e3.md) | 65 | `result-track:98191c086df9c36f758612e33c14e747aec367b085faf8c74ea6be5a084b98b5` |
| 6 | `def` | [dualSubmoduleToDual](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/declarations/dualsubmoduletodual--73a9364fbee7b95b61310d13.md) | 73 | `declaration-track:73a9364fbee7b95b61310d134cfebfea3bf905bf2910d394a1bd9f859503f635` |
| 7 | `lemma` | [dualSubmoduleToDual_injective](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/declarations/dualsubmoduletodual-injective--1c1a41fd60187f17c277ec98.md) | 85 | `result-track:1c1a41fd60187f17c277ec98e1443a9421a6deeb58b73e7f736f38f43b76e718` |
| 8 | `lemma` | [dualSubmodule_span_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/declarations/dualsubmodule-span-of-basis--ae5219b0961664a70efe3ec4.md) | 95 | `result-track:ae5219b0961664a70efe3ec4ad20cd072cd107d21433bdabd3048167e5446e4a` |
| 9 | `lemma` | [dualSubmodule_dualSubmodule_flip_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/declarations/dualsubmodule-dualsubmodule-flip-of-basis--9d7fcfdceef3f69103420a03.md) | 120 | `result-track:9d7fcfdceef3f69103420a03d4721ec112b31ec1f894025aed2985ac2d6949d8` |
| 10 | `lemma` | [dualSubmodule_flip_dualSubmodule_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/declarations/dualsubmodule-flip-dualsubmodule-of-basis--e8d28912d228b47e2278c0d6.md) | 129 | `result-track:e8d28912d228b47e2278c0d6951ad36b9c42a649ada8b918a621749c8ecc910f` |
| 11 | `lemma` | [dualSubmodule_dualSubmodule_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/declarations/dualsubmodule-dualsubmodule-of-basis--4b77e665a77263fb88f1e951.md) | 138 | `result-track:4b77e665a77263fb88f1e951e34961813513e528e0acdc0bfa7b4cb8e84c4c29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
