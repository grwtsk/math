# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.PrimePowerHermitianBlocks.Variantd4ac12273b41da1f.FinitePrimeBlocksAndBlockDiagonalHermiticity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1705edfa44d6f700f60b20ea409468f4f130d2ec",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1705edfa44d6f700f60b20ea409468f4f130d2ec`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.DirichletCharacterProfile` — import line 19; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Reflection` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePrimeSpoke](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean/declarations/finiteprimespoke--eee1213c6736e33e05a2ba82.md) | 42 | `declaration-track:eee1213c6736e33e05a2ba82ebf83f0d83942397324856b17069d2474803c37b` |
| 2 | `def` | [FinitePrimeSpoke.characterValue](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean/declarations/finiteprimespoke-charactervalue--3e6275b6a3104d3ee302d923.md) | 50 | `declaration-track:3e6275b6a3104d3ee302d9236d76e65278a0cace9176a31dab41ef6277e746ad` |
| 3 | `def` | [finitePrimeSpokeBlock](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean/declarations/finiteprimespokeblock--0dbf17970ebc31744b080994.md) | 56 | `declaration-track:0dbf17970ebc31744b0809943e16d653a956a13dcfb3abb9b649ed5051667eff` |
| 4 | `theorem` | [finitePrimeSpokeBlock_selfAdjoint](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean/declarations/finiteprimespokeblock-selfadjoint--2f4e88019abd9350cf97485e.md) | 62 | `result-track:2f4e88019abd9350cf97485e1ed8913343404990f6383c05ece3b269071fe552` |
| 5 | `def` | [finitePrimeSpokeOperator](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean/declarations/finiteprimespokeoperator--a8aa504b15f1fd1c358de969.md) | 73 | `declaration-track:a8aa504b15f1fd1c358de96929fbd996aadc530fe8d9c43dc1f0fdc94eea9564` |
| 6 | `theorem` | [finitePrimeSpokeOperator_selfAdjoint](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean/declarations/finiteprimespokeoperator-selfadjoint--ae79ebaa0e35510f457d6e30.md) | 80 | `result-track:ae79ebaa0e35510f457d6e30f077be8b044981723c59e0d6fb489fa3627b8e5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
