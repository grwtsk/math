# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.FiniteTriangleAndEndpointPermutations.Variant03d73452c99c6fd3.TriangleCycleAndEndpointData

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97fc41ba6e32e8a279d53eb7d91c8ff274ca56ea",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteTriangleAndEndpointPermutations/Variant03d73452c99c6fd3/TriangleCycleAndEndpointData.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteTriangleAndEndpointPermutations/Variant03d73452c99c6fd3/TriangleCycleAndEndpointData.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteTriangleAndEndpointPermutations/Variant03d73452c99c6fd3/TriangleCycleAndEndpointData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97fc41ba6e32e8a279d53eb7d91c8ff274ca56ea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteTriangleAndEndpointPermutations/Variant03d73452c99c6fd3/TriangleCycleAndEndpointData.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteTriangleAndEndpointPermutations/Variant03d73452c99c6fd3/TriangleCycleAndEndpointData.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GridCell` — import line 22; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.Stroke` — import line 23; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TriangleVertex](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteTriangleAndEndpointPermutations/Variant03d73452c99c6fd3/TriangleCycleAndEndpointData.lean/declarations/trianglevertex--6d34f928d6f949a1b61e8589.md) | 43 | `declaration-track:6d34f928d6f949a1b61e858920f3f5dba98751571113e1a75dcca9cf4bc4818d` |
| 2 | `def` | [triangleSuccessor](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteTriangleAndEndpointPermutations/Variant03d73452c99c6fd3/TriangleCycleAndEndpointData.lean/declarations/trianglesuccessor--cf01149344c2167d4640cd8e.md) | 50 | `declaration-track:cf01149344c2167d4640cd8e19c1b56ee94c73f326cd3d8efdd607c3819236f8` |
| 3 | `theorem` | [triangleSuccessor_third_power](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteTriangleAndEndpointPermutations/Variant03d73452c99c6fd3/TriangleCycleAndEndpointData.lean/declarations/trianglesuccessor-third-power--a3c48e18ef37d37dfc46f9a1.md) | 63 | `result-track:a3c48e18ef37d37dfc46f9a1f34a13d4d8d510964f5c1319876ce9051a5fe241` |
| 4 | `structure` | [BraidEndpointPresentation](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteTriangleAndEndpointPermutations/Variant03d73452c99c6fd3/TriangleCycleAndEndpointData.lean/declarations/braidendpointpresentation--e20a4b312169e75d519a2338.md) | 68 | `declaration-track:e20a4b312169e75d519a23384eab6e7ad61cf634cc4ee546f0a10c04b01e8af2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
