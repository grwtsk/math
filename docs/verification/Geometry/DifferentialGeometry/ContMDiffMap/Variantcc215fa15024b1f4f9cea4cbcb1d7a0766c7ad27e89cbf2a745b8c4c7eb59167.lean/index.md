# Verification target: GRWTSK.Geometry.DifferentialGeometry.ContMDiffMap.Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f256595de5bf404eff1c6ddfd5e597f003cad71c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f256595de5bf404eff1c6ddfd5e597f003cad71c`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.NormedSpace` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContMDiffMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/contmdiffmap--b6b776fbd8dd68d6cddedad2.md) | 39 | `declaration-track:b6b776fbd8dd68d6cddedad29bb4577e65b425b49a0fa4275578412c4e9eb085` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/instfunlike--cebeba61f7a404cd1fe86ff2.md) | 57 | `declaration-track:cebeba61f7a404cd1fe86ff29c702b99d03ee6a894e2540b19111c590377fdf2` |
| 3 | `theorem` | [contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/contmdiff--bb4754d4f6d61b10ee14c487.md) | 61 | `result-track:bb4754d4f6d61b10ee14c4876aa44586797b0304c3a887151e0e64ba75f009fb` |
| 4 | `theorem` | [coeFn_mk](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/coefn-mk--2604c5c8cf414bf2ece35c14.md) | 75 | `result-track:2604c5c8cf414bf2ece35c148812d1d0b8ca9c98b74b41a47efe08772110d8ee` |
| 5 | `theorem` | [coe_injective](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/coe-injective--3579dd3bd99a2de545d24c3e.md) | 79 | `result-track:3579dd3bd99a2de545d24c3ed067e0172158344db3e9f5499c64467cac4cce95` |
| 6 | `theorem` | [ext](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/ext--21745cf1bfb12fb8198eda2c.md) | 83 | `result-track:21745cf1bfb12fb8198eda2c8e15369ec21eeb09d1d9c843812e76ba34c63a39` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/instance--a11e834b7d9be2f74d3c914a.md) | 85 | `declaration-track:a11e834b7d9be2f74d3c914ac4d704b6179c97e2ff03fb251abee0e706ea7b5d` |
| 8 | `def` | [id](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/id--19b82430179fb9f14c317d21.md) | 89 | `declaration-track:19b82430179fb9f14c317d2142c3572aa04d7e627f57ad9e70ec9df449fd3501` |
| 9 | `def` | [comp](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/comp--b296e6805541bc6bea08e6f2.md) | 93 | `declaration-track:b296e6805541bc6bea08e6f22e4a7fee7e7a2f856a740676f7fe98553a8cacbd` |
| 10 | `theorem` | [comp_apply](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/comp-apply--b55fcf146eec7643bce55a81.md) | 98 | `result-track:b55fcf146eec7643bce55a81becfb5ab61b434979145be14e677e3c41dacbb9b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/instance--9b0f118ee1eec0b2c889306c.md) | 102 | `declaration-track:9b0f118ee1eec0b2c889306c95ac6089949ab7650ba467ef7b27da3110c9a56a` |
| 12 | `def` | [const](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/const--82ee101ef6fbddb5e04d4fc0.md) | 106 | `declaration-track:82ee101ef6fbddb5e04d4fc08b913ec0e64a18beeded150d7add55480e5fd2d8` |
| 13 | `def` | [fst](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/fst--2cfc450bf48c699787e11cca.md) | 110 | `declaration-track:2cfc450bf48c699787e11cca769a6dbec1ba80fe106d7f48fa7d63618477289d` |
| 14 | `def` | [snd](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/snd--15dc2c25d6cc08a48c44706f.md) | 114 | `declaration-track:15dc2c25d6cc08a48c44706fbd2b851902d3aecd12fd7071adb8c54954ca6fdc` |
| 15 | `def` | [prodMk](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/prodmk--368d254e18c77b5d4a75b0e8.md) | 118 | `declaration-track:368d254e18c77b5d4a75b0e887ab73dd4180763ecef122bf6db170a906848f49` |
| 16 | `instance` | [ContinuousLinearMap.hasCoeToContMDiffMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantcc215fa15024b1f4f9cea4cbcb1d7a0766c7ad27e89cbf2a745b8c4c7eb59167.lean/declarations/continuouslinearmap-hascoetocontmdiffmap--b0f0403cf8b661b7c879739f.md) | 123 | `declaration-track:b0f0403cf8b661b7c879739ff4a0ef08bf90afdb040eba722bb420990a8271f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
