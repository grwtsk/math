# Verification target: GRWTSK.Analysis.Complex.RationalPowerEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f42186f806f8714d6ec601e747ac936165737126",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalPowerEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f42186f806f8714d6ec601e747ac936165737126`.

Source path: `GRWTSK/Analysis/Complex/RationalPowerEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalPowerEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalRoundedArithmetic`](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RoundedLogPowerEvaluation`](../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Schedule](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/schedule--f9034445d3fe7b6403e9540e.md) | 29 | `declaration-track:f9034445d3fe7b6403e9540e638545578701be21a76ce585c94d132aaab7d50c` |
| 2 | `def` | [mantissa](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/mantissa--982caacad758c203db8e31a1.md) | 37 | `declaration-track:982caacad758c203db8e31a114bdb66145250864d81776dc76a0f5afc2f05b41` |
| 3 | `def` | [logLower](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/loglower--9c0e134469e822d6ebe74b5c.md) | 39 | `declaration-track:9c0e134469e822d6ebe74b5cda6a77bb8c31fd7e6f223e35fb6d01e1aca3138a` |
| 4 | `def` | [logWidth](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/logwidth--040a325b951a4ef9a5ab880a.md) | 42 | `declaration-track:040a325b951a4ef9a5ab880a58ef0b9a94c816bee2a4aa0f6c1ef03cbbf59ecb` |
| 5 | `def` | [logCenter](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/logcenter--8b78bfb63ecbb247ef8850f7.md) | 45 | `declaration-track:8b78bfb63ecbb247ef8850f74140b4bff79284c7cbec29fa02a373a421d5d537` |
| 6 | `def` | [logError](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/logerror--12f35f54d7b60374f78f21b5.md) | 46 | `declaration-track:12f35f54d7b60374f78f21b51152ea720c279237c5c8b0731ed4cc3c99756ff9` |
| 7 | `def` | [argument](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/argument--5018a03a820c4a4c3469f7f9.md) | 48 | `declaration-track:5018a03a820c4a4c3469f7f91790729a1530599edffce4b9c48bd87ba7f2629c` |
| 8 | `def` | [radius](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/radius--1e015b913192f2d36acdd5e9.md) | 51 | `declaration-track:1e015b913192f2d36acdd5e9e0ac0f7de6939f085b8872686fe0750ee1775681` |
| 9 | `def` | [displacement](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/displacement--797ed8bff06be3e46519a585.md) | 54 | `declaration-track:797ed8bff06be3e46519a585552069c70d8bf987ec48683e42cd7cd9edd6e28f` |
| 10 | `def` | [seed](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/seed--03a4ecb8da371cf0a8162796.md) | 57 | `declaration-track:03a4ecb8da371cf0a816279646a81bc5e8714f77a50d96f0fa3ab9d3a40c38b7` |
| 11 | `def` | [seedError](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/seederror--a8759295f758cf6c589aca9b.md) | 60 | `declaration-track:a8759295f758cf6c589aca9bd93f1437049d95fba94dab83e6bd5570b2f81061` |
| 12 | `def` | [compute](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/compute--66262cfe252e98288b92d53d.md) | 65 | `declaration-track:66262cfe252e98288b92d53d70c89add8030911fbbb6296e836c5a9f56d3c16a` |
| 13 | `def` | [Admissible](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/admissible--5fd1be11d02c2319c300978d.md) | 69 | `declaration-track:5fd1be11d02c2319c300978d975834dd933cbe937a81a17ae93acc7edd7507b2` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/instance--e093a581c5b142ffee9ce495.md) | 72 | `declaration-track:e093a581c5b142ffee9ce4959c72f64a3df83fff4c45ada7f88a890d628b5731` |
| 15 | `def` | [evaluate](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/evaluate--90ff420201201eb570e8418a.md) | 78 | `declaration-track:90ff420201201eb570e8418a5fbe67a02b7688519a3df29f6a149b01502f06c5` |
| 16 | `def` | [verify](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/verify--255a8a626f6c5cef4cb0b392.md) | 86 | `declaration-track:255a8a626f6c5cef4cb0b392a72a1df95c1b1f1002c8e5add8e3321ce6ff5603` |
| 17 | `def` | [select](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/select--8e46060a2592b787a9047cba.md) | 90 | `declaration-track:8e46060a2592b787a9047cbaaa0a7b206c994667505d6aa52ab58ee3586e2ce2` |
| 18 | `def` | [toLogInput](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/tologinput--09641c527ebd61b5f50c1a04.md) | 98 | `declaration-track:09641c527ebd61b5f50c1a04cd2449269eba7a83a1e35aa5a30f2b5df3138d8a` |
| 19 | `theorem` | [toLogInput_center](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/tologinput-center--1fe005fb0f027a94f665742c.md) | 102 | `result-track:1fe005fb0f027a94f665742c3c96083cc66c7a77fb3885ce6cf3e0bd9329dc51` |
| 20 | `theorem` | [toLogInput_error](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/tologinput-error--70848c89dddc75222275d341.md) | 105 | `result-track:70848c89dddc75222275d341d5786d2bd66db721dd9f49de95781ffdd4915257` |
| 21 | `def` | [toSpec](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/tospec--3ccec5eb4582910411b6571b.md) | 109 | `declaration-track:3ccec5eb4582910411b6571b15c2cd492bcacdebf941e2ec6f9f01c2a9ad37b7` |
| 22 | `theorem` | [radius_refines](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/radius-refines--c46d078619b3a7619b97f1c1.md) | 128 | `result-track:c46d078619b3a7619b97f1c17f537315c0e71b04b3833a50cb715df642d1ed49` |
| 23 | `theorem` | [displacement_refines](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/displacement-refines--cf92d705828c0bcee75f49f2.md) | 133 | `result-track:cf92d705828c0bcee75f49f21226fe92335b20fb2345d892fb6e8a853dfdcd30` |
| 24 | `theorem` | [seed_refines](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/seed-refines--a86759e33f50f704c052f9c4.md) | 138 | `result-track:a86759e33f50f704c052f9c4ae85f7314858ff435eb59126dbbf9b038d3b0532` |
| 25 | `theorem` | [seedError_refines](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/seederror-refines--e809c77207b0660191221bf5.md) | 147 | `result-track:e809c77207b0660191221bf5f3f9899d5ce45f59e70a344d4522a3253a4c5073` |
| 26 | `theorem` | [compute_refines](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/compute-refines--d256b2449141722a174f9bab.md) | 155 | `result-track:d256b2449141722a174f9bab9751239b2032de2d7b1c347b3e9e5e1d73da2205` |
| 27 | `theorem` | [compute_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/compute-sound--63f9ad6c672e6188159e3d36.md) | 163 | `result-track:63f9ad6c672e6188159e3d360a79faf40b491b999a5ae7d7f2e5ebf3828762fe` |
| 28 | `theorem` | [evaluate_some_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/evaluate-some-iff--dd2891fd83c9325058e948a4.md) | 169 | `result-track:dd2891fd83c9325058e948a4d35785aeae104249c4af1b889f7a69ff88839fe6` |
| 29 | `theorem` | [accepted_refines](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/accepted-refines--b3c4d87b561161f5b557d00a.md) | 177 | `result-track:b3c4d87b561161f5b557d00a12b3823c5fdc87ccae355bbce931e26bc4877580` |
| 30 | `theorem` | [evaluate_none_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/evaluate-none-iff--8b1b6f603342c944d1d4a340.md) | 186 | `result-track:8b1b6f603342c944d1d4a340d1b72ba30e23ff4e45a358f3ca6c918729caccaf` |
| 31 | `theorem` | [evaluate_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/evaluate-sound--ea4809baeed0a70dad30da10.md) | 192 | `result-track:ea4809baeed0a70dad30da10c99b38b02d8d28306638428a6f0b9029603a5a17` |
| 32 | `theorem` | [verify_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/verify-iff--84aa0f06d04c1fc31c6f0ac6.md) | 198 | `result-track:84aa0f06d04c1fc31c6f0ac61ad27f2c65a38ad2f7eeb046e36b6b160343a1ce` |
| 33 | `theorem` | [verify_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/verify-sound--470671da0a00ea0dbaca7ee0.md) | 204 | `result-track:470671da0a00ea0dbaca7ee069cefdfdacc65131b7da4b5da3d8a41746435f46` |
| 34 | `theorem` | [select_some](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/select-some--4806bad0bc44c5f65779ec09.md) | 212 | `result-track:4806bad0bc44c5f65779ec098dc066a0a140541619831f54425981d3fae18a03` |
| 35 | `theorem` | [select_none_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/select-none-iff--559e25a24320bb6aa2675b3b.md) | 230 | `result-track:559e25a24320bb6aa2675b3b20b77d5445d9717a8675881cfbd7252263d18cac` |
| 36 | `theorem` | [select_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/declarations/select-sound--e5308e2525b2942caf8f20a3.md) | 237 | `result-track:e5308e2525b2942caf8f20a3671aba78f2cdb25362d92b50af8ae22919e6f5c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
