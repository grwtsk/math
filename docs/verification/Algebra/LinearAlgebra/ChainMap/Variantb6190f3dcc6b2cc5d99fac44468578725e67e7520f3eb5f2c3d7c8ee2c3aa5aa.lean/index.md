# Verification target: GRWTSK.Algebra.LinearAlgebra.ChainMap.Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f628550516d87677a596e11163c354d78cfa344",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f628550516d87677a596e11163c354d78cfa344`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fold.Core` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.HodgeDirac` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FoldUnitary](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean/declarations/foldunitary--6deb821ccc906fc61684287f.md) | 23 | `declaration-track:6deb821ccc906fc61684287f355f445f843fc401487df9052477745ef3dbe7c9` |
| 2 | `theorem` | [intertwinesCodifferential](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean/declarations/intertwinescodifferential--166196128daab26a3cd0aa39.md) | 40 | `result-track:166196128daab26a3cd0aa39512d98aeacb2121239c6240676fa3f183cdd48b2` |
| 3 | `theorem` | [fold_intertwines_hodgeDirac](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean/declarations/fold-intertwines-hodgedirac--5d749dc6094a6cc959f9e7a1.md) | 65 | `result-track:5d749dc6094a6cc959f9e7a1678039c0bdc2dec5780531bcf70e2e98360b5a38` |
| 4 | `theorem` | [fold_intertwines_laplacian](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean/declarations/fold-intertwines-laplacian--ee28cb445170ab34ec547c60.md) | 71 | `result-track:ee28cb445170ab34ec547c60beebbca0190635541de93601f804b501f0b69eb3` |
| 5 | `theorem` | [isUnitary](../../../../../mathematics/Algebra/LinearAlgebra/ChainMap/Variantb6190f3dcc6b2cc5d99fac44468578725e67e7520f3eb5f2c3d7c8ee2c3aa5aa.lean/declarations/isunitary--1eedd15d180a231cd806d822.md) | 90 | `result-track:1eedd15d180a231cd806d822ecfa5438c955cb7f6d73f04465b4ff0a6d5a74f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
