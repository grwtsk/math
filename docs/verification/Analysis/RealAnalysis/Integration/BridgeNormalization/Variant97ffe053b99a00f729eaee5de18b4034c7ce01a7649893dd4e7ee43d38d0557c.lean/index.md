# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BridgeNormalization.Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1b44bb9092296dbb0df04306a5d64829b71a35e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1b44bb9092296dbb0df04306a5d64829b71a35e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.Realization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitBump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/declarations/unitbump--776090d7ab6f534827ced967.md) | 29 | `declaration-track:776090d7ab6f534827ced967bc3f59d36289b5495b18c84d1553cf71fcf1a34c` |
| 2 | `def` | [unitSecond](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/declarations/unitsecond--201ff87aecee68e9955a74f4.md) | 32 | `declaration-track:201ff87aecee68e9955a74f4938893c0772fd2be2101f49e6b8c9c6e7a7ed328` |
| 3 | `theorem` | [unitBump_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/declarations/unitbump-square-integral--ab61223c082538674375b5ca.md) | 35 | `result-track:ab61223c082538674375b5cab9e2eccde55381f4d7d0e8784d2a98d3a07b4797` |
| 4 | `theorem` | [unitSecond_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/declarations/unitsecond-square-integral--bb8a9918e0b9c77ff08930ef.md) | 50 | `result-track:bb8a9918e0b9c77ff08930ef62b9134dd3383543d54cf1b53ca9a9f7eb6c5484` |
| 5 | `theorem` | [unitSecond_mul_bump_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/declarations/unitsecond-mul-bump-integral--fa5ad9e5fa78d9a578734b40.md) | 65 | `result-track:fa5ad9e5fa78d9a578734b40484246dc2f7f7cd46835c68575f8c2ef7fec06f6` |
| 6 | `theorem` | [interior_square_scaling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/declarations/interior-square-scaling--1206170786c97c4377f29409.md) | 80 | `result-track:1206170786c97c4377f294096f07402ccb2caf7f8009d15dcee5ebb6e00b0df4` |
| 7 | `theorem` | [unit_dilation_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/declarations/unit-dilation-square-integral--81d3fd0d7022acd942caf83e.md) | 91 | `result-track:81d3fd0d7022acd942caf83e22f5e8739c983ff61c3f6dd0b5d6439ac407c550` |
| 8 | `theorem` | [explicit_normalization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/declarations/explicit-normalization--3508a2c7628a4069ad4f7b2d.md) | 111 | `result-track:3508a2c7628a4069ad4f7b2d6ec21a010e924c5cc3b87788d060a917a9361dbb` |
| 9 | `theorem` | [normalized_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/declarations/normalized-square-integrable--31894aa496295d7d35264c31.md) | 131 | `result-track:31894aa496295d7d35264c31c433e1ee823176273a24d6e637c1f56250b87483` |
| 10 | `theorem` | [normalized_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/declarations/normalized-square-integral--385b1b7c5fc3c224f66f684c.md) | 137 | `result-track:385b1b7c5fc3c224f66f684c34d5a5bb0c2fa707b44f483f465f7b24a977b043` |
| 11 | `theorem` | [normalized_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant97ffe053b99a00f729eaee5de18b4034c7ce01a7649893dd4e7ee43d38d0557c.lean/declarations/normalized-ne-zero--6d8da0e84d461feb0288d238.md) | 144 | `result-track:6d8da0e84d461feb0288d238bf3ce04fceba7cad7391e3685bcab33d3ee19a2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
