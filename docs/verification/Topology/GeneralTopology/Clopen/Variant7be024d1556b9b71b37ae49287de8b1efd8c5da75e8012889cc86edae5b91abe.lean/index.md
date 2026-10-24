# Verification target: GRWTSK.Topology.GeneralTopology.Clopen.Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b2f2955f5c4efc78bcb03ca8be607e7e431e698",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b2f2955f5c4efc78bcb03ca8be607e7e431e698`.

Source path: `GRWTSK/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Subset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Clopen` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPreconnected.subset_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/ispreconnected-subset-isclopen--87830df23c61628cd6573dd1.md) | 42 | `result-track:87830df23c61628cd6573dd1de3d9bd17858c5098f175a8b4eef6b8075c9ed9e` |
| 2 | `theorem` | [Sigma.isConnected_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/sigma-isconnected-iff--4d06ce071abf6bb3ad1f4152.md) | 46 | `result-track:4d06ce071abf6bb3ad1f4152f655b0c49ed98c7d10c3d3b64b1dfc3679545592` |
| 3 | `theorem` | [Sigma.isPreconnected_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/sigma-ispreconnected-iff--e2e326aa0492e3ab25573c98.md) | 57 | `result-track:e2e326aa0492e3ab25573c985f5bb45264e65af21458882d46883b649944cb53` |
| 4 | `theorem` | [Sum.isConnected_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/sum-isconnected-iff--edb05fd23c1dfe5daf9afbf5.md) | 67 | `result-track:edb05fd23c1dfe5daf9afbf5ba9ab88a6bf03c17ac2b317a50c59c33e02026c5` |
| 5 | `theorem` | [Sum.isPreconnected_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/sum-ispreconnected-iff--b48474fa0889017531cf8276.md) | 86 | `result-track:b48474fa0889017531cf827615b0e422fca0f98f5718bb10883df23eaf381335` |
| 6 | `theorem` | [Continuous.exists_lift_sigma](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/continuous-exists-lift-sigma--6c49807e83334ae3b16cd8ed.md) | 102 | `result-track:6c49807e83334ae3b16cd8edc4c564113a1af9603085217e9ea92982dec5e666` |
| 7 | `theorem` | [nonempty_inter](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/nonempty-inter--6da185699c81264781ff2ff3.md) | 112 | `result-track:6da185699c81264781ff2ff37cef69bb957a0d5d03febadb07ca7a02b6fa4fb5` |
| 8 | `theorem` | [isClopen_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/isclopen-iff--3c4866f3344062fcefc47054.md) | 116 | `result-track:3c4866f3344062fcefc4705462c7d4067a9f95ca9066caed30269fdb624ff2e3` |
| 9 | `theorem` | [IsClopen.eq_univ](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/isclopen-eq-univ--abd253d0bbb890101b76e899.md) | 128 | `result-track:abd253d0bbb890101b76e89990b6e7be142b7a7c5f7aa63ad5ab873c9e15b264` |
| 10 | `lemma` | [isClopen_preimage_val](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/isclopen-preimage-val--72880824c5f9beb9f947d508.md) | 133 | `result-track:72880824c5f9beb9f947d508166f95c04b22a5b4ddd0cc10acb69ee89e3dbffe` |
| 11 | `lemma` | [subsingleton_of_disjoint_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/subsingleton-of-disjoint-isclopen--add7e37f939deb33db7f6c19.md) | 150 | `result-track:add7e37f939deb33db7f6c1964fa98a84d9d10db4652bf547f3ed18813112dba` |
| 12 | `lemma` | [subsingleton_of_disjoint_isOpen_iUnion_eq_univ](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/subsingleton-of-disjoint-isopen-iunion-eq-univ--c1772335905e8c6d267528e8.md) | 166 | `result-track:c1772335905e8c6d267528e8b01fe04fcd52e9ea1072af2dacea45279f56b843` |
| 13 | `lemma` | [subsingleton_of_disjoint_isClosed_iUnion_eq_univ](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/subsingleton-of-disjoint-isclosed-iunion-eq-univ--21707841cb76548a4da9494d.md) | 178 | `result-track:21707841cb76548a4da9494d662c8b7fb0545d8e918cfd0b18b2af4bcac0209c` |
| 14 | `theorem` | [frontier_eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/frontier-eq-empty-iff--447aedb53ba3016523c4f990.md) | 190 | `result-track:447aedb53ba3016523c4f990a07b7cfa720661c376a397251bc76f1f7d5ccda0` |
| 15 | `theorem` | [nonempty_frontier_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/nonempty-frontier-iff--490d10d27c8a37f77daa6812.md) | 194 | `result-track:490d10d27c8a37f77daa68129bd3bb7f1e1865576498b443d7cc585069956511` |
| 16 | `lemma` | [PreconnectedSpace.induction₂'](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/preconnectedspace-induction--b1b1bea95c0574188cd786e4.md) | 201 | `result-track:b1b1bea95c0574188cd786e44f72c23f6cb46ac201c57b29933f96b644367158` |
| 17 | `lemma` | [PreconnectedSpace.induction₂](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/preconnectedspace-induction--6c11bf14a355fe1ebe894f81.md) | 221 | `result-track:6c11bf14a355fe1ebe894f81739319b47fdd22f77c5bcdbb3a2788eb6dfed4cd` |
| 18 | `lemma` | [IsPreconnected.induction₂'](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/ispreconnected-induction--0a01ccd01e809ad9b1c9aa0d.md) | 231 | `result-track:0a01ccd01e809ad9b1c9aa0d4945410f46475dc88ad6c7bcad23fb3a0f47a2f2` |
| 19 | `lemma` | [IsPreconnected.induction₂](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/ispreconnected-induction--8f7c713c96c3de498521bbb9.md) | 248 | `result-track:8f7c713c96c3de498521bbb92e43771c4f3cb37acccfe265cc4fae2b02426ded` |
| 20 | `theorem` | [isPreconnected_iff_subset_of_disjoint](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/ispreconnected-iff-subset-of-disjoint--8ed489b7476d6ff86ad570bb.md) | 259 | `result-track:8ed489b7476d6ff86ad570bb25830c1e1d15d621703883e2dccf4cfd5d43a6f4` |
| 21 | `theorem` | [isConnected_iff_sUnion_disjoint_open](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/isconnected-iff-sunion-disjoint-open--d2348ac266d0ddce59d17568.md) | 284 | `result-track:d2348ac266d0ddce59d17568b00f8a31868f239a1aac4f43b6e64f1157e0b292` |
| 22 | `theorem` | [disjoint_or_subset_of_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/disjoint-or-subset-of-isclopen--bbb7907c0ca6295b89c459bc.md) | 306 | `result-track:bbb7907c0ca6295b89c459bc393ac1d999669fa0c79fa63c9f22954bea40319a` |
| 23 | `theorem` | [isPreconnected_iff_subset_of_disjoint_closed](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/ispreconnected-iff-subset-of-disjoint-closed--65833ff12d86e310bc31e116.md) | 313 | `result-track:65833ff12d86e310bc31e116f2bdec3d1f05d260d8ed870f0729a3aad5c3cead` |
| 24 | `theorem` | [isPreconnected_iff_subset_of_fully_disjoint_closed](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/ispreconnected-iff-subset-of-fully-disjoint-closed--00cec5262899fc387a6d4163.md) | 339 | `result-track:00cec5262899fc387a6d41639b392f827054dd31191d80b4663d0b3544f8702b` |
| 25 | `theorem` | [IsClopen.connectedComponent_subset](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/isclopen-connectedcomponent-subset--0337799aa89619a7ae8cc9df.md) | 353 | `result-track:0337799aa89619a7ae8cc9df55e160b569636167d1cfaad36574a8163c6abed4` |
| 26 | `theorem` | [connectedComponent_subset_iInter_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/connectedcomponent-subset-iinter-isclopen--371b3ed99f0fa76d0acced35.md) | 359 | `result-track:371b3ed99f0fa76d0acced35c9d00cd1b448487ff911b1e31001a8e948a4f8d2` |
| 27 | `theorem` | [IsClopen.biUnion_connectedComponent_eq](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/isclopen-biunion-connectedcomponent-eq--6f87e12736334ac5aee04d17.md) | 364 | `result-track:6f87e12736334ac5aee04d17dfdb7033a8d7857c75dc53730381c94940c74e4c` |
| 28 | `lemma` | [IsClopen.biUnion_connectedComponentIn](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/isclopen-biunion-connectedcomponentin--a4353b4464f6e032af9e04c7.md) | 372 | `result-track:a4353b4464f6e032af9e04c7fdfa172dd949436175e5e2fefd76af48c17a7116` |
| 29 | `theorem` | [preimage_connectedComponent_connected](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/preimage-connectedcomponent-connected--e3b8f109b243254a9d567ccb.md) | 388 | `result-track:e3b8f109b243254a9d567ccbe4dd894cead61d4ca1f3a563500a093b2197f5ec` |
| 30 | `theorem` | [Topology.IsQuotientMap.preimage_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/topology-isquotientmap-preimage-connectedcomponent--438d211d97894608ea198536.md) | 462 | `result-track:438d211d97894608ea198536a28508ab490a8bfdeb19daa4d9d4f6f8c36f25e5` |
| 31 | `lemma` | [Topology.IsQuotientMap.image_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/topology-isquotientmap-image-connectedcomponent--bb918ffb75529c5e99104579.md) | 472 | `result-track:bb918ffb75529c5e99104579cd0b2b04bef13f415adfd1200fed2f5c10186a43` |
| 32 | `def` | [connectedComponentSetoid](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/connectedcomponentsetoid--28fcc020a34202a0f95feaca.md) | 484 | `declaration-track:28fcc020a34202a0f95feaca270ebab7c6d070ae2c4685c8ba43ca88bb20c3c4` |
| 33 | `def` | [ConnectedComponents](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/connectedcomponents--a0013c6bef0e6a9001babd52.md) | 489 | `declaration-track:a0013c6bef0e6a9001babd5231a438a4ef23c519308ef164d6457d88ee421349` |
| 34 | `def` | [mk](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/mk--78a85f2ec37c4a7f100b3d62.md) | 495 | `declaration-track:78a85f2ec37c4a7f100b3d62b0fd932b7a4632f8d8b584dd77d8eae32c8508c0` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/instance--2b93729d5a05b97b6fe5cc05.md) | 497 | `declaration-track:2b93729d5a05b97b6fe5cc0551218c36c3a7a218a5f248d2836660d339de2aa8` |
| 36 | `theorem` | [coe_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/coe-eq-coe--370594813b92869a17baf534.md) | 500 | `result-track:370594813b92869a17baf5340d153d0b589c24da776343ac650ffbcdaacb7919` |
| 37 | `theorem` | [coe_ne_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/coe-ne-coe--3ba247117a1c585930db4951.md) | 504 | `result-track:3ba247117a1c585930db49512b83ee7ee12da70d86feb596f452bdc4a0d3e221` |
| 38 | `theorem` | [coe_eq_coe'](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/coe-eq-coe--0054045c9ce1825a8029bf05.md) | 508 | `result-track:0054045c9ce1825a8029bf050b4a5648bcc7dbec7098ba30030e718e54854e10` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/instance--66ff8198d097a74e4a7ba23d.md) | 511 | `declaration-track:66ff8198d097a74e4a7ba23d3c40fce0ab16ce747df544863c5802ae6b03a47e` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/instance--906b3d078ffe6f087c55b079.md) | 514 | `declaration-track:906b3d078ffe6f087c55b079da636dd6b1a74fd7f49b4510b03b420e93edebc1` |
| 41 | `theorem` | [surjective_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/surjective-coe--736e2b01368362b00089c708.md) | 517 | `result-track:736e2b01368362b00089c7088283afb64a331f1c8c0066a66756093137c2d632` |
| 42 | `theorem` | [isQuotientMap_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/isquotientmap-coe--973683441ee2306a83d72c9e.md) | 520 | `result-track:973683441ee2306a83d72c9e555483b38dd0011364de6ff1be61f51e38cac591` |
| 43 | `theorem` | [continuous_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/continuous-coe--918dadc19f4cf621342ede60.md) | 527 | `result-track:918dadc19f4cf621342ede60c6805ed3d5b1d0e03035f6ad0bae4102e088ec28` |
| 44 | `theorem` | [range_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/range-coe--214c76d6b714f7c21a964fc2.md) | 531 | `result-track:214c76d6b714f7c21a964fc23dbf9695dca6ff2bf77659cf3d514caf909b5010` |
| 45 | `theorem` | [connectedComponents_preimage_singleton](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/connectedcomponents-preimage-singleton--8aa137188f4ba4c57a21af07.md) | 538 | `result-track:8aa137188f4ba4c57a21af071477d6ad1ddca5b7b15539e669a48c5bf4904ff4` |
| 46 | `theorem` | [connectedComponents_preimage_image](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/connectedcomponents-preimage-image--c73d9ccfebbc0461bb1fd30c.md) | 545 | `result-track:c73d9ccfebbc0461bb1fd30cb5ebf7bf60be1ed0024f72f52f2620a6dde1bd86` |
| 47 | `theorem` | [isPreconnected_of_forall_constant](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/ispreconnected-of-forall-constant--d6d4a5cb0055d49f5f96dfab.md) | 555 | `result-track:d6d4a5cb0055d49f5f96dfabe5c890bad420da3ef1588c2b1ec56b54c239018b` |
| 48 | `theorem` | [preconnectedSpace_of_forall_constant](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/preconnectedspace-of-forall-constant--8d09f29e9df2b60faf0ab93c.md) | 570 | `result-track:8d09f29e9df2b60faf0ab93cf297ef7aed0a3dc29d1e0ca5313dfc72f24aa217` |
| 49 | `theorem` | [preconnectedSpace_iff_clopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/preconnectedspace-iff-clopen--5a9414d3836a85dcd764afa9.md) | 575 | `result-track:5a9414d3836a85dcd764afa9058d5de3d1ede211ae6e3a7e77758b13bbc5387e` |
| 50 | `theorem` | [connectedSpace_iff_clopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/declarations/connectedspace-iff-clopen--c1b4e87a3fe9add266d9d6bb.md) | 583 | `result-track:c1b4e87a3fe9add266d9d6bb195b5080a3ae5fd1cb4f02651b48d7c1beba1965` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
