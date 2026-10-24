# Verification target: GRWTSK.Algebra.LinearAlgebra.LagrangeMultipliers.Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f497cd710587d4e191e5cd8092441a80cf5db620",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f497cd710587d4e191e5cd8092441a80cf5db620`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLocalExtrOn.range_ne_top_of_hasStrictFDerivAt](../../../../../mathematics/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean/declarations/islocalextron-range-ne-top-of-hasstrictfderivat--6950f2937335e2e02d436300.md) | 43 | `result-track:6950f2937335e2e02d4363002e813b28cf599b314f112f978980d41bc3832572` |
| 2 | `theorem` | [IsLocalExtrOn.exists_linear_map_of_hasStrictFDerivAt](../../../../../mathematics/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean/declarations/islocalextron-exists-linear-map-of-hasstrictfderivat--fb819e9bd0ba8a9bedd61d96.md) | 59 | `result-track:fb819e9bd0ba8a9bedd61d96bcbe8758bde5c0ef667e9e5de833dde23c8846ff` |
| 3 | `theorem` | [IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt_1d](../../../../../mathematics/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean/declarations/islocalextron-exists-multipliers-of-hasstrictfderivat-1d--10aee7a7ead96a3e93bb9f01.md) | 82 | `result-track:10aee7a7ead96a3e93bb9f0169f257c4089ce1e681858bb82d70bf2973aeb87f` |
| 4 | `theorem` | [IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt](../../../../../mathematics/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean/declarations/islocalextron-exists-multipliers-of-hasstrictfderivat--96728b98e9c260445c5b17db.md) | 105 | `result-track:96728b98e9c260445c5b17dbd98cc027cba5f70a6e03de14ea3c44df947f1e84` |
| 5 | `theorem` | [IsLocalExtrOn.linear_dependent_of_hasStrictFDerivAt](../../../../../mathematics/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean/declarations/islocalextron-linear-dependent-of-hasstrictfderivat--8933a494255177c026484336.md) | 128 | `result-track:8933a494255177c0264843363931be7d34af99843342c4adb9c3487c9c8d311c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
