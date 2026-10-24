# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.06SourceExactTailEnergy.Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7ab97dc4ad7548d4760f0a3a0cf01e76f7ed35c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7ab97dc4ad7548d4760f0a3a0cf01e76f7ed35c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tailEnergyCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/tailenergycoefficient--90fc8598668b889168dda08d.md) | 22 | `declaration-track:90fc8598668b889168dda08dd0f7f118924bd4abf0b839a38f91e5a29b8ccd7a` |
| 2 | `theorem` | [exact_ratio_comparison](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/exact-ratio-comparison--11c37d5d287cbf11cb7d4e12.md) | 26 | `result-track:11c37d5d287cbf11cb7d4e129f3f5e9cdc9b519e3625584a1ba6358267bd2f27` |
| 3 | `theorem` | [exact_ratio_mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/exact-ratio-mono--fc89be5610034d0101ab5169.md) | 36 | `result-track:fc89be5610034d0101ab51693ca405d43b6957cc4343109ee52e2970d4409e35` |
| 4 | `theorem` | [tailEnergyCoefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/tailenergycoefficient-pos--d34c13b3039c9baadd3ca7c1.md) | 47 | `result-track:d34c13b3039c9baadd3ca7c1fcac7a02d7b25828bb8ec214f6e07c4edcdbf157` |
| 5 | `theorem` | [tailEnergyCoefficient_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/tailenergycoefficient-antitone--5e566612cac3dcb69bf1d28c.md) | 52 | `result-track:5e566612cac3dcb69bf1d28cd5d904ecafc258371fbff73db6b79604b922b92d` |
| 6 | `theorem` | [actual_derivative_energy_le_tail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/actual-derivative-energy-le-tail--6ef45426730045981ff4ddb1.md) | 60 | `result-track:6ef45426730045981ff4ddb177ccdf69415d158107fad0b915253c8ddafc2eec` |
| 7 | `theorem` | [actual_correlation_deriv_abs_le_tail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/actual-correlation-deriv-abs-le-tail--474ec38cf242f5657351924e.md) | 69 | `result-track:474ec38cf242f5657351924ebc40462db8f14014c7f11b36eff210f31ece8829` |
| 8 | `theorem` | [actual_correlation_second_deriv_abs_le_tail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/actual-correlation-second-deriv-abs-le-tail--e5b29d3b1fff2abf52a3fbfd.md) | 81 | `result-track:e5b29d3b1fff2abf52a3fbfd081cde56c1523894d5ac3e7a33d711cc449eef6d` |
| 9 | `theorem` | [tailEnergyCoefficient_ninety_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/tailenergycoefficient-ninety-one--446f34072871b4b5f1dcec28.md) | 90 | `result-track:446f34072871b4b5f1dcec28c223da5526810244558368e89367b559a849d256` |
| 10 | `theorem` | [tailEnergyCoefficient_ninety_one_lt_five](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/tailenergycoefficient-ninety-one-lt-five--fbac46c6146c4fdb90ce18a7.md) | 94 | `result-track:fbac46c6146c4fdb90ce18a7ac26cf4ab47e1da6d6a8ffee07b7fd7f4d4931fe` |
| 11 | `theorem` | [tailEnergyCoefficient_le_five](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/tailenergycoefficient-le-five--b034896aef06828454a81f9b.md) | 99 | `result-track:b034896aef06828454a81f9bbdde0728dd727618b16cd5fa65eca6c2b183e5e2` |
| 12 | `theorem` | [actual_correlation_derivative_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/declarations/actual-correlation-derivative-bounds--76714f0107300d2a34050255.md) | 105 | `result-track:76714f0107300d2a3405025514a2d18283d9804f32bb0957802f5d5a902a2afc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
