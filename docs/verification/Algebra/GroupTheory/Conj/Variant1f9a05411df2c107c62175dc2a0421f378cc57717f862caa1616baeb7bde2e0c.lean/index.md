# Verification target: GRWTSK.Algebra.GroupTheory.Conj.Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dc8b2e9e1f4e871ad02d373ddc8c35be63e5554",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dc8b2e9e1f4e871ad02d373ddc8c35be63e5554`.

Source path: `GRWTSK/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Semiconj.Units` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj--7b30b9e24b13fe4dade93c22.md) | 34 | `declaration-track:7b30b9e24b13fe4dade93c227e712bb88ba31f2d6c41319f7c48105c647fc1bc` |
| 2 | `theorem` | [IsConj.refl](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj-refl--c1c3b9f668649bb9c131f5ad.md) | 38 | `result-track:c1c3b9f668649bb9c131f5aded7d13b038267a896d59025df94a7da74710307a` |
| 3 | `theorem` | [IsConj.symm](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj-symm--972be34245986c8b704a4fb6.md) | 42 | `result-track:972be34245986c8b704a4fb618fca42299a1e8e82c6af7527ffa1cd5d1760c19` |
| 4 | `theorem` | [isConj_comm](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj-comm--fda15bd8b0efa60fb7dd5495.md) | 45 | `result-track:fda15bd8b0efa60fb7dd54959b5de1309c390cfd310f0b48cd18ad5734bffbf4` |
| 5 | `theorem` | [IsConj.trans](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj-trans--437bb6bac24d09d7f6fe1025.md) | 49 | `result-track:437bb6bac24d09d7f6fe10256f0a3ab1ff093808906ba5b98180d45919ae1cc6` |
| 6 | `theorem` | [IsConj.pow](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj-pow--b73000f3ea022c697bf87768.md) | 52 | `result-track:b73000f3ea022c697bf8776879d97f9cb313b927b2788bcdd8ff68acf83bdc5c` |
| 7 | `theorem` | [isConj_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj-iff-eq--f1b8bac54cb5cedc7a281b4e.md) | 56 | `result-track:f1b8bac54cb5cedc7a281b4e46a1a498ef0631c5d8321de296a3750df0a2fcbb` |
| 8 | `theorem` | [MonoidHom.map_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/monoidhom-map-isconj--d55dc172e96c28b59c6bc3a1.md) | 61 | `result-track:d55dc172e96c28b59c6bc3a12c4c60acbb41419b02fea477dc7f8faccdeaabe8` |
| 9 | `theorem` | [isConj_one_right](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj-one-right--371b67da7171f999c250fa18.md) | 65 | `result-track:371b67da7171f999c250fa1820eb2bc8fa93250182c743a3b79f205f7f34070d` |
| 10 | `theorem` | [isConj_one_left](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj-one-left--484e7d0e28017dfa5eca12a1.md) | 71 | `result-track:484e7d0e28017dfa5eca12a105158ba55549320e9048b7e71f75db26f2b0c645` |
| 11 | `theorem` | [isConj_iff](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj-iff--041560e0c6d0c0b28d8fe3d0.md) | 83 | `result-track:041560e0c6d0c0b28d8fe3d0824368b20d5acc71f5fefbe929379504178e1bb7` |
| 12 | `theorem` | [conj_inv](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/conj-inv--f7cb56ecccd70151d739f48c.md) | 87 | `result-track:f7cb56ecccd70151d739f48c6608bd4c3c1c594d8f64a0c5581c43375d1b87c1` |
| 13 | `theorem` | [conj_mul](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/conj-mul--d83a7ed1889c9733455fbf86.md) | 91 | `result-track:d83a7ed1889c9733455fbf86afde4e566d2ca8a849bdef1b7d216a02ca686c6c` |
| 14 | `theorem` | [conj_pow](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/conj-pow--74d82fdf93848cd475d1eeaf.md) | 95 | `result-track:74d82fdf93848cd475d1eeaf07723cf399eba4804100c80bd899d2a8dcfdf07a` |
| 15 | `theorem` | [conj_zpow](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/conj-zpow--b0717f06af9466ea77583510.md) | 101 | `result-track:b0717f06af9466ea775835108771fc3c8e5691138ae5e78f0ffc389f4d8acb88` |
| 16 | `theorem` | [conj_injective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/conj-injective--177558b1be12ec29218266ca.md) | 107 | `result-track:177558b1be12ec29218266ca91fc738013d399ea49e52f8c5d0068317cf38af0` |
| 17 | `def` | [setoid](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/setoid--eaf4f3a9334a163c0b4a6bf0.md) | 117 | `declaration-track:eaf4f3a9334a163c0b4a6bf02f339ed62772bb53703586a4dc547d1d3a657b5b` |
| 18 | `def` | [ConjClasses](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/conjclasses--88d6ff36895ede95d8439b2a.md) | 126 | `declaration-track:88d6ff36895ede95d8439b2a791b39a917c3d474926c74ab3988eb2c1c8cd766` |
| 19 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/mk--f1c192e2c0bd7dc2f84114f5.md) | 136 | `declaration-track:f1c192e2c0bd7dc2f84114f55fcf836e077fa1f3bbc29bc609ee1f6c44d86a29` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/instance--5c349384414824528b81265f.md) | 138 | `declaration-track:5c349384414824528b81265f39da913c0c49c942d7b96cb754c2854b6c4801e8` |
| 21 | `theorem` | [mk_eq_mk_iff_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/mk-eq-mk-iff-isconj--0993a344bdb022bf61658836.md) | 140 | `result-track:0993a344bdb022bf61658836b02af6b6f6221b5b45d4757fb3e411fb7844ec63` |
| 22 | `theorem` | [quotient_mk_eq_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/quotient-mk-eq-mk--01e5f3f43074f1e68d899203.md) | 143 | `result-track:01e5f3f43074f1e68d899203a751dd352087be7209bde7e3d777f85d3491da28` |
| 23 | `theorem` | [quot_mk_eq_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/quot-mk-eq-mk--46fc231b176d132260ed36b3.md) | 146 | `result-track:46fc231b176d132260ed36b3b6bc28a6b381a153885531588588f48b97394537` |
| 24 | `theorem` | [forall_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/forall-isconj--049303f61132def627fd7a71.md) | 149 | `result-track:049303f61132def627fd7a7193378e58499e412130c6632624d8e96cac0fca0d` |
| 25 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/mk-surjective--a63e9541f594b9b999f8c4d1.md) | 152 | `result-track:a63e9541f594b9b999f8c4d1d9f37c06c63c6bef822fe76121c07f1a2212a979` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/instance--9a5b7297955145c5448a1b3b.md) | 155 | `declaration-track:9a5b7297955145c5448a1b3be5878434e34ffd17db1c036c2c00a0a7ac77b564` |
| 27 | `theorem` | [one_eq_mk_one](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/one-eq-mk-one--77c052565eed2279d6542e5e.md) | 158 | `result-track:77c052565eed2279d6542e5ec4b85f5e7e88f19c41e317971e99200c6e9d1604` |
| 28 | `theorem` | [exists_rep](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/exists-rep--6e40921dd999dcbf03c7b44d.md) | 161 | `result-track:6e40921dd999dcbf03c7b44dccc7c8edda399cb728308018b1f7d31b6ffb5fc9` |
| 29 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/map--872bbeb8e662e079383aaaf8.md) | 165 | `declaration-track:872bbeb8e662e079383aaaf8a49e314822a53e5c85eb96d4f7a001d591a64b8e` |
| 30 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/map-surjective--5953840f90fa4bdb5ad0f461.md) | 168 | `result-track:5953840f90fa4bdb5ad0f461e88f8deb1fa184864d1acde69766e2d57977c715` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/instance--9124ed66c2e112aabe53342a.md) | 206 | `declaration-track:9124ed66c2e112aabe53342a96b25bef9d2b86a2a5ada57565cb96e2aec63880` |
| 32 | `theorem` | [mk_injective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/mk-injective--7a7dc6612ecb96ee0062f0cd.md) | 215 | `result-track:7a7dc6612ecb96ee0062f0cd17418a8b32bdbf04c4db63ba119a20ebbd8629d4` |
| 33 | `theorem` | [mk_bijective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/mk-bijective--46a61188fb74ca1a8c1b56a3.md) | 218 | `result-track:46a61188fb74ca1a8c1b56a330d969e162dec262dda390033e58bb350457eb62` |
| 34 | `def` | [mkEquiv](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/mkequiv--8c13f9858385f0cdbac5b6b4.md) | 222 | `declaration-track:8c13f9858385f0cdbac5b6b4df0147da927e6466d1e63832f0fc8e598347f8ec` |
| 35 | `def` | [conjugatesOf](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/conjugatesof--ed313b9beb479ee4e6498776.md) | 237 | `declaration-track:ed313b9beb479ee4e64987765977bf239b8a688f0615344ed68e3ffc107475e6` |
| 36 | `theorem` | [mem_conjugatesOf_self](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/mem-conjugatesof-self--ceafa388a3698f5d4f75ccc2.md) | 240 | `result-track:ceafa388a3698f5d4f75ccc2400de88588db9e1c6104a3c0e263aebbca4ece1d` |
| 37 | `theorem` | [IsConj.conjugatesOf_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj-conjugatesof-eq--64bf88ac895bfd5e4396eedb.md) | 243 | `result-track:64bf88ac895bfd5e4396eedbe12a7c393855bc8402229389eed53e1a2a040cb6` |
| 38 | `theorem` | [isConj_iff_conjugatesOf_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/isconj-iff-conjugatesof-eq--15f77933f3e861c6c25178ea.md) | 246 | `result-track:15f77933f3e861c6c25178ea6d1187fc55c34ba89b9f7afe1ebe0acb2d354a4d` |
| 39 | `def` | [carrier](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/carrier--4927dbf9c16248ddefd8630e.md) | 260 | `declaration-track:4927dbf9c16248ddefd8630ebb9991345e758b781cb4efa049405f0ba3f733d4` |
| 40 | `theorem` | [mem_carrier_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/mem-carrier-mk--03c9b1c77e3d328b7c02a807.md) | 263 | `result-track:03c9b1c77e3d328b7c02a8073045003a86c96bb444e829c6284d155bd7643768` |
| 41 | `theorem` | [mem_carrier_iff_mk_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/mem-carrier-iff-mk-eq--3538bd3301e87ba444aa74f4.md) | 266 | `result-track:3538bd3301e87ba444aa74f43e4452ee01375cf0d0304c8ce71eebe6d3fce134` |
| 42 | `theorem` | [carrier_eq_preimage_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean/declarations/carrier-eq-preimage-mk--d38609b5bf03ec4476512020.md) | 274 | `result-track:d38609b5bf03ec44765120208560df759b89754e56e5d9b643957cb1ad8d602e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
