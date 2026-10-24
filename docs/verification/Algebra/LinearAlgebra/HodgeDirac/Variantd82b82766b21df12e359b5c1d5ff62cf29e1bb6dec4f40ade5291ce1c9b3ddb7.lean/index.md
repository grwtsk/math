# Verification target: GRWTSK.Algebra.LinearAlgebra.HodgeDirac.Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c10912dc6d1ad867f6094ac91914a0a7ab587ff3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c10912dc6d1ad867f6094ac91914a0a7ab587ff3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.GammaSpindle` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.DifferentialComplex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Kronecker` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GradedTerrainComplex](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/declarations/gradedterraincomplex--0b2c5420d3e6f09ce37e00aa.md) | 34 | `declaration-track:0b2c5420d3e6f09ce37e00aa137f1676e71c053015ea8871c797229d1cafbc92` |
| 2 | `abbrev` | [DAFHilbert](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/declarations/dafhilbert--60e622d2ec4f82274ec28955.md) | 48 | `declaration-track:60e622d2ec4f82274ec2895505fe5f479cbe074de4f7d79562abc8a852efd6de` |
| 3 | `def` | [DAFTotalOperator](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/declarations/daftotaloperator--6a7abb580a03643a4f8242f9.md) | 54 | `declaration-track:6a7abb580a03643a4f8242f95a2355b88bf4db9a39cca390655b37efe4c25909` |
| 4 | `theorem` | [dafTotalOperator_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/declarations/daftotaloperator-selfadjoint--a5dc4217132bc3a4f69d7c22.md) | 64 | `result-track:a5dc4217132bc3a4f69d7c2282db959c0b02f4fe5c860133a9503e195ed14278` |
| 5 | `theorem` | [dafTotalOperator_sq](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/declarations/daftotaloperator-sq--94c28f76d6e80a93eb2c2ba1.md) | 79 | `result-track:94c28f76d6e80a93eb2c2ba1a5025a40505a74d2e1ce6656a61af9d055b2e6bc` |
| 6 | `theorem` | [dafGammaTotalOperator_sq](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/declarations/dafgammatotaloperator-sq--a3cb811a595634a894b45588.md) | 118 | `result-track:a3cb811a595634a894b455887c6f301dc48f3b9763baef49462fc7117a03ee81` |
| 7 | `def` | [PositiveSquare](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/declarations/positivesquare--c8f21c6c301161b0fab90b5e.md) | 133 | `declaration-track:c8f21c6c301161b0fab90b5ef6d9aa6d90972d4ff6807cbecaaeb10371c45c8d` |
| 8 | `theorem` | [dafTotalOperator_positiveSquare](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/declarations/daftotaloperator-positivesquare--f89cee3dd2a2e2ad92cf6552.md) | 146 | `result-track:f89cee3dd2a2e2ad92cf6552e84592c59d2535e062ff6456294851e314f3d580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
