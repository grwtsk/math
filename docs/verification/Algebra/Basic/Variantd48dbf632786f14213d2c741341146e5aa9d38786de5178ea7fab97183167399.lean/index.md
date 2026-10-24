# Verification target: GRWTSK.Algebra.Basic.Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d46cd28af40f527bb5606bcc0de030fabbd14e7b",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d46cd28af40f527bb5606bcc0de030fabbd14e7b`.

Source path: `GRWTSK/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [castAddMonoidHom](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/castaddmonoidhom--d2b92f5715e06c92913f73d0.md) | 46 | `declaration-track:d2b92f5715e06c92913f73d002e543dd3a76a5dd2168043072c1674931007e83` |
| 2 | `theorem` | [coe_castAddMonoidHom](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/coe-castaddmonoidhom--f76b95b6f9ba147a84606f6b.md) | 53 | `result-track:f76b95b6f9ba147a84606f6bb6758fb8127810d650face812f66a3fdf83d2f2f` |
| 3 | `lemma` | [_root_.GRWTSK.Algebra.CastAddMonoidHom.Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.Even.natCast](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/root-grwtsk-algebra-castaddmonoidhom-variant935c67652a9058884e1aed30ed05--812efdf1f5f0a0b64b2c2beb.md) | 56 | `result-track:812efdf1f5f0a0b64b2c2beb1b6408654ec8bd2b1e458e21d5c0749c5fc6f65d` |
| 4 | `lemma` | [cast_mul](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/cast-mul--13ac51d5efb80408f89d0c9e.md) | 62 | `result-track:13ac51d5efb80408f89d0c9ef310d6590e508fc2cc2f769d813a5a79151c4be4` |
| 5 | `def` | [castRingHom](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/castringhom--61734a4e42a1a31d265986f0.md) | 68 | `declaration-track:61734a4e42a1a31d265986f0ef5f9f425feb97ba23d7068fbac9aa57a9ceab68` |
| 6 | `lemma` | [coe_castRingHom](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/coe-castringhom--9b908c7c6a2d9b5186ff287d.md) | 71 | `result-track:9b908c7c6a2d9b5186ff287d13c7061f7b94b45f7a1dc96ed38a3ca3dff098b9` |
| 7 | `lemma` | [_root_.GRWTSK.Algebra.CastAddMonoidHom.Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.nsmul_eq_mul'](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/root-grwtsk-algebra-castaddmonoidhom-variant935c67652a9058884e1aed30ed05--b19ce79cfacfbfb469f877be.md) | 73 | `result-track:b19ce79cfacfbfb469f877bee330ffd4d5dd54f941a2f805b5a02df4466a3e23` |
| 8 | `lemma` | [ofNat_nsmul_eq_mul](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/ofnat-nsmul-eq-mul--fbc2e08b2911d4a217886a49.md) | 78 | `result-track:fbc2e08b2911d4a217886a4983b279482959e5b03ac113f5f4a89f3ea995d0f1` |
| 9 | `lemma` | [cast_pow](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/cast-pow--e931f27b49e8199bce558d44.md) | 87 | `result-track:e931f27b49e8199bce558d44c5ada4090559b84e5b8d26ad6f3f4aff51024223` |
| 10 | `lemma` | [cast_dvd_cast](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/cast-dvd-cast--15c4cae45bbbae3087f6f752.md) | 92 | `result-track:15c4cae45bbbae3087f6f752404f7ebbeec2b8d51163d38d2ba02641ca600c77` |
| 11 | `theorem` | [eq_natCast'](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/eq-natcast--75f670981a4b29cfa618de4b.md) | 104 | `result-track:75f670981a4b29cfa618de4b9203ae1c0ca4efb8e4b870ba5810d6594ca6e939` |
| 12 | `theorem` | [map_natCast'](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/map-natcast--0fa58a5c0c038ca69e3adc49.md) | 108 | `result-track:0fa58a5c0c038ca69e3adc492d69752b4aaf3f51a03cf208aafc90004ce282fd` |
| 13 | `theorem` | [map_ofNat'](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/map-ofnat--e77854a0d6cbfed6e28be025.md) | 113 | `result-track:e77854a0d6cbfed6e28be0251cf55404a6b604048a4bf8ac159163a5067900b5` |
| 14 | `theorem` | [ext_nat''](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/ext-nat--014098cc535095ff51293213.md) | 124 | `result-track:014098cc535095ff51293213880072ae27aa9368a7b76c0339ab3eb302f6fb08` |
| 15 | `theorem` | [MonoidWithZeroHom.ext_nat](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/monoidwithzerohom-ext-nat--107b0b615422c14b0d1ebc2d.md) | 132 | `result-track:107b0b615422c14b0d1ebc2db394a6e109a5940eb2607e136061ccc483c849c8` |
| 16 | `theorem` | [eq_natCast](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/eq-natcast--b2ea12fce9ce12f9c14172d7.md) | 142 | `result-track:b2ea12fce9ce12f9c14172d7ee83c8ea414f6b79ced0e4a7c2bb56eae65726f1` |
| 17 | `theorem` | [map_natCast](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/map-natcast--61ca0b2caae41ea9f1c5c5c8.md) | 146 | `result-track:61ca0b2caae41ea9f1c5c5c811511b35423b88e8a2f4aab1499beaac182d4700` |
| 18 | `theorem` | [map_ofNat](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/map-ofnat--2d56cbefd945e6d717d408a6.md) | 154 | `result-track:2d56cbefd945e6d717d408a670e22093cfbd110402cd64b1f706b4a9022716fb` |
| 19 | `theorem` | [ext_nat](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/ext-nat--275c4e12ce06f6107ad9a0ae.md) | 158 | `result-track:275c4e12ce06f6107ad9a0ae06c258e33e4f9482e2af846d1f7d29fd7c056656` |
| 20 | `theorem` | [NeZero.nat_of_neZero](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/nezero-nat-of-nezero--1961481cf04bd903db052c77.md) | 161 | `result-track:1961481cf04bd903db052c77e28b0e291861570caf62fa01fdb7ab8a14f3e35e` |
| 21 | `theorem` | [eq_natCast'](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/eq-natcast--69d4e356d0352f900c8a3e83.md) | 171 | `result-track:69d4e356d0352f900c8a3e8322417929e746fd1aa6bd4b0bd89a8f0ee3241bba` |
| 22 | `theorem` | [Nat.cast_id](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/nat-cast-id--541ec847b2b240be33b025dc.md) | 177 | `result-track:541ec847b2b240be33b025dc45126bf70a0ec9ac1877541bb064e14af23074ab` |
| 23 | `theorem` | [Nat.castRingHom_nat](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/nat-castringhom-nat--479e9f6e363209a4eca819c4.md) | 181 | `result-track:479e9f6e363209a4eca819c42d8a54ef54d75a87ab644249a1bf2aef5bd44963` |
| 24 | `instance` | [Nat.uniqueRingHom](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/nat-uniqueringhom--24b89a70e322491772503dc2.md) | 186 | `declaration-track:24b89a70e322491772503dc27c8ac0a6ae94e11a395265a6a8cde1e01fd36680` |
| 25 | `instance` | [instNatCast](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/instnatcast--ea117583fb8a2c8cf96efb1b.md) | 197 | `declaration-track:ea117583fb8a2c8cf96efb1b089c7e20e2708fffe40e5792b2b426aeff4aa683` |
| 26 | `theorem` | [natCast_apply](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/natcast-apply--68c26fe39717c872ca61719e.md) | 200 | `result-track:68c26fe39717c872ca61719e1dc5f2c1f719643f7bf3af3942d1afa3878a1f22` |
| 27 | `theorem` | [natCast_def](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/natcast-def--65293a036bab61aa50af1147.md) | 204 | `result-track:65293a036bab61aa50af11472444332a03905b6d66e5c19c1f510d4e9b894dd8` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/instance--4effd229524852dda527505e.md) | 213 | `declaration-track:4effd229524852dda527505e944eb09ff6b4e346606e6d9c9e5d7a97d13ba7c2` |
| 29 | `theorem` | [ofNat_apply](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/ofnat-apply--38874283956fb23af0abf43a.md) | 217 | `result-track:38874283956fb23af0abf43a8a1314d4ce5ee22fc4f8dd6f225ac4c7d595bba9` |
| 30 | `lemma` | [ofNat_def](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/ofnat-def--83f07e4dac52855798d26d86.md) | 220 | `result-track:83f07e4dac52855798d26d864840a0642748c1336374faeba9b2beb1801bbc68` |
| 31 | `theorem` | [Sum.elim_natCast_natCast](../../../../mathematics/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/declarations/sum-elim-natcast-natcast--2fc601aacc5166e345c10af3.md) | 226 | `result-track:2fc601aacc5166e345c10af3ac7e1fe6d22ebd6113b1107d5fb1a69c24d71d69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
