# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszCenteredInitialLaplace.Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfa9d5f5434efc632fae5d5a5636c36163b9012e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfa9d5f5434efc632fae5d5a5636c36163b9012e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszInitialLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualRieszRealConstantCenter` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [time_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/time-weight-integrable--59a26394353e386d4a63c52e.md) | 18 | `result-track:59a26394353e386d4a63c52e27f2e49c522213b1167719fc5de6065ce509401d` |
| 2 | `theorem` | [time_weight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/time-weight-integral--68f20b6a95272ffef58160ea.md) | 25 | `result-track:68f20b6a95272ffef58160ea44cfdee953c8e108b1c2034c683f84d7bc0384f5` |
| 3 | `theorem` | [centered_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/centered-weight-eq--3d2b13e53f2373735616a62a.md) | 34 | `result-track:3d2b13e53f2373735616a62adad4327e8f1a1bf752d8beb5e19862caec2151cb` |
| 4 | `theorem` | [centered_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/centered-weight-integrable--43e725bd15be73a059f45738.md) | 43 | `result-track:43e725bd15be73a059f45738f9250f6623ac71c3305c03afb7868c30b84e8ca0` |
| 5 | `theorem` | [centered_weight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/centered-weight-integral--fbd495f7456f3053297cffe1.md) | 52 | `result-track:fbd495f7456f3053297cffe1b9bb86e5ec03b113462b3680000062ceaa8f3f4b` |
| 6 | `theorem` | [numerator_initial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/numerator-initial--98446b0025539cdc5d51274f.md) | 72 | `result-track:98446b0025539cdc5d51274f4b0b75c060236e53e1984703490a7b04d35586da` |
| 7 | `theorem` | [centered_scalar_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/centered-scalar-identity--c8fcf008a9b0113ed378a3d0.md) | 78 | `result-track:c8fcf008a9b0113ed378a3d00a82aa215fbd4f8406771d0e063099ab091b4b0d` |
| 8 | `def` | [actualFixedCenteredRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/actualfixedcenteredrieszlaplace--228dbe57b4190628fab363c8.md) | 83 | `declaration-track:228dbe57b4190628fab363c8e7643cade1acbd837702d808b9c961c542a4a1da` |
| 9 | `def` | [actualFiniteCenteredRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/actualfinitecenteredrieszlaplace--bf6aa98d69600596685dfdde.md) | 89 | `declaration-track:bf6aa98d69600596685dfdde39e3cbf85c419ee7b079a5154c3c2be63ad171a0` |
| 10 | `theorem` | [actualFixedCenteredRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/actualfixedcenteredrieszlaplace-integrable--04c777b631e1c8d097693cc1.md) | 94 | `result-track:04c777b631e1c8d097693cc1458fff9970ea692e17dda9f571cd6c61d3d58084` |
| 11 | `theorem` | [actualFixedCenteredRieszLaplace_eq_regularization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/actualfixedcenteredrieszlaplace-eq-regularization--f2af39d1d80fb269a7d33b17.md) | 101 | `result-track:f2af39d1d80fb269a7d33b17175e90af0bb3d19a489ad949e895a0aeb3d7c602` |
| 12 | `theorem` | [actualFiniteCenteredRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/actualfinitecenteredrieszlaplace-integrable--54889f821547153002fbe5f8.md) | 110 | `result-track:54889f821547153002fbe5f89f4dda9f029d5470267097a020a2c3c393133b71` |
| 13 | `theorem` | [actualFiniteCenteredRieszLaplace_eq_fixed_add_payment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/actualfinitecenteredrieszlaplace-eq-fixed-add-payment--3d6900e07a7c6376df00e336.md) | 118 | `result-track:3d6900e07a7c6376df00e33660374d833d42d344e48ad297f42092daef19c1b7` |
| 14 | `theorem` | [actualFiniteCenteredRieszLaplace_eq_regularization_add_payment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/actualfinitecenteredrieszlaplace-eq-regularization-add-payment--44f657a13cfc6314e6b2d008.md) | 129 | `result-track:44f657a13cfc6314e6b2d0086a71bcd658e8e71e7c73206b06cf019abbee5589` |
| 15 | `theorem` | [actualFiniteCenteredRieszLaplace_difference_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/declarations/actualfinitecenteredrieszlaplace-difference-bound--550941d8b76c6da7058dc8c9.md) | 137 | `result-track:550941d8b76c6da7058dc8c91b95c2d6e9b82652c2583afb36654ae8b9529414` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
