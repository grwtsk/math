# Verification target: GRWTSK.Algebra.GroupTheory.Abelianization.Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "907ca8c5e20288c48534c8812aed9f7cbb355063",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `907ca8c5e20288c48534c8812aed9f7cbb355063`.

Source path: `GRWTSK/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Rank` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commutator](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/commutator--f1a857bb23005eaa0e831d0d.md) | 47 | `declaration-track:f1a857bb23005eaa0e831d0d69a46bba0f56863570a1e5283e975bdfb7a5aa81` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/instance--0f4be43a5b39466e596c46b0.md) | 51 | `declaration-track:0f4be43a5b39466e596c46b0ef931528e0e66c0d6d945630f85e04048ea03b7b` |
| 3 | `theorem` | [commutator_def](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/commutator-def--86a12720194bc4f1011484b9.md) | 53 | `result-track:86a12720194bc4f1011484b9c75f878750dd9bc383c08987d0dbcbf5f602b1f3` |
| 4 | `theorem` | [commutator_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/commutator-eq-closure--5ba71372fadbd94584333ddc.md) | 56 | `result-track:5ba71372fadbd94584333ddc813bda779fa23a3c02ecf1781977264bf3ca5125` |
| 5 | `theorem` | [commutator_eq_normalClosure](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/commutator-eq-normalclosure--1c021fdfd89508c0478cd5ab.md) | 59 | `result-track:1c021fdfd89508c0478cd5abc5a8a2fd8e4a3f88c629b37f9a8add471d0ef819` |
| 6 | `theorem` | [Subgroup.map_subtype_commutator](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/subgroup-map-subtype-commutator--8e2a521aae7e6361cc01b47b.md) | 63 | `result-track:8e2a521aae7e6361cc01b47bf1f1d84669bf73bc79ea1629323f66f3b4d51b58` |
| 7 | `instance` | [commutator_characteristic](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/commutator-characteristic--61bc50ccb3089efa378439ae.md) | 67 | `declaration-track:61bc50ccb3089efa378439aec86e98c0654e2b7d79c368f73e40f02396088cce` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/instance--2a067cfd6d5555fceb44d362.md) | 70 | `declaration-track:2a067cfd6d5555fceb44d362fb2d58379fbad3cce84ac8a34ed45b079ae958bf` |
| 9 | `theorem` | [rank_commutator_le_card](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/rank-commutator-le-card--8b88d9003f7d103ebf146753.md) | 74 | `result-track:8b88d9003f7d103ebf14675311388246d80fc34ea7eb1b3b2eec52b1a1c7c3d4` |
| 10 | `theorem` | [commutator_centralizer_commutator_le_center](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/commutator-centralizer-commutator-le-center--335eaa79f532341593e5d4cf.md) | 79 | `result-track:335eaa79f532341593e5d4cf01797da2c2a0b64c10c2a3234f1489f40048faa7` |
| 11 | `theorem` | [mem_commutatorSet_of_isConj_sq](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/mem-commutatorset-of-isconj-sq--1fd780936301269ff98817fc.md) | 90 | `result-track:1fd780936301269ff98817fc7456580829c9d0214c6053ab4299bc1fa405f42e` |
| 12 | `theorem` | [map_commutator_eq](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/map-commutator-eq--a3eacb81ae134b4c9980e0cd.md) | 97 | `result-track:a3eacb81ae134b4c9980e0cdc86df64791c62748a24ee1153a8de23a393cd22a` |
| 13 | `def` | [Abelianization](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/abelianization--2a34442c0d649183b31b65cf.md) | 105 | `declaration-track:2a34442c0d649183b31b65cf168f06d643079866ffc043bb0f61a87754626511` |
| 14 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/commgroup--92698b8a141d36db1cba0c4d.md) | 112 | `declaration-track:92698b8a141d36db1cba0c4d9cbbd65c814ac262808548d82291b3c72dcce0eb` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/instance--925c4efa90db7249c2fd8c3e.md) | 120 | `declaration-track:925c4efa90db7249c2fd8c3e5ef55be4f07359a7cf0380adbb14128f31800b6c` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/instance--44f00d13b05bb37c1dfb179f.md) | 123 | `declaration-track:44f00d13b05bb37c1dfb179fc60a490b1bcf0cc6aa8ef5d0232c7fadfc97ce20` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/instance--4bf57aa2b005a7d6aef2078b.md) | 125 | `declaration-track:4bf57aa2b005a7d6aef2078b9ad44a957ff8167ce8111077da5c40bf4e72b538` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/instance--7817ca9df5e922b75cb1e561.md) | 128 | `declaration-track:7817ca9df5e922b75cb1e561ce76d283c4568db3f98443cbe6838597bba29e15` |
| 19 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/of--6e3322ad850c9e713f837311.md) | 134 | `declaration-track:6e3322ad850c9e713f8373110af14f443bfac32e784da0f2ec1dcb913bec1104` |
| 20 | `theorem` | [mk_eq_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/mk-eq-of--e12b21bca162093edc2ce0c7.md) | 140 | `result-track:e12b21bca162093edc2ce0c7f88294ca8a0c6fd77ae98dd7181ece665ca55c0b` |
| 21 | `theorem` | [ker_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/ker-of--325406a771e6bcdc040db82f.md) | 145 | `result-track:325406a771e6bcdc040db82f0d775c95803dd5a29efe5cdd71bb994114615720` |
| 22 | `theorem` | [commutator_subset_ker](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/commutator-subset-ker--2b5cc47ed66f657566588861.md) | 155 | `result-track:2b5cc47ed66f657566588861c30c1499f6f2ca3a06e24120529c5233c40fcf14` |
| 23 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/lift--0a0d8ecd6293e3d0017098b1.md) | 162 | `declaration-track:0a0d8ecd6293e3d0017098b111a519124231832236b6ab0917586433d85d7ac0` |
| 24 | `theorem` | [lift.of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/lift-of--99b7649d1d8af2e440e87e98.md) | 169 | `result-track:99b7649d1d8af2e440e87e986e17797566ef62b7f1fb5623ad8ab8c6e9be198f` |
| 25 | `theorem` | [lift.unique](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/lift-unique--81735156c0e907d9a2329137.md) | 172 | `result-track:81735156c0e907d9a2329137b8915d4b651583db4832131580177af4caa5e51d` |
| 26 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/lift-of--ea8dd0b69cfbab07136acf41.md) | 179 | `result-track:ea8dd0b69cfbab07136acf41dbe7ca8f7ff24a59f05a762493268256581f6c56` |
| 27 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/hom-ext--bfa34283fedf95bd1b1e71aa.md) | 188 | `result-track:bfa34283fedf95bd1b1e71aa72704ca95626bd031220fc547001620c02b85103` |
| 28 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/map--7a68fedd1ba2de1fb9379ad2.md) | 196 | `declaration-track:7a68fedd1ba2de1fb9379ad28165ddbd48c1bdf6a745047b4ef3320ab2066f30` |
| 29 | `theorem` | [lift_of_comp](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/lift-of-comp--91849f999a5567939266497c.md) | 200 | `result-track:91849f999a5567939266497c5dbd5d94fe378f6fe32393206ab7025643839a8c` |
| 30 | `theorem` | [map_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/map-of--e64d44286f5f34561cbc7c14.md) | 204 | `result-track:e64d44286f5f34561cbc7c142dfa9aa01c78155113f43e3a306b1f619eb373ef` |
| 31 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/map-id--2e0777f0e768407cf2f25d6f.md) | 208 | `result-track:2e0777f0e768407cf2f25d6fc36aeefe99c03478ea1de67253bb1fb7786eeea8` |
| 32 | `theorem` | [map_comp](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/map-comp--e5b121307d003c4852564d71.md) | 212 | `result-track:e5b121307d003c4852564d71f7a357a940ab5570f43cfa04e8b83eb8edec3229` |
| 33 | `theorem` | [map_map_apply](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/map-map-apply--1850c73b21cc4e17ffdcd60b.md) | 216 | `result-track:1850c73b21cc4e17ffdcd60b9c314659bd9a0a1b36e5ce62130a55d8237a77d5` |
| 34 | `def` | [MulEquiv.abelianizationCongr](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/mulequiv-abelianizationcongr--72a18e2ef803889ecd60c4cf.md) | 230 | `declaration-track:72a18e2ef803889ecd60c4cfca206f8785b35a503e0d37a7d109fe0d8e56708f` |
| 35 | `theorem` | [abelianizationCongr_of](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/abelianizationcongr-of--211410565318c0199eeef9a1.md) | 242 | `result-track:211410565318c0199eeef9a1033922193d74256cf24705f8b519085652b21b45` |
| 36 | `theorem` | [abelianizationCongr_refl](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/abelianizationcongr-refl--1e00889d31a61d0d00ec8b6c.md) | 247 | `result-track:1e00889d31a61d0d00ec8b6cd7cae429d9f1306e0be93c086a58cb8458a242b4` |
| 37 | `theorem` | [abelianizationCongr_symm](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/abelianizationcongr-symm--7d277a3ce77a13af59ff8014.md) | 252 | `result-track:7d277a3ce77a13af59ff8014a81625064e62dfb2e555884acf79da4dce81bec0` |
| 38 | `theorem` | [abelianizationCongr_trans](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/abelianizationcongr-trans--df0dab849aa046dbff21d0c9.md) | 257 | `result-track:df0dab849aa046dbff21d0c9942f61e08f295e8f0b865ee495e8c30cf6b5a1d8` |
| 39 | `def` | [Abelianization.equivOfComm](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/abelianization-equivofcomm--9bc2d32226ab17b10044dc0b.md) | 265 | `declaration-track:9bc2d32226ab17b10044dc0b675db19aaf726e008f0b5bec96c7750609fc3667` |
| 40 | `def` | [commutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/commutatorrepresentatives--f87b87d2c2cffe825041a91f.md) | 279 | `declaration-track:f87b87d2c2cffe825041a91f3be93922d11a9610e341da8b91b4c39f1df677c2` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/instance--0cb0c80159f7df23bb460dcd.md) | 282 | `declaration-track:0cb0c80159f7df23bb460dcd4525524d4e37fa27f48583cb2bf9f8a362727c29` |
| 42 | `def` | [closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/closurecommutatorrepresentatives--14fbee09ab5ec2a891ec6abf.md) | 286 | `declaration-track:14fbee09ab5ec2a891ec6abf31547a136892b51c4429046771751bbcfda4e9f5` |
| 43 | `instance` | [closureCommutatorRepresentatives_fg](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/closurecommutatorrepresentatives-fg--dc8153de1bd873c5744d9c90.md) | 289 | `declaration-track:dc8153de1bd873c5744d9c90ea174d1bbed52cc3ccebf3dabd7257cb325f2b41` |
| 44 | `theorem` | [rank_closureCommutatorRepresentatives_le](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/rank-closurecommutatorrepresentatives-le--65a2d47d417fe3c6bb8bcd94.md) | 293 | `result-track:65a2d47d417fe3c6bb8bcd94a041209c2afc39d4923c40553ccc0b7b6b0791e6` |
| 45 | `theorem` | [image_commutatorSet_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/image-commutatorset-closurecommutatorrepresentatives--4bec1285bf29ceac085b337f.md) | 302 | `result-track:4bec1285bf29ceac085b337fc50329e9ce94b9a52452cc8a1916a55c173109d5` |
| 46 | `theorem` | [card_commutatorSet_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/card-commutatorset-closurecommutatorrepresentatives--c6f14def18278f947c0e2f22.md) | 315 | `result-track:c6f14def18278f947c0e2f22477fab5d3a13c6e6c0b461e6be85d70e487c2d56` |
| 47 | `theorem` | [card_commutator_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/card-commutator-closurecommutatorrepresentatives--04e5dcaefd9f5d4fd624af6c.md) | 320 | `result-track:04e5dcaefd9f5d4fd624af6cbcd03303b9bd31828c885a99bb9299a95a51a8a0` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/instance--c19c2aebd7bf14463e9c0c97.md) | 326 | `declaration-track:c19c2aebd7bf14463e9c0c972b699d9367185610d1ee4202b806e751d9524d72` |
| 49 | `theorem` | [Subgroup.Normal.quotient_commutative_iff_commutator_le](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/subgroup-normal-quotient-commutative-iff-commutator-le--cd20094961a19858b85d0472.md) | 338 | `result-track:cd20094961a19858b85d047201eef2670919e896c7d2f1d09457f3b6f381693e` |
| 50 | `theorem` | [Subgroup.Normal.commutator_le_of_self_sup_commutative_eq_top](../../../../../mathematics/Algebra/GroupTheory/Abelianization/Variante174112ef68177fae1d852e6ccce952a647b7d809cd5e5d67469d55f79fc33ff.lean/declarations/subgroup-normal-commutator-le-of-self-sup-commutative-eq-top--97fa00765118b6da82cd2658.md) | 362 | `result-track:97fa00765118b6da82cd2658548ce9b31ceccd26dc39bd4d2e3a34935b7bcec7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
