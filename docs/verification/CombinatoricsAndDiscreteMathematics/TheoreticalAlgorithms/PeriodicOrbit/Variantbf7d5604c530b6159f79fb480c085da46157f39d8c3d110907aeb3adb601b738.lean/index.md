# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PeriodicOrbit.Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "755d0b92e37eb5d722ca477fa5424ed7806bc01a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `755d0b92e37eb5d722ca477fa5424ed7806bc01a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.Expansion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleMultiplier](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/cyclemultiplier--a8bf0e3eab94f3911da8e17d.md) | 21 | `declaration-track:a8bf0e3eab94f3911da8e17d2d7d066b9ec7d47a3c0a163811a561067f6a8dcd` |
| 2 | `theorem` | [cycleMultiplier_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/cyclemultiplier-nil--72c517277a973a3c20f1db13.md) | 24 | `result-track:72c517277a973a3c20f1db13e7706fbbb0ea266c4fb3baeb58e434f49b83d8f2` |
| 3 | `theorem` | [cycleMultiplier_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/cyclemultiplier-cons--e1b56b69cd721458b86e0aec.md) | 28 | `result-track:e1b56b69cd721458b86e0aec2ab7c95fd93da3579047efa47dcc39c77218cfd6` |
| 4 | `theorem` | [cycle_multiplier_is_derivative_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/cycle-multiplier-is-derivative-product--0f530ecd07f8e748d4ec40a0.md) | 35 | `result-track:0f530ecd07f8e748d4ec40a06d5fec7fc0b9809214ae57931c673eee546ebe72` |
| 5 | `theorem` | [cycleMultiplier_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/cyclemultiplier-append--15e3ef5fa2590d862de975f4.md) | 41 | `result-track:15e3ef5fa2590d862de975f4ae2b21c1b051c0a2af0f45f90ebbaeae19b0da9a` |
| 6 | `def` | [scaledCycleMultiplier](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/scaledcyclemultiplier--236486bf7454402f6571faa5.md) | 47 | `declaration-track:236486bf7454402f6571faa53da38437d2560d8438db5135ae3251a0412ea40e` |
| 7 | `theorem` | [scaledCycleMultiplier_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/scaledcyclemultiplier-nil--f309e3ce80cde968548b9450.md) | 53 | `result-track:f309e3ce80cde968548b9450561b60010c2a1b600ea34540df671aca19b31b7f` |
| 8 | `theorem` | [scaledCycleMultiplier_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/scaledcyclemultiplier-cons--edb2033c6ebb93b8f837c231.md) | 57 | `result-track:edb2033c6ebb93b8f837c2315295d44a0873648624836c7943251a01c1996e25` |
| 9 | `theorem` | [scaled_cycle_numerator_is_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/scaled-cycle-numerator-is-product--8bb35838f04299df1a4fcdf2.md) | 64 | `result-track:8bb35838f04299df1a4fcdf2954d5c2af6417cb5499de3160910abbdbec3ab92` |
| 10 | `theorem` | [scaled_cycle_scale_is_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/scaled-cycle-scale-is-product--8ecb53f688c6e4bac21498e3.md) | 73 | `result-track:8ecb53f688c6e4bac21498e30d85e9a4fe7252f8f4c2f7cd069b9c7dddba44e2` |
| 11 | `structure` | [PeriodicOrbitCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/periodicorbitcertificate--fa356df49e31a28ce0cd93f4.md) | 82 | `declaration-track:fa356df49e31a28ce0cd93f4ebfab40eb9c18bb14082bc25f10eeb57b4fe00b0` |
| 12 | `structure` | [PeriodicAttractionObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variantbf7d5604c530b6159f79fb480c085da46157f39d8c3d110907aeb3adb601b738.lean/declarations/periodicattractionobligation--e14f7b1be620c14d23564cfd.md) | 98 | `declaration-track:e14f7b1be620c14d23564cfda471e3459d445118cdb9022dc71ab120f2256b62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
