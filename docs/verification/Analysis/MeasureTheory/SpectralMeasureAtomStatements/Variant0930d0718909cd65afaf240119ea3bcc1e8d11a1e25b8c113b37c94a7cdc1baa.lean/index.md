# Verification target: GRWTSK.Analysis.MeasureTheory.SpectralMeasureAtomStatements.Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f2ef4b46850bfca283582d6810d24aa5708e4a0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f2ef4b46850bfca283582d6810d24aa5708e4a0`.

Source path: `GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolventMassKernel](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/resolventmasskernel--b72145ed6f2075dfaea9a4b4.md) | 18 | `declaration-track:b72145ed6f2075dfaea9a4b41c6e5975f86815206e79adb960aa0b44168a08b9` |
| 2 | `def` | [resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/resolventmass--c08da7f6b396456bd07f53c0.md) | 22 | `declaration-track:c08da7f6b396456bd07f53c0d0b9844399aa95540307638ba9d09b554778973d` |
| 3 | `theorem` | [resolventMassKernel_nonneg_le_one](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/resolventmasskernel-nonneg-le-one--817f5a6b21932627b0da7b5c.md) | 25 | `result-track:817f5a6b21932627b0da7b5cd8166741a4f97df4d52618e12ae65e5489adc127` |
| 4 | `theorem` | [resolventMassKernel_measurable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/resolventmasskernel-measurable--cf96d2040179d4c164f68d6f.md) | 32 | `result-track:cf96d2040179d4c164f68d6f178f8695b04dafb8272c6842c4c1231b9a94ec6b` |
| 5 | `theorem` | [resolventMassKernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/resolventmasskernel-integrable--dd61437e9d42729149bb1f46.md) | 36 | `result-track:dd61437e9d42729149bb1f4670a39b9af06cce59ef8fc48d78843896a47f0be0` |
| 6 | `theorem` | [resolventMass_nonneg_le_total](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/resolventmass-nonneg-le-total--e919f71926467dee30a3dde3.md) | 44 | `result-track:e919f71926467dee30a3dde34f7edc9daa6e16f73c5e0b5ce995cf2c39ec0122` |
| 7 | `theorem` | [resolventMassKernel_tendsto_zero_right](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/resolventmasskernel-tendsto-zero-right--9ebb18735ce42183d53a498d.md) | 54 | `result-track:9ebb18735ce42183d53a498d9d3b6ab1bb532849f1cec06d92322f1bfbfc70de` |
| 8 | `theorem` | [resolventMass_tendsto_zero_atom](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/resolventmass-tendsto-zero-atom--9031e674966f27091817b9d0.md) | 75 | `result-track:9031e674966f27091817b9d076b627e3b853c09dbf32a1ee5db0016ae837b38d` |
| 9 | `theorem` | [zero_atom_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/zero-atom-le-resolventmass--e712d6696990131fa6aac8e9.md) | 94 | `result-track:e712d6696990131fa6aac8e9abdd06d0794305ef3c69143f224f0198c1de4c0b` |
| 10 | `theorem` | [spectral_interval_mass_le_resolventMass](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/spectral-interval-mass-le-resolventmass--3142cf711faab0431f841b83.md) | 108 | `result-track:3142cf711faab0431f841b83fd2f13d37a058b25990c663c90601f7251fae2ec` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/example--a12110186683083176f6195e.md) | 133 | `declaration-track:a12110186683083176f6195e3d2eece1572b1ad03f249251fae9017a357daf6b` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/example--236fcdf2166ff3374ce4146e.md) | 135 | `declaration-track:236fcdf2166ff3374ce4146eb6fe362832a0399f77a8d7cba0609fa97ac95584` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/example--a683f513c8d028a1fe63a8cb.md) | 138 | `declaration-track:a683f513c8d028a1fe63a8cb5ddb36878b6279a3fb03bfc43fb382d8335b7b4a` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/example--f844213ad5d482f137daaf06.md) | 142 | `declaration-track:f844213ad5d482f137daaf06608a43ad87e86b7f471bc17168fff034cc2dec0f` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/example--6c5d2bfb600a27b1559719be.md) | 145 | `declaration-track:6c5d2bfb600a27b1559719be11065dba353aa3bde4809470386fdd9eebb073e4` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/example--4ff8e6469381a91535544bef.md) | 149 | `declaration-track:4ff8e6469381a91535544befa466a84385825f0d2a5ef4a854757c6f7a755eef` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/example--a2dd2ca67bf0bbeb778e0408.md) | 154 | `declaration-track:a2dd2ca67bf0bbeb778e04087cbc60e8ade9cfb0bdefd438c4d549ad9343e42b` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/example--f4d6e9db0e20ee8ac6f39c4e.md) | 159 | `declaration-track:f4d6e9db0e20ee8ac6f39c4eebea7e71fd69691cb4f316686a4d26f280f629c9` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/example--2e39a64ff8b1b09722740333.md) | 164 | `declaration-track:2e39a64ff8b1b0972274033374cc183d56e928bb017496824cf70e41ad2f2c40` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SpectralMeasureAtomStatements/Variant0930d0718909cd65afaf240119ea3bcc1e8d11a1e25b8c113b37c94a7cdc1baa.lean/declarations/example--999aa86d4eebf7dc7b9ad6bb.md) | 168 | `declaration-track:999aa86d4eebf7dc7b9ad6bb6a3cf1176944cce21368bfd9af8d78c8a83a3880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
