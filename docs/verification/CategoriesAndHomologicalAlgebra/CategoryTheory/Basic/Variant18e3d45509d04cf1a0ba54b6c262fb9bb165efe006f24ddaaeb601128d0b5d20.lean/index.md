# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "311bb22e1447dad64cb55143aa2f8ba6f83f1933",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `311bb22e1447dad64cb55143aa2f8ba6f83f1933`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/injective--c621045840ac24d49cff26e8.md) | 28 | `declaration-track:c621045840ac24d49cff26e81f534092f4c504ea3a7c77f1927bf6fac3a174f0` |
| 2 | `lemma` | [Limits.IsZero.injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/limits-iszero-injective--63d9da824d38a447db3cf87b.md) | 33 | `result-track:63d9da824d38a447db3cf87b9184a6273a82d4a29699eb51c5a89c75269bd787` |
| 3 | `structure` | [InjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/injectivepresentation--2eb4f40181defeb9f66b6475.md) | 41 | `declaration-track:2eb4f40181defeb9f66b6475bcf6219c9004a894574bfe2319fe667677e80704` |
| 4 | `class` | [EnoughInjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/enoughinjectives--5c28f31ad49745d158e3d98c.md) | 56 | `declaration-track:5c28f31ad49745d158e3d98c9fcffd6797008960d71f02a77ee86a89d4edba17` |
| 5 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/factorthru--c7b00d819e814fa1ec4d776c.md) | 68 | `declaration-track:c7b00d819e814fa1ec4d776c64a076c447b94ef62f727bbe100403271c6bb763` |
| 6 | `theorem` | [comp_factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/comp-factorthru--382396c7ce4a3e7c1e4450ee.md) | 72 | `result-track:382396c7ce4a3e7c1e4450eed4e756933be344d709c8d61a69ed0b010345b013` |
| 7 | `instance` | [zero_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/zero-injective--bd0e5bad49e205189d3a63fa.md) | 80 | `declaration-track:bd0e5bad49e205189d3a63face74aa2a40e4e805384abd94c6ee1dd41e4dcf67` |
| 8 | `theorem` | [of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/of-iso--a03bee6a03ffc4803f52373b.md) | 85 | `result-track:a03bee6a03ffc4803f52373b4f6b0f667db145a15c72fa0b15d701007ccd9bcc` |
| 9 | `theorem` | [iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/iso-iff--e6b4c8244d4ea886edc094bc.md) | 92 | `result-track:e6b4c8244d4ea886edc094bc8c59aa76d390cb1440b069f5604a702ceb14eeaf` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--859e5328047a1cede9476738.md) | 96 | `declaration-track:859e5328047a1cede94767389b22c6020bd66a86aaa3f04406c38b60d11e7f42` |
| 11 | `instance` | [Type.enoughInjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/type-enoughinjectives--1046bf92ceee87ca77a72446.md) | 110 | `declaration-track:1046bf92ceee87ca77a724468fe470b80fc14169c01dfb6829fbb6c946dd3efe` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--eb364090e08097f125a6b481.md) | 120 | `declaration-track:eb364090e08097f125a6b48131050b492faac58cb5553c6f9ab97553719f4cef` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--12023fc74c973b28d70f74fb.md) | 128 | `declaration-track:12023fc74c973b28d70f74fbe4aadf04613569c99163af8ba1cbdbf745cd55e8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--950d09c43086848e8e74148c.md) | 134 | `declaration-track:950d09c43086848e8e74148c6df598c3242f3be54bdac63eedb2a1080e47f590` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--8ea3a5df5a61b446b988df29.md) | 142 | `declaration-track:8ea3a5df5a61b446b988df29c22b34b1172efc00b64f5d4c3f318826993ad548` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--b72ccd3411cc29e8d2ad3fa8.md) | 149 | `declaration-track:b72ccd3411cc29e8d2ad3fa8557d046e26c34b97a4e1a291dc1fd12a2883f6bb` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--e0372a2f020bdb94f68a36e1.md) | 153 | `declaration-track:e0372a2f020bdb94f68a36e11c980a0d204715def75854046c654b2c582215ae` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--21405657034b88ad4022c220.md) | 157 | `declaration-track:21405657034b88ad4022c220cdb801e9c40ad2a067b00588ec612973a42f9b40` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--538b41d9dd14466dc0138860.md) | 161 | `declaration-track:538b41d9dd14466dc0138860108ed2bd73ae8795ee8cb775c7b6eaaa1876c2b5` |
| 20 | `theorem` | [injective_iff_projective_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/injective-iff-projective-op--8870437c108d1abad93c5643.md) | 165 | `result-track:8870437c108d1abad93c56435886c465dc5292160c07a718978085c874776734` |
| 21 | `theorem` | [projective_iff_injective_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/projective-iff-injective-op--c42cf09a6addfcbfdd3dba50.md) | 168 | `result-track:c42cf09a6addfcbfdd3dba504e0e3a3bf734ae97ad17abd2f5d1dafa5c97085d` |
| 22 | `theorem` | [injective_iff_preservesEpimorphisms_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/injective-iff-preservesepimorphisms-yoneda-obj--d4905843db0d536477bf172e.md) | 171 | `result-track:d4905843db0d536477bf172e4119f1e725270658a9517ab71095a9a7abaad341` |
| 23 | `theorem` | [injective_of_adjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/injective-of-adjoint--aac21e97557608f33474b5f4.md) | 183 | `result-track:aac21e97557608f33474b5f4d2cb7bbffd573201a06efb6ea3cd2f50a7e4ea80` |
| 24 | `def` | [under](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/under--6b686301c713607fddb747ac.md) | 198 | `declaration-track:6b686301c713607fddb747ac3752930c5b56180d4cd942864ae1d289935b39e1` |
| 25 | `instance` | [injective_under](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/injective-under--91d19805eefc588eff8105f2.md) | 201 | `declaration-track:91d19805eefc588eff8105f2ba03067c8bc96f166871928b4779f6d7a67b8470` |
| 26 | `def` | [ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/anonymous--2cde1db6be037531654bab8b.md) | 207 | `declaration-track:2cde1db6be037531654bab8b3431b0b540f556d37a3db6642aeb90b508c6a3d2` |
| 27 | `instance` | [ι_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/mono--c5582ac6f2a83808b2d02707.md) | 210 | `declaration-track:c5582ac6f2a83808b2d02707122ba3e6378f48949f991925513758ce70763887` |
| 28 | `def` | [syzygies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/syzygies--b2ddc2907258b87dc2b25af7.md) | 220 | `declaration-track:b2ddc2907258b87dc2b25af7d9a2eee78d95a1ce773eb640dc2c5e604a190d25` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--6f0e76b848de3181a0d48c58.md) | 225 | `declaration-track:6f0e76b848de3181a0d48c580b4cfdd2f84ea2b3c9c24915fd80828ae641b8ca` |
| 30 | `abbrev` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/d--d48896d66e2b14634eff652b.md) | 233 | `declaration-track:d48896d66e2b14634eff652be9e61f3ae83be8f32ea8a67a28c9fa6823e4e3c9` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--4ccf971cada93e0a82825f4a.md) | 240 | `declaration-track:4ccf971cada93e0a82825f4a11ef47203b110d3694b2341339806af2a15f07f7` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/instance--26a92d1b71251eb760f8e409.md) | 243 | `declaration-track:26a92d1b71251eb760f8e4090b925af16ec49ba3d8ec8ae03e11b263a1374e36` |
| 33 | `theorem` | [enoughProjectives_of_enoughInjectives_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/enoughprojectives-of-enoughinjectives-op--18f76a1ae02bc82e050b09e6.md) | 246 | `result-track:18f76a1ae02bc82e050b09e68b81961601de91438d577212931a284c06b276b4` |
| 34 | `theorem` | [enoughInjectives_of_enoughProjectives_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/enoughinjectives-of-enoughprojectives-op--169db4d48e25eb2d69f3f138.md) | 249 | `result-track:169db4d48e25eb2d69f3f1387ae448375307f5ff160a52f362f4047c715eb68d` |
| 35 | `theorem` | [map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/map-injective--aae0d26b7546263ec5af65c8.md) | 258 | `result-track:aae0d26b7546263ec5af65c8f9448455bb121fb6563d6168a03980f3631ab008` |
| 36 | `theorem` | [injective_of_map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/injective-of-map-injective--bd2986397307c88f317881db.md) | 267 | `result-track:bd2986397307c88f317881dbd56e4cf7763c39dfe5cb0d510bd5ac96711d3c9d` |
| 37 | `def` | [mapInjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/mapinjectivepresentation--b517b36b130529335111ea8b.md) | 278 | `declaration-track:b517b36b130529335111ea8b1fd29c454dd7d5a882ddff0534d12f95f12ac344` |
| 38 | `def` | [injectivePresentationOfMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/injectivepresentationofmap--fba5a2c50b531324a0802ae6.md) | 289 | `declaration-track:fba5a2c50b531324a0802ae6291894f1855ca944cbde967f194cb354803851bd` |
| 39 | `lemma` | [EnoughInjectives.of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/enoughinjectives-of-adjunction--147175b810a30bb8a6d1ec39.md) | 302 | `result-track:147175b810a30bb8a6d1ec39811a91c206c8a2b69115a52479ecc9608dd04033` |
| 40 | `lemma` | [EnoughInjectives.of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/enoughinjectives-of-equivalence--2184c1db3abdefcee18c3eb4.md) | 310 | `result-track:2184c1db3abdefcee18c3eb4d03e0a8a7634d1ce163655ad1a1488c82f83435a` |
| 41 | `theorem` | [map_injective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/map-injective-iff--684369e64832692c7851272d.md) | 319 | `result-track:684369e64832692c7851272dba0bc939ac85d204501003863a4456ffae119474` |
| 42 | `def` | [injectivePresentationOfMapInjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/injectivepresentationofmapinjectivepresentation--d1b20dc4d0fec0dd25bc3c40.md) | 324 | `declaration-track:d1b20dc4d0fec0dd25bc3c40eaa81a51416c0724c5e88f64bda165b352cd39c9` |
| 43 | `theorem` | [enoughInjectives_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant18e3d45509d04cf1a0ba54b6c262fb9bb165efe006f24ddaaeb601128d0b5d20.lean/declarations/enoughinjectives-iff--c8fd9d5798bd244ff0484b73.md) | 328 | `result-track:c8fd9d5798bd244ff0484b73f918ce7f42287f1957466d71cbe211859573cf3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
