# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.OfMinimal.Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f84c6a0b5e5661617e2d8069692844b6de1564a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f84c6a0b5e5661617e2d8069692844b6de1564a`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.Action.Regular` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.ContinuousPreimage` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [aeconst_of_dense_setOf_preimage_smul_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/aeconst-of-dense-setof-preimage-smul-ae--6f6be0538e5ef31ebd36b99c.md) | 59 | `result-track:6f6be0538e5ef31ebd36b99c239012fa4c1b7e81ecd99167f83299de9bf96f5c` |
| 2 | `theorem` | [aeconst_of_dense_setOf_preimage_smul_eq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/aeconst-of-dense-setof-preimage-smul-eq--9b191bc8389561921225a30b.md) | 69 | `result-track:9b191bc8389561921225a30b66605dbc16b9008c985a41737e32270ca6cfe4b5` |
| 3 | `theorem` | [ergodic_smul_of_denseRange_pow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/ergodic-smul-of-denserange-pow--0d8b84cd5d684222fbb0d187.md) | 81 | `result-track:0d8b84cd5d684222fbb0d1874c9c31fdbd9e6242d7d0a5e7844592bdfb2c458d` |
| 4 | `theorem` | [ErgodicSMul.trans_isMinimal](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/ergodicsmul-trans-isminimal--a8e576aa28d5fff30dcd8052.md) | 104 | `result-track:a8e576aa28d5fff30dcd8052b4a8a14bb9d4dc05498144953d153a5f6614b266` |
| 5 | `theorem` | [aeconst_of_dense_aestabilizer_smul](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/aeconst-of-dense-aestabilizer-smul--df6db4c51bd9aa40137b90c4.md) | 126 | `result-track:df6db4c51bd9aa40137b90c4ddd62b27bd25798b426475399252d2f05095d19b` |
| 6 | `theorem` | [ergodic_smul_of_denseRange_zpow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/ergodic-smul-of-denserange-zpow--1c72aefe114bafa1e24db11f.md) | 139 | `result-track:1c72aefe114bafa1e24db11fd5fc8f5bbde6a8bacdc374a1a7c7d8b650765a3c` |
| 7 | `theorem` | [DenseRange.zpow_of_ergodic_mul_left](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/denserange-zpow-of-ergodic-mul-left--104fa51429b904a89fb47483.md) | 160 | `result-track:104fa51429b904a89fb47483ebad4273bf577623ebeaae14c38fa6edefc95dca` |
| 8 | `theorem` | [ergodic_mul_left_of_denseRange_pow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/ergodic-mul-left-of-denserange-pow--e22f4c1dfbd1a10be7a5c526.md) | 193 | `result-track:e22f4c1dfbd1a10be7a5c5262ded3e324b2c3bc070ebca12db8802ddda0c6a16` |
| 9 | `theorem` | [ergodic_mul_left_of_denseRange_zpow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/ergodic-mul-left-of-denserange-zpow--f1b698215e5dbe3c4d56952b.md) | 199 | `result-track:f1b698215e5dbe3c4d56952b8b8bc76a2765d2ecaa0c4df44365d58b84dcc356` |
| 10 | `theorem` | [ergodic_mul_left_iff_denseRange_zpow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/ergodic-mul-left-iff-denserange-zpow--ce7829c20bf20c7d59caee1d.md) | 205 | `result-track:ce7829c20bf20c7d59caee1ddbe72952c882346c59860f123d3d6e441b44e276` |
| 11 | `theorem` | [preErgodic_of_dense_iUnion_preimage_one](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/preergodic-of-dense-iunion-preimage-one--c43207dd6c255d8e5c536204.md) | 224 | `result-track:c43207dd6c255d8e5c536204ffbb5e73f09ba96dd3114ea7824f7088dbc2d9b2` |
| 12 | `theorem` | [ergodic_of_dense_iUnion_preimage_one](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/declarations/ergodic-of-dense-iunion-preimage-one--8111fbcbe96ee6ab64941fa8.md) | 244 | `result-track:8111fbcbe96ee6ab64941fa842f531ef1baa2e6fcd61da64039fcc29deba59e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
