# Verification target: GRWTSK.Algebra.LinearAlgebra.Orthogonal.Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0bc1867f39f4761515742b1bf214878fc0f3227",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0bc1867f39f4761515742b1bf214878fc0f3227`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Mul` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean/declarations/hasorthogonalrows--3d308b2a807c62537be738bd.md) | 37 | `declaration-track:3d308b2a807c62537be738bda08384bcc8fbbdbb833405baf0ce5188b7e04524` |
| 2 | `def` | [HasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean/declarations/hasorthogonalcols--84788a01ede9fcb38ab37260.md) | 42 | `declaration-track:84788a01ede9fcb38ab3726086bfd5a9951869ceb7cfcb863b0fdfafbcd5c4c1` |
| 3 | `theorem` | [transpose_hasOrthogonalRows_iff_hasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean/declarations/transpose-hasorthogonalrows-iff-hasorthogonalcols--10d42e8b21be421815cf3488.md) | 47 | `result-track:10d42e8b21be421815cf34889f7b466dbf0d1b159e4b95ed71093c001a9f5e54` |
| 4 | `theorem` | [transpose_hasOrthogonalCols_iff_hasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean/declarations/transpose-hasorthogonalcols-iff-hasorthogonalrows--4a43e09ff0cc79f249f20b29.md) | 53 | `result-track:4a43e09ff0cc79f249f20b2978c9411abc6093dd9677b2a9e1f428c6d28baaa6` |
| 5 | `theorem` | [HasOrthogonalRows.hasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean/declarations/hasorthogonalrows-hasorthogonalcols--69f0c43243f29511e341602a.md) | 59 | `result-track:69f0c43243f29511e341602a225a661fbe31179f2aecad789da79c23fd8ebe7f` |
| 6 | `theorem` | [HasOrthogonalCols.transpose_hasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean/declarations/hasorthogonalcols-transpose-hasorthogonalrows--1b043cb4078e9837d40cdee8.md) | 63 | `result-track:1b043cb4078e9837d40cdee86026a5f2117a160c07868237eeac7dce778600a8` |
| 7 | `theorem` | [HasOrthogonalCols.hasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean/declarations/hasorthogonalcols-hasorthogonalrows--0dbb0f16aabcdd3e0906d15e.md) | 67 | `result-track:0dbb0f16aabcdd3e0906d15e7393484ca2a20b68d4eeeab9fe4dfb4176a10b40` |
| 8 | `theorem` | [HasOrthogonalRows.transpose_hasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean/declarations/hasorthogonalrows-transpose-hasorthogonalcols--f2d3c86ffb380cb1fdee0aed.md) | 71 | `result-track:f2d3c86ffb380cb1fdee0aed9e3a65e257cce15d18c93f04dd0ef747b51aa105` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
