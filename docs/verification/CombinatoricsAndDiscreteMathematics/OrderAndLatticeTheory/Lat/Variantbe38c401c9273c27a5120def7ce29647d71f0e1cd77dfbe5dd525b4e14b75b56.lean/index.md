# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lat.Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05145cb20f1213041a407b67b8284cece479bccc",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05145cb20f1213041a407b67b8284cece479bccc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.PartOrd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Lat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/lat--d0410e60f56a12f5840b2288.md) | 28 | `declaration-track:d0410e60f56a12f5840b2288d726104fb306b162f6501a48118d29a766b98615` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/instance--79fcec6966ea3c2fe3f02fe8.md) | 39 | `declaration-track:79fcec6966ea3c2fe3f02fe89f5794b8693b4a82c0d554647629ee31a3201aa2` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/of--255dcd25e723bb1a344e9f31.md) | 45 | `declaration-track:255dcd25e723bb1a344e9f31f35d96917803cc7a5a17f9af8fa7158a23182cf0` |
| 4 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/hom--6d60b904c0b90238af949e39.md) | 49 | `declaration-track:6d60b904c0b90238af949e391ff6b0b9a3da052324eb1f36e80733db5b548b51` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/instance--c5cd0355d1a48629a5abfa6b.md) | 54 | `declaration-track:c5cd0355d1a48629a5abfa6bfdcd80ab8cf36a01239973c1dc7c1d0876d5d520` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/instance--131e7d10c8788a68d32524af.md) | 59 | `declaration-track:131e7d10c8788a68d32524af4740acc6fa6ef73429bb29da266f9e44e9219d9c` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/hom-hom--203248ba6b8f0aed673c8b65.md) | 64 | `declaration-track:203248ba6b8f0aed673c8b6566f46a5d524d8fc870d9b0e7bad3aff15910b2b2` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/ofhom--c5327e9edf65f36b61359702.md) | 68 | `declaration-track:c5327e9edf65f36b61359702bdbb0c663b6a8be64f8483058802612ab8b2aa95` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/hom-simps-hom--0e7cbccdcafced0ddb881dc9.md) | 73 | `declaration-track:0e7cbccdcafced0ddb881dc91266f3cd7c58e8c8cf6955d1a9181f3a542ef771` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/coe-id--df6642edbc32617ea0d12cf3.md) | 83 | `result-track:df6642edbc32617ea0d12cf351ee2c1f189c0eb9df2702afbdc491eaea516b10` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/coe-comp--7f14466700a7d51904c71545.md) | 86 | `result-track:7f14466700a7d51904c71545fa5f636841727497a8c79bee4d99f20feaa18f89` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/forget-map--1f260510b783e6172ad7e970.md) | 89 | `result-track:1f260510b783e6172ad7e9706b1053f510cdccc76525a73cd92b2a7dbe17def6` |
| 13 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/ext--ede7c73f889145833573a571.md) | 93 | `result-track:ede7c73f889145833573a571d259bae7b96ca18384ea261b9cdc53b4d149186b` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/coe-of--f29a56e8945bdbe95d0711bc.md) | 97 | `result-track:f29a56e8945bdbe95d0711bc0468f931a9a74b03c4e8a38b7ad0c468c329056a` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/hom-id--0f487700a4a4f96c77ffe965.md) | 100 | `result-track:0f487700a4a4f96c77ffe965ec2f6533878db99555441fae3c5dc8c19e7bc882` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/id-apply--e780b293e398dbaa2c80ea9b.md) | 103 | `result-track:e780b293e398dbaa2c80ea9b716a59727b1da11de7676d99482022448de1ca1f` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/hom-comp--3f1a47c598956e2cd62c4a11.md) | 107 | `result-track:3f1a47c598956e2cd62c4a114df287a379a379fea1f6d7199ea5a7efe5be6d54` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/comp-apply--8e4afc19d61c487283194a9e.md) | 111 | `result-track:8e4afc19d61c487283194a9e9b6482aa1876805fe9ae50420d82d94726c78d88` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/hom-ext--4fbe72de82c3688c25e79c4e.md) | 115 | `result-track:4fbe72de82c3688c25e79c4e6af21682ff6daad17e580cafba3f0ab304600727` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/hom-ofhom--b820a49798c4be6338bacc3e.md) | 119 | `result-track:b820a49798c4be6338bacc3ed066097e085421848bff11509a6a697928b13127` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/ofhom-hom--eeada64a3fb470ff272f4a16.md) | 123 | `result-track:eeada64a3fb470ff272f4a1648f8fc16c265ab3192cdc39563124375ab058a14` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/ofhom-id--b98aa57e1a795d0d9fd41157.md) | 127 | `result-track:b98aa57e1a795d0d9fd41157d5779608e10e19ad85a44a1a8aa060c1521fe3d0` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/ofhom-comp--27d4c21dfb918290eadd174e.md) | 130 | `result-track:27d4c21dfb918290eadd174e8e5d0149a600c50b0da7422d23abc020ad045294` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/ofhom-apply--1ebdcc4e2cc385ffe96eda37.md) | 135 | `result-track:1ebdcc4e2cc385ffe96eda37a668ba9f5a6e932f7fad521a708365704abd4551` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/inv-hom-apply--ccc3337d445682bea584ffde.md) | 138 | `result-track:ccc3337d445682bea584ffde2ec15c4f94bc0ed84f30a6f86ff006875b82de51` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/hom-inv-apply--acb49807973a0f668cad2db3.md) | 141 | `result-track:acb49807973a0f668cad2db33e5b12d41ad78e92b910a690c40ac96dc01bc50c` |
| 27 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/hasforgettopartord--520249d8ee485c4f242499e6.md) | 144 | `declaration-track:520249d8ee485c4f242499e604308a066337d15daf64cb520d3581cc44b2bc74` |
| 28 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/iso-mk--1121b3df8c0eb46399322988.md) | 150 | `declaration-track:1121b3df8c0eb46399322988910245d569a35d459c4eaed2416c26072e635a4b` |
| 29 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/dual--095ea476eceb2668edeb19cf.md) | 156 | `declaration-track:095ea476eceb2668edeb19cf4bbe3c4a6b858022d7e7ed20dc6f3cc6f7cb9229` |
| 30 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/dualequiv--2c9fc1d4da3c90b0ad560924.md) | 162 | `declaration-track:2c9fc1d4da3c90b0ad5609241c78f26bd8ddd72ed16222528718a3956e8511f0` |
| 31 | `theorem` | [Lat_dual_comp_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56.lean/declarations/lat-dual-comp-forget-to-partord--514573313b5743bfd55c271d.md) | 170 | `result-track:514573313b5743bfd55c271d78f992ec45842ddc388a4fb9a1433a3fb7325284` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
