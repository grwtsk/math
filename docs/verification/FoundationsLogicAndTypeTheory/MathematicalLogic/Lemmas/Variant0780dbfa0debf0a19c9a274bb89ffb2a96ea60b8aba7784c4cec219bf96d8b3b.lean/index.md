# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lemmas.Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e92a9dc21060fbd4d3998fbea2d0689918ddd57",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e92a9dc21060fbd4d3998fbea2d0689918ddd57`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iff_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/iff-assoc--c4c6ca5aefe5ac1571706994.md) | 21 | `result-track:c4c6ca5aefe5ac157170699474df1904199c428c02c4c49032b5e99f4a208572` |
| 2 | `theorem` | [iff_left_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/iff-left-comm--9b5b518996d1c239336e1272.md) | 22 | `result-track:9b5b518996d1c239336e1272656ecd6f83ee16bad7bf9fee55822e6fb5a0ec63` |
| 3 | `theorem` | [iff_right_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/iff-right-comm--c840ce40ecdbb61e1d879e21.md) | 23 | `result-track:c840ce40ecdbb61e1d879e21046ebfe0d619373eecc1879755a9f7c1b4fb5553` |
| 4 | `theorem` | [dite_dite_distrib_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/dite-dite-distrib-left--39d34c28bf1be4ccfb1679e3.md) | 29 | `result-track:39d34c28bf1be4ccfb1679e3da379ae207dee388a455f21603848ba5049bd814` |
| 5 | `theorem` | [dite_dite_distrib_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/dite-dite-distrib-right--343b5c185894ad07697612cf.md) | 34 | `result-track:343b5c185894ad07697612cf555faed101faf3e226782613356f888347de22f1` |
| 6 | `theorem` | [ite_dite_distrib_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/ite-dite-distrib-left--ebe40f0defee08de5af3b0b1.md) | 39 | `result-track:ebe40f0defee08de5af3b0b14c588f0c8519a4ad8341489dcf1d6d3b6b66a8ea` |
| 7 | `theorem` | [ite_dite_distrib_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/ite-dite-distrib-right--7faeb6ab1e56333af89e7643.md) | 43 | `result-track:7faeb6ab1e56333af89e764337f39ca00e6d9b83fd6caa15993beefaee6f46ba` |
| 8 | `theorem` | [dite_ite_distrib_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/dite-ite-distrib-left--af2c969328b860a7f5a4f167.md) | 47 | `result-track:af2c969328b860a7f5a4f16742619ee6d46dcf8c4e936c587929154b447ef730` |
| 9 | `theorem` | [dite_ite_distrib_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/dite-ite-distrib-right--d015bb27d09b07c080f80c37.md) | 51 | `result-track:d015bb27d09b07c080f80c374eca657413700a2a45585ce9c45ab7492f2ed7c2` |
| 10 | `theorem` | [ite_ite_distrib_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/ite-ite-distrib-left--24640b5b92cd90a61e03c9a7.md) | 55 | `result-track:24640b5b92cd90a61e03c9a7dc9b092f215743b242e5bba1f99db1ba9d2c422e` |
| 11 | `theorem` | [ite_ite_distrib_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/ite-ite-distrib-right--658b85d169a4dcddc5568152.md) | 58 | `result-track:658b85d169a4dcddc5568152b24b9218a42f2afbc857f5c338b8c7259d63bdca` |
| 12 | `lemma` | [Prop.forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/prop-forall--cf0d1066fa70f878b39ab4b5.md) | 61 | `result-track:cf0d1066fa70f878b39ab4b50d787b1a7f9d2f41a032804722d7d7f12a0502b6` |
| 13 | `lemma` | [Prop.exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0780dbfa0debf0a19c9a274bb89ffb2a96ea60b8aba7784c4cec219bf96d8b3b.lean/declarations/prop-exists--6f1025fbe929e8c31ed3785b.md) | 64 | `result-track:6f1025fbe929e8c31ed3785ba30b194cc1ad693417810d1c1e0eb9d150f624b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
