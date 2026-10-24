# Verification target: GRWTSK.Algebra.GroupTheory.SemidirectProduct.Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eee6b88295a2404cc78250bccb8979a79ca1821",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eee6b88295a2404cc78250bccb8979a79ca1821`.

Source path: `GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Complement` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemidirectProduct](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/semidirectproduct--df7dcbe78177f869d192a1ca.md) | 50 | `declaration-track:df7dcbe78177f869d192a1caf5bf4f512b720e7c3cce575ad991b4db723a5fd2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/instance--bc073103d997ed8ce121fddf.md) | 68 | `declaration-track:bc073103d997ed8ce121fddfb832dc1cced450287ec27cca9fdf9093aff5d599` |
| 3 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/mul-def--e83cc6a0a0faba74dab9ae60.md) | 71 | `result-track:e83cc6a0a0faba74dab9ae60743d97a8e6278e42dbd03079ea093344c5c46f5b` |
| 4 | `theorem` | [mul_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/mul-left--b8baf43eeaf9bbedb4c4a979.md) | 74 | `result-track:b8baf43eeaf9bbedb4c4a979bb7173f43e8d664ce60030bda703cc703d5e191f` |
| 5 | `theorem` | [mul_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/mul-right--03076cf85d01bdb21a095056.md) | 77 | `result-track:03076cf85d01bdb21a095056370bf4dff3109a43705e7b8b10c003a07c14ac53` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/instance--54d08845930ce58fc02261e1.md) | 79 | `declaration-track:54d08845930ce58fc02261e1c2712188e84e94d9ef9f460c379c115f6ba3e74e` |
| 7 | `theorem` | [one_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/one-left--1b75ba3bb93069fd92e6f331.md) | 82 | `result-track:1b75ba3bb93069fd92e6f33138f77b6982206e575617683ee2507df4da639ff6` |
| 8 | `theorem` | [one_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/one-right--caa8a9f43c5b61aceb181824.md) | 85 | `result-track:caa8a9f43c5b61aceb18182463e60edc58c7b361d67ddad8c219d284f012263f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/instance--0d52d24ea3537c884cc029c7.md) | 87 | `declaration-track:0d52d24ea3537c884cc029c7f9c92bf29832cfb85363d85b98bad21181083df0` |
| 10 | `theorem` | [inv_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/inv-left--e36ac1f457f86ba3a8e201f5.md) | 91 | `result-track:e36ac1f457f86ba3a8e201f5c6d57be919576994f24eaf2df579e4a67cf6d71f` |
| 11 | `theorem` | [inv_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/inv-right--ba746bded4930a983a2b3b37.md) | 94 | `result-track:ba746bded4930a983a2b3b37260428507a1b907ce18c91cea8adf2955be1b163` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/instance--cdeaad5a5b51bfaadf0812b8.md) | 96 | `declaration-track:cdeaad5a5b51bfaadf0812b876147ff40cabeb7b6ea5612474e08ca1ab94700e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/instance--0c0db69963f48afc63cd9114.md) | 102 | `declaration-track:0c0db69963f48afc63cd91141b20bbdf35f691872a44191752a9c7ea3c06db3c` |
| 14 | `def` | [inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/inl--75a3e885b163bc1c2142610e.md) | 105 | `declaration-track:75a3e885b163bc1c2142610e97323fd74ef7d5a04c8004863b3d06ba642c0fbc` |
| 15 | `theorem` | [left_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/left-inl--bbcb5f30c147f292ce50fd5c.md) | 112 | `result-track:bbcb5f30c147f292ce50fd5cd9a12fd87c532e4d006afe2d538e8ad890b17d26` |
| 16 | `theorem` | [right_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/right-inl--8c3ebf4e3804813c977c2b05.md) | 115 | `result-track:8c3ebf4e3804813c977c2b05d7f2aea1a70b756fed942e3c1f8f91927185a889` |
| 17 | `theorem` | [inl_injective](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/inl-injective--f2dd0d146dcde44c03a2ee90.md) | 117 | `result-track:f2dd0d146dcde44c03a2ee905bb2d3b235ebaed3ee094f715a25e65851ac47e2` |
| 18 | `theorem` | [inl_inj](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/inl-inj--af23b51f156ef741e97f3393.md) | 121 | `result-track:af23b51f156ef741e97f3393b8598f2de8c7cd3651002191a821873a7a237b80` |
| 19 | `def` | [inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/inr--59d993946c3e46930be2f938.md) | 125 | `declaration-track:59d993946c3e46930be2f938d42a11e988ded7ba2cf4e021296307b7366e0db3` |
| 20 | `theorem` | [left_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/left-inr--bb20d416755029653a8acaa7.md) | 131 | `result-track:bb20d416755029653a8acaa71ef8eb7d12a5874bc157b3005778e19f5382990d` |
| 21 | `theorem` | [right_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/right-inr--45796a3df3b6d2a9e6eda8dc.md) | 134 | `result-track:45796a3df3b6d2a9e6eda8dc182d9618661f750b066e9167b44da0fe1dbe56c3` |
| 22 | `theorem` | [inr_injective](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/inr-injective--b37f982d4cd49d4f40fb002e.md) | 136 | `result-track:b37f982d4cd49d4f40fb002e672226ad9f5d890fc507634e3b8c87fed39c60d5` |
| 23 | `theorem` | [inr_inj](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/inr-inj--45baf446c4dad5205b721096.md) | 140 | `result-track:45baf446c4dad5205b7210964aa9deb335bbe9ce7329a6cd1ac56cc4a6ece97a` |
| 24 | `theorem` | [inl_aut](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/inl-aut--2de66e9412c07d9ab530ac68.md) | 143 | `result-track:2de66e9412c07d9ab530ac6834cf4a3b3328de22a55dbf5dadcdb463a9a759a0` |
| 25 | `theorem` | [inl_aut_inv](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/inl-aut-inv--566ef0d83daf142c4904ad27.md) | 146 | `result-track:566ef0d83daf142c4904ad270b3353cd0fe3597eba983d58d5f28eb636b071a2` |
| 26 | `theorem` | [mk_eq_inl_mul_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/mk-eq-inl-mul-inr--e36f8203f2126650989390af.md) | 150 | `result-track:e36f8203f2126650989390af9cae2ab7a2c9070cf0e785b1d3bd33fabc4e579c` |
| 27 | `theorem` | [inl_left_mul_inr_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/inl-left-mul-inr-right--d677e4bbfea1c773151447b1.md) | 153 | `result-track:d677e4bbfea1c773151447b1b1f8f01a4c137c4dd87f8019f5c91018b9d6f080` |
| 28 | `def` | [rightHom](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/righthom--29dc550ebe08066df79ba869.md) | 156 | `declaration-track:29dc550ebe08066df79ba869176950b4a6ae01a8ae1053fa7b5f6d4cc62696a6` |
| 29 | `theorem` | [rightHom_eq_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/righthom-eq-right--4876566a610aa289cd1d4163.md) | 162 | `result-track:4876566a610aa289cd1d41638c15da757194d641e3c876bb6797d990dd421d00` |
| 30 | `theorem` | [rightHom_comp_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/righthom-comp-inl--6c6b5dfb8700e1707fb16053.md) | 165 | `result-track:6c6b5dfb8700e1707fb160534ab845473139c54198e45840a94639bfbf4faf6f` |
| 31 | `theorem` | [rightHom_comp_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/righthom-comp-inr--f0c9413f204eaf940dd045cb.md) | 168 | `result-track:f0c9413f204eaf940dd045cbdf634044059dd63e5302a708b3748a85af26db43` |
| 32 | `theorem` | [rightHom_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/righthom-inl--ed6d627f79f3dc8f30dc9134.md) | 172 | `result-track:ed6d627f79f3dc8f30dc9134249ac0e83948bc610a4f9506383bf56ba6822132` |
| 33 | `theorem` | [rightHom_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/righthom-inr--cb8d745ffc5126c21f87198e.md) | 175 | `result-track:cb8d745ffc5126c21f87198ecebdbcc53779f1af0929e35d35f6675da5ecb031` |
| 34 | `theorem` | [rightHom_surjective](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/righthom-surjective--77c283ee3639ebacf853eb90.md) | 177 | `result-track:77c283ee3639ebacf853eb900285837edb58efc75b4fd23761502c244a2f4017` |
| 35 | `theorem` | [range_inl_eq_ker_rightHom](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/range-inl-eq-ker-righthom--1c38d5327249a0894776609c.md) | 180 | `result-track:1c38d5327249a0894776609c43a5d2273ffe29af922c134b37462a40ca32b656` |
| 36 | `def` | [equivProd](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/equivprod--3fa3320a09f8af0bced7a4c1.md) | 186 | `declaration-track:3fa3320a09f8af0bced7a4c1e779afdf62164e60eedf20e16a0edd646a986f12` |
| 37 | `def` | [mulEquivProd](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/mulequivprod--024ef4d85fa1be6c49e17585.md) | 195 | `declaration-track:024ef4d85fa1be6c49e17585ba634b1b752e4efe75c183e45e1ad0338077a5cf` |
| 38 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/lift--53a1281c2bff21415080a96f.md) | 204 | `declaration-track:53a1281c2bff21415080a96facb1466fa17eb3fc6c72e7a6d77d295aca8894a2` |
| 39 | `theorem` | [lift_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/lift-inl--9981bb1093bdbeca59e4e392.md) | 213 | `result-track:9981bb1093bdbeca59e4e392a6ea04be5f029738af8bed6e9e8cb07564234d24` |
| 40 | `theorem` | [lift_comp_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/lift-comp-inl--ec14b181d00e26ddd1f34526.md) | 216 | `result-track:ec14b181d00e26ddd1f34526ea06c02f8cd5a3d2643777760a024423fd1a129e` |
| 41 | `theorem` | [lift_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/lift-inr--398dbdb23db273b417338905.md) | 219 | `result-track:398dbdb23db273b4173389055f9325245d2cb68e68ef01e1e63b685535b9aa07` |
| 42 | `theorem` | [lift_comp_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/lift-comp-inr--6f5ee232d48f20458ede3243.md) | 222 | `result-track:6f5ee232d48f20458ede324363f3ff4f784c695fc708ccc67bb6c3be59a9e2bb` |
| 43 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/lift-unique--dc02fc234a2ed855803c79ac.md) | 224 | `result-track:dc02fc234a2ed855803c79ac3b049eb9b7407812a5db4f28473b653814be7f0e` |
| 44 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/hom-ext--2d4e709c4d81ca9229559a47.md) | 232 | `result-track:2d4e709c4d81ca9229559a47409bbeac5d511335e2f0e3a2bde7a69d3a367758` |
| 45 | `def` | [monoidHomSubgroup](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/monoidhomsubgroup--57e499d2242642dafcb04bd0.md) | 239 | `declaration-track:57e499d2242642dafcb04bd0d4a04f33a4a9066325ab03303d7a44896e2c36c2` |
| 46 | `def` | [mulEquivSubgroup](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/mulequivsubgroup--35c082912c2e25090b8e6613.md) | 245 | `declaration-track:35c082912c2e25090b8e6613854fb5b25c67fa448043e32d0a71aebe7fe66156` |
| 47 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/map--366baebaf303a98b44c98c9f.md) | 260 | `declaration-track:366baebaf303a98b44c98c9fe54e679fdc5c40d3a65fde4234eeb72c4acf3052` |
| 48 | `theorem` | [map_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/map-left--c43c3cfb144dd9854b0ffc77.md) | 268 | `result-track:c43c3cfb144dd9854b0ffc77dbe3d492c7d0b9731309b0231992a3ad33029152` |
| 49 | `theorem` | [map_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/map-right--8e6b99923808a8067d30a78c.md) | 271 | `result-track:8e6b99923808a8067d30a78ca519d03514f2397403056011a64ebdc2b1a3e2b8` |
| 50 | `theorem` | [rightHom_comp_map](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/righthom-comp-map--eca7bc8031ee52f3ae70aed4.md) | 274 | `result-track:eca7bc8031ee52f3ae70aed453cdb47bab0f38758cc5dd93fc6b6c2c9afcf7d5` |
| 51 | `theorem` | [map_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/map-inl--1655e48befb63234aa911bf8.md) | 277 | `result-track:1655e48befb63234aa911bf81ecaa20d70f302e551ca433e12ef2582cbdfa7a3` |
| 52 | `theorem` | [map_comp_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/map-comp-inl--e3fd902048e9fd41166ca0e9.md) | 280 | `result-track:e3fd902048e9fd41166ca0e97081cce0ef9ae5832a2f7d040b352067c922084b` |
| 53 | `theorem` | [map_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/map-inr--5902f926ce8a31af227ce955.md) | 283 | `result-track:5902f926ce8a31af227ce9557f703b372ad2dfea4b2c6c5c1efcf90779c14c40` |
| 54 | `theorem` | [map_comp_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/map-comp-inr--9d49a6b9842c5be609333f4d.md) | 286 | `result-track:9d49a6b9842c5be609333f4dcad19e3847307c079f90bdaf58ea967349f03028` |
| 55 | `def` | [congr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/congr--add1107ab9f676b4108cdca1.md) | 300 | `declaration-track:add1107ab9f676b4108cdca1298ad0e9276c26bf8dc8b79c3e36fc939087840b` |
| 56 | `def` | [congr'](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/congr--9883b3038aaaacbca6265cf4.md) | 311 | `declaration-track:9883b3038aaaacbca6265cf474cf956533879e90e33608e17e09dee265529ac0` |
| 57 | `lemma` | [card](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/declarations/card--b19ece44d8f0fd4a7bf8645b.md) | 318 | `result-track:b19ece44d8f0fd4a7bf8645b4fb14341515abaeb8c22570acafec82521f9b906` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
