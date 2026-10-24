# Verification target: GRWTSK.Analysis.Operator.HolomorphicMultiplierCircleMixture

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4619e1929b37f38a1a032595ae63ed92526680e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierCircleMixture.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4619e1929b37f38a1a032595ae63ed92526680e`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicMultiplierCircleMixture.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicMultiplierCircleMixture.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicSectionMeasureTransfer`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circleMixture](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/circlemixture--d0aeba49fa5b73459e03c923.md) | 36 | `declaration-track:d0aeba49fa5b73459e03c9231a41ee6fe9746f348ca9089c392cfd183c5f470a` |
| 2 | `theorem` | [circleMixture_univ](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/circlemixture-univ--dec425a5c980ffd4f0bb2b0f.md) | 39 | `result-track:dec425a5c980ffd4f0bb2b0f0b96758fe289a80b53529bec137b06c2bd221bfc` |
| 3 | `theorem` | [circleMixture_singleton](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/circlemixture-singleton--dd9ac97e7ad9d7b405857acb.md) | 44 | `result-track:dd9ac97e7ad9d7b405857acb8b8cf0ec840d493d893e865c16428d0614621115` |
| 4 | `def` | [summandDomination](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/summanddomination--f02993c49cb1b479dd4d605c.md) | 49 | `declaration-track:f02993c49cb1b479dd4d605c3203b887299033f009eb6d4379faec9935f76828` |
| 5 | `def` | [mixturePointPort](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/mixturepointport--3d3c0266c7c8f28f133420cb.md) | 56 | `declaration-track:3d3c0266c7c8f28f133420cb5812bf4eabfec0430e61b61f2e7aad60970a96f4` |
| 6 | `theorem` | [mixturePointPort_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/mixturepointport-norm-le--db08865c7ad0e357a034f952.md) | 65 | `result-track:db08865c7ad0e357a034f95224b904098a141958f00b2a39380fc602bb0dba1f` |
| 7 | `theorem` | [circleMixture_norm_eq](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/circlemixture-norm-eq--2e64efc820a6a1828f3826eb.md) | 74 | `result-track:2e64efc820a6a1828f3826eb7faa95f915a54f841570a16182d65bd0f2645b3a` |
| 8 | `def` | [mixtureRepresentation](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/mixturerepresentation--54354d49fe2bdedd4059daad.md) | 87 | `declaration-track:54354d49fe2bdedd4059daade2d53b1702fbeef887cd94bf2d163bde510b781a` |
| 9 | `theorem` | [mixtureRepresentation_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/mixturerepresentation-apply--378b3df825cac712b5bbd69c.md) | 96 | `result-track:378b3df825cac712b5bbd69cd20bfe440054d3546d26e8c27923d2e5e6c06be7` |
| 10 | `theorem` | [circleMixture_closed](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/circlemixture-closed--0cc1507120b46ae06878481c.md) | 102 | `result-track:0cc1507120b46ae06878481c7fee842459338b3adbdcce79fed7e1924d59a3be` |
| 11 | `theorem` | [exists_centeredWindow](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/exists-centeredwindow--f4e853d921849083c0336e1a.md) | 111 | `result-track:f4e853d921849083c0336e1a5fae3328e6ab75c46e75f37b6b5916bd21faf258` |
| 12 | `def` | [centeredWindow](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/centeredwindow--71169a38c2ba9f14eaded917.md) | 125 | `declaration-track:71169a38c2ba9f14eaded917affc20a19e52bfc81e25044add28cc28a5ed198f` |
| 13 | `theorem` | [centeredWindow_center](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/centeredwindow-center--edc03e6841a5da9ed35abc7d.md) | 128 | `result-track:edc03e6841a5da9ed35abc7d15dcaf9e639c5efdc4d4180c936ed88ab0d9c849` |
| 14 | `def` | [selectedWindows](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/selectedwindows--a82f86992e4a52a3b5ec18e5.md) | 132 | `declaration-track:a82f86992e4a52a3b5ec18e5efaff1ffa22bfafc97306142ca513c950f02c0b7` |
| 15 | `theorem` | [selectedWindows_dense](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/selectedwindows-dense--b1f15c2a8bed138b8d56869e.md) | 136 | `result-track:b1f15c2a8bed138b8d56869e44c8b5ab8246abdf5d3a3733233a35f0f6c46ea4` |
| 16 | `def` | [selectedMeasure](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/selectedmeasure--6fc8274c77941a5f75190edb.md) | 145 | `declaration-track:6fc8274c77941a5f75190edb51143a8ab946af6e011b0bcdc1c90d6f4fbb15fc` |
| 17 | `theorem` | [selectedMeasure_univ](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/selectedmeasure-univ--ce87c435d1af1d5eef539c9c.md) | 149 | `result-track:ce87c435d1af1d5eef539c9ca4ebcd405c02005262cb422a4b59856af51ac1be` |
| 18 | `theorem` | [selectedMeasure_singleton](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/selectedmeasure-singleton--cfd5b5005ab2b2f7322a29aa.md) | 153 | `result-track:cfd5b5005ab2b2f7322a29aab4bfc5c4a7c4abff950e7109b69eff43a71684ea` |
| 19 | `theorem` | [selectedMeasure_norm_eq](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/selectedmeasure-norm-eq--58699d014f374dcf1bb6bd8b.md) | 157 | `result-track:58699d014f374dcf1bb6bd8b9c5b1de7c69ce2b3d7eacffe336df4664d3f8245` |
| 20 | `theorem` | [selectedMeasure_closed](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/selectedmeasure-closed--7b9ceebf7cf8d0a41ad376a0.md) | 163 | `result-track:7b9ceebf7cf8d0a41ad376a0bb02caae1aff3ab6ba2cb2fc06b24287470f8708` |
| 21 | `theorem` | [exists_nonatomic_norming_measure](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/exists-nonatomic-norming-measure--44c7ca77191b26f104181376.md) | 171 | `result-track:44c7ca77191b26f10418137604b24e893793749beba8a6a555f47841e6f76128` |
| 22 | `theorem` | [no_positiveAtom](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierCircleMixture.lean/declarations/no-positiveatom--577c1fd76f1f6ce64d295ae6.md) | 181 | `result-track:577c1fd76f1f6ce64d295ae6b82803df0d83a71aba5fb46906feda30d80c2a6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
