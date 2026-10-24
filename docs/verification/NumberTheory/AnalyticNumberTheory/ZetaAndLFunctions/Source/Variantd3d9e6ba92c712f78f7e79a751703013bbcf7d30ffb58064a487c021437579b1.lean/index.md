# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Source.Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3653a21f9da29c59e50e3c06c08fa66dda31dde6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3653a21f9da29c59e50e3c06c08fa66dda31dde6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1.lean/declarations/dirichletmoment--e1238f552a7fbe39ca0927a9.md) | 15 | `declaration-track:e1238f552a7fbe39ca0927a97a2c514d385c742bea70f1d77f7bd7e55e2e1b07` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1.lean/declarations/dirichletmoment-nonneg--e5a88834a1df522487cc07b3.md) | 18 | `result-track:e5a88834a1df522487cc07b3a57ffca3d93ee60368773151cbb9a83b370cc3b3` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1.lean/declarations/mangoldt-abscissa-le-one--21c87d8e038aba7222e727d0.md) | 24 | `result-track:21c87d8e038aba7222e727d018cdd8a56cc0e3bbc2cbb614f9eac56063afd3f2` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1.lean/declarations/iterate-logmul-eq--447c1c5cbc442e0e9a2d8c37.md) | 30 | `result-track:447c1c5cbc442e0e9a2d8c379dae434a9e18fe14e679c324ea4993aa41f97a73` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Source/Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1.lean/declarations/dirichletmoment-summable--3934289c7e50d374a58ea810.md) | 39 | `result-track:3934289c7e50d374a58ea8100c7f8a5dd94ac08d8ada2ecac08d9c6e32ba2a74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
