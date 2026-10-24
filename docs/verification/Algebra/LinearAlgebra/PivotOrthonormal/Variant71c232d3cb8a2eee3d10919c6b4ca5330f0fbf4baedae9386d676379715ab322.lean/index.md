# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotOrthonormal.Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20e1714ebe9797c029a6f9a1d4386faf4ec3fa10",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20e1714ebe9797c029a6f9a1d4386faf4ec3fa10`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Submodule` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_orthonormal_frame_of_intrinsicPlane](../../../../../mathematics/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean/declarations/exists-orthonormal-frame-of-intrinsicplane--7652f0f173da4bd45f9791db.md) | 23 | `result-track:7652f0f173da4bd45f9791db7fee1d0df62c64c0ec3dbb248ac8568f42484b79` |
| 2 | `theorem` | [exists_orthogonal_rowChange_of_orthonormal_frames](../../../../../mathematics/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean/declarations/exists-orthogonal-rowchange-of-orthonormal-frames--6ca400cab1308078f1487354.md) | 60 | `result-track:6ca400cab1308078f1487354e97126d335e102f1336edd0297c4019c2b539fa9` |
| 3 | `theorem` | [intrinsicPlane_controlled_orthonormal_pivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean/declarations/intrinsicplane-controlled-orthonormal-pivot--4f7f3ad9eec89a2fdc8ccd1e.md) | 78 | `result-track:4f7f3ad9eec89a2fdc8ccd1e2bb26cacd308445671e878b087f84bbc1e9fe270` |
| 4 | `theorem` | [controlledPivotDomain_orthonormal_representative_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean/declarations/controlledpivotdomain-orthonormal-representative-iff--b732877aec0c88580a30d115.md) | 87 | `result-track:b732877aec0c88580a30d1152702ba37b001823e02ce103721a61e5c30aa3bcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
