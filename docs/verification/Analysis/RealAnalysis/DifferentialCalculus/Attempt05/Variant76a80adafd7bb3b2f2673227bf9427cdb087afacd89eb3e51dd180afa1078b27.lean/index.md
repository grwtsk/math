# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt05.Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "135e6007b7ac0490a986f4421ec18e616697df39",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `135e6007b7ac0490a986f4421ec18e616697df39`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean/declarations/cellkernel--f07ab67369af58ab01d25da4.md) | 21 | `declaration-track:f07ab67369af58ab01d25da42995322d282cb843d415187d7ae34836c62ed1d2` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean/declarations/cellderivative--91358815edd7787f2eecb93e.md) | 22 | `declaration-track:91358815edd7787f2eecb93e2c20f202104370f5da88d4972422905cf4199eca` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean/declarations/derivativemajorant--924a91913b83ca195f436c73.md) | 23 | `declaration-track:924a91913b83ca195f436c732f72ba74bf0c709a6009ed9f14e1c442d2a7dc60` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean/declarations/cellkernel-integrable--c14a03c184918552e2063d8f.md) | 25 | `result-track:c14a03c184918552e2063d8f059b1f7a6ec643f81bc51db412669d9afc0e82e4` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean/declarations/cellderivative-integrable--a47a2a3bdecd9e038d17871d.md) | 35 | `result-track:a47a2a3bdecd9e038d17871d88a7d152fe33694f2662d63d3e74d72b6a0bbe4b` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean/declarations/cellkernel-hasderivat--8c58e1c36e321e7863a631d1.md) | 46 | `result-track:8c58e1c36e321e7863a631d1c3029ce08e939d801ecd0ce3ad60554fcf3c3c58` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean/declarations/cellderivative-bound--82b9be19997a8050901872ed.md) | 61 | `result-track:82b9be19997a8050901872ed71ae22f6cd58d65a0a88b4b52b3c1fbc7396ec6f` |
| 8 | `theorem` | [term_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean/declarations/term-hasderivat--efa3bfaa87d346af0f78a14c.md) | 81 | `result-track:efa3bfaa87d346af0f78a14ccd406c57e4d88a6665368e5174d3539e07a244a9` |
| 9 | `theorem` | [term_hasDerivAt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant76a80adafd7bb3b2f2673227bf9427cdb087afacd89eb3e51dd180afa1078b27.lean/declarations/term-hasderivat-one--45ae3f251a97daed2de8a6a9.md) | 106 | `result-track:45ae3f251a97daed2de8a6a9313053dc309024db978482940a0a20529837c9b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
