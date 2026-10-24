# Verification target: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.ConcreteBooleanMathematics.Variantd8cb463b818e187b.RotationStateAndCycleCounts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3cae65cf246cbeaaae852b7340eaed8976ce191",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean/index.md) · [Full source](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3cae65cf246cbeaaae852b7340eaed8976ce191`.

Source path: `GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.DynamicalZeta` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaRotate3Indices](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean/declarations/zetarotate3indices--d3d747df11ab799b0f21e2d5.md) | 40 | `declaration-track:d3d747df11ab799b0f21e2d5354afc7d7ec6039ede53aca0f3a4d5892e396c83` |
| 2 | `def` | [zetaRotate3](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean/declarations/zetarotate3--4f99c26a561337178572f887.md) | 44 | `declaration-track:4f99c26a561337178572f887d411d4f8739d2c239045d624bf6955547677453d` |
| 3 | `example` | [(anonymous)](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean/declarations/example--8b16b62d8bdf6293c8fd0c42.md) | 47 | `declaration-track:8b16b62d8bdf6293c8fd0c4265f60ee6da6cf1764667bcb81f77898bb9a1fa61` |
| 4 | `example` | [(anonymous)](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean/declarations/example--c87be16b9710afe50a2a2405.md) | 50 | `declaration-track:c87be16b9710afe50a2a2405d2352be3b95159c0d7ae00d6083fdb9442ae3b54` |
| 5 | `example` | [(anonymous)](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean/declarations/example--8c4c74c710f96aae02886ae1.md) | 53 | `declaration-track:8c4c74c710f96aae02886ae1a1af9629ae2660e023ccc7ca7fa7ab3d1dd06fe2` |
| 6 | `example` | [(anonymous)](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean/declarations/example--aaeae6d538ca958afc07497c.md) | 56 | `declaration-track:aaeae6d538ca958afc07497c82d2d2884a5967ab47c0844682f538b1089ca5e8` |
| 7 | `example` | [(anonymous)](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean/declarations/example--cb81f0f7cf28cc7e6b5e8b02.md) | 59 | `declaration-track:cb81f0f7cf28cc7e6b5e8b02f77e159800aa4d02e314a8bec2df179baf7ac9a4` |
| 8 | `example` | [(anonymous)](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean/declarations/example--6f4102ca12f868784bb0cb5a.md) | 62 | `declaration-track:6f4102ca12f868784bb0cb5aab42f9255fef3c0318d8bb093bf03c71d9a16e32` |
| 9 | `example` | [(anonymous)](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/ConcreteBooleanMathematics/Variantd8cb463b818e187b/RotationStateAndCycleCounts.lean/declarations/example--de6b5808397f1a710fea4bf7.md) | 65 | `declaration-track:de6b5808397f1a710fea4bf7226373b1d2d8b4662be8a3d208f82dae212767c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
