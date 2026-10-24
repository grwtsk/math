# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceAttempt3.Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e797546032d49fcb9ff863375e42cd03f4535046",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e797546032d49fcb9ff863375e42cd03f4535046`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/p--962f432f6e4d2805fd37d291.md) | 23 | `declaration-track:962f432f6e4d2805fd37d291e3b555f61ba8d8c89010a0ed2bce946f169d2f4e` |
| 2 | `abbrev` | [a](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/a--495b4aa3d1116bf751fc0f99.md) | 24 | `declaration-track:495b4aa3d1116bf751fc0f99613c23d8d7e89dca10d84e557aa5258cd5896a55` |
| 3 | `def` | [firstTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/firstterm--f15c4b4952d93e8e4ee50bea.md) | 26 | `declaration-track:f15c4b4952d93e8e4ee50bea7ff3928b646412e8b70ca2963a6b2dc4d06cde4b` |
| 4 | `def` | [secondTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/secondterm--6d886f4248750b8d1091fefe.md) | 28 | `declaration-track:6d886f4248750b8d1091fefe64fcc992dc35129349e2ee5854042384cee64cd2` |
| 5 | `def` | [firstSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/firstseries--12bea112f3f73e5a686a8365.md) | 30 | `declaration-track:12bea112f3f73e5a686a83658d3b089a241a7556200fab3aec7c0ec091b8cbcb` |
| 6 | `def` | [secondSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/secondseries--1563a73bd5d893dd7543a227.md) | 32 | `declaration-track:1563a73bd5d893dd7543a227c6b2d4f1a44be71e41dd14c69fb5ddd3e087558a` |
| 7 | `def` | [weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/weight--a486de7f6ded6a7a84f14370.md) | 34 | `declaration-track:a486de7f6ded6a7a84f14370cd7ca99369828f7717b4361625c4f9737cf33d48` |
| 8 | `theorem` | [weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/weight-eq--3f88058edfadc23f32757f58.md) | 36 | `result-track:3f88058edfadc23f32757f589e293d649a832642f7f86649d9c07c6f1f337355` |
| 9 | `theorem` | [weight_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/weight-summable--5ccd7e315e64165dd29b239e.md) | 41 | `result-track:5ccd7e315e64165dd29b239edb7a6651e99bac7304a60c543faa8fab66a8253d` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/pairedterm-hasderivat--4f6453a292666f781179dda8.md) | 46 | `result-track:4f6453a292666f781179dda8ccc08475797fcecb12559713875edc1315df551b` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/firstterm-hasderivat--bd4511555998a15a1cd09a87.md) | 63 | `result-track:bd4511555998a15a1cd09a87720f7a32ac527c905d99fd16b8029fd18b5ae93c` |
| 12 | `def` | [lowerCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/lowercoefficient--9ee9bc642a9c227eb87b9bdb.md) | 80 | `declaration-track:9ee9bc642a9c227eb87b9bdb148ea2fa78dc48af54c0433bd79184fd462ebd16` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/lowercoefficient-pos--a6212bac050f0cbe33f2632e.md) | 82 | `result-track:a6212bac050f0cbe33f2632e1704f7cfa26dc7748d5580c01cdd0a9bbb2eabe6` |
| 14 | `theorem` | [rate_lower](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/rate-lower--c36864c0ad56c841c6bcc9a4.md) | 85 | `result-track:c36864c0ad56c841c6bcc9a43dbfbb10b3ea2642ab9d93854b82d0656ca5acf4` |
| 15 | `theorem` | [firstTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/firstterm-bound--69657b30fd1c9a7d4c91707a.md) | 94 | `result-track:69657b30fd1c9a7d4c91707a7442cdfe45d8784c3c1e543833b9090164978988` |
| 16 | `theorem` | [secondTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/secondterm-bound--c211ee2c084dc728bb2f81cb.md) | 123 | `result-track:c211ee2c084dc728bb2f81cb2681467efb95d5f963d8bc5eeaa29e22c92ae9fd` |
| 17 | `theorem` | [firstTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/firstterm-summable--9000ff5c30ef92efb811d945.md) | 140 | `result-track:9000ff5c30ef92efb811d9454e45457fa42c45c9b95c55f5b86e237d077c1ecc` |
| 18 | `theorem` | [secondTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/secondterm-summable--9cc4c20f0dee4d4b8cb4695f.md) | 147 | `result-track:9cc4c20f0dee4d4b8cb4695f07140f6b38832d188ccfd558ba28c54eb934f955` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/actualprofile-hasderivat--e25c8df351e45a235e06e861.md) | 153 | `result-track:e25c8df351e45a235e06e86144a4286a8170be325725bae6dfe19d7a51ae7362` |
| 20 | `theorem` | [actualProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/actualprofile-deriv--734edda5b0ebe15ad5297106.md) | 168 | `result-track:734edda5b0ebe15ad5297106a9924dcebea2142296df2d1b9c3195592efca59b` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/firstseries-hasderivat--98e83a844d927223f1889065.md) | 171 | `result-track:98e83a844d927223f1889065011871d60ace4f48b0aa69e0b8d7adbd59b2975c` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/actualprofile-second-hasderivat--de5d75ede3f38a84ac933694.md) | 183 | `result-track:de5d75ede3f38a84ac93369467b498b0a157aeab8870b8b949a13f6047b2f7ed` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/declarations/actualprofile-second-deriv--9060e8c9c40a56e68865b507.md) | 189 | `result-track:9060e8c9c40a56e68865b50786edfd54074db6d2c8fcc15b4275041fffd2eb1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
