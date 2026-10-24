# Verification target: GRWTSK.Algebra.Hecke.G2BraidSixMatrices

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2469ddfe17340123dd8387cc25e1e2c22b9acb9e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2469ddfe17340123dd8387cc25e1e2c22b9acb9e`.

Source path: `GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hecke/G2BraidSixMatrices.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [g2HeckeS](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/declarations/g2heckes--43d55d632b29f134d22c6be6.md) | 14 | `declaration-track:43d55d632b29f134d22c6be6fedcad3ca5c546d502f899488917683f1080be6b` |
| 2 | `def` | [g2HeckeT](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/declarations/g2hecket--8d09de16760b40c339d35e7c.md) | 17 | `declaration-track:8d09de16760b40c339d35e7c40905596c2ffff773bc5f285546be8dad083af5e` |
| 3 | `theorem` | [g2HeckeS_quadratic](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/declarations/g2heckes-quadratic--4762036ed7878c4e54f1f469.md) | 20 | `result-track:4762036ed7878c4e54f1f46916a3a0bdc76986a6429bb8a2d6a2ea10a8ecd905` |
| 4 | `theorem` | [g2HeckeT_quadratic](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/declarations/g2hecket-quadratic--bdb2600b0a11720791c2dd54.md) | 27 | `result-track:bdb2600b0a11720791c2dd54e572214bad96ae474b0a1677bdcc9b7bc54e640c` |
| 5 | `theorem` | [g2HeckeST_cube](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/declarations/g2heckest-cube--47419199d37634669c209cbd.md) | 34 | `result-track:47419199d37634669c209cbd85006c90afb115c098d407cbf1c51a648bbb709f` |
| 6 | `theorem` | [g2HeckeTS_cube](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/declarations/g2heckets-cube--1414968241b83b8174792e23.md) | 41 | `result-track:1414968241b83b8174792e23fcbb42bbff155e276e4e0561689f4b264a2f0a19` |
| 7 | `theorem` | [g2Hecke_braid_six](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/declarations/g2hecke-braid-six--e2a95e46f612dae1d0adaf99.md) | 48 | `result-track:e2a95e46f612dae1d0adaf99a3173a7d825f79a280bd8db55701a346abd4ffc0` |
| 8 | `theorem` | [g2Hecke_at_one_involutions](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/declarations/g2hecke-at-one-involutions--558f6e721c81ad0fe9e18531.md) | 55 | `result-track:558f6e721c81ad0fe9e18531de653a160e838ba8abdc898d223f734e3440dd42` |
| 9 | `theorem` | [g2Hecke_at_one_sixth_power](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/declarations/g2hecke-at-one-sixth-power--4882a0f6450c4c71bed8e2f0.md) | 62 | `result-track:4882a0f6450c4c71bed8e2f000d11f4fea524ed7d3ae353991ed02965bab1f58` |
| 10 | `theorem` | [g2Hecke_at_one_cube_ne_one](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/declarations/g2hecke-at-one-cube-ne-one--ec9eb1c92eb5652f19670403.md) | 69 | `result-track:ec9eb1c92eb5652f19670403857b87102e44b349c2439bd8601d8a8b6006762b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
