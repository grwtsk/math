# Verification target: GRWTSK.Analysis.DyadicConditionalExpectation.Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "559fbf67a0f035c0eeb31aec5337ef6a1fc31146",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/index.md) · [Full source](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `559fbf67a0f035c0eeb31aec5337ef6a1fc31146`.

Source path: `GRWTSK/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DyadicCellCode](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/declarations/dyadiccellcode--fb0d9a54701715026d0fefa3.md) | 37 | `declaration-track:fb0d9a54701715026d0fefa31d78e66358be5329af3c2c0c66ef42ec71a876ee` |
| 2 | `def` | [halfOpenShellCell](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/declarations/halfopenshellcell--c8e4d1ebcae4529c8a809e3f.md) | 46 | `declaration-track:c8e4d1ebcae4529c8a809e3f13d52c18e64e375cd08b21a037c67bc46eed11b0` |
| 3 | `def` | [TypeIIShellFactorBlock.leftDyadicCellCode](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/declarations/typeiishellfactorblock-leftdyadiccellcode--6a36e3a86de0fb896c6ccb69.md) | 64 | `declaration-track:6a36e3a86de0fb896c6ccb69af61acdf1a5888a9ac027fd380be06bd40a34260` |
| 4 | `def` | [TypeIIShellFactorBlock.rightDyadicCellCode](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/declarations/typeiishellfactorblock-rightdyadiccellcode--09860dbb15b4c5786c58c249.md) | 73 | `declaration-track:09860dbb15b4c5786c58c249778de5aab8e341dfbbbad83013d30ae8724e7f75` |
| 5 | `def` | [DyadicCellCode.indicator](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/declarations/dyadiccellcode-indicator--2cb52453c5c16f1b64e26fae.md) | 82 | `declaration-track:2cb52453c5c16f1b64e26faef491b4472caafafc96f4fa4cea10b383fd2d9464` |
| 6 | `def` | [DyadicCellCode.structuredSubspace](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/declarations/dyadiccellcode-structuredsubspace--f47eeed974c5772fbc614c49.md) | 90 | `declaration-track:f47eeed974c5772fbc614c49239a04a2c0024323e441657a19b694e1dce71191` |
| 7 | `def` | [dyadicConditionalExpectation](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/declarations/dyadicconditionalexpectation--46b144cb896cc8824bda2fe7.md) | 98 | `declaration-track:46b144cb896cc8824bda2fe7e3f3c39d09dac223a395b5ba0eb51a577ac04bd0` |
| 8 | `theorem` | [dyadicConditionalExpectation_idempotent](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/declarations/dyadicconditionalexpectation-idempotent--a64cb811a0b3e54be38c1b1f.md) | 106 | `result-track:a64cb811a0b3e54be38c1b1f97d804ed497690ac34e5996109a8fbd50a843cc7` |
| 9 | `theorem` | [dyadicConditionalExpectation_selfAdjoint](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/declarations/dyadicconditionalexpectation-selfadjoint--ceef50bcc3f527b03f85fc2f.md) | 114 | `result-track:ceef50bcc3f527b03f85fc2fc10d2e3b87953a220b19b7c79d496b7bb989a5bc` |
| 10 | `theorem` | [range_dyadicConditionalExpectation](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/declarations/range-dyadicconditionalexpectation--cbd7afcf1d9f596e7a2c8af7.md) | 122 | `result-track:cbd7afcf1d9f596e7a2c8af772deb93e2a42cce156bd56fe7fd8fd2473480707` |
| 11 | `theorem` | [rank_dyadicConditionalExpectation_le](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4.lean/declarations/rank-dyadicconditionalexpectation-le--8a03294f939b994a09c2f0de.md) | 130 | `result-track:8a03294f939b994a09c2f0dee19d7fcf7a0aa84d0fb48cb95b167a435f1276cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
