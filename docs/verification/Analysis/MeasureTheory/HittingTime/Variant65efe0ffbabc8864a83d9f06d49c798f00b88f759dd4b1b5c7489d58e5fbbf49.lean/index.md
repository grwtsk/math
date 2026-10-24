# Verification target: GRWTSK.Analysis.MeasureTheory.HittingTime.Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be0ad7517a91b7707a098018c45f3b548879b219",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be0ad7517a91b7707a098018c45f3b548879b219`.

Source path: `GRWTSK/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Process.Stopping` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting--56ba1bdac1261abea503089f.md) | 51 | `declaration-track:56ba1bdac1261abea503089ff1470b3476104d1a5434ac74eb21b0a95aa07364` |
| 2 | `theorem` | [hitting_of_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-of-lt--ceb8344b90cdbcc85a5c4627.md) | 60 | `result-track:ceb8344b90cdbcc85a5c46270684b80d31533ceee27fb66b7fab40c84402f887` |
| 3 | `theorem` | [hitting_le](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-le--a1f6638b92a061c0eab8b868.md) | 71 | `result-track:a1f6638b92a061c0eab8b868c585fd040813aaf769e0c9943bcf60e628a85bd4` |
| 4 | `theorem` | [not_mem_of_lt_hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/not-mem-of-lt-hitting--d64380da343b8bbdfbe4d609.md) | 82 | `result-track:d64380da343b8bbdfbe4d609d1ab6f337a5d78a795da93d7533eacb653268f0c` |
| 5 | `theorem` | [hitting_eq_end_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-eq-end-iff--2f72bfa4a15f23fb670a9761.md) | 93 | `result-track:2f72bfa4a15f23fb670a976177804688afe45850a7c0d5db6b6895bdbcb145d1` |
| 6 | `theorem` | [hitting_of_le](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-of-le--3c6e72e4b74f3e16e84556bc.md) | 98 | `result-track:3c6e72e4b74f3e16e84556bcfc5b8cfbcb639ba3d676437a314424c634b4315a` |
| 7 | `theorem` | [le_hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/le-hitting--e4ea3b12be6eab1a910734ce.md) | 108 | `result-track:e4ea3b12be6eab1a910734ceb6ccc33bbb19df2d614a21538a5abec33cde6008` |
| 8 | `theorem` | [le_hitting_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/le-hitting-of-exists--884d3da02db3be69f853900e.md) | 119 | `result-track:884d3da02db3be69f853900ed37d6563dbb4f2b146e50ce0978cfa5936edc8c0` |
| 9 | `theorem` | [hitting_mem_Icc](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-mem-icc--4d264adead74725f54f71f1f.md) | 127 | `result-track:4d264adead74725f54f71f1f63a80b1b7f301a3ef07937ab708eefa4e6627288` |
| 10 | `theorem` | [hitting_mem_set](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-mem-set--203b92c3875d61bc076a48d2.md) | 131 | `result-track:203b92c3875d61bc076a48d2b6383b0f4b3525892cd0f14ae4918ecc3e147665` |
| 11 | `theorem` | [hitting_mem_set_of_hitting_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-mem-set-of-hitting-lt--b54ff422c6c28fc311745bab.md) | 142 | `result-track:b54ff422c6c28fc311745bab96915ce652bea23930015c40a894bc997bc4b95f` |
| 12 | `theorem` | [hitting_le_of_mem](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-le-of-mem--cc0f1f55d62066f887e40a67.md) | 150 | `result-track:cc0f1f55d62066f887e40a67f60b2507e1b4e36de580dc6ea97bbc799d4a78af` |
| 13 | `theorem` | [hitting_le_iff_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-le-iff-of-exists--3920430cc77e826a616ef74d.md) | 157 | `result-track:3920430cc77e826a616ef74dacce297b4f72b3faec265f95fc4ded9719c129dd` |
| 14 | `theorem` | [hitting_le_iff_of_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-le-iff-of-lt--fa9cbe290cb377cd7f7975cc.md) | 172 | `result-track:fa9cbe290cb377cd7f7975cca04149af17d17f2cf5d35f1e54b3cf1806b81378` |
| 15 | `theorem` | [hitting_lt_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-lt-iff--8077991d883e86c16bcfd9c5.md) | 182 | `result-track:8077991d883e86c16bcfd9c5124206e62772f7a4d63fe2e9715ddc56c2f4d2a2` |
| 16 | `theorem` | [hitting_eq_hitting_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-eq-hitting-of-exists--1fec1f77ce49264bb11f2388.md) | 195 | `result-track:1fec1f77ce49264bb11f2388b738fef526d83d71acf01db058d33c7558cfbfe0` |
| 17 | `theorem` | [hitting_mono](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-mono--a5d8d21f56b038bf53e08ffa.md) | 211 | `result-track:a5d8d21f56b038bf53e08ffa4dcaf0c26aac72501e87a44bdcceb41cfa225306` |
| 18 | `theorem` | [hitting_isStoppingTime](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-isstoppingtime--ca7943fabc522d9e17a8e4b8.md) | 227 | `result-track:ca7943fabc522d9e17a8e4b8317c7985df63847fc0fe9eecc3ee3a4524870908` |
| 19 | `theorem` | [stoppedValue_hitting_mem](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/stoppedvalue-hitting-mem--329569d07e60c770ecaa1594.md) | 244 | `result-track:329569d07e60c770ecaa1594023fc607a845de3c8277841672512335cf9df274` |
| 20 | `theorem` | [isStoppingTime_hitting_isStoppingTime](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/isstoppingtime-hitting-isstoppingtime--2a88945ea36b717a0262fdd8.md) | 256 | `result-track:2a88945ea36b717a0262fdd8b21e3fef97ed039d440ad0a7a606a9d03d74c49d` |
| 21 | `theorem` | [hitting_eq_sInf](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-eq-sinf--1efd89ebb0b422ada2168496.md) | 283 | `result-track:1efd89ebb0b422ada2168496d0fc3f3ea4d3f8a9464c667787ccbce3f55d41fc` |
| 22 | `theorem` | [hitting_bot_le_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/declarations/hitting-bot-le-iff--ed3606fb34889ed0589dafb9.md) | 301 | `result-track:ed3606fb34889ed0589dafb92d68cc99ed397ff92e0c7e8a929834689d9a258f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
