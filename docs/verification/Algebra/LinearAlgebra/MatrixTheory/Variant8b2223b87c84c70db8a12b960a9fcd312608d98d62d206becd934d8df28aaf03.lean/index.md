# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "099e27fe7102b8fe3a0be9f025805cbedb2affea",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `099e27fe7102b8fe3a0be9f025805cbedb2affea`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Notation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 12; external provider; requires a separately pinned dependency.
- `Qq` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Tactic.GuardExpr` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `elab` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/declarations/elab--36074408958df5304ea3091f.md) | 39 | `declaration-track:36074408958df5304ea3091f0924d14e6a4b765e940fe66a0ae5e8eb97fa95ec` |
| 2 | `def` | [mkMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/declarations/mkmatrix--ecede9d6f8a83f4a9cdbd3cf.md) | 68 | `declaration-track:ecede9d6f8a83f4a9cdbd3cf8d3cdb7d03c2088bbac04d6d1f764d8dc06a69b7` |
| 3 | `def` | [mkColumnVector](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/declarations/mkcolumnvector--77391188949d983a5f529756.md) | 70 | `declaration-track:77391188949d983a5f52975651fb0c41bf9b23232796090cbc9cd1e51c3c9fc5` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/declarations/example--3a114942c421f8eae5d64b94.md) | 92 | `declaration-track:3a114942c421f8eae5d64b94192a8e7d6755a707abfbb5d97f7140f08361830a` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/declarations/example--cc9ab51b32bc7be808631281.md) | 96 | `declaration-track:cc9ab51b32bc7be808631281ba39be347dd33b852d627c49361bd9f9acad5c35` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/declarations/example--ffbcf2dfa8ce925620a8d80b.md) | 100 | `declaration-track:ffbcf2dfa8ce925620a8d80bc88648448891da7807b5076e54ea90bcf71d1b2d` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/declarations/example--468748377c90ffef14ecc33a.md) | 105 | `declaration-track:468748377c90ffef14ecc33a099f47096c4b930ac3e75becd5adad54c7f1dc51` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/declarations/example--7142d4979bcd2bbb68a638a2.md) | 146 | `declaration-track:7142d4979bcd2bbb68a638a28c2d18c16341bfb16c93a07abbbf5f2957f6dacb` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/declarations/example--5ca6e12b3ae752fae78643d8.md) | 156 | `declaration-track:5ca6e12b3ae752fae78643d86049900891e9003550fde86d6592343106955f9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
