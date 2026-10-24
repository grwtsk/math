# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Linear.Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c95e027d5982ef4c94621ceae09e13c82764d3a3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c95e027d5982ef4c94621ceae09e13c82764d3a3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousLinearMap.hasDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/continuouslinearmap-hasderivatfilter--d33b54afe41a9b2a9531f7f2.md) | 50 | `result-track:d33b54afe41a9b2a9531f7f2855432fdeba9767f1607267a703366bf462f8e4b` |
| 2 | `theorem` | [ContinuousLinearMap.hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/continuouslinearmap-hasstrictderivat--f04a859fa40f1fd2ad58c0cb.md) | 53 | `result-track:f04a859fa40f1fd2ad58c0cb862e6688e580223232d933a001864d1b85575c2b` |
| 3 | `theorem` | [ContinuousLinearMap.hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/continuouslinearmap-hasderivat--c3ba8dce9fd581d8b6c341ae.md) | 56 | `result-track:c3ba8dce9fd581d8b6c341aed1e376adac4569716c656aeb6eac756dfabe159f` |
| 4 | `theorem` | [ContinuousLinearMap.hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/continuouslinearmap-hasderivwithinat--d19a7b3292268b2ae6d93b0d.md) | 59 | `result-track:d19a7b3292268b2ae6d93b0d6cfd05a9acc4080f73827a01c68d457500d11658` |
| 5 | `theorem` | [ContinuousLinearMap.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/continuouslinearmap-deriv--07ee356c15a7230fa1fdb8f8.md) | 63 | `result-track:07ee356c15a7230fa1fdb8f8fcfd2c749e8e3b0d508c0da6f5dbf95916da5e5c` |
| 6 | `theorem` | [ContinuousLinearMap.derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/continuouslinearmap-derivwithin--d378e20e81ba4fd3d6c424b5.md) | 66 | `result-track:d378e20e81ba4fd3d6c424b528046662cfbd03e086ca4a41c5cf329b93bdcc6b` |
| 7 | `theorem` | [LinearMap.hasDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/linearmap-hasderivatfilter--9a049625fd5074371cd8aa8c.md) | 78 | `result-track:9a049625fd5074371cd8aa8c85230e9e903ba4beb514795645a318c218d510b4` |
| 8 | `theorem` | [LinearMap.hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/linearmap-hasstrictderivat--b0e460e2b4282707036a9a89.md) | 81 | `result-track:b0e460e2b4282707036a9a898f3f1882754ab8cc6f748c25a16c552094b244be` |
| 9 | `theorem` | [LinearMap.hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/linearmap-hasderivat--8acaec3ac52e4c1f0063b5e5.md) | 84 | `result-track:8acaec3ac52e4c1f0063b5e5e4187335865e2d956070c044c0732355667bcd99` |
| 10 | `theorem` | [LinearMap.hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/linearmap-hasderivwithinat--6e689398bf05a0378eb07d93.md) | 87 | `result-track:6e689398bf05a0378eb07d93df7c35c7a031271f9e87f8ea5bc0ff45740500ed` |
| 11 | `theorem` | [LinearMap.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/linearmap-deriv--e8a5b9cc0ef61955037d36b1.md) | 91 | `result-track:e8a5b9cc0ef61955037d36b1bea604fe2eda09092bec0223730639436790f48a` |
| 12 | `theorem` | [LinearMap.derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant4c53acf7f0d0f5fefae045d1fe2cdc113c8b6d248eee25935edc5ef972b6c671.lean/declarations/linearmap-derivwithin--54a2e64912b7a8981b691000.md) | 94 | `result-track:54a2e64912b7a8981b6910001473d91ff82a92f7f647bca760b00acb7bba9749` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
