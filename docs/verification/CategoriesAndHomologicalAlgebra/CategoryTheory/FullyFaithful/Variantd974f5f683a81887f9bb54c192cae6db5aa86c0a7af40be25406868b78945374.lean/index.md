# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullyFaithful.Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d269cbf20f4b3649f28cbb46416129dafce087b",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d269cbf20f4b3649f28cbb46416129dafce087b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/full--6ba650ef9586b51033d705d4.md) | 49 | `declaration-track:6ba650ef9586b51033d705d4e24c90cdaf71157e500ae21d9cb8b54bba3982cd` |
| 2 | `class` | [Faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/faithful--be6f8643c489f474df763fb1.md) | 54 | `declaration-track:be6f8643c489f474df763fb171c3134aaaa8323715fbd7ac71735504989679d0` |
| 3 | `theorem` | [map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/map-injective--02afef4621f60bb421a381ec.md) | 61 | `result-track:02afef4621f60bb421a381ec47724eff65437dfd7b58d008733bbbc49f4ddb16` |
| 4 | `lemma` | [map_injective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/map-injective-iff--7b957cd10e6e20cfe343e9a7.md) | 65 | `result-track:7b957cd10e6e20cfe343e9a7f5e932696a90c3d5a02152b41cdfcd44ea369141` |
| 5 | `theorem` | [mapIso_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/mapiso-injective--0115d0210f9b56827290586b.md) | 69 | `result-track:0115d0210f9b56827290586b01a39fd26f9fef3a2cc01a61b5c660464d18509d` |
| 6 | `theorem` | [map_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/map-surjective--a6df63caa0566d205b1debf1.md) | 73 | `result-track:a6df63caa0566d205b1debf149ddc083905216176fb74f3827ebda08262ec094` |
| 7 | `def` | [preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/preimage--5e15a0403982f151179a1e8e.md) | 78 | `declaration-track:5e15a0403982f151179a1e8e481f05555f6def7f59f80bb176cc934e81f5a540` |
| 8 | `theorem` | [map_preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/map-preimage--41d5221d2671094517b5e997.md) | 82 | `result-track:41d5221d2671094517b5e99708f356b14f32aae796bf4ff2daae4fccec6cff2f` |
| 9 | `theorem` | [preimage_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/preimage-id--8cd912a741bc6b92a8227b17.md) | 92 | `result-track:8cd912a741bc6b92a8227b179f3c3c1648ad4cc684fdb685cc9ee81edc19f98d` |
| 10 | `theorem` | [preimage_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/preimage-comp--032afc1c85daf820e59eb8fd.md) | 96 | `result-track:032afc1c85daf820e59eb8fd4c178ec693a5e21ab3af1e5361b788595bced6d9` |
| 11 | `theorem` | [preimage_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/preimage-map--946d3116264beb0b4fb7c1b3.md) | 101 | `result-track:946d3116264beb0b4fb7c1b3b9a22dd598f36698f4a29b73ea06c567429cca5b` |
| 12 | `def` | [preimageIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/preimageiso--abde267d68adadc5c830ea38.md) | 108 | `declaration-track:abde267d68adadc5c830ea384db560f9df6da81f2144c4776f06d7c940b8ec3f` |
| 13 | `theorem` | [preimageIso_mapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/preimageiso-mapiso--77b80d205accf9270aba81f7.md) | 116 | `result-track:77b80d205accf9270aba81f78e42765d5bc874768db1a39de9d63b6efb365246` |
| 14 | `structure` | [FullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/fullyfaithful--814ff530da798391b9812ff2.md) | 125 | `declaration-track:814ff530da798391b9812ff2e492b4c087ebca95df15b14975126a718c89d16e` |
| 15 | `def` | [ofFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/offullyfaithful--6636ec8ba54e15afb77ec7cc.md) | 138 | `declaration-track:6636ec8ba54e15afb77ec7cc59cb06966fbf311819a1636a98044e199254d0ab` |
| 16 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/id--d4a9e709458f5ecd8ac93466.md) | 145 | `declaration-track:d4a9e709458f5ecd8ac93466a1f44bf580684d64bfda9819c48191361eb09088` |
| 17 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/homequiv--18ca40f5970ece03668c8283.md) | 155 | `declaration-track:18ca40f5970ece03668c8283d8c472b80872ee215b7e6f0faea48b307570c8a9` |
| 18 | `lemma` | [map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/map-injective--5726d12800fc5328ef72361b.md) | 161 | `result-track:5726d12800fc5328ef72361b9df2b890c7543d902e4f587db3f85fe1198c6304` |
| 19 | `lemma` | [map_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/map-surjective--8586d6d7c4ddbb2f9ffb87af.md) | 164 | `result-track:8586d6d7c4ddbb2f9ffb87af7da4c4df55617f5c07ce8621db075a042919b23f` |
| 20 | `lemma` | [map_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/map-bijective--6c03b715810c2d90fd5d7d2f.md) | 168 | `result-track:6c03b715810c2d90fd5d7d2f70a7f29514e5f3dd83449416f8fbced5f47ad50d` |
| 21 | `lemma` | [preimage_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/preimage-id--3a6b8f81e3d050f5232fb239.md) | 173 | `result-track:3a6b8f81e3d050f5232fb23914fef0140936cd46c2d22cc22b6a1506d4c3cd28` |
| 22 | `lemma` | [preimage_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/preimage-comp--5cc250fbfd7a9b09e2b3f8c4.md) | 178 | `result-track:5cc250fbfd7a9b09e2b3f8c4c6a1f0e970f9fda5752af9cacfc8e46edfe33bae` |
| 23 | `lemma` | [full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/full--e5c81a2e103f19a9127c8dbf.md) | 182 | `result-track:e5c81a2e103f19a9127c8dbfa3bf5a4182af729894cc1e27c1bb4462cd14d57b` |
| 24 | `lemma` | [faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/faithful--3577d5879a65253b76c36981.md) | 185 | `result-track:3577d5879a65253b76c369819ba445f2496600c9e2950bd5baaea9eb0087fae7` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/instance--0d9edecabdb9a69809d06f09.md) | 188 | `declaration-track:0d9edecabdb9a69809d06f09cca0fe76224d83d9ffabf87e5052f41739fd21c0` |
| 26 | `def` | [preimageIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/preimageiso--15e73ce7defe4060a4b37067.md) | 200 | `declaration-track:15e73ce7defe4060a4b37067202af0fe0146a3261db5295917795df0bbe4186a` |
| 27 | `lemma` | [isIso_of_isIso_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/isiso-of-isiso-map--fef150290555d0b88b42f938.md) | 206 | `result-track:fef150290555d0b88b42f9385cc37b6f3ce54117c7c19adad9b1ac925c2ef398` |
| 28 | `def` | [isoEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/isoequiv--eba71e432686d7b989c5002b.md) | 212 | `declaration-track:eba71e432686d7b989c5002bb5f5d3b8f516266b138f05b4dfb3e1beeb6f3ba4` |
| 29 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/comp--70a0b9452bfc14ad6935a8fd.md) | 220 | `declaration-track:70a0b9452bfc14ad6935a8fd845dfd48b36f4b4d462249b2f2832b36cde45261` |
| 30 | `def` | [ofCompFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/ofcompfaithful--4d4df81e72a50f63de2f9f1f.md) | 226 | `declaration-track:4d4df81e72a50f63de2f9f1f7d385b621f95a023ac478f66ae3b84aa04533032` |
| 31 | `theorem` | [isIso_of_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/isiso-of-fully-faithful--a880627902a6b9222ba7a5a3.md) | 244 | `result-track:a880627902a6b9222ba7a5a3426bec6a8627517ae92293d8fdd1ebdf7b9ec5d5` |
| 32 | `instance` | [Full.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/full-id--5947bcc3d4466cd27749bd13.md) | 258 | `declaration-track:5947bcc3d4466cd27749bd13e0b1fc087557af05b19861b91f651b5e60792d7d` |
| 33 | `instance` | [Faithful.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/faithful-id--e22ab329642c3a8cfc127cc0.md) | 260 | `declaration-track:e22ab329642c3a8cfc127cc0e48c773b300681c035c36cac3a833496bd1091e3` |
| 34 | `instance` | [Faithful.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/faithful-comp--f0e268984adedd92e6761f35.md) | 265 | `declaration-track:f0e268984adedd92e6761f35912431764722e934ba5681656710c057fc26065b` |
| 35 | `theorem` | [Faithful.of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/faithful-of-comp--e0e46a67a90bbca64361cb5f.md) | 268 | `result-track:e0e46a67a90bbca64361cb5fdc03b95c4361345ea9947fea4c730681326c72c0` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/instance--0e180ce83fdab0b93c8fc711.md) | 272 | `declaration-track:0e180ce83fdab0b93c8fc7119d856a6718e87b27115c26456ad85ea2b7a9b7f1` |
| 37 | `lemma` | [Full.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/full-of-iso--03ea497d60b28178b6ddd65f.md) | 279 | `result-track:03ea497d60b28178b6ddd65ffd9004f4c9658cc98dac5f4126ac1007512b36de` |
| 38 | `theorem` | [Faithful.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/faithful-of-iso--d29b1f9acfb149959ccc8410.md) | 283 | `result-track:d29b1f9acfb149959ccc84108dcde562275412f68818917ca1bc62df42aebcba` |
| 39 | `theorem` | [Faithful.of_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/faithful-of-comp-iso--b1c4e17a5f25eb059452a152.md) | 291 | `result-track:b1c4e17a5f25eb059452a152eed4036d2d9aa831bc3009c494604d8b77950f1f` |
| 40 | `theorem` | [Faithful.of_comp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/faithful-of-comp-eq--353c35ab10c6ba3adc1551aa.md) | 298 | `result-track:353c35ab10c6ba3adc1551aa7290d20c2cbca20e2d5a4f6a22ec2e2bb44109ed` |
| 41 | `def` | [Faithful.div](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/faithful-div--3b899678865df9e193df454d.md) | 305 | `declaration-track:3b899678865df9e193df454db976c51a4a2368d2303bd72e8c5176a7bb9e0f20` |
| 42 | `theorem` | [Faithful.div_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/faithful-div-comp--6eaf6d9e1f45ea681874ab1f.md) | 327 | `result-track:6eaf6d9e1f45ea681874ab1fd906fcb73793cd347651adb03b8101ee40dcf9da` |
| 43 | `theorem` | [Faithful.div_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/faithful-div-faithful--4708ee2ce4f06a0ffc1a2470.md) | 340 | `result-track:4708ee2ce4f06a0ffc1a24702d02cece24be0de7f23f00d65c0d52dca61098ec` |
| 44 | `instance` | [Full.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/full-comp--1f9020ca973c1e9f599ad3b6.md) | 346 | `declaration-track:1f9020ca973c1e9f599ad3b686af6735656f34e9d627fe14f6e3a1b949e7cfb4` |
| 45 | `lemma` | [Full.of_comp_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/full-of-comp-faithful--6a5656e39a8ea5f58b114bef.md) | 350 | `result-track:6a5656e39a8ea5f58b114bef5a3b94d7213e2ff10e7f74de6d6fde78c15d7a50` |
| 46 | `lemma` | [Full.of_comp_faithful_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/full-of-comp-faithful-iso--241cf90f5ace028cc113c81a.md) | 354 | `result-track:241cf90f5ace028cc113c81a8d4f95285f7a83b6f8ba70b73fe59dc56bc3e5ab` |
| 47 | `def` | [fullyFaithfulCancelRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/fullyfaithfulcancelright--c776c0a14291d5919c61bbe2.md) | 362 | `declaration-track:c776c0a14291d5919c61bbe2114692b22a7331bdd6500a61559570d162699da6` |
| 48 | `theorem` | [fullyFaithfulCancelRight_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/fullyfaithfulcancelright-hom-app--7b4ee7b2148a3573c191359f.md) | 368 | `result-track:7b4ee7b2148a3573c191359f8cb6eac488424dce62d2b6b1b21dfa9aea207dde` |
| 49 | `theorem` | [fullyFaithfulCancelRight_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variantd974f5f683a81887f9bb54c192cae6db5aa86c0a7af40be25406868b78945374.lean/declarations/fullyfaithfulcancelright-inv-app--ff2979725e64b37461c2d4dd.md) | 374 | `result-track:ff2979725e64b37461c2d4ddacf3f8ef595babf9e15260734c837482dc0c35ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
