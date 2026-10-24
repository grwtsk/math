# Verification target: GRWTSK.Algebra.LinearAlgebra.CharacterModule.Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82cd0054df8d1ca85be58fab8aabe5edc300b5ce",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82cd0054df8d1ca85be58fab8aabe5edc300b5ce`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Injective` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CharacterModule](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/charactermodule--bad1d34f991ca5f1b1ee4aaa.md) | 51 | `declaration-track:bad1d34f991ca5f1b1ee4aaafedc37b7154ce99df4b68d6991107153e0b670dc` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/instance--4c4011373836d9034ca06988.md) | 55 | `declaration-track:4c4011373836d9034ca069880bc9031438e69bfa4d11402f0687c9c586d73e7e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/instance--572fedf97d5b70beb9ba2a11.md) | 59 | `declaration-track:572fedf97d5b70beb9ba2a11a4e5f026de620b020ab847f9389d4a177b45600f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/instance--1327475937d37515684b08ca.md) | 63 | `declaration-track:1327475937d37515684b08ca56552df491553f14c15aeff09c73556631ce4b3c` |
| 5 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/ext--a7ce63e59f204a72ae6715f0.md) | 66 | `result-track:a7ce63e59f204a72ae6715f0ac25f8e39c08c25f9a88ab42cee20046da6cbe05` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/instance--914a2dd09cb5ad080d58b9e5.md) | 72 | `declaration-track:914a2dd09cb5ad080d58b9e52662a6fb03f003780a3151f8126d9e18f8a54514` |
| 7 | `lemma` | [smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/smul-apply--3f98a2c16e934e4d384d94e9.md) | 77 | `result-track:3f98a2c16e934e4d384d94e9872cd870256169d290f5350b2e2de8b261387c88` |
| 8 | `def` | [dual](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/dual--7d1379def2fa006bbaa8bc65.md) | 83 | `declaration-track:7d1379def2fa006bbaa8bc651ecfc1e8ddfb4dc9d7bb687d22c109734e2942c8` |
| 9 | `lemma` | [dual_zero](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/dual-zero--8dc9f8df180fd225e97ffba9.md) | 89 | `result-track:8dc9f8df180fd225e97ffba928a256a544cb9693584a47cb6edf390c815f40e1` |
| 10 | `lemma` | [dual_comp](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/dual-comp--9fcaaeacd628b2ce289cb8b8.md) | 93 | `result-track:9fcaaeacd628b2ce289cb8b8bc3bbac770d090e3a9987d26759cc107271e82e6` |
| 11 | `lemma` | [dual_injective_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/dual-injective-of-surjective--bc1cb6c77897206e49f33ba5.md) | 98 | `result-track:bc1cb6c77897206e49f33ba5dff87aab9f0bac376aaf7fee271e4c81599d669c` |
| 12 | `lemma` | [dual_surjective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/dual-surjective-of-injective--d3c999364c1ec862556e90ca.md) | 106 | `result-track:d3c999364c1ec862556e90ca54e06ce1f82fe85846529c2cf0c62703ad069c16` |
| 13 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/congr--656446b9edab70c8807e2168.md) | 113 | `declaration-track:656446b9edab70c8807e2168bb41387ea9557afddf1430a4f254600770144e72` |
| 14 | `def` | [uncurry](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/uncurry--14f2cb83de3519d32ad187d0.md) | 123 | `declaration-track:14f2cb83de3519d32ad187d01d34f10ada52f19bfa1c19089ec9e9989bbabf37` |
| 15 | `def` | [curry](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/curry--51579af44a8440273d1cf62b.md) | 133 | `declaration-track:51579af44a8440273d1cf62b88dc4f6aef33e6cb7b4dc1e3010383312129eee6` |
| 16 | `def` | [homEquiv](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/homequiv--67e2f68272a1bd9c97929059.md) | 146 | `declaration-track:67e2f68272a1bd9c97929059a5d949b4a7f275aaa465f989debf4a9ae2653b8c` |
| 17 | `theorem` | [dual_rTensor_conj_homEquiv](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/dual-rtensor-conj-homequiv--972bff11a36fe571d1097735.md) | 150 | `result-track:972bff11a36fe571d1097735eed75664e6c8f9137e7cdd53eb185f5e99be45a4` |
| 18 | `abbrev` | [int](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/int--43d0164cfe81cec82cc19ded.md) | 158 | `declaration-track:43d0164cfe81cec82cc19dedd0a8a36d6faa76a5422436ffe90cc4ce5418f047` |
| 19 | `abbrev` | [int.divByNat](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/int-divbynat--23c913776d0611fe1a9da3d0.md) | 161 | `declaration-track:23c913776d0611fe1a9da3d024b7a17c9dfa219445790a83b12734c9098c1d6d` |
| 20 | `lemma` | [int.divByNat_self](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/int-divbynat-self--c55fce2987a7adcf7f400dad.md) | 164 | `result-track:c55fce2987a7adcf7f400dad6cff78a2a86030db933b87a28220d231c09909a0` |
| 21 | `def` | [intSpanEquivQuotAddOrderOf](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/intspanequivquotaddorderof--b18a57e975651bf5986a8df1.md) | 175 | `declaration-track:b18a57e975651bf5986a8df1741c6f640ba4297a0ca8568a7b7ede1053efdb28` |
| 22 | `lemma` | [intSpanEquivQuotAddOrderOf_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/intspanequivquotaddorderof-apply-self--71c83c25ceda178020ebe153.md) | 184 | `result-track:71c83c25ceda178020ebe1536575954221cbe65d052a642da5007e57bf1877ca` |
| 23 | `def` | [ofSpanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/ofspansingleton--47af9ef3024acc38a2924a86.md) | 194 | `declaration-track:47af9ef3024acc38a2924a8697cecd59f082c85a88ff8ee21c032e5be90f3a4d` |
| 24 | `lemma` | [eq_zero_of_ofSpanSingleton_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/eq-zero-of-ofspansingleton-apply-self--0863e4d4df8d159359d083b9.md) | 204 | `result-track:0863e4d4df8d159359d083b99e3c0d65d79e0d0f0595907f4d9f06ef974a56c5` |
| 25 | `lemma` | [exists_character_apply_ne_zero_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/exists-character-apply-ne-zero-of-ne-zero--6447556564e4dcc3e721cb43.md) | 220 | `result-track:6447556564e4dcc3e721cb436ff28e36ec37c671e9ac63d2cbcdd038cd03bdc2` |
| 26 | `lemma` | [eq_zero_of_character_apply](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/eq-zero-of-character-apply--b3749995d6ea89eed2f45d9c.md) | 225 | `result-track:b3749995d6ea89eed2f45d9cc88d5ee54a02021b40b900b89088b87ed6229e65` |
| 27 | `lemma` | [dual_surjective_iff_injective](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/dual-surjective-iff-injective--b572f3a2c8b3720cf86c0ed1.md) | 230 | `result-track:b572f3a2c8b3720cf86c0ed1f93a85083dbe1191a5b05396452c4e4ba3a5cb98` |
| 28 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.CharacterModule.Variant4a2b3c6bddd4cf88649420d0b054ff6ed5cb711125e4942505ab8d6c247fe9ea.rTensor_injective_iff_lcomp_surjective](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/root-grwtsk-algebra-linearalgebra-charactermodule-variant4a2b3c6bddd4cf8--4d5293e8887822a5b4d34be8.md) | 236 | `result-track:4d5293e8887822a5b4d34be8819561d0700f9b64d942af10a7f27d4a62c1a80c` |
| 29 | `lemma` | [surjective_of_dual_injective](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/surjective-of-dual-injective--d0b3ab9a4df467f2bbb3a22f.md) | 240 | `result-track:d0b3ab9a4df467f2bbb3a22ff154ee4b6d8b8a166e4f7f073926cc6453bb0314` |
| 30 | `lemma` | [dual_injective_iff_surjective](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/dual-injective-iff-surjective--4640a0e30c42a1b1e92b4460.md) | 250 | `result-track:4640a0e30c42a1b1e92b4460b1dc526487835cc2f68fe1976f7129a5b764acf3` |
| 31 | `lemma` | [dual_bijective_iff_bijective](../../../../../mathematics/Algebra/LinearAlgebra/CharacterModule/Variantd98f49b2e8cd6bf1ab1f0c11464cd8c1eb6c2958b07d8954b58f74d73acf313b.lean/declarations/dual-bijective-iff-bijective--988d52a2ce97b2c72d7626c0.md) | 254 | `result-track:988d52a2ce97b2c72d7626c0b0fd024c6c18c575f9af22dc2ae02193245612fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
