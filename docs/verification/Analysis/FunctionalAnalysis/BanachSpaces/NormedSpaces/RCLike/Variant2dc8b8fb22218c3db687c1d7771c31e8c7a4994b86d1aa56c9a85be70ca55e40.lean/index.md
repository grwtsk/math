# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.RCLike.Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cba0764778a379a87f71d29e6a1cf4384e5d382",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cba0764778a379a87f71d29e6a1cf4384e5d382`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.RCLike.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [RCLike.norm_coe_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean/declarations/rclike-norm-coe-norm--d34faffa27ab9a66d03d928f.md) | 42 | `result-track:d34faffa27ab9a66d03d928f26c7e552ed41cc73bf4a3214e0f696d64e790be5` |
| 2 | `theorem` | [norm_smul_inv_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean/declarations/norm-smul-inv-norm--f3510976461c0a05125344f7.md) | 48 | `result-track:f3510976461c0a05125344f74f6fec05a50fa51ae1b42c4b3560953adb612dcb` |
| 3 | `theorem` | [norm_smul_inv_norm'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean/declarations/norm-smul-inv-norm--615edf853bd1a9553bab38c5.md) | 53 | `result-track:615edf853bd1a9553bab38c5d1b5f59e197fed93a4a52876d27d338ff6c6ecf1` |
| 4 | `theorem` | [LinearMap.bound_of_sphere_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean/declarations/linearmap-bound-of-sphere-bound--b07b0b2e43f0ad771ce27929.md) | 58 | `result-track:b07b0b2e43f0ad771ce279290361292a477f218874fc01ac8a469c2f068b06a6` |
| 5 | `theorem` | [LinearMap.bound_of_ball_bound'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean/declarations/linearmap-bound-of-ball-bound--9a48b130effd273d130faa19.md) | 82 | `result-track:9a48b130effd273d130faa1994ba79c2e44d83b2deaf6ec6319882158daa727f` |
| 6 | `theorem` | [ContinuousLinearMap.opNorm_bound_of_ball_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean/declarations/continuouslinearmap-opnorm-bound-of-ball-bound--ee997b108907d3043b4d5c17.md) | 86 | `result-track:ee997b108907d3043b4d5c1776ab145d943d0fe66fe64af05ec11fb86a40d9f2` |
| 7 | `theorem` | [NormedSpace.sphere_nonempty_rclike](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RCLike/Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40.lean/declarations/normedspace-sphere-nonempty-rclike--29434266277224f07268fb73.md) | 98 | `result-track:29434266277224f07268fb732e2b11056e028940e2136fe2fa45bf627df91046` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
