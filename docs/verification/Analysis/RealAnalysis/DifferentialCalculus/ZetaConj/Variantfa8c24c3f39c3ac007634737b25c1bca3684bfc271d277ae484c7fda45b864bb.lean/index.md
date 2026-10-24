# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZetaConj.Variantfa8c24c3f39c3ac007634737b25c1bca3684bfc271d277ae484c7fda45b864bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7de9811cd60e4b59410da58ec499616d500ce16e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantfa8c24c3f39c3ac007634737b25c1bca3684bfc271d277ae484c7fda45b864bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantfa8c24c3f39c3ac007634737b25c1bca3684bfc271d277ae484c7fda45b864bb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantfa8c24c3f39c3ac007634737b25c1bca3684bfc271d277ae484c7fda45b864bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7de9811cd60e4b59410da58ec499616d500ce16e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantfa8c24c3f39c3ac007634737b25c1bca3684bfc271d277ae484c7fda45b864bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantfa8c24c3f39c3ac007634737b25c1bca3684bfc271d277ae484c7fda45b864bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_conj_conj'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantfa8c24c3f39c3ac007634737b25c1bca3684bfc271d277ae484c7fda45b864bb.lean/declarations/deriv-conj-conj--4ad194b1d121532177a71318.md) | 28 | `result-track:4ad194b1d121532177a713185e03a2877cb1c6069e60495a028a7754a2b6126e` |
| 2 | `theorem` | [deriv_riemannZeta_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantfa8c24c3f39c3ac007634737b25c1bca3684bfc271d277ae484c7fda45b864bb.lean/declarations/deriv-riemannzeta-conj--8370c23550a64ba3a3a625d9.md) | 34 | `result-track:8370c23550a64ba3a3a625d98a72bbf6fa76ade298f0e7760c123eed4b3633e6` |
| 3 | `theorem` | [logDerivZeta_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantfa8c24c3f39c3ac007634737b25c1bca3684bfc271d277ae484c7fda45b864bb.lean/declarations/logderivzeta-conj--eb49e0641ec4606ea5726ded.md) | 38 | `result-track:eb49e0641ec4606ea5726dedd2f97816f7a60c5acccd50bc2471ee1148b5cd2a` |
| 4 | `theorem` | [logDerivZeta_conj'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantfa8c24c3f39c3ac007634737b25c1bca3684bfc271d277ae484c7fda45b864bb.lean/declarations/logderivzeta-conj--9c5f3d1bb4ceae59760012aa.md) | 42 | `result-track:9c5f3d1bb4ceae59760012aa0cfe14d3e77d9d020da3a6c3c44833d68131b617` |
| 5 | `theorem` | [intervalIntegral_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantfa8c24c3f39c3ac007634737b25c1bca3684bfc271d277ae484c7fda45b864bb.lean/declarations/intervalintegral-conj--b8950a77927ff59fae4e9ec6.md) | 46 | `result-track:b8950a77927ff59fae4e9ec65150de214c69d0ab8b9d4b43b7c288a7595a710e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
