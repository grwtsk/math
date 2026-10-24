# Verification target: GRWTSK.Algebra.Basic.Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5efdcadefbfbf9ff3b3c53a07029d757072bed0",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5efdcadefbfbf9ff3b3c53a07029d757072bed0`.

Source path: `GRWTSK/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.MinimalPrime.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/instance--133ff0250ec9b0e24ba7d309.md) | 61 | `declaration-track:133ff0250ec9b0e24ba7d3098296dd1144dd6770a8a2997f4c0e59fa57e6503d` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/instance--7f7d56bd08eae1a7c5b7b962.md) | 66 | `declaration-track:7f7d56bd08eae1a7c5b7b962e4a4453db400b4b42ce75933fa1951b74ced47b0` |
| 3 | `def` | [equivSubtype](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/equivsubtype--ddca209707c129ab67b04d75.md) | 73 | `declaration-track:ddca209707c129ab67b04d75c56d903a900aff8d56770329eb4aff8fe5eac365` |
| 4 | `theorem` | [range_asIdeal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/range-asideal--380f9a806c3a26cf68b438b7.md) | 79 | `result-track:380f9a806c3a26cf68b438b792c70a2681ac9b42adad3e8b0a7785e6f1810c50` |
| 5 | `def` | [primeSpectrumProdOfSum](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/primespectrumprodofsum--939b4a25a163c257850cbea7.md) | 86 | `declaration-track:939b4a25a163c257850cbea752c886c358db9a1824bdc6d32e9c5d53b995579c` |
| 6 | `def` | [primeSpectrumProd](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/primespectrumprod--adeca7122ad6db6adf7b3dc0.md) | 92 | `declaration-track:adeca7122ad6db6adf7b3dc094e3cf096ccac5dae7bdf5fa51471e865232e09f` |
| 7 | `theorem` | [primeSpectrumProd_symm_inl_asIdeal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/primespectrumprod-symm-inl-asideal--dba264934361e2fa366efb6d.md) | 111 | `result-track:dba264934361e2fa366efb6df377c1cf0d83cd17f254281141147eb4fea94687` |
| 8 | `theorem` | [primeSpectrumProd_symm_inr_asIdeal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/primespectrumprod-symm-inr-asideal--ad8991d4e009baf163b8a60f.md) | 117 | `result-track:ad8991d4e009baf163b8a60f92cb1acfdcbd582ca4fcf2ce249b619c388bbe0a` |
| 9 | `def` | [zeroLocus](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus--01efe70a1b5c787f7092b82e.md) | 130 | `declaration-track:01efe70a1b5c787f7092b82e5946efba2ccfbc3453e58f9a4a4119d8499f53f8` |
| 10 | `theorem` | [mem_zeroLocus](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/mem-zerolocus--75cb40db1ac3dc2d58e0ab0a.md) | 134 | `result-track:75cb40db1ac3dc2d58e0ab0ae52f090054c75242c241e31c14cd8d03c0d9dcca` |
| 11 | `theorem` | [zeroLocus_span](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-span--7e737a46654863c0817e8659.md) | 138 | `result-track:7e737a46654863c0817e8659207a40f9d98c98716d8da272971e0c8390d32566` |
| 12 | `def` | [vanishingIdeal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/vanishingideal--a427c8e2974dfbc218cc1f0a.md) | 150 | `declaration-track:a427c8e2974dfbc218cc1f0a5eb58f09c6d2ebc4deced312f911e1f1a0cef6d6` |
| 13 | `theorem` | [coe_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/coe-vanishingideal--8467c4a51145f4d902b83291.md) | 153 | `result-track:8467c4a51145f4d902b83291f44ddac8152c6fa8818299664a62985080d7c667` |
| 14 | `theorem` | [mem_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/mem-vanishingideal--7527646f273eace056862711.md) | 160 | `result-track:7527646f273eace056862711c7dd98e8b97146e2ec81cf4866f09bafc63ca791` |
| 15 | `theorem` | [vanishingIdeal_singleton](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/vanishingideal-singleton--ed4f7849478f60757b423c31.md) | 165 | `result-track:ed4f7849478f60757b423c3195b3d98432042310a3afa815374e2204e41849ee` |
| 16 | `theorem` | [subset_zeroLocus_iff_le_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/subset-zerolocus-iff-le-vanishingideal--089942ae7f68502cd2f62b38.md) | 168 | `result-track:089942ae7f68502cd2f62b38af507ff8e159a775e3451d05c3699a7896d93e17` |
| 17 | `theorem` | [gc](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/gc--87c0a3e87739b7f040c64ca6.md) | 178 | `result-track:87c0a3e87739b7f040c64ca676bdb54605ca40d9f0d3946fcec02a284eb60f49` |
| 18 | `theorem` | [gc_set](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/gc-set--843e8ec70aa3513f89651790.md) | 184 | `result-track:843e8ec70aa3513f896517904b333f061e5b79cdac72d178c07f81fd0dc2904f` |
| 19 | `theorem` | [subset_zeroLocus_iff_subset_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/subset-zerolocus-iff-subset-vanishingideal--8804bde6b8016d743465551b.md) | 190 | `result-track:8804bde6b8016d743465551b8216da5e73faaffcdec01cda788c9ce5abaf4b43` |
| 20 | `theorem` | [subset_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/subset-vanishingideal-zerolocus--678dff8cedd472d20960bc7d.md) | 196 | `result-track:678dff8cedd472d20960bc7d00fdec29c0c599f03e9d3b48d4f8c1ffe3b08604` |
| 21 | `theorem` | [le_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/le-vanishingideal-zerolocus--650af2f9acf1f67bd7a2f3dd.md) | 199 | `result-track:650af2f9acf1f67bd7a2f3ddbda2ec9e367d1ba17d517b6a473d4e5509c660f6` |
| 22 | `theorem` | [vanishingIdeal_zeroLocus_eq_radical](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/vanishingideal-zerolocus-eq-radical--7c97aef5f9bca21887733eae.md) | 203 | `result-track:7c97aef5f9bca21887733eaec96f094ecd7f33619d0d82bf8e91de2c47fa1f3d` |
| 23 | `theorem` | [nilradical_eq_iInf](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/nilradical-eq-iinf--755b06c7ed18c3143afcff2b.md) | 209 | `result-track:755b06c7ed18c3143afcff2b0c2d0588f421e3a33ca1877c4917f08e9113c4b2` |
| 24 | `theorem` | [vanishingIdeal_univ](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/vanishingideal-univ--a1b81516bdb7e058393928ba.md) | 212 | `result-track:a1b81516bdb7e058393928ba6527a89f9fb3146603d83bdce1762f1314883f2d` |
| 25 | `theorem` | [zeroLocus_radical](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-radical--29a61aa2bce448d28b9dac10.md) | 216 | `result-track:29a61aa2bce448d28b9dac104f41184554b59e7abc0b286880fd1022780d5f9a` |
| 26 | `theorem` | [subset_zeroLocus_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/subset-zerolocus-vanishingideal--f63a71c1574e5300573b2e11.md) | 219 | `result-track:f63a71c1574e5300573b2e11916adcce277e054d7674709c6ecdaeefd314b51e` |
| 27 | `theorem` | [zeroLocus_anti_mono](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-anti-mono--f382fe5580c655fe080da5ea.md) | 223 | `result-track:f382fe5580c655fe080da5ea65923199c69095ffbec1f247d1465fdf70922f1a` |
| 28 | `theorem` | [zeroLocus_anti_mono_ideal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-anti-mono-ideal--0e50f866bc748ea9b7739c41.md) | 226 | `result-track:0e50f866bc748ea9b7739c411e56514c5b60075997a08a70456dbe027598457c` |
| 29 | `theorem` | [vanishingIdeal_anti_mono](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/vanishingideal-anti-mono--e09ccb223cd1951f341c6cc1.md) | 230 | `result-track:e09ccb223cd1951f341c6cc164b053dfd31ff3edd0159c4ee4fb9ead2b3cc5c9` |
| 30 | `theorem` | [zeroLocus_subset_zeroLocus_iff](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-subset-zerolocus-iff--a7d2064e9f8644d092176cea.md) | 234 | `result-track:a7d2064e9f8644d092176cea73c7f070932e39eddc81a15518605a06f999f431` |
| 31 | `theorem` | [zeroLocus_subset_zeroLocus_singleton_iff](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-subset-zerolocus-singleton-iff--ac306476a305c48bf7fddf16.md) | 238 | `result-track:ac306476a305c48bf7fddf16ad221362e4713cc827ad043968f8e7afc1b2eadb` |
| 32 | `theorem` | [zeroLocus_bot](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-bot--80af3d94b63c237b19551ed2.md) | 243 | `result-track:80af3d94b63c237b19551ed27fc2296d1f7b93d9199d58cea6e562164706986a` |
| 33 | `lemma` | [zeroLocus_nilradical](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-nilradical--13b4b74c2245c3197b54cc29.md) | 247 | `result-track:13b4b74c2245c3197b54cc29a7e77dcf1a5462bde03c004a0436b76e15a1020d` |
| 34 | `theorem` | [zeroLocus_singleton_zero](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-singleton-zero--4686081398dde033b830dd9a.md) | 251 | `result-track:4686081398dde033b830dd9ab0f224e5d57fb683951a118b078725a81812bdb3` |
| 35 | `theorem` | [zeroLocus_empty](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-empty--34df0031c3477673ab50c65c.md) | 255 | `result-track:34df0031c3477673ab50c65c39d7d3f85969cafed1faf83e6d93894a3687f840` |
| 36 | `theorem` | [vanishingIdeal_empty](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/vanishingideal-empty--6b243eea312759c13f270299.md) | 259 | `result-track:6b243eea312759c13f2702991811ad7c184ae796039d1bdb6d0b2703aae35519` |
| 37 | `theorem` | [zeroLocus_empty_of_one_mem](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-empty-of-one-mem--99fd6d776b285831b101266d.md) | 262 | `result-track:99fd6d776b285831b101266d6c9a6bc6e57d953a3a8c49e1685bddb232bb4360` |
| 38 | `theorem` | [zeroLocus_singleton_one](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-singleton-one--8599da91b5da8a8d00020b75.md) | 273 | `result-track:8599da91b5da8a8d00020b7560168c1b447ee7591a5b7634bcfcbdcfdb61d9ac` |
| 39 | `theorem` | [zeroLocus_empty_iff_eq_top](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-empty-iff-eq-top--31a583154327f3d47036f704.md) | 276 | `result-track:31a583154327f3d47036f704ac68b8dbf1f8b42fc4d575460dacf84066570e2a` |
| 40 | `theorem` | [zeroLocus_univ](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-univ--79076eb8d49323968ef332f3.md) | 287 | `result-track:79076eb8d49323968ef332f36df2f68b7054fc06db63acd3cc758b229e970ad3` |
| 41 | `theorem` | [vanishingIdeal_eq_top_iff](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/vanishingideal-eq-top-iff--b6f9c2bcddcd4a8a4acf2668.md) | 290 | `result-track:b6f9c2bcddcd4a8a4acf266889dc96b4d3c059b6faeb5fbbf13d3f4764fc4394` |
| 42 | `theorem` | [zeroLocus_eq_univ_iff](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-eq-univ-iff--14eb7b76ea45aa304108ce0e.md) | 294 | `result-track:14eb7b76ea45aa304108ce0eac30b050fb22cab33438fcaf6fb2f6afd15cc01e` |
| 43 | `theorem` | [zeroLocus_sup](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-sup--edc79a41b3e35936d1c5b235.md) | 300 | `result-track:edc79a41b3e35936d1c5b235944887ee47912abeb8c52d4452132fa893fdbd05` |
| 44 | `theorem` | [zeroLocus_union](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-union--00baa1afed358f3ae7166668.md) | 304 | `result-track:00baa1afed358f3ae7166668ef9c9e3e8de5dae2c419ce6da12c0694d00e5ded` |
| 45 | `theorem` | [vanishingIdeal_union](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/vanishingideal-union--23f7927567146f6feea19cd3.md) | 307 | `result-track:23f7927567146f6feea19cd33ebb56244453e2743ce4065bf340137a69deb1c2` |
| 46 | `theorem` | [zeroLocus_iSup](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-isup--48ae06d575c40202e544029c.md) | 311 | `result-track:48ae06d575c40202e544029c42b09018bf2cd129186a5fdeffc972012b4f19dd` |
| 47 | `theorem` | [zeroLocus_iUnion](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-iunion--d4834cc5777e636192b597a5.md) | 315 | `result-track:d4834cc5777e636192b597a5fded6c5ec3af629f17bd89141319ff00b3b6adb5` |
| 48 | `theorem` | [zeroLocus_iUnion₂](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-iunion--38d798e0f9bd1ddd3476067f.md) | 319 | `result-track:38d798e0f9bd1ddd3476067f9c6041f41476b900353051f0edbae8096ebca9a9` |
| 49 | `theorem` | [zeroLocus_bUnion](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-bunion--79ceedf139bad1a45254fd35.md) | 323 | `result-track:79ceedf139bad1a45254fd354a9959a2aa6b78f5947e305d996a09be03702b20` |
| 50 | `theorem` | [vanishingIdeal_iUnion](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/vanishingideal-iunion--8546b4edb16acc6f411a6850.md) | 326 | `result-track:8546b4edb16acc6f411a68504b9421d086aadfb5244fddcb7b56926d7ec0821b` |
| 51 | `theorem` | [zeroLocus_inf](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-inf--663857a6d6688af2b472f903.md) | 330 | `result-track:663857a6d6688af2b472f903e74836c720d02a03947553d77933576d5addc29e` |
| 52 | `theorem` | [union_zeroLocus](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/union-zerolocus--117c61e1c2f840fb555d16b0.md) | 334 | `result-track:117c61e1c2f840fb555d16b07dea7753faec20996952f57c5a948d55467cb93f` |
| 53 | `theorem` | [zeroLocus_mul](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-mul--323abe59582dfabf1feb8d27.md) | 339 | `result-track:323abe59582dfabf1feb8d27e4c3671d5328f0ba73ba0c7d551fd93bf1f7d5b2` |
| 54 | `theorem` | [zeroLocus_singleton_mul](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-singleton-mul--71b790f42324a705eee24eeb.md) | 343 | `result-track:71b790f42324a705eee24eeba36ea66dd64696420c1c726954ca73617bc8145a` |
| 55 | `theorem` | [zeroLocus_pow](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-pow--2c92d2aacf3647abbb123dff.md) | 348 | `result-track:2c92d2aacf3647abbb123dff9c9fa0ad695dab6df564e1b491769a0a6e739f62` |
| 56 | `theorem` | [zeroLocus_singleton_pow](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-singleton-pow--f078608757d6d0d2fc376cec.md) | 353 | `result-track:f078608757d6d0d2fc376ceca732dffc181fe64a6c1d5fcd39728bf47bec699e` |
| 57 | `theorem` | [sup_vanishingIdeal_le](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/sup-vanishingideal-le--f89775d6732b8e7128814fc8.md) | 357 | `result-track:f89775d6732b8e7128814fc8694612ec2bf688e040616f95d2cb8cc4e97da0c4` |
| 58 | `theorem` | [mem_compl_zeroLocus_iff_notMem](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/mem-compl-zerolocus-iff-notmem--90994c77cc0832b2f2aa915a.md) | 365 | `result-track:90994c77cc0832b2f2aa915a39c7ded6b4f0390819f30fafead79f9531249c56` |
| 59 | `lemma` | [zeroLocus_insert_zero](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-insert-zero--f1921cbcf99108df0e10c63f.md) | 373 | `result-track:f1921cbcf99108df0e10c63f13de14d3f2419c300c019aaba53ac425ec6cde49` |
| 60 | `lemma` | [zeroLocus_diff_singleton_zero](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-diff-singleton-zero--81e12efad5864c1f876d96ae.md) | 377 | `result-track:81e12efad5864c1f876d96ae5305e36d46e75cc3edbaf1b6479c175df263d981` |
| 61 | `lemma` | [zeroLocus_smul_of_isUnit](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/zerolocus-smul-of-isunit--f759fc7d2a7e66f55b0b462d.md) | 380 | `result-track:f759fc7d2a7e66f55b0b462dc8c2de068324d922c09f04569a4d5b0abb7744a1` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/instance--bae5fbcb20ff8cc06d331b98.md) | 394 | `declaration-track:bae5fbcb20ff8cc06d331b9895bd767ef542120433d81e59d31482576ecd7871` |
| 63 | `theorem` | [asIdeal_le_asIdeal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/asideal-le-asideal--97250b694b11bb665083ffa5.md) | 398 | `result-track:97250b694b11bb665083ffa57055929e34ec6ba2810915a17ac5868612d0ceda` |
| 64 | `theorem` | [asIdeal_lt_asIdeal](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/asideal-lt-asideal--59cc906dec9ae66a159735d4.md) | 402 | `result-track:59cc906dec9ae66a159735d40271cae0a5a90f69a31aa580ef8c6d940d49e077` |
| 65 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/instance--f0712b0b22c49e4b416cb353.md) | 405 | `declaration-track:f0712b0b22c49e4b416cb353a4f2a299e2bf03a5848ea09665865d135f43ceca` |
| 66 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/instance--0afe44877ad06d4ffd55b1c8.md) | 409 | `declaration-track:0afe44877ad06d4ffd55b1c86f331da2a1b8d4821967e1f91feefeb3abe6024c` |
| 67 | `lemma` | [isMax_iff](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/ismax-iff--90718600b2a302fe46181fdd.md) | 414 | `result-track:90718600b2a302fe46181fddce6d87ce2bd7f4c97217a58c6def90fd7799a667` |
| 68 | `lemma` | [isMin_iff](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/ismin-iff--722a379ead529d690a60eac4.md) | 421 | `result-track:722a379ead529d690a60eac4aceb694f0a51c33de239166f92ce7968e143df57` |
| 69 | `theorem` | [exists_primeSpectrum_prod_le](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/exists-primespectrum-prod-le--f50f73779a5342f19fc7d22f.md) | 438 | `result-track:f50f73779a5342f19fc7d22f9de1125597e6e690b10435dfb9e2245aee7c28fd` |
| 70 | `theorem` | [exists_primeSpectrum_prod_le_and_ne_bot_of_domain](../../../../mathematics/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/declarations/exists-primespectrum-prod-le-and-ne-bot-of-domain--f4385642c06f08e6d951ee42.md) | 470 | `result-track:f4385642c06f08e6d951ee42548cd0417d0ee2c168c0e416dd72df1d070299f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
