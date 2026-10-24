# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Linear.Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e88464c3aba1005b7aaaf90fc29eb7d76fc36f67",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e88464c3aba1005b7aaaf90fc29eb7d76fc36f67`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousLinearMap.hasDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/continuouslinearmap-hasderivatfilter--ec35d950fb389063ce1e404b.md) | 42 | `result-track:ec35d950fb389063ce1e404ba5d4f37593191b9b79defd02b1a26f7b99307b90` |
| 2 | `theorem` | [ContinuousLinearMap.hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/continuouslinearmap-hasstrictderivat--a51bc804577d41f8296fb7c1.md) | 45 | `result-track:a51bc804577d41f8296fb7c1fae1066216a350e741516d4406fc460a1029074e` |
| 3 | `theorem` | [ContinuousLinearMap.hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/continuouslinearmap-hasderivat--4a958e0e8c8207e8e9df8e2a.md) | 48 | `result-track:4a958e0e8c8207e8e9df8e2a435316701f1e6405367d35292defe418a1d18a40` |
| 4 | `theorem` | [ContinuousLinearMap.hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/continuouslinearmap-hasderivwithinat--a3201098818f249407c2a560.md) | 51 | `result-track:a3201098818f249407c2a5607fc8d158106f422ec2a52148dc495cd634b55a68` |
| 5 | `theorem` | [ContinuousLinearMap.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/continuouslinearmap-deriv--ea8bfabaa42ec72f1a88e68b.md) | 55 | `result-track:ea8bfabaa42ec72f1a88e68b4b2e7a6834e8044187502e5b4598e23ede8abe2d` |
| 6 | `theorem` | [ContinuousLinearMap.derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/continuouslinearmap-derivwithin--2ae2c8222c442fa8b515a3e1.md) | 58 | `result-track:2ae2c8222c442fa8b515a3e1a2865ae1a6c9afba18814e69ace788c4ec02aba1` |
| 7 | `theorem` | [LinearMap.hasDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/linearmap-hasderivatfilter--ca0cf07d001a19653fb10b54.md) | 70 | `result-track:ca0cf07d001a19653fb10b541c7e73ce23d73e4ce6a7df93610089f368b50669` |
| 8 | `theorem` | [LinearMap.hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/linearmap-hasstrictderivat--12bf165fd864cf6ee6addd82.md) | 73 | `result-track:12bf165fd864cf6ee6addd82d27b9f5cc76bb1dfe312e9ba7427799c80dd2857` |
| 9 | `theorem` | [LinearMap.hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/linearmap-hasderivat--18d46a5472127cf4d2a086b7.md) | 76 | `result-track:18d46a5472127cf4d2a086b7e1eb7ca6c6855963db9ef59b74b84007b48768de` |
| 10 | `theorem` | [LinearMap.hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/linearmap-hasderivwithinat--4871152d84cfd7c4bbd80465.md) | 79 | `result-track:4871152d84cfd7c4bbd80465e137d34ec315d2a89382e81f96ad9c67b1105c56` |
| 11 | `theorem` | [LinearMap.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/linearmap-deriv--3caa44b4aa06352c37b6f876.md) | 83 | `result-track:3caa44b4aa06352c37b6f8762c2e4b9b98db69f8d2f351bad1783cfd354be057` |
| 12 | `theorem` | [LinearMap.derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant3ddb5f4ee3409e8ed009d94c054de7454348f18bd0d9c336ca408651ae060dd1.lean/declarations/linearmap-derivwithin--e1ac3585a6a4f63fc0aa8785.md) | 86 | `result-track:e1ac3585a6a4f63fc0aa87859ff8ede4308b6e8edeab0acb221c05c6638cced0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
