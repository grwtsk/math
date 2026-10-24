# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexWaveDifferential

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04a1871986529730dd67d4bf06d74dec5e06d6aa",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04a1871986529730dd67d4bf06d74dec5e06d6aa`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.DampedPhaseDifferential`](../../../../../mathematics/Analysis/ComplexAnalysis/DampedPhaseDifferential.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexCechWave`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Slot](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/slot--82dd53d7f03d57b22a55360e.md) | 28 | `declaration-track:82dd53d7f03d57b22a55360efdfe35ed715e544c52cdeb40659f91df8ac33560` |
| 2 | `def` | [dataCoefficients](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/datacoefficients--95344492bdfa1c859c5d6f4c.md) | 30 | `declaration-track:95344492bdfa1c859c5d6f4c2f93369ee9c4919099f80996d04095d08c2cff17` |
| 3 | `def` | [rawCoefficients](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/rawcoefficients--a5e2d3a7c690e90e18951171.md) | 33 | `declaration-track:a5e2d3a7c690e90e18951171a1a5b417f07e0f978c1baec714fef5def1d0c8aa` |
| 4 | `theorem` | [rawCoefficients_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/rawcoefficients-injective--c0fac6e74df2b1b09e3fb1a1.md) | 37 | `result-track:c0fac6e74df2b1b09e3fb1a14ed6bbebbbfc4ece3bf4204ac7ed3c821f399be4` |
| 5 | `def` | [rawTopology](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/rawtopology--0c29f565d18aef56a2fe50c6.md) | 57 | `declaration-track:0c29f565d18aef56a2fe50c6bbf6d169cfb4079b2bd66c9d34cb0b9a9dc64fd3` |
| 6 | `def` | [steady](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/steady--f095a2c8b71d63b33819500d.md) | 61 | `declaration-track:f095a2c8b71d63b33819500d11b29955615c1cde02170def7f7fa11760bb9d7f` |
| 7 | `def` | [transient](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/transient--bd9c4c96e6e06245b96bc501.md) | 65 | `declaration-track:bd9c4c96e6e06245b96bc50119fe3656cea12227ad164197e3b498e8d70b748b` |
| 8 | `theorem` | [evolve_split](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/evolve-split--bc53b7e1aaae43c2131d80c7.md) | 69 | `result-track:bc53b7e1aaae43c2131d80c7df8829928dfaddd5eb2be456236d7ebe778ec599` |
| 9 | `theorem` | [dataCoefficients_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/datacoefficients-add--e0ebeb5d4f603af694fce9c9.md) | 83 | `result-track:e0ebeb5d4f603af694fce9c98047243dd4014ad017d95400d973847dec4d7ebf` |
| 10 | `theorem` | [dataCoefficients_scale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/datacoefficients-scale--7e07e93e384533fe7670a3d4.md) | 90 | `result-track:7e07e93e384533fe7670a3d418fd824bf7c2d81a5398946b42056c3cea5665de` |
| 11 | `def` | [badge](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/badge--699f5ef756df8c96fc149e57.md) | 97 | `declaration-track:699f5ef756df8c96fc149e576593e1d5659401f21bdb3242cf33220e8c85b200` |
| 12 | `theorem` | [rawCoefficients_encode](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/rawcoefficients-encode--4473a7271b8e82dd3d44c937.md) | 100 | `result-track:4473a7271b8e82dd3d44c9374d6804f1744a58824fd3040693951535587e3028` |
| 13 | `theorem` | [wave_coefficients](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/wave-coefficients--73e2012b02433f9bcdedaf34.md) | 106 | `result-track:73e2012b02433f9bcdedaf34af97f6637eaf4fbd7951867917dd2b38c6f5cdb0` |
| 14 | `theorem` | [wave_joint_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/wave-joint-continuous--2ee8281f7a611785bf8d619c.md) | 116 | `result-track:2ee8281f7a611785bf8d619c4ea35953407b788cb28e153de281ae47eb0e6d93` |
| 15 | `def` | [dampedCoefficient](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/dampedcoefficient--dd0fa72fa6e3cd5bf068fbd2.md) | 127 | `declaration-track:dd0fa72fa6e3cd5bf068fbd23c327b7f1570845b230261333658a8bbd1f8f4f8` |
| 16 | `theorem` | [wave_coordinate_derivative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/wave-coordinate-derivative--65049ab94b343886784312d7.md) | 132 | `result-track:65049ab94b343886784312d7fa87dcaa67e5fe6d35462041249ebe611d14982e` |
| 17 | `theorem` | [wave_affine_clocks_derivative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/wave-affine-clocks-derivative--4c0adf53dbeefe53fd1ce221.md) | 144 | `result-track:4c0adf53dbeefe53fd1ce221fd91ec777a88418bde9e92fb6e3937898407709a` |
| 18 | `def` | [decodedMismatchCoefficient](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/decodedmismatchcoefficient--d9f77279c99573c7b75d911a.md) | 156 | `declaration-track:d9f77279c99573c7b75d911a0f1227b706696599d2251070221fde4556df5802` |
| 19 | `theorem` | [decodedMismatch_wave](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/decodedmismatch-wave--96fdadec64af14d809b4e4a8.md) | 160 | `result-track:96fdadec64af14d809b4e4a83184ab2e27af1082df0a50fc5dd7227e93d7ce61` |
| 20 | `theorem` | [mismatch_coordinate_derivative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/mismatch-coordinate-derivative--9a685996ad70219ade52a6df.md) | 170 | `result-track:9a685996ad70219ade52a6df050ec446f190d0c96dc48e68689c634ff02a489e` |
| 21 | `theorem` | [mismatch_energy_derivative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/mismatch-energy-derivative--f2a1afc4ff465d789e281f09.md) | 183 | `result-track:f2a1afc4ff465d789e281f0963ad437c37c89b1bd6ed47d98439230a03385210` |
| 22 | `theorem` | [no_return_of_heat_increase](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexWaveDifferential.lean/declarations/no-return-of-heat-increase--3c7a97fdfb3b8e45b414a3d8.md) | 193 | `result-track:3c7a97fdfb3b8e45b414a3d8392dcf55881a6a1d2b1909f6b95cad1989c27f6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
