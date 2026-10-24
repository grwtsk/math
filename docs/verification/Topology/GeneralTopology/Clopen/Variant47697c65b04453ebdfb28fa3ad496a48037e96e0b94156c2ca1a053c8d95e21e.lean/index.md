# Verification target: GRWTSK.Topology.GeneralTopology.Clopen.Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4d011e65893994323802714104924c40c05f4cd",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4d011e65893994323802714104924c40c05f4cd`.

Source path: `GRWTSK/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean.json)

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
| 1 | `theorem` | [IsClopen.isOpen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-isopen--bbef86308eed199b0a489071.md) | 36 | `result-track:bbef86308eed199b0a489071fcf9c476393a6c5edfffd665efac4983db15c554` |
| 2 | `theorem` | [IsClopen.isClosed](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-isclosed--f411cf50f38729afe1063bf5.md) | 38 | `result-track:f411cf50f38729afe1063bf5b491e07c68f261a7fdb8e098e436573812c8820f` |
| 3 | `theorem` | [isClopen_iff_frontier_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-iff-frontier-eq-empty--00f72d79728bf5e2f71411d8.md) | 40 | `result-track:00f72d79728bf5e2f71411d839dafc19fa7a89ae10d56296ca93c804b1e09007` |
| 4 | `theorem` | [IsClopen.union](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-union--81a4a36090204d6739813b33.md) | 48 | `result-track:81a4a36090204d6739813b3348dbd0635a199466bb4aa1d464bc64515067a270` |
| 5 | `theorem` | [IsClopen.inter](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-inter--6916f8907a3d0f9e0afa129f.md) | 51 | `result-track:6916f8907a3d0f9e0afa129f18775b44ab08cd50677d671dcdd816e4ba3c04fa` |
| 6 | `theorem` | [isClopen_empty](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-empty--f73c673ca15ea96bb4275a4e.md) | 54 | `result-track:f73c673ca15ea96bb4275a4e226b25ab4c64a5f92a0d116cdf4243611b09f263` |
| 7 | `theorem` | [isClopen_univ](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-univ--48c72bb388484d3e3023cd8c.md) | 56 | `result-track:48c72bb388484d3e3023cd8c556b8efa9668c71eb587a94420d166c69774099f` |
| 8 | `theorem` | [IsClopen.compl](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-compl--5cdea704c406f204ce0070da.md) | 58 | `result-track:5cdea704c406f204ce0070dade8d921f86ac5fcc12b893201709f517c7441f95` |
| 9 | `theorem` | [isClopen_compl_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-compl-iff--c756be0d537977986f534035.md) | 62 | `result-track:c756be0d537977986f5340359dd64f1bee2834fded5b05a2a96065aaa8cf2fd2` |
| 10 | `theorem` | [IsClopen.diff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-diff--62a464ecf674c5115f78c69e.md) | 65 | `result-track:62a464ecf674c5115f78c69e3874cfc62da0a24d01bfcc56de31484790d02845` |
| 11 | `lemma` | [IsClopen.himp](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-himp--671aff5c6edfc220ea8fb476.md) | 68 | `result-track:671aff5c6edfc220ea8fb47691b36f9e5b8b310bd3a95d0b2d9e8e1a5f1f6587` |
| 12 | `theorem` | [IsClopen.prod](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-prod--4a77251a47734fec08cc7342.md) | 71 | `result-track:4a77251a47734fec08cc7342b37ce498e0d35f0fe50a9aa5de59a2024345765a` |
| 13 | `theorem` | [isClopen_iUnion_of_finite](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-iunion-of-finite--3e60f580a370a63658750528.md) | 74 | `result-track:3e60f580a370a636587505285758d246c3dcbd2b073bacc190cb29f3520af7d1` |
| 14 | `theorem` | [Set.Finite.isClopen_biUnion](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/set-finite-isclopen-biunion--4e60556e8b1af33d6a663267.md) | 78 | `result-track:4e60556e8b1af33d6a663267219dc0bcd2bf98cef8f83897ab46af1f49411d9f` |
| 15 | `theorem` | [isClopen_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-biunion-finset--c7dfc685806299b55c9e8127.md) | 82 | `result-track:c7dfc685806299b55c9e8127b8b0d6695d6937c7af52f5c29a6ef2e3830c5d1f` |
| 16 | `theorem` | [isClopen_iInter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-iinter-of-finite--acc2af6f872b9836a545e5bb.md) | 86 | `result-track:acc2af6f872b9836a545e5bbffb1c232b5c9deaa52f2c84677628ca64266b640` |
| 17 | `theorem` | [Set.Finite.isClopen_biInter](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/set-finite-isclopen-biinter--0ee9451cf55ed8ab06da1190.md) | 90 | `result-track:0ee9451cf55ed8ab06da1190f2db1107c7d1dc915e01ba7a318ae05daf078d85` |
| 18 | `theorem` | [isClopen_biInter_finset](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-biinter-finset--404492d913f54be92b9c8b78.md) | 94 | `result-track:404492d913f54be92b9c8b78323c70b220b33d2ab446aad7e446c5ea4a66ab5a` |
| 19 | `theorem` | [IsClopen.preimage](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-preimage--35384ecd6be1f54b14e9658a.md) | 98 | `result-track:35384ecd6be1f54b14e9658a9e655ec987254ac9913bfa0997e839fe4d08a556` |
| 20 | `theorem` | [ContinuousOn.preimage_isClopen_of_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/continuouson-preimage-isclopen-of-isclopen--e95dd1bf479152f396c644f7.md) | 102 | `result-track:e95dd1bf479152f396c644f7e720644163efb92174a0e5fe6be4961588bf12a4` |
| 21 | `theorem` | [isClopen_inter_of_disjoint_cover_clopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-inter-of-disjoint-cover-clopen--28ed348962f69eaa5a6db5f9.md) | 108 | `result-track:28ed348962f69eaa5a6db5f97e76ce2f179f8165beba7439c711cce634557076` |
| 22 | `lemma` | [isClopen_inter_of_disjoint_cover_clopen'](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-inter-of-disjoint-cover-clopen--d8e3234867641037d8f8244b.md) | 118 | `result-track:d8e3234867641037d8f8244b24f9680f3966091c6970fc01e573617ac592752a` |
| 23 | `theorem` | [isClopen_of_disjoint_cover_open](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-of-disjoint-cover-open--4a315b3146c4079687d55d90.md) | 126 | `result-track:4a315b3146c4079687d55d907e90073febe67acbe7799e6f39980d37b6dd1109` |
| 24 | `theorem` | [isClopen_discrete](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-discrete--b26c63e43877b9b44a13ec64.md) | 131 | `result-track:b26c63e43877b9b44a13ec646b6f0733cec5ecdaa6db516be9a5cc45d76c8b61` |
| 25 | `theorem` | [isClopen_range_inl](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-range-inl--b41fe9e20783773a9d48e51e.md) | 134 | `result-track:b41fe9e20783773a9d48e51e8a7c15d6b07ce2f4c49770838d02477450b2fdc8` |
| 26 | `theorem` | [isClopen_range_inr](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-range-inr--370226ea181be858658d19d8.md) | 137 | `result-track:370226ea181be858658d19d827b3a69f6fc8b4f0863f70aaf30e9a5073bd6026` |
| 27 | `theorem` | [isClopen_range_sigmaMk](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/isclopen-range-sigmamk--606323f0dc00c70bf81143c0.md) | 140 | `result-track:606323f0dc00c70bf81143c0d258f78aa8cfbb9e5a98daafa2a56b7202c28e99` |
| 28 | `theorem` | [Topology.IsQuotientMap.isClopen_preimage](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/topology-isquotientmap-isclopen-preimage--db8cea22ba089e819b91b189.md) | 144 | `result-track:db8cea22ba089e819b91b189c6515c3ae519370d8101791e7c0e0843ecae61a7` |
| 29 | `theorem` | [continuous_boolIndicator_iff_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/continuous-boolindicator-iff-isclopen--7d7ec412b77e91279f0ceb82.md) | 148 | `result-track:7d7ec412b77e91279f0ceb82c4218d58054b9b818904c938ada6d1e203a0c3c0` |
| 30 | `theorem` | [continuousOn_boolIndicator_iff_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/declarations/continuouson-boolindicator-iff-isclopen--be26eadcdc56a9652757337c.md) | 152 | `result-track:be26eadcdc56a9652757337c2118aa5b8c8856c83020b7e4a11cb660ec744d30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
