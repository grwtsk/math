# Verification target: GRWTSK.Analysis.Complex.SymmetricPairApproximation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a6a3079b9471ca6f452de308bdc787a27bce30a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/SymmetricPairApproximation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a6a3079b9471ca6f452de308bdc787a27bce30a`.

Source path: `GRWTSK/Analysis/Complex/SymmetricPairApproximation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/SymmetricPairApproximation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.SymmetricPair`](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [energy_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/energy-nonneg--11fe8f75e03f02dbd647685d.md) | 23 | `result-track:11fe8f75e03f02dbd647685d0e997476f10889c90cbd0d8a55233b1678d8afa3` |
| 2 | `theorem` | [energy_pos_iff](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/energy-pos-iff--a3d5ae87919973e1a8938fef.md) | 28 | `result-track:a3d5ae87919973e1a8938fefe3f9550bd1d246d602f1f00d453d331f5367dba0` |
| 3 | `def` | [budget](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/budget--d4650614b5c90053603861a7.md) | 47 | `declaration-track:d4650614b5c90053603861a76478c3ff17cac8d07eb41f173cba47f6dbe94c4a` |
| 4 | `lemma` | [budget_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/budget-nonneg--dba71be09ce075d75efe2e5b.md) | 50 | `result-track:dba71be09ce075d75efe2e5b6e41f4900b55fbf20b20ebbcc69ed0bb8740a371` |
| 5 | `lemma` | [norm_sq_le_two](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/norm-sq-le-two--925d38ec8d8acaad776b6035.md) | 54 | `result-track:925d38ec8d8acaad776b603587a2a6bca12ac454d9cb8d8e16ce0403862aa793` |
| 6 | `theorem` | [source_energy_le](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/source-energy-le--d8e9edace6147ac5909015f4.md) | 65 | `result-track:d8e9edace6147ac5909015f47dc3dace17bfdc842d868dbf7a728fda42c9478c` |
| 7 | `theorem` | [accepts_of_source_gap](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/accepts-of-source-gap--4c2b97bec1a811d9891873ab.md) | 75 | `result-track:4c2b97bec1a811d9891873ab909e2492873779100cdbb476c607be7ba45afad1` |
| 8 | `theorem` | [rejects_zero_pair](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/rejects-zero-pair--32515027b457363c97b27c33.md) | 80 | `result-track:32515027b457363c97b27c33a7c7c546c3e087c3213e24ef7b9cd2c93b900f50` |
| 9 | `def` | [trans](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/trans--af8f4b9592df6f148660da2a.md) | 87 | `declaration-track:af8f4b9592df6f148660da2a4df856453e707c79deec80638d846ecd07a32b09` |
| 10 | `theorem` | [trans_budget](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/trans-budget--168fa1509c18e4d107371652.md) | 100 | `result-track:168fa1509c18e4d107371652f7d43cbbfc156ce1d8645c2b70e17265208dd911` |
| 11 | `theorem` | [eventually_accepts_iff](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/eventually-accepts-iff--cc8f3310ab0139b2cf5d82f6.md) | 109 | `result-track:cc8f3310ab0139b2cf5d82f606fa1b158e6887326c00a4f88eb0b3f79be1edc6` |
| 12 | `theorem` | [exists_accepts_iff](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/declarations/exists-accepts-iff--e31386371eabd4843a5798ff.md) | 127 | `result-track:e31386371eabd4843a5798ff450e8731ed8074ec39059227e16bd832be68b777` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
