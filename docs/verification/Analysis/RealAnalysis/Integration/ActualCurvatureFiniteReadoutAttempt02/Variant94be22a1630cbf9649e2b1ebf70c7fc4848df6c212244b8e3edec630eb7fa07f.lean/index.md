# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualCurvatureFiniteReadoutAttempt02.Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37df889bce4e886b3bc1c06ba08d455ded4b7a16",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37df889bce4e886b3bc1c06ba08d455ded4b7a16`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCurvatureResolution` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gridPoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/declarations/gridpoint--6b9e6cfca7e3ff0be4196128.md) | 24 | `declaration-track:6b9e6cfca7e3ff0be4196128de1995165f7163069ce4f7fcf7506235a0ce6125` |
| 2 | `theorem` | [gridPoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/declarations/gridpoint-zero--4a60705db4e53eecc7d3de1d.md) | 26 | `result-track:4a60705db4e53eecc7d3de1d05b58071d184ea16b13ed463f61ce9166c3e0797` |
| 3 | `theorem` | [gridPoint_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/declarations/gridpoint-upper--0f777401a1d212280da400ea.md) | 29 | `result-track:0f777401a1d212280da400eae9bbff3ab8ab4312099bf81f4a4adadb200e6099` |
| 4 | `theorem` | [gridPoint_step_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/declarations/gridpoint-step-pos--532634686ac930523295a0cc.md) | 34 | `result-track:532634686ac930523295a0cc02cd8f5b76182ec8b6f64996cea2f5335d4b8643` |
| 5 | `theorem` | [leftGridSample_eq_on_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/declarations/leftgridsample-eq-on-cell--7497c555c4ab8c3ec3a7fcb6.md) | 42 | `result-track:7497c555c4ab8c3ec3a7fcb6e7141f61b22a21fb397837b96aedcb376c2365fe` |
| 6 | `theorem` | [actual_curvature_cell_FTC](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/declarations/actual-curvature-cell-ftc--473f7a72e20e408d3aae477d.md) | 63 | `result-track:473f7a72e20e408d3aae477df0bd6fcd9127886fd7aebc8fe0f973a7a1ed9457` |
| 7 | `theorem` | [actual_grid_cell_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/declarations/actual-grid-cell-integral--7225caa1b627f9a691b2fe0d.md) | 68 | `result-track:7225caa1b627f9a691b2fe0d01a1c5114c2ff02bb5ca9c41adcc340d3e668fb0` |
| 8 | `theorem` | [sampled_grid_cell_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/declarations/sampled-grid-cell-intervalintegrable--1f0860fd5666813697843d56.md) | 85 | `result-track:1f0860fd5666813697843d566b381e6356d3c53f68813498e63464c3a05ec149` |
| 9 | `def` | [finiteCurvatureReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/declarations/finitecurvaturereadout--024b0d82f22d76715aea4ea3.md) | 99 | `declaration-track:024b0d82f22d76715aea4ea3065c6e0bb15e2ec9202d69daa37e9cf93cc7a84f` |
| 10 | `theorem` | [sampled_grid_eq_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/declarations/sampled-grid-eq-finite--221994fc1b0d5b150ddb57f9.md) | 105 | `result-track:221994fc1b0d5b150ddb57f9ac1a8c5e39f236b13689df8958dd507c95d50587` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
