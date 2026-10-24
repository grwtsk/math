# Verification target: GRWTSK.Analysis.MeasureTheory.Dirac.Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "309a9c1b119e2d22598aabdf29872e1e2dfc85eb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `309a9c1b119e2d22598aabdf29872e1e2dfc85eb`.

Source path: `GRWTSK/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/dirac--bc3e1f462809b1a50563f47e.md) | 28 | `declaration-track:bc3e1f462809b1a50563f47e07544c208e5630a22bbd6462a2fcf8448a06d082` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/instance--5312fa62e39ab45bd6d065f2.md) | 31 | `declaration-track:5312fa62e39ab45bd6d065f241917f4089cfa736d065a79e9861250696085728` |
| 3 | `theorem` | [le_dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/le-dirac-apply--0c035edba5ede5909f4b7e13.md) | 34 | `result-track:0c035edba5ede5909f4b7e137f6f3f726540f252a47412d6a73c89f191eefa69` |
| 4 | `theorem` | [dirac_apply'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/dirac-apply--aa3f0a978d424b504283ee10.md) | 39 | `result-track:aa3f0a978d424b504283ee1010b3a8b8a1f4ad60495667da2ffe4820a6eea3e1` |
| 5 | `theorem` | [dirac_apply_of_mem](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/dirac-apply-of-mem--19c8055c444db0ea0f07f0e8.md) | 44 | `result-track:19c8055c444db0ea0f07f0e81056721ed8ddf07dc1a3d1d9ae8139c48c8beb1d` |
| 6 | `theorem` | [dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/dirac-apply--01aeaf273eb3403236c67952.md) | 52 | `result-track:01aeaf273eb3403236c67952d41d61b743461cac8549b2cab0708551a40d1423` |
| 7 | `theorem` | [map_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/map-dirac--d2068af030a547d68cde7ebe.md) | 62 | `result-track:d2068af030a547d68cde7ebe9cbe2e9176807567827163da5ac0dfe18682f203` |
| 8 | `theorem` | [restrict_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/restrict-singleton--120aae2c431ce9753480d493.md) | 67 | `result-track:120aae2c431ce9753480d4930b3761e41def667374cbb8148c8db24eb9fbac1d` |
| 9 | `theorem` | [map_eq_sum](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/map-eq-sum--ff250fb4368fb3a00869f532.md) | 77 | `result-track:ff250fb4368fb3a00869f5328ff8417f2e109b10dd964e0f8932523adb0aa01a` |
| 10 | `theorem` | [sum_smul_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/sum-smul-dirac--c1698d44a9c4d4114f571159.md) | 87 | `result-track:c1698d44a9c4d4114f5711594b2b066707c57250fd415555359b24c865c1d7ce` |
| 11 | `theorem` | [tsum_indicator_apply_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/tsum-indicator-apply-singleton--6b4605c81d5b70ecd49cc283.md) | 93 | `result-track:6b4605c81d5b70ecd49cc2832b9329eddb70827777942d819d0eea0bc08732ce` |
| 12 | `theorem` | [mem_ae_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/mem-ae-dirac-iff--15aeb586be2cff42b90457da.md) | 107 | `result-track:15aeb586be2cff42b90457da5e96307955817f09e70ff9316750f0cd291cee15` |
| 13 | `theorem` | [ae_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/ae-dirac-iff--e3e63dfd6fcf0fa9b73f8feb.md) | 111 | `result-track:e3e63dfd6fcf0fa9b73f8feb564a87440ea2e89a5472462e05e7a265b98e3a65` |
| 14 | `theorem` | [ae_dirac_eq](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/ae-dirac-eq--dc3d5f5bb1a253b7cf2f28c3.md) | 117 | `result-track:dc3d5f5bb1a253b7cf2f28c3800f0d888992c076479067e53eed9dcdc0bee377` |
| 15 | `theorem` | [ae_eq_dirac'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/ae-eq-dirac--d453e5fc0e3fb1d5dcd2f9d5.md) | 122 | `result-track:d453e5fc0e3fb1d5dcd2f9d59c9888518ea713356c6645cd139d63f4200f7042` |
| 16 | `theorem` | [ae_eq_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/ae-eq-dirac--616e832ff1bb6cad558579f8.md) | 127 | `result-track:616e832ff1bb6cad558579f8ff100f66bc4475f413f2bda262ad5e6a3d15d7d2` |
| 17 | `instance` | [Measure.dirac.isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/measure-dirac-isprobabilitymeasure--f167bdab1e4e8d308bdbc3e1.md) | 131 | `declaration-track:f167bdab1e4e8d308bdbc3e16af449c55a6e4c99b52d3016a98baf8dcdee07c4` |
| 18 | `theorem` | [restrict_dirac'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/restrict-dirac--dd2d26bc196983d2bebbae0b.md) | 136 | `result-track:dd2d26bc196983d2bebbae0ba062cdf102e00f6eb7b02f4a29370f9bcfd0066f` |
| 19 | `theorem` | [restrict_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant522d03b4ee51cd5b9f9718b7712db0e1eeb4c2a3158f91c4e91cafc87df3777e.lean/declarations/restrict-dirac--7e410479da9548c3ba9535ed.md) | 144 | `result-track:7e410479da9548c3ba9535ed459121fcdd9bec861a9d9ae5c974899b259830ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
