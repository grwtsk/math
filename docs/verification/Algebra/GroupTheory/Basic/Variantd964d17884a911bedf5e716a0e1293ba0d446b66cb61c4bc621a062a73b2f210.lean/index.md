# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb238664a53b011e1833eceb83bbe234a6c5dcc9",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb238664a53b011e1833eceb83bbe234a6c5dcc9`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Operations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DirectSum](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/directsum--cc849108422c87f9150edb20.md) | 35 | `declaration-track:cc849108422c87f9150edb20031a1b010d716a2ee1a6da9932f72719bcea2ea5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/instance--ced776e7512abf9471c71b3f.md) | 43 | `declaration-track:ced776e7512abf9471c71b3f725f10a4bbbe3f413bf77c92c5effef82c1b6ca8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/instance--ba2478afc89644cfcf801a8d.md) | 47 | `declaration-track:ba2478afc89644cfcf801a8d168c0726fad933a97fae1d682ee448e01f3497c7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/instance--3cdf0e66fcc678a00b56378f.md) | 50 | `declaration-track:3cdf0e66fcc678a00b56378fef18804bbdc7a62bb90be0aefe3fd29f89e2c130` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/instance--5186243faf3ae6f14b67cb4b.md) | 53 | `declaration-track:5186243faf3ae6f14b67cb4bc3558db1d54a4f7b4a7bc215db659d00daa4237e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/instance--0e039c78327a4083996f1cf1.md) | 81 | `declaration-track:0e039c78327a4083996f1cf1a7a963fcc883be8f0b8130a7b7ac445b005fe0d2` |
| 7 | `theorem` | [sub_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/sub-apply--a28a2dc62146f1d6513e46ef.md) | 86 | `result-track:a28a2dc62146f1d6513e46efaf285f48136c4c999b8bbc9825773b9564f3667e` |
| 8 | `theorem` | [zero_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/zero-apply--fa554f94ccdcf0d4a84c539e.md) | 95 | `result-track:fa554f94ccdcf0d4a84c539e16bf1735c6247b1c76331a04f0d314202fd7fd9d` |
| 9 | `theorem` | [add_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/add-apply--cff7bc5dc3d2a94d1d11aecc.md) | 102 | `result-track:cff7bc5dc3d2a94d1d11aecc2bd4798a37d97d5105fa40d0da08ba89ad16fc21` |
| 10 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/mk--99a29d1bf668059ba859d3b9.md) | 113 | `declaration-track:99a29d1bf668059ba859d3b901cb1455b0bc79c306e8271151ca92e99f4452c2` |
| 11 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/of--d78321004cabaf133cbe6e6f.md) | 121 | `declaration-track:d78321004cabaf133cbe6e6f358f0909440698a9fbef5ca3ea65e676baaf8e20` |
| 12 | `theorem` | [of_eq_same](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/of-eq-same--efe3c42a1e6102581f6eae17.md) | 126 | `result-track:efe3c42a1e6102581f6eae1762a12083838aba1f4e7692e1370cd03603682737` |
| 13 | `theorem` | [of_eq_of_ne](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/of-eq-of-ne--7e01483a58ece0444cae6a73.md) | 130 | `result-track:7e01483a58ece0444cae6a73d00139a12311187d2f99b7ad56af26ea33dc45d9` |
| 14 | `theorem` | [support_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/support-zero--425368272825b646376af8df.md) | 135 | `result-track:425368272825b646376af8dfbb850a8d60aacd257624338da86c2adaa2a1b866` |
| 15 | `theorem` | [support_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/support-of--74c3928320992197cfdb458f.md) | 140 | `result-track:74c3928320992197cfdb458feeecb72c6496e10ef1329220c588e79ca4ce766b` |
| 16 | `theorem` | [support_of_subset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/support-of-subset--15df6b8afbe0adfec0c485f7.md) | 145 | `result-track:15df6b8afbe0adfec0c485f77efcd804d0bb10585576b02403f3fa33610c854b` |
| 17 | `theorem` | [sum_support_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/sum-support-of--dbacf38cd9f4750ca0a7580e.md) | 150 | `result-track:dbacf38cd9f4750ca0a7580e42def82e88f87b96697f564d703f88456ebec228` |
| 18 | `theorem` | [mk_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/mk-injective--9976e6e01fdca581cb8e618d.md) | 157 | `result-track:9976e6e01fdca581cb8e618d8ea40ccbc076aa2b6584d797011d014b9c1aaf02` |
| 19 | `theorem` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/of-injective--c42f244356a1ef32bbcc1eec.md) | 161 | `result-track:c42f244356a1ef32bbcc1eec1ed0c826c0d24736405e8b06dc4976d4b1b30784` |
| 20 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/induction-on--4d96548ce34ee405731324ef.md) | 166 | `result-track:4d96548ce34ee405731324efa6311b13b2775242a27831fce3f62fbb6c366e9d` |
| 21 | `theorem` | [addHom_ext](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/addhom-ext--5e8d9b49b35d5f88b09a8116.md) | 176 | `result-track:5e8d9b49b35d5f88b09a811655b3f6984a62e03aea30775a6599c88dbfa46706` |
| 22 | `theorem` | [addHom_ext'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/addhom-ext--d700a483a32a817824b24546.md) | 186 | `result-track:d700a483a32a817824b2454674f81e4198aea68b913d585b256e6bbf8abd975a` |
| 23 | `def` | [toAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/toaddmonoid--6bf3ef2b94a5bc9a1133c275.md) | 202 | `declaration-track:6bf3ef2b94a5bc9a1133c275facca5ba2c7365807910643a87958cc371d3e810` |
| 24 | `theorem` | [toAddMonoid_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/toaddmonoid-of--09f509e73fc12502cdcb6822.md) | 207 | `result-track:09f509e73fc12502cdcb68225841c939073c2a55c0f30e89b59fcddbdfa1c434` |
| 25 | `theorem` | [toAddMonoid.unique](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/toaddmonoid-unique--b6121ba80f9e0adf2947116d.md) | 211 | `result-track:b6121ba80f9e0adf2947116dd4faa8fc9d82d130b13e4af6e922bfa720f1b221` |
| 26 | `def` | [fromAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/fromaddmonoid--40e49a814d22ec4196d2cd10.md) | 226 | `declaration-track:40e49a814d22ec4196d2cd10a1d74a8f812aad27d9d0de32fcc85c302b16fcb4` |
| 27 | `theorem` | [fromAddMonoid_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/fromaddmonoid-of--41bd5db29a1b938062062601.md) | 231 | `result-track:41bd5db29a1b93806206260168cd5d5d03563cea8f01fab101cf3fb342c595bc` |
| 28 | `theorem` | [fromAddMonoid_of_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/fromaddmonoid-of-apply--66d1b9f92b1212ea102c29a8.md) | 236 | `result-track:66d1b9f92b1212ea102c29a8bacff7696d38e07fe5af62c7d7468dead34a0079` |
| 29 | `def` | [setToSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/settoset--c26bd112107c22568aba7708.md) | 248 | `declaration-track:c26bd112107c22568aba77084f6b9c85f5cae9e4cb33c83afb4517347891b801` |
| 30 | `instance` | [unique](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/unique--dea9aa188dd91b57ec306cf8.md) | 257 | `declaration-track:dea9aa188dd91b57ec306cf80ce6b0ef55b3deef4e0e4d67d7a603e7640d1485` |
| 31 | `instance` | [uniqueOfIsEmpty](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/uniqueofisempty--6d59ef3c36db1f4fc3f7e4a1.md) | 262 | `declaration-track:6d59ef3c36db1f4fc3f7e4a1545aa4bc451f7acede248f00969933d160d789a0` |
| 32 | `def` | [id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/id--07dc83527ce307003940adaa.md) | 267 | `declaration-track:07dc83527ce307003940adaab77740c63e61ec144b3c11731235a364347d148b` |
| 33 | `def` | [equivCongrLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/equivcongrleft--069882622fb838b165e8002f.md) | 287 | `declaration-track:069882622fb838b165e8002fd6aff4860c1e248f28186073005aa2faef79d7e1` |
| 34 | `theorem` | [equivCongrLeft_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/equivcongrleft-apply--320839fafffb5d2d30743a22.md) | 292 | `result-track:320839fafffb5d2d30743a22e21f5afc84ca763680b846699043b62ae77fb21f` |
| 35 | `def` | [addEquivProdDirectSum](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/addequivproddirectsum--576e85e670deb7072015504e.md) | 308 | `declaration-track:576e85e670deb7072015504ed2836631c5933895717ec559fc9fbd2f75a90bcf` |
| 36 | `def` | [sigmaCurry](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/sigmacurry--1c3ea6575010d1948daf6cc9.md) | 319 | `declaration-track:1c3ea6575010d1948daf6cc903331a987af1a2190686170f8ade3acd38504628` |
| 37 | `theorem` | [sigmaCurry_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/sigmacurry-apply--55cc6a106eb9a202d92acce2.md) | 327 | `result-track:55cc6a106eb9a202d92acce298c37be173afe179a1e8e19cb70a8718112e76d3` |
| 38 | `def` | [sigmaUncurry](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/sigmauncurry--f8a4222872e239788b45240c.md) | 334 | `declaration-track:f8a4222872e239788b45240c5545263a789e32be1b22af7ebe0f31a9a3435b3c` |
| 39 | `theorem` | [sigmaUncurry_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/sigmauncurry-apply--e440adb2987e348894c45896.md) | 343 | `result-track:e440adb2987e348894c45896b1fc0bf407d28ae5269ad28be279734c0bcfe1c6` |
| 40 | `def` | [sigmaCurryEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/sigmacurryequiv--7c931c9baccdb466065b4c58.md) | 349 | `declaration-track:7c931c9baccdb466065b4c58abb8b127f24099b8487597caf7f43f4fdbb44251` |
| 41 | `def` | [coeAddMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/coeaddmonoidhom--dc72aeb67b263200766c712b.md) | 360 | `declaration-track:dc72aeb67b263200766c712b635e6ae7534a49320526087cdf97a38455097383` |
| 42 | `theorem` | [coeAddMonoidHom_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/coeaddmonoidhom-of--3fc2a651ef0836c63419a750.md) | 366 | `result-track:3fc2a651ef0836c63419a75058f8468b52ebb78121930f072b1b79b4bfa0e6e9` |
| 43 | `theorem` | [coe_of_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/coe-of-apply--420bac5f4ae13eb040baf4b5.md) | 372 | `result-track:420bac5f4ae13eb040baf4b5a844298b0b8f6d0de6a6380f219f77036348f78e` |
| 44 | `def` | [IsInternal](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/isinternal--3704bec02126117db3dd4aee.md) | 386 | `declaration-track:3704bec02126117db3dd4aee7a1f12a69291dbc871c72c8ae54bb9d5cf3d84f5` |
| 45 | `theorem` | [IsInternal.addSubmonoid_iSup_eq_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd964d17884a911bedf5e716a0e1293ba0d446b66cb61c4bc621a062a73b2f210.lean/declarations/isinternal-addsubmonoid-isup-eq-top--ad4bb84b998c89c068a3cc0f.md) | 391 | `result-track:ad4bb84b998c89c068a3cc0fd17164228108250e0338f0fc92d0e3e528b23c37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
