# Verification target: GRWTSK.Analysis.ZetaHalfPlaneScaffold.Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f27bcfbe518f61b6464b13572f091f87ffc2708b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean/index.md) · [Full source](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f27bcfbe518f61b6464b13572f091f87ffc2708b`.

Source path: `GRWTSK/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.FiniteEulerProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.ClassicalAnchor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ZetaSeriesConvergesOnRealHalfPlane](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean/declarations/zetaseriesconvergesonrealhalfplane--f9836bf26a5ff847abadba8a.md) | 25 | `declaration-track:f9836bf26a5ff847abadba8a1adc5813be40e6ee1304e5233c4747e90ae64270` |
| 2 | `def` | [EulerProductForZetaHalfPlaneTarget](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean/declarations/eulerproductforzetahalfplanetarget--a07e872670b9256a18c3fee9.md) | 30 | `declaration-track:a07e872670b9256a18c3fee913dd3d28b30772a68bbdd4d6b88ff1e887bcc482` |
| 3 | `def` | [ZetaNonzeroOnRealGreaterThanOneTarget](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean/declarations/zetanonzeroonrealgreaterthanonetarget--b0b84d6503d4db23e522c741.md) | 35 | `declaration-track:b0b84d6503d4db23e522c7410454ff512bcf897033d59376f0ea530a780bc6f2` |
| 4 | `def` | [PrimeNumberTheoremTarget](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean/declarations/primenumbertheoremtarget--1b7d9d127b780401225d639c.md) | 40 | `declaration-track:1b7d9d127b780401225d639cb9b79d4ab45a51a37c3b8d303a3a76da55ca12c4` |
| 5 | `theorem` | [finite_partial_zeta_sum_nonnegative](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant64be109d0d13cabc329eebb815b70c93959a0332db31d3adfa2268f89687996f.lean/declarations/finite-partial-zeta-sum-nonnegative--89524f00161d765cec3798d5.md) | 45 | `result-track:89524f00161d765cec3798d565ff8ed8b0c90b718a41f5d22bf08f9e4eba67af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
