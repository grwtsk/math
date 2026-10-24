# Verification target: GRWTSK.NumberTheory.Chebyshev.TentHorizontalDecay

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c539089a3178194f9cbfe0f29a545d481067428b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/TentHorizontalDecay.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c539089a3178194f9cbfe0f29a545d481067428b`.

Source path: `GRWTSK/NumberTheory/Chebyshev/TentHorizontalDecay.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/TentHorizontalDecay.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ReflectedStripDecay`](../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentHorizontalRays`](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalRays.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [selectedRayBudget](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/selectedraybudget--7fcbebe9bc16e2ad6aef7831.md) | 34 | `declaration-track:7fcbebe9bc16e2ad6aef78314a95b57172d79a65b183794f26624c5ced4c96ee` |
| 2 | `theorem` | [selectedRayBudget_nonneg](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/selectedraybudget-nonneg--7506ac94dd0a0bec4566ecec.md) | 37 | `result-track:7506ac94dd0a0bec4566ecec50550b2a454dc34632f87003b14e4bd9b12847c8` |
| 3 | `theorem` | [selectedRayBudget_eq](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/selectedraybudget-eq--a9f254855934d4ba2904670f.md) | 43 | `result-track:a9f254855934d4ba2904670ffcb84b543c2fca2e87de8273c7084c204535c820` |
| 4 | `theorem` | [selectedRayBudget_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/selectedraybudget-tendsto-zero--e2c8ead44135a8b5af281f51.md) | 49 | `result-track:e2c8ead44135a8b5af281f518f5018bdaa4468b3468b96e1dd11b2dccdca7f5a` |
| 5 | `theorem` | [integral_norm_selected_ray_le](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/integral-norm-selected-ray-le--ef37e2adfa36cc5e1c7e3128.md) | 56 | `result-track:ef37e2adfa36cc5e1c7e312885455da3d86c8df96e9e4c95edae341830bb9f70` |
| 6 | `theorem` | [norm_selected_ray_le](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/norm-selected-ray-le--65f08e34ead380bdc3e4d5aa.md) | 76 | `result-track:65f08e34ead380bdc3e4d5aad860bd60c6a468e3b77ad141973514dd07a40183` |
| 7 | `theorem` | [integral_norm_selected_ray_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/integral-norm-selected-ray-tendsto-zero--4db7840381cd8dd9ee95ae8c.md) | 82 | `result-track:4db7840381cd8dd9ee95ae8ce4532c8fa54990fbd784d8867bcd79e860a26588` |
| 8 | `theorem` | [selected_ray_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/selected-ray-tendsto-zero--7d9d02be3d1c50c8b4a9493f.md) | 92 | `result-track:7d9d02be3d1c50c8b4a9493f0a7440383cba6fbd38e8b99a909d953dbed7c290` |
| 9 | `theorem` | [upper_ray_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/upper-ray-tendsto-zero--326a140aa2655e85d30e43ed.md) | 101 | `result-track:326a140aa2655e85d30e43ed0575a5a5d5e029b34ad8babf0174897347984965` |
| 10 | `theorem` | [lower_ray_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/lower-ray-tendsto-zero--2346bd737982ac161daec4e8.md) | 106 | `result-track:2346bd737982ac161daec4e83964a4ac64ffc4e5d088d31d5a25b91c364d1b28` |
| 11 | `theorem` | [combined_rays_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/combined-rays-tendsto-zero--06492058913a229baca2483e.md) | 112 | `result-track:06492058913a229baca2483e0e2a37811c1449ecb2e60d3f27d43f7e7aa1ddb8` |
| 12 | `theorem` | [norm_combined_selected_rays_le](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/declarations/norm-combined-selected-rays-le--028215e2d2abf0f8497dd621.md) | 120 | `result-track:028215e2d2abf0f8497dd6214a72dca2d12316dec085e993e102b7dedfbe1e7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
