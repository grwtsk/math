# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Finite.Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9272db02b325cedb50507bf44f192f85617d80e4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9272db02b325cedb50507bf44f192f85617d80e4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Hermitian` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteHilbert](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean/declarations/finitehilbert--3bf113144a5532195c014107.md) | 29 | `declaration-track:3bf113144a5532195c014107b65e2c51d3593437b07f01989901d365087d4080` |
| 2 | `abbrev` | [FiniteOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean/declarations/finiteoperator--4120a4e90c8073dea59376ef.md) | 33 | `declaration-track:4120a4e90c8073dea59376efc22028b6013724d5edbde4f4e68dbbebc4cf0042` |
| 3 | `def` | [FiniteOperator.toLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean/declarations/finiteoperator-tolinearmap--398ee78cda176570b6cf8d22.md) | 37 | `declaration-track:398ee78cda176570b6cf8d229b87e80b01831be3dede06439a1832066bac1d23` |
| 4 | `theorem` | [FiniteOperator.isSymmetric_toLinearMap_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean/declarations/finiteoperator-issymmetric-tolinearmap-iff--e14173eedbc87498a2dff3b0.md) | 45 | `result-track:e14173eedbc87498a2dff3b00d2f6ad236ff30a4587f5d97f64ccb4bc65dd66c` |
| 5 | `theorem` | [FiniteOperator.conjTranspose_toLinearMap_eq_adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean/declarations/finiteoperator-conjtranspose-tolinearmap-eq-adjoint--521e18e7c1d04ce0ae972c99.md) | 52 | `result-track:521e18e7c1d04ce0ae972c999d33240b40bebb696b46ec312cd372f583b019e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
