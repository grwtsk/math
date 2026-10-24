# Verification target: GRWTSK.Analysis.Operator.HolomorphicLineAdjoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e250a6c31f9f0d18f51b1de5f2c4ba7b1474ca14",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicLineAdjoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e250a6c31f9f0d18f51b1de5f2c4ba7b1474ca14`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicLineAdjoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicLineAdjoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicLineGaugePort`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficient](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/coefficient--3da1c02623a26380145eb938.md) | 28 | `declaration-track:3da1c02623a26380145eb9386b670b96ceb6ff5157ac8a71d8bf98b78c76d7d4` |
| 2 | `theorem` | [localOp_eq_mul](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/localop-eq-mul--cad7fb8fd4fd78dd325953a2.md) | 31 | `result-track:cad7fb8fd4fd78dd325953a24444ad7e5556eaaf3b735ae15525e20a0919b042` |
| 3 | `theorem` | [coefficient_matching](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/coefficient-matching--1c285544bd162e5e26a2c595.md) | 38 | `result-track:1c285544bd162e5e26a2c5950331dad3c10136eec28ffbd2ab74c42c7b79238f` |
| 4 | `theorem` | [ext_localOp](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/ext-localop--59df18e4fa02a171bc840c23.md) | 49 | `result-track:59df18e4fa02a171bc840c2321a0067b889c8f052561c699990dfe5791659bda` |
| 5 | `def` | [adjoint](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/adjoint--f02e77d6de27965ab7e26eaa.md) | 56 | `declaration-track:f02e77d6de27965ab7e26eaabae200aa105170bdcf98589c15bf00dd1612b9b3` |
| 6 | `theorem` | [adjoint_coefficient](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/adjoint-coefficient--f3ee4246cabcc722967474f4.md) | 65 | `result-track:f3ee4246cabcc722967474f4f18eff15db0f2cb9bebc682d97d9d85c9d36b8f7` |
| 7 | `theorem` | [adjoint_pairing](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/adjoint-pairing--8c6e5724895f95ac991000cd.md) | 72 | `result-track:8c6e5724895f95ac991000cde19d3b4ad7fe9bafd8be59b0a05335573dc81696` |
| 8 | `theorem` | [adjoint_unique](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/adjoint-unique--d1a5499858b31d5e1a67cfb0.md) | 85 | `result-track:d1a5499858b31d5e1a67cfb0bb64be8d0dd2eb841d7698a0413e8f7d7c8cc7a4` |
| 9 | `theorem` | [adjoint_involutive](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/adjoint-involutive--88a7fdfbe1fc88a8edffa457.md) | 99 | `result-track:88a7fdfbe1fc88a8edffa4579f1450ff6f68be7c4f2961033f5fe7f049355929` |
| 10 | `theorem` | [transport_coefficient](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/transport-coefficient--a3897a68b6d961443d8d27ad.md) | 110 | `result-track:a3897a68b6d961443d8d27ad431fac42415ffdc5616af1f989407296b6fee2c5` |
| 11 | `theorem` | [adjoint_transport](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/adjoint-transport--d226ad22aa5a1fb268e3e3c1.md) | 119 | `result-track:d226ad22aa5a1fb268e3e3c17aa5e767a7f22c7224dadb80eaea63052e5fecb7` |
| 12 | `theorem` | [adjoint_intertwines](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/adjoint-intertwines--1036646419e56acf86ceb9f8.md) | 129 | `result-track:1036646419e56acf86ceb9f8488b55c859424d241301095cb09ac0af5ee93465` |
| 13 | `theorem` | [squaredNorm_descend](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/squarednorm-descend--779ac67d6887f419e699f077.md) | 138 | `result-track:779ac67d6887f419e699f07754bbeafc79df4782064599db7a7f8a0781be55bd` |
| 14 | `theorem` | [preservesHolomorphy_iff](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/preservesholomorphy-iff--575d2c4755722f9820bbcaeb.md) | 150 | `result-track:575d2c4755722f9820bbcaeb187f01bdfac4fa945769a8fecaf8d69b043981d7` |
| 15 | `theorem` | [adjoint_preservesHolomorphy_iff](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/adjoint-preservesholomorphy-iff--0650b02e95afe57ab68309ee.md) | 165 | `result-track:0650b02e95afe57ab68309ee22eee805ac990c9645c86ae16fbae3b30c04e10a` |
| 16 | `theorem` | [imaginary_multiplication_not_selfAdjoint](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/declarations/imaginary-multiplication-not-selfadjoint--0533fe358c18814bf3c5fd97.md) | 177 | `result-track:0533fe358c18814bf3c5fd97d4b5e83557d4ab97c094d85278425dfc011aaa63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
