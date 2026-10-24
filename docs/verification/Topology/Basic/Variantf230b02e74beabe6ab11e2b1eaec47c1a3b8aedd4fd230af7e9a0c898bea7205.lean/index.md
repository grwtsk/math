# Verification target: GRWTSK.Topology.Basic.Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "189c61173f1eee60ef5d4e4d945dddd68fe7137c",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/index.md) · [Full source](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `189c61173f1eee60ef5d4e4d945dddd68fe7137c`.

Source path: `GRWTSK/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompHaus](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/comphaus--1f7646800c2332689375ab94.md) | 45 | `declaration-track:1f7646800c2332689375ab947d7221081155b4da0e5e03ae91bcf2165b5f5564` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/instance--b251e637ea247f580b90b2fb.md) | 58 | `declaration-track:b251e637ea247f580b90b2fb9a7b02c3159e10f14bb21bf5dd2edbc02383942c` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/instance--723a14ac66c70a0fa4708b82.md) | 61 | `declaration-track:723a14ac66c70a0fa4708b8283d39ad05400a8e7e5a3c71aee85a7267e5da1c7` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/instance--00209a6cca4ee0d99700fade.md) | 64 | `declaration-track:00209a6cca4ee0d99700fadee0122ab31af5e4258c45e53b236b70d788e04ef7` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/instance--95259bda96be0369e11d98df.md) | 67 | `declaration-track:95259bda96be0369e11d98df89a66317bbeec80f906b3d9a9bbfcc5c2fb1baa9` |
| 6 | `instance` | [category](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/category--aee6aec2e15e7bc6d16236aa.md) | 70 | `declaration-track:aee6aec2e15e7bc6d16236aa6ac81731846937199f4836cc2cd4100c8b31184d` |
| 7 | `instance` | [concreteCategory](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/concretecategory--5a050c83faaa738cbca96e13.md) | 75 | `declaration-track:5a050c83faaa738cbca96e13614db430448ace6c8702c663cba9b4fe78368444` |
| 8 | `def` | [of](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/of--c0bdf1d1a817100e1a4cb155.md) | 94 | `declaration-track:c0bdf1d1a817100e1a4cb15585b4db685960b6c68df13b7e62dd9975446b5828` |
| 9 | `theorem` | [coe_of](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/coe-of--7dd196b81a5eea0f94425aa9.md) | 102 | `result-track:7dd196b81a5eea0f94425aa941677ba7314c756994ea3dfcb599210999c0b146` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/instance--5fa835bc0c463f8bbf3df3b8.md) | 108 | `declaration-track:5fa835bc0c463f8bbf3df3b8a6e6fb29e1793c521e92b9cea87728a2485595cf` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/instance--183d6626aa38cefefa649072.md) | 112 | `declaration-track:183d6626aa38cefefa649072ceaf163e596cc476bd0b67e36ee0c05ceb1d16e4` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/instance--0d9b74787ee2395294c6dda4.md) | 116 | `declaration-track:0d9b74787ee2395294c6dda4a1b5f8db8d6c54c080fee7416639e0c0382fcb29` |
| 13 | `theorem` | [isClosedMap](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/isclosedmap--43e332ee4c800e4bc2be6de5.md) | 120 | `result-track:43e332ee4c800e4bc2be6de536d890157116dbe31f91a9a39410707b7406932e` |
| 14 | `theorem` | [isIso_of_bijective](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/isiso-of-bijective--7bc95864387e16521583a44d.md) | 126 | `result-track:7bc95864387e16521583a44d38d1becebfdf6a7b94f7f2f6125b96d29eec1a09` |
| 15 | `def` | [isoOfBijective](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/isoofbijective--8ceb4af3d15d36c0b5fb9b7b.md) | 143 | `declaration-track:8ceb4af3d15d36c0b5fb9b7b9da4d3e622b0ade5a735707661b3656e04da7286` |
| 16 | `def` | [isoOfHomeo](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/isoofhomeo--e2d1ee19440e8273b0ec322d.md) | 152 | `declaration-track:e2d1ee19440e8273b0ec322da97fbe9f8b0bbd502c7a62ac406ff6f88ed89276` |
| 17 | `def` | [homeoOfIso](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/homeoofiso--193f9b72ddfe535888eb5b73.md) | 164 | `declaration-track:193f9b72ddfe535888eb5b7397764d18da7699c89a198e8023d0806b9a1a8e32` |
| 18 | `def` | [isoEquivHomeo](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/isoequivhomeo--ccdd5a6fe86f032155f29b4a.md) | 175 | `declaration-track:ccdd5a6fe86f032155f29b4a2bce82ce517006426d2cf24bcc3e04f79a829e77` |
| 19 | `def` | [compHausToTop](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/comphaustotop--66145d19fe97f7b7a27edd03.md) | 190 | `declaration-track:66145d19fe97f7b7a27edd03c4086317975f4e3cbc4cd34b8230d74b8416f740` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/instance--af1a3cb3a2da605df4fc24e1.md) | 195 | `declaration-track:af1a3cb3a2da605df4fc24e150e1e399b6c0af7abacd391fae239154c2dd9be4` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/instance--c53ca26a19806444dc224c0a.md) | 198 | `declaration-track:c53ca26a19806444dc224c0acf215aa342d807e5065c5b9ab297038190a000a2` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/instance--79d662075d8163020d4ccd5f.md) | 202 | `declaration-track:79d662075d8163020d4ccd5f3540f1c4bf56a2a7b6186f1f6129d8a387dd5707` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/instance--5e87aaa720cb8c17ac3ac80a.md) | 206 | `declaration-track:5e87aaa720cb8c17ac3ac80a77664f9db910ce26b1913c06c60c30db12b4ddc1` |
| 24 | `instance` | [CompHaus.forget_reflectsIsomorphisms](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/comphaus-forget-reflectsisomorphisms--025d9fe26136e274f1192ff6.md) | 209 | `declaration-track:025d9fe26136e274f1192ff6c98738f6db465391481f52de5d0624424f0ad87d` |
| 25 | `def` | [stoneCechObj](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/stonecechobj--060d88646ea8312693b9f757.md) | 218 | `declaration-track:060d88646ea8312693b9f7571c3a49e0947b7b93500b2bc536f79e1949828376` |
| 26 | `def` | [stoneCechEquivalence](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/stonecechequivalence--0edc2244328722eba51ed28c.md) | 226 | `declaration-track:0edc2244328722eba51ed28cae12e143b3c4e1e0115d69c93292ed3f82a45c25` |
| 27 | `def` | [topToCompHaus](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/toptocomphaus--c535b0ca0974352f766e8de7.md) | 255 | `declaration-track:c535b0ca0974352f766e8de740be3eb22cf3836b99ff39ad0de442d9d65bae68` |
| 28 | `theorem` | [topToCompHaus_obj](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/toptocomphaus-obj--d7fb24198a19d6b9e6de07a6.md) | 260 | `result-track:d7fb24198a19d6b9e6de07a6024a6680e07adb0f6ca5894ece92dcdd1dc2fe35` |
| 29 | `instance` | [compHausToTop.reflective](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/comphaustotop-reflective--64dfebfd60c63a1f951fca15.md) | 267 | `declaration-track:64dfebfd60c63a1f951fca15aca7ecd1f5a99f8b5d2d14cac61dc56ae6c939e3` |
| 30 | `instance` | [compHausToTop.createsLimits](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/comphaustotop-createslimits--e43e9a4c7a496cc3066cca80.md) | 272 | `declaration-track:e43e9a4c7a496cc3066cca80143cb86292efdb1672b6d27ce59c251ee913b6bc` |
| 31 | `instance` | [CompHaus.hasLimits](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/comphaus-haslimits--06945650f5d48359e9ef4d43.md) | 277 | `declaration-track:06945650f5d48359e9ef4d439d8be98c830d58a1a6fc2688ec0e9b8de20ea253` |
| 32 | `instance` | [CompHaus.hasColimits](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/comphaus-hascolimits--c31819eb4b402a70dc1a32f4.md) | 282 | `declaration-track:c31819eb4b402a70dc1a32f4627f5a9ecbf915f6b053f3aa4bf43d813d42c289` |
| 33 | `def` | [limitCone](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/limitcone--74eb723c614e6ddac9bee82e.md) | 291 | `declaration-track:74eb723c614e6ddac9bee82e4e74278309b20dc3828e40a60742d0915b28a720` |
| 34 | `def` | [limitConeIsLimit](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/limitconeislimit--2a6566e733779114469b5723.md) | 329 | `declaration-track:2a6566e733779114469b572391d40da322477c6d87e7739838fc9876a082bb1b` |
| 35 | `theorem` | [epi_iff_surjective](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/epi-iff-surjective--aba85166c95e646685bfcc51.md) | 338 | `result-track:aba85166c95e646685bfcc5114b95756f609bf9de095542238abca8d7ea9a160` |
| 36 | `theorem` | [mono_iff_injective](../../../../mathematics/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/declarations/mono-iff-injective--1bc7fd2f94094f0f32e79f29.md) | 385 | `result-track:1bc7fd2f94094f0f32e79f29bf983eefea98734ef3d36a6426851d04c8416d02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
