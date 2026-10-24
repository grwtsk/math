# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Real.Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad2a6c0728114c517e94c4088d4a257d4b0ddf2f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad2a6c0728114c517e94c4088d4a257d4b0ddf2f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cauchySeq_of_edist_le_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean/declarations/cauchyseq-of-edist-le-of-summable--b77ce065e89488ae59991e6c.md) | 24 | `result-track:b77ce065e89488ae59991e6c4e21bfb643fc9d0e0f752375b641c9e809191e54` |
| 2 | `theorem` | [cauchySeq_of_dist_le_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean/declarations/cauchyseq-of-dist-le-of-summable--60da00b207d3ce7ebd12c7c2.md) | 47 | `result-track:60da00b207d3ce7ebd12c7c230a0854f00dc86e7aa78d1eebe9a3493cd62539e` |
| 3 | `theorem` | [cauchySeq_of_summable_dist](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean/declarations/cauchyseq-of-summable-dist--0f1f8ff4289c14676e479fc1.md) | 68 | `result-track:0f1f8ff4289c14676e479fc168332e5e9047ccd36da06df45bd116839a2135f6` |
| 4 | `theorem` | [dist_le_tsum_of_dist_le_of_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean/declarations/dist-le-tsum-of-dist-le-of-tendsto--f030c06796d180113d655c8e.md) | 72 | `result-track:f030c06796d180113d655c8e2a237256f74756b7c61912abd77f13c8fa044238` |
| 5 | `theorem` | [dist_le_tsum_of_dist_le_of_tendsto₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean/declarations/dist-le-tsum-of-dist-le-of-tendsto--ed7f5d00c7159e52fa3b091d.md) | 82 | `result-track:ed7f5d00c7159e52fa3b091db18e4cf77ac09e588782ba73388fcc08d2602a42` |
| 6 | `theorem` | [dist_le_tsum_dist_of_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean/declarations/dist-le-tsum-dist-of-tendsto--4f971de2522553c4c86b850c.md) | 87 | `result-track:4f971de2522553c4c86b850cf7591fc166f179521d473a7da6f4332c6180eec3` |
| 7 | `theorem` | [dist_le_tsum_dist_of_tendsto₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variante886b9f48bad4e4cd0ff4075d607739555f26a7706aca3daa2fdc3104abece62.lean/declarations/dist-le-tsum-dist-of-tendsto--04772609c9752ac0724e030c.md) | 93 | `result-track:04772609c9752ac0724e030c393478b2d5af02e620fd8defff3336eb464e7617` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
