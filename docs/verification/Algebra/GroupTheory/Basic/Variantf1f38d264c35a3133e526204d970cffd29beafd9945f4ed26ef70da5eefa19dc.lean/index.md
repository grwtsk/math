# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a26d3a95fa5836d451f1e40803a417a2a64221a4",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a26d3a95fa5836d451f1e40803a417a2a64221a4`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Quotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/mem-leftcoset--5cdf686b7a0ec95f99823dc2.md) | 52 | `result-track:5cdf686b7a0ec95f99823dc23b9b8234d4aa09fafa7ab1e9ab250c6150dca0dd` |
| 2 | `theorem` | [mem_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/mem-rightcoset--450e7f189728a0dba408b7dc.md) | 56 | `result-track:450e7f189728a0dba408b7dc64433c5e57c9942420d32a70f43c9031e0e4543b` |
| 3 | `def` | [LeftCosetEquivalence](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/leftcosetequivalence--528ffcbf463b284ad6197370.md) | 61 | `declaration-track:528ffcbf463b284ad619737090063a301a440e4da2b11b29e3b925fa1821956e` |
| 4 | `theorem` | [leftCosetEquivalence_rel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/leftcosetequivalence-rel--146d1d235eed026d18feb4df.md) | 65 | `result-track:146d1d235eed026d18feb4df271603f9971bbd0e233b5a837820992a9a4ef7df` |
| 5 | `def` | [RightCosetEquivalence](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/rightcosetequivalence--740f48a87c624a8f8d3e32f8.md) | 70 | `declaration-track:740f48a87c624a8f8d3e32f8de4a85c3533a54cb60c48dbfd0762e3f5b1b4e0c` |
| 6 | `theorem` | [rightCosetEquivalence_rel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/rightcosetequivalence-rel--3d68fd518df0bf17034bda9d.md) | 74 | `result-track:3d68fd518df0bf17034bda9d3c53e01bf05ae2925f8ec330ed507a8cb4e8cf2e` |
| 7 | `theorem` | [leftCoset_assoc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/leftcoset-assoc--e9896561ed504a4ec6a7d5c2.md) | 84 | `result-track:e9896561ed504a4ec6a7d5c2f768fbb2ba402222031dc11597a7b21cc0fe5766` |
| 8 | `theorem` | [rightCoset_assoc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/rightcoset-assoc--77aa9224ad97ac56f7c7b83b.md) | 88 | `result-track:77aa9224ad97ac56f7c7b83be02208122e0b98bb791e4f7c9804edececac8621` |
| 9 | `theorem` | [leftCoset_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/leftcoset-rightcoset--98e57d8cb222817a68c68e30.md) | 92 | `result-track:98e57d8cb222817a68c68e304b3b0545db96f7ae20049afd5824f3a536c64968` |
| 10 | `theorem` | [one_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/one-leftcoset--87d4807113d200a28362befb.md) | 102 | `result-track:87d4807113d200a28362befb0e47699628fa6795371e7d8df6557a2c859a5634` |
| 11 | `theorem` | [rightCoset_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/rightcoset-one--c1bbf64b774dc210fd47cc15.md) | 106 | `result-track:c1bbf64b774dc210fd47cc15202c6b9407a19de524eeb5969552b0534ac4e73a` |
| 12 | `theorem` | [mem_own_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/mem-own-leftcoset--019463fb30d99acf5f96e197.md) | 118 | `result-track:019463fb30d99acf5f96e1970b10457144a68686f436dd855a1e22ca92c7e04f` |
| 13 | `theorem` | [mem_own_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/mem-own-rightcoset--b510604071178508b1b047e1.md) | 123 | `result-track:b510604071178508b1b047e1c6a1bb4157c259d30ed5c2d18c9e36413f6ed9fe` |
| 14 | `theorem` | [mem_leftCoset_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/mem-leftcoset-leftcoset--0d371ca9642d283b19684184.md) | 128 | `result-track:0d371ca9642d283b196841845bbc1ae14389cf51f51c69608535497959314cc3` |
| 15 | `theorem` | [mem_rightCoset_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/mem-rightcoset-rightcoset--22fcee3615a9037c6eccbfb6.md) | 132 | `result-track:22fcee3615a9037c6eccbfb6ddf2710a3e213b3897b6e9827f879d0b5fd338bd` |
| 16 | `theorem` | [mem_leftCoset_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/mem-leftcoset-iff--6bb488c91e0014b58e63f0cb.md) | 142 | `result-track:6bb488c91e0014b58e63f0cbccefac186d54e72036812b521eb19344c416353d` |
| 17 | `theorem` | [mem_rightCoset_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/mem-rightcoset-iff--baf3d484bff706885673853f.md) | 146 | `result-track:baf3d484bff706885673853ffe2d5a122f875fe46ca9f5bd656b9639249e9433` |
| 18 | `theorem` | [leftCoset_mem_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/leftcoset-mem-leftcoset--a46c4dfcf97b93735dc0b99a.md) | 158 | `result-track:a46c4dfcf97b93735dc0b99a9608436390e7322b4a0ccce073b2fee0f5fa7610` |
| 19 | `theorem` | [rightCoset_mem_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/rightcoset-mem-rightcoset--c9473443cc67df27434fb9c4.md) | 162 | `result-track:c9473443cc67df27434fb9c4a2f9c62593dc3daa1f135d789202f8e0ed5d330d` |
| 20 | `theorem` | [orbit_subgroup_eq_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/orbit-subgroup-eq-rightcoset--67b75255ccf00a26524af864.md) | 166 | `result-track:67b75255ccf00a26524af8647e07997848c655daa266f3a95e6f7cccd549edf9` |
| 21 | `theorem` | [orbit_subgroup_eq_self_of_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/orbit-subgroup-eq-self-of-mem--1efcdf6244ef0bd234b60ac5.md) | 170 | `result-track:1efcdf6244ef0bd234b60ac5a23096c425305e3f541a5cbf6469b425f88cd110` |
| 22 | `theorem` | [orbit_subgroup_one_eq_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/orbit-subgroup-one-eq-self--115edcff981e7bc1cb92d691.md) | 174 | `result-track:115edcff981e7bc1cb92d6919e9c0fe2a9a86b3252d5043f1317de087189b64b` |
| 23 | `theorem` | [eq_cosets_of_normal](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/eq-cosets-of-normal--702e3fc9895fec3f595c0bdd.md) | 178 | `result-track:702e3fc9895fec3f595c0bddbe36fbed07c7e1337c7e6cc4b9d9cf1a2602608e` |
| 24 | `theorem` | [normal_of_eq_cosets](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/normal-of-eq-cosets--4e9f6ea6acd4045bb2c83bac.md) | 182 | `result-track:4e9f6ea6acd4045bb2c83bacb3a20ab09c130c29aaca5ff4428a5038b89fdb7e` |
| 25 | `theorem` | [normal_iff_eq_cosets](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/normal-iff-eq-cosets--041ee3e00aa79205f1d63033.md) | 187 | `result-track:041ee3e00aa79205f1d63033024ad7ddc5eb454ba075c9c99a7685055edd187a` |
| 26 | `theorem` | [leftCoset_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/leftcoset-eq-iff--0cc434e45860bc621e7fb2c7.md) | 191 | `result-track:0cc434e45860bc621e7fb2c745894710e2d55d803c72a6f363df3bb1de571ad5` |
| 27 | `theorem` | [rightCoset_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/rightcoset-eq-iff--16401575104c1f2b820946a9.md) | 205 | `result-track:16401575104c1f2b820946a9c79766f20f8317017a76aa63972d998bd0005c2c` |
| 28 | `theorem` | [leftRel_r_eq_leftCosetEquivalence](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/leftrel-r-eq-leftcosetequivalence--6e03785261b1181f86c4eb4f.md) | 224 | `result-track:6e03785261b1181f86c4eb4f63cdcd5478eba40fe85c8fd312d1ce83e81d4e81` |
| 29 | `lemma` | [leftRel_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/leftrel-prod--499b13afaac0acd906dd9d10.md) | 231 | `result-track:499b13afaac0acd906dd9d1099637140d00a5e97b143c3b352d42d49732ff0e2` |
| 30 | `lemma` | [leftRel_pi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/leftrel-pi--650545a24df54dfeb6ae4f8e.md) | 242 | `result-track:650545a24df54dfeb6ae4f8ebcdd51dd00090b387ed1e6b4aabcda142c4bb2ba` |
| 31 | `theorem` | [rightRel_r_eq_rightCosetEquivalence](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/rightrel-r-eq-rightcosetequivalence--ddd46d98ec13a4f4618d4dd2.md) | 247 | `result-track:ddd46d98ec13a4f4618d4dd2bff5fbfa3dfa99badf06784345ec6e63aae06929` |
| 32 | `lemma` | [rightRel_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/rightrel-prod--d6dfacc59822f30241b36848.md) | 254 | `result-track:d6dfacc59822f30241b3684814a50a74e9cc2bfc7e4e8ca34a58dbdd9d653870` |
| 33 | `lemma` | [rightRel_pi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/rightrel-pi--603379689fb6550fcd05c54d.md) | 265 | `result-track:603379689fb6550fcd05c54d282de0d4f55fed215ee0d8f417ce3cc8e5cd81f7` |
| 34 | `instance` | [fintypeQuotientRightRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/fintypequotientrightrel--5e1dc3c301c91f165db260fe.md) | 271 | `declaration-track:5e1dc3c301c91f165db260fe4ced8d4939c1ace336b6671689b4641cd571c2d6` |
| 35 | `theorem` | [card_quotient_rightRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/card-quotient-rightrel--69ada8ef8c8ca26d9d2fd150.md) | 276 | `result-track:69ada8ef8c8ca26d9d2fd1509f4f0c2f01b0d724f3edf70da04c49b203cf1025` |
| 36 | `instance` | [fintype](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/fintype--c84bccfcbb538b08fce825ce.md) | 287 | `declaration-track:c84bccfcbb538b08fce825ceaf8b67666a5ab3e7485a407805e5401b266301e0` |
| 37 | `theorem` | [strictMono_comap_prod_image](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/strictmono-comap-prod-image--e4a0228e6f17c996ee1f7137.md) | 299 | `result-track:e4a0228e6f17c996ee1f7137dadca1f18d2967b9c1b0e85cb784710b5651e561` |
| 38 | `theorem` | [eq_class_eq_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/eq-class-eq-leftcoset--845a0c7dc48035563178f414.md) | 310 | `result-track:845a0c7dc48035563178f4140e20c93cbfdcccafe84e66213ef42186078004ef` |
| 39 | `lemma` | [orbit_mk_eq_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/orbit-mk-eq-smul--e20f86ca971834132ea885a3.md) | 317 | `result-track:e20f86ca971834132ea885a3ebe01b14b852028552bb3d39213be4842699255e` |
| 40 | `lemma` | [orbit_eq_out_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/orbit-eq-out-smul--e87af024e1c5bbd4e471cecc.md) | 323 | `result-track:e87af024e1c5bbd4e471cecc9618b94671c2e10e40d5c2c97446ae3e2645b16a` |
| 41 | `def` | [leftCosetEquivSubgroup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/leftcosetequivsubgroup--9f2fe2013a146b40e7261a40.md) | 337 | `declaration-track:9f2fe2013a146b40e7261a408bebb537e99624063ac649fb8dafb56bd769cea2` |
| 42 | `def` | [rightCosetEquivSubgroup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/rightcosetequivsubgroup--78a6250ee993075a4d7bda3b.md) | 343 | `declaration-track:78a6250ee993075a4d7bda3bb46b5167fa55db9c3c245cd9f4b74c5e54f982a0` |
| 43 | `def` | [groupEquivQuotientProdSubgroup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/groupequivquotientprodsubgroup--d4a546fed8336d91832d5e90.md) | 350 | `declaration-track:d4a546fed8336d91832d5e904e85f6c65e0a3c8f0aa7e8ab3abc50e396ad5353` |
| 44 | `def` | [quotientEquivProdOfLE'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientequivprodofle--5c5d5f083cfc41d20f9cc137.md) | 371 | `declaration-track:5c5d5f083cfc41d20f9cc13718f1c376020dfb525e9005a64cce1933479c0434` |
| 45 | `def` | [quotientEquivProdOfLE](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientequivprodofle--fcb2552b78fae33b635a76ed.md) | 412 | `declaration-track:fcb2552b78fae33b635a76ed5d40cab7381b965db768526461d6b0525aa615f3` |
| 46 | `def` | [quotientSubgroupOfEmbeddingOfLE](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientsubgroupofembeddingofle--876e21cf7f6428cccdf0c850.md) | 426 | `declaration-track:876e21cf7f6428cccdf0c850afa06851eb9d1b251f26700972a3a5c51780a281` |
| 47 | `theorem` | [quotientSubgroupOfEmbeddingOfLE_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientsubgroupofembeddingofle-apply-mk--74e4f36ce991bbb7c3640802.md) | 438 | `result-track:74e4f36ce991bbb7c3640802edcbbda7ca67a9ea2588a78b72a2feb9737e03e6` |
| 48 | `def` | [quotientSubgroupOfMapOfLE](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientsubgroupofmapofle--aed426493492ac6992802a83.md) | 444 | `declaration-track:aed426493492ac6992802a830eb4441d747e606b0213c40e8662479d55571e12` |
| 49 | `theorem` | [quotientSubgroupOfMapOfLE_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientsubgroupofmapofle-apply-mk--2cd39f28a57dc6cca14d36d4.md) | 451 | `result-track:2cd39f28a57dc6cca14d36d47489d5baef153a08b4e7375115d195d47e9a9a78` |
| 50 | `def` | [quotientMapOfLE](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientmapofle--0fd212c81b6b20d2a376b1e4.md) | 457 | `declaration-track:0fd212c81b6b20d2a376b1e43ca977e0ad83f1be7b15d33e7b4b94b6041a28fc` |
| 51 | `theorem` | [quotientMapOfLE_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientmapofle-apply-mk--a1827acf7bd8077759b31f01.md) | 463 | `result-track:a1827acf7bd8077759b31f010dc190a121b861cb743cb035a17d6b07d8e0a34f` |
| 52 | `def` | [quotientiInfSubgroupOfEmbedding](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientiinfsubgroupofembedding--cf108db298ef828c94c93267.md) | 470 | `declaration-track:cf108db298ef828c94c93267651baeb250a28c98ad3de2def278c293aabb875f` |
| 53 | `theorem` | [quotientiInfSubgroupOfEmbedding_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientiinfsubgroupofembedding-apply-mk--7852bdb4384da65e7d1d2e25.md) | 479 | `result-track:7852bdb4384da65e7d1d2e256d8474786498bbb2e114369489890dcf35d6179a` |
| 54 | `def` | [quotientiInfEmbedding](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientiinfembedding--b6225047386be95e3175f8c9.md) | 486 | `declaration-track:b6225047386be95e3175f8c91ca780dd440ed271d7d3b0c38124526af3f6ec5a` |
| 55 | `theorem` | [quotientiInfEmbedding_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientiinfembedding-apply-mk--3f97d86742149714c067587f.md) | 494 | `result-track:3f97d86742149714c067587f33908d8dc258b7e208a0ca5621a38cbdd6bb585c` |
| 56 | `def` | [fiberEquivKer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/fiberequivker--724cd21e0511ef6751b2d822.md) | 506 | `declaration-track:724cd21e0511ef6751b2d822f9ba0e805a051c22e9f35327ff809a25e65fcc34` |
| 57 | `lemma` | [fiberEquivKer_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/fiberequivker-apply--cbbf09efd48a918931cabdf6.md) | 514 | `result-track:cbbf09efd48a918931cabdf6068c601366a5cff22dce8e6ce3c84672fa067735` |
| 58 | `lemma` | [fiberEquivKer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/fiberequivker-symm-apply--947d5f90743b05bca9eec773.md) | 518 | `result-track:947d5f90743b05bca9eec77323d25a5ae321c090d866cb0c28dc84adaabeef71` |
| 59 | `def` | [fiberEquivKerOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/fiberequivkerofsurjective--acdd28050c139761f44d0c25.md) | 524 | `declaration-track:acdd28050c139761f44d0c2550e3bc49f0251e470bb98811b9d63560643160af` |
| 60 | `def` | [fiberEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/fiberequiv--2c877bc09fed01d77b3df2be.md) | 530 | `declaration-track:2c877bc09fed01d77b3df2be142ce8212a3d78270bbbe255fd9c29750104f3fd` |
| 61 | `lemma` | [fiberEquiv_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/fiberequiv-apply--303166435d74604d51911a9d.md) | 534 | `result-track:303166435d74604d51911a9d38dfe828e8e0ebb4c148c4edf479400aea50036f` |
| 62 | `lemma` | [fiberEquiv_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/fiberequiv-symm-apply--597f745f53e63ed3e81a9860.md) | 539 | `result-track:597f745f53e63ed3e81a98602c3293f13fc97beb78044f93742c0f67bf9aea9a` |
| 63 | `def` | [fiberEquivOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/fiberequivofsurjective--c6b7216d0e5bb0fce9049d85.md) | 545 | `declaration-track:c6b7216d0e5bb0fce9049d855bce5cd5381cf5d1d34be6c4b8b675ff8145ce93` |
| 64 | `def` | [preimageMkEquivSubgroupProdSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/preimagemkequivsubgroupprodset--b86bd551a8d0d0d2248e84f3.md) | 561 | `declaration-track:b86bd551a8d0d0d2248e84f3db804f2a00844a2ad2611c112c3437d3c7762bf1` |
| 65 | `lemma` | [univ_eq_iUnion_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/univ-eq-iunion-smul--1ac5ae3afe8e8476b266d6d0.md) | 579 | `result-track:1ac5ae3afe8e8476b266d6d0014995924149b1654fa87d889c73294f5fcb93f8` |
| 66 | `def` | [quotientEquivSelf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/declarations/quotientequivself--b064b3f3c6f2b6af532fb091.md) | 589 | `declaration-track:b064b3f3c6f2b6af532fb091663701943a76cc95978c1f6538d51f0aaf1f5bf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
