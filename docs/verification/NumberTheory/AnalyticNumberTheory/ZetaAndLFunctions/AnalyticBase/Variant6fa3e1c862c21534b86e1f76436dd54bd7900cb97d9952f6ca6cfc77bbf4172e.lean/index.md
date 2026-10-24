# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.AnalyticBase.Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dc76c1952abdd09cd9049c7f6ad565f55f094ba",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dc76c1952abdd09cd9049c7f6ad565f55f094ba`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CompletedZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean/declarations/completedzeta--72c422aef679bceda4758d2f.md) | 35 | `declaration-track:72c422aef679bceda4758d2fe9ee9134f29985f4c2c712db14347e208f08afbc` |
| 2 | `def` | [Xi](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean/declarations/xi--ab954448bb5dcb4e695d96c1.md) | 41 | `declaration-track:ab954448bb5dcb4e695d96c1c3ee3851ec6a6e94cfc4349d2264d60a263a9658` |
| 3 | `def` | [H0SpectralParameter](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean/declarations/h0spectralparameter--d6c165d12d7b6a7eda623ad7.md) | 50 | `declaration-track:d6c165d12d7b6a7eda623ad7e572d6809e8eb11f437de701d47c202b7787901d` |
| 4 | `def` | [H0](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean/declarations/h0--9d77bb4089db9f270413e26c.md) | 59 | `declaration-track:9d77bb4089db9f270413e26c40067e569f603f3c1d231c4f62fe30c774871134` |
| 5 | `theorem` | [completed_zeta_eq_mathlib](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean/declarations/completed-zeta-eq-mathlib--c6c1662f8797b0ffaf6c72dd.md) | 62 | `result-track:c6c1662f8797b0ffaf6c72dd88112f64f13c2c18ce9e91ac0b0716780be42fd3` |
| 6 | `theorem` | [xi_completed_zeta_relation](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean/declarations/xi-completed-zeta-relation--cd1c88a2b9c12e400f658d5f.md) | 67 | `result-track:cd1c88a2b9c12e400f658d5f5ffe67f00275e6b619ddceb9a6453c909ff447a0` |
| 7 | `theorem` | [h0_spectral_parameter_definition](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean/declarations/h0-spectral-parameter-definition--c03fb350c36b9ba721d2ba6f.md) | 73 | `result-track:c03fb350c36b9ba721d2ba6f2bfc126c2fbad05d63fa4f0c6f33499399a0e3fa` |
| 8 | `theorem` | [h0_definition](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean/declarations/h0-definition--ee5168e4304da3655658e6fa.md) | 79 | `result-track:ee5168e4304da3655658e6fad41f98b8c351965d4907793a56303f5e6289123d` |
| 9 | `theorem` | [h0_spectral_parameter_real_part_on_real_axis](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/AnalyticBase/Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e.lean/declarations/h0-spectral-parameter-real-part-on-real-axis--414020922ecdb5f128530e98.md) | 85 | `result-track:414020922ecdb5f128530e9883f562b99f585ec5844fdf1f9d380760fa94d667` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
