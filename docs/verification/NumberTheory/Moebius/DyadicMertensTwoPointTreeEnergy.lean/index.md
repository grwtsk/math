# Verification target: GRWTSK.NumberTheory.Moebius.DyadicMertensTwoPointTreeEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56c1f003e3611750db1020affb661b5e16b6a277",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56c1f003e3611750db1020affb661b5e16b6a277`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal`](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DyadicMaximalMertensTwoPointEnergy`](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTwoPointPaddedLength](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/mertenstwopointpaddedlength--cb1903f0880b8459a1fcddb3.md) | 42 | `declaration-track:cb1903f0880b8459a1fcddb3585f5a34dddee086b2ac51c4f0c90790140cb204` |
| 2 | `def` | [paddedMertensTwoPointSequence](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/paddedmertenstwopointsequence--898940b5ea98b46a49287c5c.md) | 47 | `declaration-track:898940b5ea98b46a49287c5c6c72f26372eab730df7904e937d4674e2b8500e4` |
| 3 | `def` | [mertensTwoPointTreeSquareEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/mertenstwopointtreesquareenergy--4843cce4810d74488869a7fb.md) | 53 | `declaration-track:4843cce4810d74488869a7fb8123de477e2ee6bd5ff7558e8ad784618d258b42` |
| 4 | `def` | [mertensTwoPointSummedTreeSquareEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/mertenstwopointsummedtreesquareenergy--8d446bfdaf92b72b2f79f77c.md) | 59 | `declaration-track:8d446bfdaf92b72b2f79f77c237a0925100efb0c0f1a4fb97bb4da379ebf1605` |
| 5 | `def` | [DyadicMertensTwoPointTreeEnergyBudget](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/dyadicmertenstwopointtreeenergybudget--508a1c4bbca163bd8c7d1e27.md) | 65 | `declaration-track:508a1c4bbca163bd8c7d1e270be48dad47dea34a06ee3ed0b62cae29b20e1101` |
| 6 | `def` | [SubpolynomialDyadicMertensTwoPointTreeEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/subpolynomialdyadicmertenstwopointtreeenergy--54633027fe82e35ab35e93e0.md) | 71 | `declaration-track:54633027fe82e35ab35e93e0985848344b172f49120b4b3bc0720785e617c6ed` |
| 7 | `theorem` | [mertensTwoPointPaddedLength_le_right](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/mertenstwopointpaddedlength-le-right--7fe4040c59aa7864bc05869c.md) | 78 | `result-track:7fe4040c59aa7864bc05869c2226643863fb08cf628e04ef7697b94bc841e7d5` |
| 8 | `theorem` | [paddedMertensTwoPointSequence_of_lt](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/paddedmertenstwopointsequence-of-lt--c9a04eab93d68c058209cf99.md) | 84 | `result-track:c9a04eab93d68c058209cf99de540a0ceedf943aa3afcf45ed502ed11fc8ed1e` |
| 9 | `theorem` | [paddedMertensTwoPointSequence_of_length_le](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/paddedmertenstwopointsequence-of-length-le--ec1ae5a10ee2225594f82783.md) | 92 | `result-track:ec1ae5a10ee2225594f827834001a954f0f4f1daea3c4d3ce4843314ada1eedd` |
| 10 | `theorem` | [finitePrefixSum_paddedMertensTwoPoint_eq](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/finiteprefixsum-paddedmertenstwopoint-eq--24ce527f5fc691cd22ab3930.md) | 100 | `result-track:24ce527f5fc691cd22ab393035e7badd0bb2a4c97d42495463f2b1c1fabdbe65` |
| 11 | `theorem` | [mertensTwoPointPrefixMax_le_dyadicPrefixMaximum](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/mertenstwopointprefixmax-le-dyadicprefixmaximum--41aa03bc3964f57d46226fa6.md) | 115 | `result-track:41aa03bc3964f57d46226fa677624cfd408caebf67bc42a85dd41b227c43f574` |
| 12 | `theorem` | [mertensTwoPointPrefixMax_sq_le_treeSquareEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/mertenstwopointprefixmax-sq-le-treesquareenergy--61d90ddc4095eb6b5e7f53b3.md) | 133 | `result-track:61d90ddc4095eb6b5e7f53b3351d13f9193816d5f91a9b125609db4ab046139a` |
| 13 | `theorem` | [mertensTwoPointTreeSquareEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/mertenstwopointtreesquareenergy-nonneg--3fdb1619851a8100464d19e3.md) | 163 | `result-track:3fdb1619851a8100464d19e3e57f84bb9fcb2aee3ec435db44052727cf2fa078` |
| 14 | `theorem` | [mertensTwoPointSummedTreeSquareEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/mertenstwopointsummedtreesquareenergy-nonneg--c9c32bc6690a6534442bdd5f.md) | 169 | `result-track:c9c32bc6690a6534442bdd5f302ccee6549acc2f4b17bfe1f431c93c1a1bd45f` |
| 15 | `theorem` | [mertensTwoPointMaximalQuadraticEnergy_le_summedTreeSquareEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/mertenstwopointmaximalquadraticenergy-le-summedtreesquareenergy--93bb028b386167b688ab5f1e.md) | 178 | `result-track:93bb028b386167b688ab5f1e5d1ef6cf8d15c259e6999803bfa2c8a2e989100f` |
| 16 | `theorem` | [dyadicMertensTwoPointMaximalEnergy_of_treeEnergyBudget](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/dyadicmertenstwopointmaximalenergy-of-treeenergybudget--90b9e8aeef0b99783d4d3a3b.md) | 197 | `result-track:90b9e8aeef0b99783d4d3a3b747432c9997052672a76b2469217611eae49b895` |
| 17 | `theorem` | [subpolynomialDyadicMaximalMertensTwoPointEnergy_of_treeEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/subpolynomialdyadicmaximalmertenstwopointenergy-of-treeenergy--20424be23a2e042513e61a43.md) | 208 | `result-track:20424be23a2e042513e61a439f9f7a4c9808eb3386a5e9b6c1ec2755b9d02436` |
| 18 | `theorem` | [subpolynomialDyadicMertensShiftPacket_of_treeEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/subpolynomialdyadicmertensshiftpacket-of-treeenergy--28995ceba28ac3e2cfe01b20.md) | 218 | `result-track:28995ceba28ac3e2cfe01b205557cfb977a9c7cd44ca4c96c4a6f4b129976291` |
| 19 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicMertensTwoPointTreeEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/declarations/riemannhypothesis-of-subpolynomialdyadicmertenstwopointtreeenergy--6f53df70a8d90c2b164ac4ff.md) | 225 | `result-track:6f53df70a8d90c2b164ac4ffa1d365e561dfa721eb713fa1363c0a47cb8ea7f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
