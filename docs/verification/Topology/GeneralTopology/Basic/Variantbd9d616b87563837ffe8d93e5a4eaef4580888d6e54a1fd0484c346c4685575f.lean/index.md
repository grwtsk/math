# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "632fe67ed02f139ae6ace32826505f16d19a6ffa",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `632fe67ed02f139ae6ace32826505f16d19a6ffa`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HarmonicAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmonicat--772704c5f0d8f0a366dc35b8.md) | 41 | `declaration-track:772704c5f0d8f0a366dc35b87e668a6c3fc0ee305ae619a5a667265c44f707ae` |
| 2 | `def` | [HarmonicOnNhd](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmoniconnhd--02bd856096b79c90162fcba8.md) | 48 | `declaration-track:02bd856096b79c90162fcba86c82dc0fd31df23237f08feee4815e7de368c56d` |
| 3 | `lemma` | [HarmonicOnNhd.contDiffOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmoniconnhd-contdiffon--617f34772aff81e0984c6c5e.md) | 53 | `result-track:617f34772aff81e0984c6c5e2d8b4bcd9b720b80d233adf068266111d3efd6eb` |
| 4 | `theorem` | [harmonicAt_congr_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmonicat-congr-nhds--5207fb7fdfddb5e5ca3a14c2.md) | 63 | `result-track:5207fb7fdfddb5e5ca3a14c2293a59ed77b0f32fb7e1aeec45d39897bcd8d4b8` |
| 5 | `theorem` | [HarmonicAt.eventually](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmonicat-eventually--9867613acad06048ae5fbe8a.md) | 72 | `result-track:9867613acad06048ae5fbe8a9690e23ab4b57464fe33069edbc944a889962280` |
| 6 | `theorem` | [harmonicAt_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmonicat-const--3ed9c34f03bc76191e1a7a2d.md) | 80 | `result-track:3ed9c34f03bc76191e1a7a2d7b5248dafbcadd904d32616b5f998fc6169710aa` |
| 7 | `theorem` | [harmonicOnNhd_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmoniconnhd-const--0acfa0127865ab237efc2e86.md) | 86 | `result-track:0acfa0127865ab237efc2e86acdee0da52c973dbd59eeacc7c63a3b487b638da` |
| 8 | `theorem` | [isOpen_setOfPred_harmonicAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/isopen-setofpred-harmonicat--b2241a11568f634a3e6a78cb.md) | 93 | `result-track:b2241a11568f634a3e6a78cb0ecec64bab4f10ad08855d0b2e297ac51c32447e` |
| 9 | `lemma` | [HarmonicOnNhd.mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmoniconnhd-mono--bcb3e1c569f1c96f7f75776c.md) | 101 | `result-track:bcb3e1c569f1c96f7f75776c1a9ad11584bcb0580055606f94d389070377681d` |
| 10 | `theorem` | [HarmonicOnNhd.continuousOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmoniconnhd-continuouson--5a0c63eaa04989bbb54b2521.md) | 107 | `result-track:5a0c63eaa04989bbb54b2521b38cb4cb58f43ddc3d804f6e95150a95e5fcdd99` |
| 11 | `theorem` | [HarmonicAt.add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmonicat-add--9aed907fe064d573e8018b6a.md) | 118 | `result-track:9aed907fe064d573e8018b6a4192987ca6b1ea98ae9ea60cb1275752769a125f` |
| 12 | `theorem` | [HarmonicAt.sub](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmonicat-sub--635fd0ad44322a689d2dea99.md) | 128 | `result-track:635fd0ad44322a689d2dea9929592bed61819d05ac8539b52b4e096dc81835c3` |
| 13 | `theorem` | [HarmonicOnNhd.add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmoniconnhd-add--317070ff4eb9770df04c0278.md) | 138 | `result-track:317070ff4eb9770df04c0278188132d099830c1d055b4ba7c662b5cba830f74d` |
| 14 | `theorem` | [HarmonicOnNhd.sub](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmoniconnhd-sub--89b829c5a794ba2731ac0d1c.md) | 144 | `result-track:89b829c5a794ba2731ac0d1c43781a7d097f9508cb8da4af1f1cf411451cbcd4` |
| 15 | `theorem` | [HarmonicAt.neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmonicat-neg--25123ebd671f3b2c8e754b47.md) | 150 | `result-track:25123ebd671f3b2c8e754b47a81e29413a61cbeb26db0e968b30eb922080ab74` |
| 16 | `theorem` | [HarmonicOnNhd.neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmoniconnhd-neg--707d281b9a6a67b1fafa411f.md) | 160 | `result-track:707d281b9a6a67b1fafa411f6923db401d6b531c192c20110df4667d4eb02299` |
| 17 | `theorem` | [HarmonicAt.const_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmonicat-const-smul--7623c47fc5cec5271f28a15e.md) | 166 | `result-track:7623c47fc5cec5271f28a15e9805a35444e8d880b19b732d8535f78429ebfbc3` |
| 18 | `theorem` | [HarmonicOnNhd.const_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmoniconnhd-const-smul--125b1c95ddcf7967bb3111de.md) | 176 | `result-track:125b1c95ddcf7967bb3111de9a5f6932cfe6857c0b6d883d8526cebd9a1fd849` |
| 19 | `theorem` | [HarmonicAt.comp_CLM](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmonicat-comp-clm--597a3b6bc8472129642d102d.md) | 186 | `result-track:597a3b6bc8472129642d102db41dc064991519ffc30c2d67873df7e735ac7c80` |
| 20 | `theorem` | [HarmonicOnNhd.comp_CLM](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmoniconnhd-comp-clm--9d829df99351275cadaec1c2.md) | 196 | `result-track:9d829df99351275cadaec1c2b43b4248c7d54145d968570fdbc23186f66300dd` |
| 21 | `theorem` | [harmonicAt_comp_CLE_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmonicat-comp-cle-iff--d9f7e5efa3af7d01f5f6b650.md) | 202 | `result-track:d9f7e5efa3af7d01f5f6b650906e723b985c68c57aa2d94498fe2e305aaaca47` |
| 22 | `theorem` | [harmonicOnNhd_comp_CLE_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbd9d616b87563837ffe8d93e5a4eaef4580888d6e54a1fd0484c346c4685575f.lean/declarations/harmoniconnhd-comp-cle-iff--92b8b7c406a0e5589843ef45.md) | 211 | `result-track:92b8b7c406a0e5589843ef452720d52580d9c59cb553fba2da420852c31a4e49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
