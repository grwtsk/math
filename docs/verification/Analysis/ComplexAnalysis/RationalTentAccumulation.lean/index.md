# Verification target: GRWTSK.Analysis.Complex.RationalTentAccumulation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28e1982d40973837ccce9ec4e57118f16fc30587",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalTentAccumulation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28e1982d40973837ccce9ec4e57118f16fc30587`.

Source path: `GRWTSK/Analysis/Complex/RationalTentAccumulation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalTentAccumulation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalTentEvaluation`](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WeightedInput](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/weightedinput--6ef249b9462b5b8ce52f2f96.md) | 24 | `declaration-track:6ef249b9462b5b8ce52f2f969638cfce094a887a3a08f41c8116e14f60784806` |
| 2 | `def` | [Admissible](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/admissible--a5f16b33497c31a5f4caae59.md) | 30 | `declaration-track:a5f16b33497c31a5f4caae59fc0b052e6d6b72884d559881b93af78e4f719efc` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/instance--02e9cd4cf27e750c2556be44.md) | 34 | `declaration-track:02e9cd4cf27e750c2556be44c21fa0d973296892e3cd649c781929e2342c9f26` |
| 4 | `def` | [sumValue](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/sumvalue--e35bda306d8957dfe5104d89.md) | 38 | `declaration-track:e35bda306d8957dfe5104d89f092b4f88ce166692a87298cef4123de56099101` |
| 5 | `def` | [sumError](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/sumerror--ffb035b096a53a1f959b53ba.md) | 42 | `declaration-track:ffb035b096a53a1f959b53ba54fb9662971b541f725cf5c59bfe63481fb77334` |
| 6 | `def` | [compute](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/compute--00f6c395a6da3e9d4c2ed516.md) | 45 | `declaration-track:00f6c395a6da3e9d4c2ed516d7020d534f12ca71ad07027f99fdf3c467d65cfd` |
| 7 | `def` | [evaluate](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/evaluate--7c9b8f938249e1f1e4044dd7.md) | 48 | `declaration-track:7c9b8f938249e1f1e4044dd7577418ba9208d2d3b53b311eb8ad9fad7bfabdeb` |
| 8 | `def` | [verify](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/verify--1aee84ae95beeb023d3aa750.md) | 55 | `declaration-track:1aee84ae95beeb023d3aa7506bf579b8e966a8dfa5f1e593876832368b0b5d6f` |
| 9 | `theorem` | [embed_sumValue](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/embed-sumvalue--5289ff9ac1f0236c53ccd537.md) | 59 | `result-track:5289ff9ac1f0236c53ccd5371f636d917329def1ff380b2dd9f20e19d3c6c3f6` |
| 10 | `theorem` | [sum_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/sum-sound--838c838a9991ca447a87ceeb.md) | 66 | `result-track:838c838a9991ca447a87ceeb4f20b32262f5cddaeed4d3b9845018542e5cf763` |
| 11 | `theorem` | [compute_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/compute-sound--11a70f4994e549be9650f18f.md) | 89 | `result-track:11a70f4994e549be9650f18f10a1f4c4e3ac323971819f968db6eafea6a821f1` |
| 12 | `theorem` | [evaluate_some_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/evaluate-some-iff--be74e7fb0d07b58eb9b52b5e.md) | 99 | `result-track:be74e7fb0d07b58eb9b52b5e0f89b2b52fb76178c5c3ddff92dc4f7f7c66d5fa` |
| 13 | `theorem` | [evaluate_none_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/evaluate-none-iff--a3dff3b6616c061cabd870b2.md) | 107 | `result-track:a3dff3b6616c061cabd870b20dc93f025b4de26154f13f867c0f79d83370b24b` |
| 14 | `theorem` | [verify_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/declarations/verify-iff--55916641ce0cc5ab272db545.md) | 115 | `result-track:55916641ce0cc5ab272db545813f9c2a37818daa7daaa194e6ee2f38444e5ef1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
