# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Basic.Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59b9c0e6188031332e1e5dd7b09a6faf67a35b3a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59b9c0e6188031332e1e5dd7b09a6faf67a35b3a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [RCLike.norm_coe_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean/declarations/rclike-norm-coe-norm--a1b65fe5dd8290b0912b2212.md) | 48 | `result-track:a1b65fe5dd8290b0912b2212d0eaa3467db15c5a49f782a0b67a647283283716` |
| 2 | `theorem` | [norm_smul_inv_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean/declarations/norm-smul-inv-norm--fd1f7adee70bda042aebcf54.md) | 54 | `result-track:fd1f7adee70bda042aebcf5415c6d2cf582277ed87a0e64f3288ca71bcaa9809` |
| 3 | `theorem` | [norm_smul_inv_norm'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean/declarations/norm-smul-inv-norm--a948c0cb25ca0b007b60f9a4.md) | 59 | `result-track:a948c0cb25ca0b007b60f9a4fa6f65470b9995b3d9bc8e607eb056e57791e5dc` |
| 4 | `theorem` | [ContinuousLinearEquiv.coord_norm'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean/declarations/continuouslinearequiv-coord-norm--ae21087a6f05b65d634f8a83.md) | 64 | `result-track:ae21087a6f05b65d634f8a83cec240c3f2c3132ff96aca1c66455bf337f5f124` |
| 5 | `theorem` | [LinearMap.bound_of_sphere_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean/declarations/linearmap-bound-of-sphere-bound--1efded688ca0076b97836f71.md) | 68 | `result-track:1efded688ca0076b97836f71f1d420a273a828c22c11a9e217735d425f509473` |
| 6 | `theorem` | [LinearMap.bound_of_ball_bound'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean/declarations/linearmap-bound-of-ball-bound--018e1b4ff0107a83694ecd50.md) | 92 | `result-track:018e1b4ff0107a83694ecd50b92b3d9483c7ba2274bc74890fc09fa292e29115` |
| 7 | `theorem` | [ContinuousLinearMap.opNorm_bound_of_ball_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean/declarations/continuouslinearmap-opnorm-bound-of-ball-bound--78cd19763785558e06d539a7.md) | 96 | `result-track:78cd19763785558e06d539a73fd638e2a3a05bd0c8cac819b0bfbe2c5485f98c` |
| 8 | `lemma` | [antilipschitz_of_bound_of_norm_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean/declarations/antilipschitz-of-bound-of-norm-one--9b953f95f2882378187d6693.md) | 112 | `result-track:9b953f95f2882378187d66932b947f38e6848dc68b19e61417f32bbba199d3b5` |
| 9 | `theorem` | [NormedSpace.sphere_nonempty_rclike](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Varianta9b06eed3b3e700e3a59c33ca7cdf24fc85011f97d4ae23e9d703e07ac160aaf.lean/declarations/normedspace-sphere-nonempty-rclike--f7dda69a1d6f915aae4ff837.md) | 124 | `result-track:f7dda69a1d6f915aae4ff83719b0f3bb3bf741ccbd34e4f885e614cf36b1b2af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
