# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bb5419f9bdd0bc9b6295ce0892c11102b851a25",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bb5419f9bdd0bc9b6295ce0892c11102b851a25`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/comphauslike--2655ee25022bfa952774835f.md) | 79 | `declaration-track:2655ee25022bfa952774835fd50db14d570ab5849d153dd2f9d8d76b5eddd50e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/instance--53a557bd2738c7d148f95d2f.md) | 93 | `declaration-track:53a557bd2738c7d148f95d2f57b7de54d5f32fccb836e6c8ccaea1bf830d7261` |
| 3 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/category--ea20a3f3425bca293242d884.md) | 96 | `declaration-track:ea20a3f3425bca293242d884fc55248fbd7f90662b0d9f73c4abc05c97e2efb6` |
| 4 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/concretecategory--5216d46edc510791978944a5.md) | 99 | `declaration-track:5216d46edc510791978944a55cedc7439a55d9640fc2525278c6bfea89273476` |
| 5 | `instance` | [hasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/hasforget--a6d3a068e3a03d2e168d1990.md) | 102 | `declaration-track:a6d3a068e3a03d2e168d1990fcd766ed82d1e7c8a869f960d8049288ffdf0842` |
| 6 | `class` | [HasProp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/hasprop--5602deb77fa175b2eaf9ff76.md) | 108 | `declaration-track:5602deb77fa175b2eaf9ff76b6ab97924645518bca382a089dfc9d88107a26b4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/instance--4b30c351ae957bc3154f58a6.md) | 111 | `declaration-track:4b30c351ae957bc3154f58a698986f4b1261b6028f89424017730478fe72a95b` |
| 8 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/of--6dd62aaf685724e9c4df61b1.md) | 118 | `declaration-track:6dd62aaf685724e9c4df61b1674874d23a81dc4baec4dab3389c792b4680e898` |
| 9 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/coe-of--efcaa4de69003b6c36f07e14.md) | 124 | `result-track:efcaa4de69003b6c36f07e14c3692ec76d9787afdd986d596cb33ca33f0d6f1f` |
| 10 | `theorem` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/coe-id--0373eca0cdc5b0557e903db9.md) | 127 | `result-track:0373eca0cdc5b0557e903db93ff8927e6c6f8998757bc72156170321e2def592` |
| 11 | `theorem` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/coe-comp--579e89c4ed2ba04f65960a08.md) | 131 | `result-track:579e89c4ed2ba04f65960a086aa4c88be32cc3b9e75b106d05ed92ad0fb3548c` |
| 12 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/ofhom--eb3cef402ea22a1d611c45a8.md) | 141 | `declaration-track:eb3cef402ea22a1d611c45a841dc73cd21351193e9e90fb90240c285c366ab2b` |
| 13 | `lemma` | [hom_ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/hom-ofhom--0cfabb0d01ad9d174f969b15.md) | 143 | `result-track:0cfabb0d01ad9d174f969b156fa249c2865120ba6c2c4a137288b194fa6ac5ad` |
| 14 | `lemma` | [ofHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/ofhom-id--2612ab84c095c7151ee243eb.md) | 145 | `result-track:2612ab84c095c7151ee243eb0a3c265b3da612fa6da80809cb55a2ac84ed17a5` |
| 15 | `lemma` | [ofHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/ofhom-comp--7aa6168d05cf5a875a2f6f98.md) | 147 | `result-track:7aa6168d05cf5a875a2f6f984c2890c5206bf32f18b18208d94358ee94d0a376` |
| 16 | `def` | [toCompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/tocomphauslike--d3b1c771168314ef8e2a55a5.md) | 156 | `declaration-track:d3b1c771168314ef8e2a55a59d36da561e882394e42ef5171d2d7245a69fccaf` |
| 17 | `def` | [fullyFaithfulToCompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/fullyfaithfultocomphauslike--031bb1abc84427ff3a0db590.md) | 169 | `declaration-track:031bb1abc84427ff3a0db5909e6c8133811bcadb05aa6059c1200f1190d3bd2b` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/instance--0f1f95074f4337c14b3348cd.md) | 172 | `declaration-track:0f1f95074f4337c14b3348cdf6ca5781bb01899214194917dd64dc03e75bc72c` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/instance--3605d3e6694756f341bdea36.md) | 174 | `declaration-track:3605d3e6694756f341bdea36c6901871c53d624ee29cfb48a980260cd3f84c2f` |
| 20 | `def` | [compHausLikeToTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/comphausliketotop--fe799095c9bdae24ac0fa9d9.md) | 182 | `declaration-track:fe799095c9bdae24ac0fa9d97ecfbda20fb56f5b02147101e88b10582233379d` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/example--9bee60e85c61269e40868a7a.md) | 187 | `declaration-track:9bee60e85c61269e40868a7a3410764cc912cacf59fda769228c7a34a38e1440` |
| 22 | `def` | [fullyFaithfulCompHausLikeToTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/fullyfaithfulcomphausliketotop--1e3cb17f90193f85c0a22b2c.md) | 191 | `declaration-track:1e3cb17f90193f85c0a22b2cec2327bc6e33a77bf19223f775354ab5c9ad7529` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/instance--647c682c0e5c1a4dd68406ba.md) | 194 | `declaration-track:647c682c0e5c1a4dd68406ba74a410106727f4807edd9a9bbbdef47272182c39` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/instance--9f429cbb75368f1468160b7d.md) | 197 | `declaration-track:9f429cbb75368f1468160b7dc5ae35bcc98a204fd42016dca70169df30b6ca81` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/instance--f2f5c8b5708bacd41f9e6877.md) | 200 | `declaration-track:f2f5c8b5708bacd41f9e68775ad7800c68ddb8a14391c0acc35481571a559022` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/instance--dfa6b99f3f3f94ce5d70b856.md) | 203 | `declaration-track:dfa6b99f3f3f94ce5d70b8564fd8319727db4c43da989d9f06becd9e9551d213` |
| 27 | `theorem` | [epi_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/epi-of-surjective--60e7ebcbc5d55c1dd959d5c4.md) | 208 | `result-track:60e7ebcbc5d55c1dd959d5c4c43efe4bffa38585c35a4cfeea91a254883ab053` |
| 28 | `theorem` | [mono_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/mono-iff-injective--f70128b406b5431fc11c66f3.md) | 213 | `result-track:f70128b406b5431fc11c66f33b5ca973d687abf1688537c3dfab815e4290d877` |
| 29 | `theorem` | [isClosedMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/isclosedmap--049f5c823d0b1885ce349533.md) | 225 | `result-track:049f5c823d0b1885ce34953367ceb065b873d6c4e5bfd25a217ddf8becd2ef22` |
| 30 | `theorem` | [isIso_of_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/isiso-of-bijective--917d5491efad4efeffebb745.md) | 229 | `result-track:917d5491efad4efeffebb745b4f0e3a8e87d40411680c1b90a75bcabe1ac0b5b` |
| 31 | `instance` | [forget_reflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/forget-reflectsisomorphisms--cd09fd4845086ac7abce228f.md) | 243 | `declaration-track:cd09fd4845086ac7abce228f05c4fabaf87e3595e18daeb9bc6ea0cfc60cd1f9` |
| 32 | `def` | [isoOfBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/isoofbijective--a75b11983fc42bb79ae22ac2.md) | 248 | `declaration-track:a75b11983fc42bb79ae22ac24a03378f4e818f8ec16a8fb3b028e6145a213fbf` |
| 33 | `def` | [isoOfHomeo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/isoofhomeo--313815c4a305b856473d4f06.md) | 255 | `declaration-track:313815c4a305b856473d4f0637f548580cbe2cd500ac7cc0cde1938072c38292` |
| 34 | `def` | [homeoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/homeoofiso--d1a8659e211aea7f3a3e28e7.md) | 260 | `declaration-track:d1a8659e211aea7f3a3e28e70b0d0bf2043d7cf5c69558f55fed0b2387b90411` |
| 35 | `def` | [isoEquivHomeo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/isoequivhomeo--bf94686434eef260bac97c21.md) | 266 | `declaration-track:bf94686434eef260bac97c210e3754330105017c5a0c84e4530326eb0f18b648` |
| 36 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/const--68e4d43ddd724681b81603c8.md) | 273 | `declaration-track:68e4d43ddd724681b81603c8e3dd6192b07650f1942a592145d794afbec9b9be` |
| 37 | `lemma` | [const_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5e52187f5a6395d5c6537fddae563085b4559e0a6d3efa545355d4e7e6853325.lean/declarations/const-comp--c88040e0a3a5695d9abe7c65.md) | 277 | `result-track:c88040e0a3a5695d9abe7c655a2a3485c51fd3858d5a15c0ddcf18d568832721` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
