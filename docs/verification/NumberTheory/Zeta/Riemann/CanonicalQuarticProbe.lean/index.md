# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalQuarticProbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b80600f7f95cf28b5d0d8a16bd82235a4b29e6d1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b80600f7f95cf28b5d0d8a16bd82235a4b29e6d1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stageEnergy_const_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/stageenergy-const-mul--45c653066059865814971a42.md) | 40 | `result-track:45c653066059865814971a424646b0a965ad3d1be89fc7ec6d9220e9543077fe` |
| 2 | `def` | [quarticMagnitudeScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/quarticmagnitudescale--54c02682b30016dcabc804d8.md) | 61 | `declaration-track:54c02682b30016dcabc804d8c91ccb764b9711e03aee34a1b1aff727215a89ac` |
| 3 | `theorem` | [quarticMagnitudeScale_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/quarticmagnitudescale-sq--cb031e2c356fb4bcfb4bb62c.md) | 66 | `result-track:cb031e2c356fb4bcfb4bb62c0e1b60d0d8e8221a83390a2ee2667c777b4595e3` |
| 4 | `def` | [quarticProbe](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/quarticprobe--51ab5a51eb57764cf356eb97.md) | 77 | `declaration-track:51ab5a51eb57764cf356eb971c7e730da9a2da9a551e181cd9e76cc9bb2d34f0` |
| 5 | `theorem` | [stageEnergy_quarticProbe_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/stageenergy-quarticprobe-eq--e0e0238688b5002f7ec6802d.md) | 83 | `result-track:e0e0238688b5002f7ec6802db108bb97c3607ccf3ac5c2870212e7e43803f658` |
| 6 | `theorem` | [quarticProbe_zero_horizontal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/quarticprobe-zero-horizontal--7f67f955180575858d091b97.md) | 94 | `result-track:7f67f955180575858d091b9731dd60456cd2b17b540ff8642a8267b1a70e64d8` |
| 7 | `theorem` | [stageEnergy_quarticProbe_zero_horizontal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/stageenergy-quarticprobe-zero-horizontal--7a269cd3ee8390ff3dfa8a7d.md) | 100 | `result-track:7a269cd3ee8390ff3dfa8a7db1910effc502680e4d63ea58404d7b3b67657f84` |
| 8 | `theorem` | [zeroIndependentComparison_forces_global_decay](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/zeroindependentcomparison-forces-global-decay--4747aeb9eaa25a3ef6c7e5e3.md) | 108 | `result-track:4747aeb9eaa25a3ef6c7e5e30678944c6eafd3f1dfbb005bb5e46a8946a5f8b7` |
| 9 | `def` | [QuarticSignOrientationWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/quarticsignorientationwitness--d02de3767a9e911c7438624d.md) | 115 | `declaration-track:d02de3767a9e911c7438624d4992e96b0db91f7aa3d89063e18959cce57ac7cd` |
| 10 | `theorem` | [quarticSignOrientationWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/quarticsignorientationwitness--e2147f5a8d6bef00014c4c67.md) | 120 | `result-track:e2147f5a8d6bef00014c4c67a0970598ab1a955d96fd67a8e4ddde851c9c0354` |
| 11 | `def` | [quarticSignOrientationWitnessId](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/quarticsignorientationwitnessid--415a687e2a114cc2fd9b7a1a.md) | 126 | `declaration-track:415a687e2a114cc2fd9b7a1afad0e320e2156705678d46af4fc40b96305cde98` |
| 12 | `theorem` | [exact_positive_orientation_forces_horizontal_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/exact-positive-orientation-forces-horizontal-zero--a6d2261377ebe700b650e409.md) | 132 | `result-track:a6d2261377ebe700b650e409a47bd8dc44292026f1d363ee7d69b0ae8ee96440` |
| 13 | `structure` | [ProbeQuarticComparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/probequarticcomparison--7aa0baf41a5afbb28f0a1c3e.md) | 151 | `declaration-track:7aa0baf41a5afbb28f0a1c3eb56249dec31e6246b329f5a0cf8619165ae8bc24` |
| 14 | `def` | [toQuarticExtraction](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/toquarticextraction--d58e889e6bb5f7fd47868736.md) | 166 | `declaration-track:d58e889e6bb5f7fd47868736acd6b4e5fb3ea56aef38d18d2ad898884bbf823f` |
| 15 | `theorem` | [horizontal_displacement_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/horizontal-displacement-eq-zero--c86ec183558a6e0811152971.md) | 179 | `result-track:c86ec183558a6e0811152971a9b1f0142d6f70a5a12bff3276d6080fbed66653` |
| 16 | `theorem` | [riemannHypothesis_of_probeQuarticComparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalQuarticProbe.lean/declarations/riemannhypothesis-of-probequarticcomparison--732600d833ef2d54c470b5e4.md) | 189 | `result-track:732600d833ef2d54c470b5e4640abf85335c45964c9f8aecb1a85154d6b5c189` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
