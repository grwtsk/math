# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Basic.Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12f601f33b9b53ece0f297bb85173523702c6837",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12f601f33b9b53ece0f297bb85173523702c6837`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Continuity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [NormedSpace.exp_continuousMap_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/normedspace-exp-continuousmap-eq--baf97020ff63f8930317c4e6.md) | 52 | `result-track:baf97020ff63f8930317c4e69191e2e3f93787ceb99a4c7cf819028b87193d47` |
| 2 | `lemma` | [exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/exp-eq-normedspace-exp--a6fab88e32c26b3cf6048d7a.md) | 69 | `result-track:a6fab88e32c26b3cf6048d7ac279767c0e18f48694741469aa54741aa0e89559` |
| 3 | `lemma` | [real_exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/real-exp-eq-normedspace-exp--9366553d4593d8b2b19513e1.md) | 87 | `result-track:9366553d4593d8b2b19513e14be58e92a389bf0951b51dda056215ffe7b71454` |
| 4 | `lemma` | [_root_.IsSelfAdjoint.exp_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/root-isselfadjoint-exp-nonneg--b30317765b942cc2f9c02f85.md) | 92 | `result-track:b30317765b942cc2f9c02f85fbe908d93fa988fb813d4e17370e63c5d513614b` |
| 5 | `lemma` | [complex_exp_eq_normedSpace_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/complex-exp-eq-normedspace-exp--d2e7f5f4a8b274a936a52cc8.md) | 105 | `result-track:d2e7f5f4a8b274a936a52cc88362cbfc7aad6f69ce965eea10ce999dcd6f3d77` |
| 6 | `def` | [log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/log--7ebab228bb3f3a04e57bfdcd.md) | 121 | `declaration-track:7ebab228bb3f3a04e57bfdcd2034eb0b8e259dabe9330a4b300b878eddcca747` |
| 7 | `lemma` | [_root_.IsSelfAdjoint.log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/root-isselfadjoint-log--4004d79b64f41b20273410ab.md) | 124 | `result-track:4004d79b64f41b20273410abdfea06bd0d7d513ee9697aa434f553999b93d186` |
| 8 | `lemma` | [log_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/log-zero--8b57cdf18acadf42ba5526af.md) | 126 | `result-track:8b57cdf18acadf42ba5526afa4fc1798b32189c0b973a3f4277abce530030c93` |
| 9 | `lemma` | [log_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/log-one--e6e97bf7b9420b7de6838892.md) | 128 | `result-track:e6e97bf7b9420b7de68388929c7ccac26bc3965ba66df68af30d4426a6117ae5` |
| 10 | `lemma` | [log_algebraMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/log-algebramap--1bd4ae5f5e2e8c2746c95cf5.md) | 131 | `result-track:1bd4ae5f5e2e8c2746c95cf5cc0e48fd7ca29348469556e52096b40a87143a08` |
| 11 | `lemma` | [log_smul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/log-smul--2178aece1a706efa4231d9d6.md) | 134 | `result-track:2178aece1a706efa4231d9d618520e064472f5f0f6ea0794b6bb8744810f09a5` |
| 12 | `lemma` | [log_smul'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/log-smul--5d7a5b7bb92e10ccedcbb1ce.md) | 144 | `result-track:5d7a5b7bb92e10ccedcbb1ce151181b614693fbbf5cf26080cda87c675cb62ec` |
| 13 | `lemma` | [log_pow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/log-pow--4a0896a40c9f62809a10f2c8.md) | 149 | `result-track:4a0896a40c9f62809a10f2c8b43c800d8366d9ae547d974987c1af329a0f0395` |
| 14 | `lemma` | [log_pow'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/log-pow--6353724f59b12e28387b2450.md) | 157 | `result-track:6353724f59b12e28387b2450b76dd7bc8a54bd0e62a6072ace594b0dd70f419d` |
| 15 | `lemma` | [log_exp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/log-exp--7b89e96c2f5951ce22b80dfe.md) | 164 | `result-track:7b89e96c2f5951ce22b80dfe388c8fcbfdc4a60251766e42da9299ee658267b6` |
| 16 | `lemma` | [exp_log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/exp-log--1a2d8d919ecf853dabee45a3.md) | 171 | `result-track:1a2d8d919ecf853dabee45a3c2725b826706aed73a603680eca64ea94957931e` |
| 17 | `lemma` | [continuousOn_log](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant51d86aaf148ec088959d61941b8cecec7ce5ac19fad64991c62f2552fd3ff0a9.lean/declarations/continuouson-log--68ece0aaf67d4dc7c326ae36.md) | 179 | `result-track:68ece0aaf67d4dc7c326ae367fd644280daac38ed2330fe50851ea6209238fad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
