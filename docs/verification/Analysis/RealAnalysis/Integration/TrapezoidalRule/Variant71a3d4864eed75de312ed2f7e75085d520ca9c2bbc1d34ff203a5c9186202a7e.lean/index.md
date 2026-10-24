# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TrapezoidalRule.Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adf07a042f3966614958fb73239bd0b7eac37dbb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adf07a042f3966614958fb73239bd0b7eac37dbb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trapezoidal_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-integral--ccf7d450e77cb972c4f038cd.md) | 49 | `declaration-track:ccf7d450e77cb972c4f038cd5cbba5cd9ace4e9a7dbdb91a57c7112f99730a42` |
| 2 | `def` | [trapezoidal_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-error--e3429a2625b244e97a164e8b.md) | 53 | `declaration-track:e3429a2625b244e97a164e8b50760c077c10c23fa11bdafdd1a972906a36178c` |
| 3 | `theorem` | [trapezoidal_integral_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-integral-symm--cdea5bc0cdf7b3f91a46ed24.md) | 58 | `result-track:cdea5bc0cdf7b3f91a46ed241ae870ef3e59523a6e37d5e221158cf80cb708b3` |
| 4 | `theorem` | [trapezoidal_error_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-error-symm--5cfa408749cf278362c091a1.md) | 71 | `result-track:5cfa408749cf278362c091a19373e5b878df8b1569364c76f68fdda14e64b08d` |
| 5 | `theorem` | [trapezoidal_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-integral-eq--d75fa4b834e87d5868f01b02.md) | 78 | `result-track:d75fa4b834e87d5868f01b02ac8c59c436b29b8e3583991468a726bdab932f01` |
| 6 | `theorem` | [trapezoidal_error_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-error-eq--0c4d2d057488c344102655e4.md) | 83 | `result-track:0c4d2d057488c344102655e4cc448d4a66a173f35a7a3bcbb8260a50b0b50ed0` |
| 7 | `theorem` | [trapezoidal_integral_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-integral-one--b721ea4f80c2ef0ab907b8ff.md) | 88 | `result-track:b721ea4f80c2ef0ab907b8ff5d7c5c255e37ba07c4e092a72e93f909c0af116d` |
| 8 | `theorem` | [sum_trapezoidal_integral_adjacent_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/sum-trapezoidal-integral-adjacent-intervals--09f07c2595224be24be74d53.md) | 95 | `result-track:09f07c2595224be24be74d53bb401499f76b70a5fee0cf3921541851a5b8094a` |
| 9 | `theorem` | [trapezoidal_integral_ext](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-integral-ext--a6d0a1e9d2d4a4ba4de305f3.md) | 106 | `result-track:a6d0a1e9d2d4a4ba4de305f3dde3c729de55593a4e454b369e549c1c81dd17d2` |
| 10 | `theorem` | [sum_trapezoidal_error_adjacent_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/sum-trapezoidal-error-adjacent-intervals--46ac3731a08702ba086410f5.md) | 116 | `result-track:46ac3731a08702ba086410f570162d07cc7329f0a8267c4f08c75376c1d45fb5` |
| 11 | `lemma` | [trapezoidal_error_le_of_lt'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-error-le-of-lt--a710904a8043edd997e432b1.md) | 135 | `result-track:a710904a8043edd997e432b1a6656f240702c5918049add237b2de2482485b90` |
| 12 | `lemma` | [trapezoidal_error_le_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-error-le-of-lt--1cc74756ec41a7eb3397560c.md) | 192 | `result-track:1cc74756ec41a7eb3397560c8d2d84ddfe5ebcff1adb9782cfa2abdbf2c2fdbf` |
| 13 | `theorem` | [trapezoidal_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-error-le--e6c103c9af54efc9f66225b3.md) | 241 | `result-track:e6c103c9af54efc9f66225b3bca726fe9b4812b8da793538488d21fd41a7614a` |
| 14 | `theorem` | [trapezoidal_error_le_of_c2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/declarations/trapezoidal-error-le-of-c2--66a79d488320dff381005337.md) | 261 | `result-track:66a79d488320dff381005337f40d1c24cfe59aac9433eec82b7871a3c26930fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
