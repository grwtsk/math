# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshPatterns

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b69548272d63523659710130ee46e4a5426a3f76",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b69548272d63523659710130ee46e4a5426a3f76`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boolSign](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/boolsign--92812976589afcfa272a4e54.md) | 33 | `declaration-track:92812976589afcfa272a4e540e4edf9673106c66441d997884de548b48a2b0d7` |
| 2 | `def` | [patternCountOn](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/patterncounton--657bce8a2bca8954bac11aa6.md) | 37 | `declaration-track:657bce8a2bca8954bac11aa6544e13943ed4e48a320127a4ddfabd3311f643cb` |
| 3 | `def` | [signedMomentOn](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/signedmomenton--cbc0ec338e2d62d3563c88a9.md) | 43 | `declaration-track:cbc0ec338e2d62d3563c88a9c0a70c16e8294b3f9688fed9da7990250d4aa075` |
| 4 | `theorem` | [boolSign_match](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/boolsign-match--26f2dc5f4729fb91edf59ab7.md) | 48 | `result-track:26f2dc5f4729fb91edf59ab7e0b3049660762640a2fb824070553fd75568a1f1` |
| 5 | `theorem` | [patternProduct_eq](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/patternproduct-eq--6fe4ad5fb6699c6b0c291b9e.md) | 55 | `result-track:6fe4ad5fb6699c6b0c291b9eb33955b31ea50eacde7d2eda63054550870d65b4` |
| 6 | `theorem` | [rawWalsh_patternCountOn](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/rawwalsh-patterncounton--0a2e5e9eda72bba47744015a.md) | 66 | `result-track:0a2e5e9eda72bba47744015a8fbbf9b508b64db3a7b8eeb6e77ff30c03cd94f6` |
| 7 | `def` | [empiricalPattern](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/empiricalpattern--186affc5573c8df4e439b574.md) | 92 | `declaration-track:186affc5573c8df4e439b5748ef92cff406e37f40ccd221be100e6d2af9a3900` |
| 8 | `def` | [empiricalMoment](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/empiricalmoment--6f822d89775db7157215f11d.md) | 97 | `declaration-track:6f822d89775db7157215f11d1d4d8a5b15a00fd6e25c70722429cdc8f47b6911` |
| 9 | `theorem` | [empiricalPattern_walsh](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/empiricalpattern-walsh--96edc3fbb02b7bb74996b193.md) | 103 | `result-track:96edc3fbb02b7bb74996b193b5602093dce5c135dae8c2d154ae3a28b6f2ef81` |
| 10 | `theorem` | [patternCountOn_split](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/patterncounton-split--d174aed1139a2b2985e4de17.md) | 119 | `result-track:d174aed1139a2b2985e4de17a04211643a5e929bb87243736c880c9b421bb77a` |
| 11 | `theorem` | [patternCountOn_agree_off](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/patterncounton-agree-off--4cc132ad608393c3bb99ba3a.md) | 129 | `result-track:4cc132ad608393c3bb99ba3adc96b6d499fd879b6f139149359717e0ff1ad1a3` |
| 12 | `theorem` | [patternCount_difference_supported](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/patterncount-difference-supported--6019d55138a13f19a05c0969.md) | 146 | `result-track:6019d55138a13f19a05c09699c741349fb03844de9b10d2afd7650bace3674c5` |
| 13 | `def` | [parityLeft](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/parityleft--5264291f061e3b49f04bbb19.md) | 160 | `declaration-track:5264291f061e3b49f04bbb197bdb35aebc231968b7145158fa915bfc5f89fa0f` |
| 14 | `def` | [parityRight](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/parityright--28c2508862e1d87d1e4a0790.md) | 161 | `declaration-track:28c2508862e1d87d1e4a0790964390cd9a05078060cce577d177c60b6c54ec09` |
| 15 | `def` | [parityThird](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/paritythird--2255c30c8c7e95fb75b30a25.md) | 162 | `declaration-track:2255c30c8c7e95fb75b30a25de867a05cdaf14997b8f07e22a79874cb700c2d6` |
| 16 | `theorem` | [parity_pairwise_not_threewise_fixture](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/declarations/parity-pairwise-not-threewise-fixture--7c23ec97c15c1cca3d038315.md) | 164 | `result-track:7c23ec97c15c1cca3d0383151c8166700dcfca77327e4313d45a82432ad1e30b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
