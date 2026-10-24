# Verification target: GRWTSK.Analysis.MellinTransform.PositiveCoordinates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8802f9ac1246ef8cd95db7c565094cd76de11159",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/PositiveCoordinates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8802f9ac1246ef8cd95db7c565094cd76de11159`.

Source path: `GRWTSK/Analysis/MellinTransform/PositiveCoordinates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/PositiveCoordinates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [power](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/power--c0e13cb68b6de98ba4c88435.md) | 19 | `declaration-track:c0e13cb68b6de98ba4c884358113fbb4fd51c454a496b01365af260ae03233c9` |
| 2 | `theorem` | [power_zero](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/power-zero--7c4b145764005d02fe92dd0f.md) | 21 | `result-track:7c4b145764005d02fe92dd0f885ff6ff65ebcff53c094ca9624cc8fd207c358b` |
| 3 | `theorem` | [power_one_base](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/power-one-base--8adeada7eec878bbeeb20582.md) | 23 | `result-track:8adeada7eec878bbeeb205822776d81699a73ad019955932c5b0f04d0866b272` |
| 4 | `theorem` | [power_one](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/power-one--78f3bb0aadf927c0aad5485a.md) | 25 | `result-track:78f3bb0aadf927c0aad5485a00e70e2f3e52126ee57d562d591039d2022c0f84` |
| 5 | `theorem` | [power_add](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/power-add--1c7a3fa01f3bbddcedb30a26.md) | 29 | `result-track:1c7a3fa01f3bbddcedb30a265fa7ce9042f0f8fbd7f7deafc7fd081bb961166e` |
| 6 | `theorem` | [power_mul](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/power-mul--c4112a7bcf6fddd3f2210df7.md) | 33 | `result-track:c4112a7bcf6fddd3f2210df7b1fcf0d51c0b16e0df9d8afc22260d4a0cf40c45` |
| 7 | `theorem` | [power_div](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/power-div--3374aa26b0ea8614c358bef8.md) | 38 | `result-track:3374aa26b0ea8614c358bef840de7aa39430a6e5cf2f41a588956d341b5106eb` |
| 8 | `theorem` | [power_div_coordinate](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/power-div-coordinate--ab65f212d7b381e3542259f0.md) | 43 | `result-track:ab65f212d7b381e3542259f0affa1a64b4a84bebd42c05e440e458ac831e98bc` |
| 9 | `theorem` | [power_one_sub](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/power-one-sub--5ec2fbe9d8590d410b17e4f1.md) | 48 | `result-track:5ec2fbe9d8590d410b17e4f1a19d40716c19de407dda9941b35eb91c19b180be` |
| 10 | `theorem` | [norm_power](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/norm-power--a207e91528bbe03ff1c8d13f.md) | 52 | `result-track:a207e91528bbe03ff1c8d13feb45a7a020b02849bcc997f185831125fad9964e` |
| 11 | `theorem` | [power_hasDerivAt](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/power-hasderivat--4b65bacc2dacaf444b6a1588.md) | 56 | `result-track:4b65bacc2dacaf444b6a15888a6b8a1750ea105961f49adee78696ae67fa97bf` |
| 12 | `theorem` | [power_differentiable_parameter](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/power-differentiable-parameter--9542d80ee644b80ad912b2fb.md) | 63 | `result-track:9542d80ee644b80ad912b2fba1675d3d8e9447965fbf3fac394361e45059fda2` |
| 13 | `theorem` | [atom_scaling](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/atom-scaling--0d129bae27335cc7c5b6720e.md) | 69 | `result-track:0d129bae27335cc7c5b6720e9c0201e39659f6791afabf5bf800d79218a14b25` |
| 14 | `theorem` | [density_scaling](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/density-scaling--6f1d832cf819dad2edd59a92.md) | 88 | `result-track:6f1d832cf819dad2edd59a92bc5b5d87caefa4bfc8f0e23bc878333cefeb1ed3` |
| 15 | `theorem` | [integral_scaling](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/declarations/integral-scaling--29e51803ae2702419bce18f1.md) | 98 | `result-track:29e51803ae2702419bce18f1ad1e5355cbd317db9c854d9183a4392d6a4236bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
