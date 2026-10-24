# Verification target: GRWTSK.NumberTheory.Moebius.DyadicMertensPairKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5a566b331cac8a1b8d193f0ad39cde081191605",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5a566b331cac8a1b8d193f0ad39cde081191605`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicMertensPairKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicBlockWeightedMertensSquare`](../../../../mathematics/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMertensDyadicWeight](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensdyadicweight--ce78b2e5a0d1505ac6f2a180.md) | 46 | `declaration-track:ce78b2e5a0d1505ac6f2a180425ff7e0b587d3b47b6fc889dd0a530bea6fe58c` |
| 2 | `theorem` | [weightedMertensBaseTerm_eq_weight](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensbaseterm-eq-weight--7e3e5f9dc250c03d42603ee2.md) | 52 | `result-track:7e3e5f9dc250c03d42603ee28f19294744bd3cca733efa7c6d2317e002f5262c` |
| 3 | `theorem` | [weightedMertensDyadicWeight_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensdyadicweight-nonneg--8f2e52e9337cf196513465da.md) | 58 | `result-track:8f2e52e9337cf196513465dab6248e2f4915b5b1705437e268db4846406862e7` |
| 4 | `theorem` | [weightedMertensDyadicWeight_eq_inv_sub_inv_succ](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensdyadicweight-eq-inv-sub-inv-succ--b9b15b77bccd1bb20958425f.md) | 64 | `result-track:b9b15b77bccd1bb20958425f5e6262161a3a565df2ac6ab45eb1f4ee7250a61a` |
| 5 | `theorem` | [sum_weightedMertensDyadicWeight_Ico](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/sum-weightedmertensdyadicweight-ico--b91295b04974171bd782a8c2.md) | 76 | `result-track:b91295b04974171bd782a8c2065efb0480e732048d057fa69068461cd13fb18e` |
| 6 | `def` | [weightedMertensPairKernel](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertenspairkernel--cdee71238dfdc9a603ac589c.md) | 97 | `declaration-track:cdee71238dfdc9a603ac589cb98bf054adc8c3fd23bf76accf929b769a2d6d9a` |
| 7 | `def` | [weightedMertensPairLower](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertenspairlower--ef94f7583bab2841185a83e5.md) | 103 | `declaration-track:ef94f7583bab2841185a83e576546f7ac0bed430be5a0dc19a2ad9ed5fa123ba` |
| 8 | `theorem` | [weightedMertensPairKernel_eq_sum_Ico_lower](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertenspairkernel-eq-sum-ico-lower--0a545d684d2a5f8b6ecdc4ae.md) | 108 | `result-track:0a545d684d2a5f8b6ecdc4aecc91f7a69f19f462abdcdde31a87d077a2461682` |
| 9 | `theorem` | [weightedMertensPairKernel_closed](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertenspairkernel-closed--9ee23b241cfeee0014219865.md) | 126 | `result-track:9ee23b241cfeee001421986556de29395a5768e0f19a0e8733bfe81603ffef7d` |
| 10 | `theorem` | [weightedMertensPairKernel_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertenspairkernel-nonneg--f63f33eda34b6be1a764857d.md) | 151 | `result-track:f63f33eda34b6be1a764857d163913a80a8ea55a2e9dc75b723374cca851226d` |
| 11 | `theorem` | [weightedMertensPairKernel_le_inv_left](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertenspairkernel-le-inv-left--da74ddb4dbe59a9561d52d67.md) | 162 | `result-track:da74ddb4dbe59a9561d52d67ccc8df01ab847aec823703a323bb89d527db7a44` |
| 12 | `theorem` | [pickupMertensPrefix_fixed_inventory](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/pickupmertensprefix-fixed-inventory--2d18f8e224821b99b16a9bf2.md) | 185 | `result-track:2d18f8e224821b99b16a9bf25d191bedf9e5240c491261d20cc7ac74624db694` |
| 13 | `theorem` | [pickupMertensPrefix_sq_fixed_inventory](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/pickupmertensprefix-sq-fixed-inventory--f5f2633262121ef695eb01db.md) | 213 | `result-track:f5f2633262121ef695eb01db1c2b0bb2a0cf25f3b4306c61f8daa168e5357c00` |
| 14 | `def` | [weightedMertensDyadicPairQuadratic](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensdyadicpairquadratic--425beb21134b94dc4c91c772.md) | 232 | `declaration-track:425beb21134b94dc4c91c77246a9c6019d906803a820de193bc3e5efbd4476ac` |
| 15 | `theorem` | [weightedMertensDyadicBlock_eq_pairQuadratic](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensdyadicblock-eq-pairquadratic--83d4570d1d1a41b4d7669429.md) | 239 | `result-track:83d4570d1d1a41b4d7669429193103803a552c49da90181987a3ee70b1f2021f` |
| 16 | `def` | [weightedMertensDyadicPairDiagonal](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensdyadicpairdiagonal--a326e3622fdb6ddf19437c94.md) | 281 | `declaration-track:a326e3622fdb6ddf19437c94287dff55e604c764c1af2d041d014965cb030f60` |
| 17 | `def` | [weightedMertensDyadicPairOffDiagonal](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensdyadicpairoffdiagonal--e3bcb32a7c051a74b36d21e3.md) | 286 | `declaration-track:e3bcb32a7c051a74b36d21e3f987ebac9373c434d32ae7483e108a94651ef947` |
| 18 | `theorem` | [weightedMertensDyadicPairQuadratic_eq_diagonal_add_offDiagonal](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensdyadicpairquadratic-eq-diagonal-add-offdiagonal--091368e32ab0abe84842e722.md) | 294 | `result-track:091368e32ab0abe84842e7227577e31195fcaae38846bd8ed1aa8234483eb71a` |
| 19 | `theorem` | [weightedMertensDyadicBlock_eq_pairDiagonal_add_offDiagonal](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensdyadicblock-eq-pairdiagonal-add-offdiagonal--7e77e4451cdfcd343cb61a2b.md) | 348 | `result-track:7e77e4451cdfcd343cb61a2b9fa868c09ae13ef3efeff088a061bdc8ba3b7a2f` |
| 20 | `theorem` | [moebiusReal_sq_le_one](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/moebiusreal-sq-le-one--9836e6566c134c477e64ea76.md) | 357 | `result-track:9836e6566c134c477e64ea7628242908b731b3c3572dbd4788addbac42ae19fd` |
| 21 | `theorem` | [weightedMertensDyadicPairDiagonal_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensdyadicpairdiagonal-nonneg--9bf2d00d932f0e15adb91b4f.md) | 366 | `result-track:9bf2d00d932f0e15adb91b4f54a21c56fadc4293adfcf0bf33e1233deddf7af3` |
| 22 | `theorem` | [weightedMertensDyadicPairDiagonal_le_two](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/weightedmertensdyadicpairdiagonal-le-two--7017a7936a745839d728a1cb.md) | 374 | `result-track:7017a7936a745839d728a1cbfaefa5fb7e32f716a7918d5cbf1a6519506650cc` |
| 23 | `def` | [SubpolynomialDyadicMertensPairCorrelation](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/subpolynomialdyadicmertenspaircorrelation--30d962d13282d2315c2b9c81.md) | 403 | `declaration-track:30d962d13282d2315c2b9c81464fc84fc87dc0da5140e00a5f3820209ae4a6f5` |
| 24 | `theorem` | [pairCorrelation_of_dyadicBlock](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/paircorrelation-of-dyadicblock--7fdbb9013f21316252600257.md) | 411 | `result-track:7fdbb9013f213162526002571a5836a904b1bc9703ce022c931372d56968a84b` |
| 25 | `theorem` | [dyadicBlock_of_pairCorrelation](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/dyadicblock-of-paircorrelation--e7e4356279a9c532d1744caf.md) | 424 | `result-track:e7e4356279a9c532d1744caf18c7d00bb90dc85e44248319fd9565217527611f` |
| 26 | `theorem` | [subpolynomialDyadicMertensPairCorrelation_iff_block](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/subpolynomialdyadicmertenspaircorrelation-iff-block--c96ccaea641d586a144f404a.md) | 446 | `result-track:c96ccaea641d586a144f404a1b55e5f800f3f6f65f296b757dab4fcc9f6e2d7d` |
| 27 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicMertensPairCorrelation](../../../../mathematics/NumberTheory/Moebius/DyadicMertensPairKernel.lean/declarations/riemannhypothesis-of-subpolynomialdyadicmertenspaircorrelation--109fcef06c6fcaa43de95dea.md) | 454 | `result-track:109fcef06c6fcaa43de95dea6a1de0edd8e461e4e9846078eed0e461a605b09b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
