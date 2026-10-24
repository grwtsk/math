# Verification target: GRWTSK.Algebra.Basic.Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6390d7d1143f17e5b87af7931b03766592d5d8ae",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6390d7d1143f17e5b87af7931b03766592d5d8ae`.

Source path: `GRWTSK/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.MonoidLocalization.Away` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicity` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Away](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/away--223edc555d2a53d7d2a97fa2.md) | 54 | `declaration-track:223edc555d2a53d7d2a97fa27adee162aad9f95c618cb2816e69d9cabe4dd33a` |
| 2 | `def` | [invSelf](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/invself--96afd879a0a837a5d792b361.md) | 62 | `declaration-track:96afd879a0a837a5d792b361b7dc16f4eede1c05ec863399fe8537ed6bdf57ba` |
| 3 | `theorem` | [mul_invSelf](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/mul-invself--5289cc15bdb7019fd2ef2d58.md) | 66 | `result-track:5289cc15bdb7019fd2ef2d582a0b782dbcc5c067eb81c5edc424ed2a730d232f` |
| 4 | `def` | [sec](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/sec--c58f264865e9391e48188277.md) | 73 | `declaration-track:c58f264865e9391e48188277f740342fedc6cc61fe6087578f15989d1ee32d6b` |
| 5 | `lemma` | [sec_spec](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/sec-spec--57493a3cb911ef8e561767d4.md) | 77 | `result-track:57493a3cb911ef8e561767d4f239eba2adcb19f3157547332187d416b6d89717` |
| 6 | `lemma` | [algebraMap_pow_isUnit](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/algebramap-pow-isunit--4be4aea3951858f68c82455e.md) | 83 | `result-track:4be4aea3951858f68c82455e7e45782415c3c147ddf75fe490061cf6948fd7fc` |
| 7 | `lemma` | [algebraMap_isUnit](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/algebramap-isunit--449977176098a291f810dcff.md) | 86 | `result-track:449977176098a291f810dcff0596f3973d8128cebd3b5e5522d094529e0ab893` |
| 8 | `lemma` | [algebraMap_isUnit_iff](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/algebramap-isunit-iff--8237bf20e845cb3345333c66.md) | 89 | `result-track:8237bf20e845cb3345333c663c4cba2c8314f0fbed123bd153cba8c5df7f5801` |
| 9 | `lemma` | [surj](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/surj--474d0df81a004505375e5757.md) | 92 | `result-track:474d0df81a004505375e5757145eaf028c66230a9359337c710ea95d47e2ff2f` |
| 10 | `lemma` | [exists_of_eq](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/exists-of-eq--2d7a43e08a13355929c9547b.md) | 97 | `result-track:2d7a43e08a13355929c9547bd4307e3bb4d1122b789ef9f7ec0f5d19c4ec53e8` |
| 11 | `lemma` | [mk](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/mk--635abe358087dd96bdced1fc.md) | 103 | `result-track:635abe358087dd96bdced1fc9bf34c710949db8051556d880352ff6f66c2c355` |
| 12 | `lemma` | [of_associated](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/of-associated--0f4490e15249db013762794f.md) | 119 | `result-track:0f4490e15249db013762794fc96d7644461cf19c7447162ad992bee85467ae2c` |
| 13 | `lemma` | [iff_of_associated](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/iff-of-associated--f0276964a35015ca18c86f9e.md) | 134 | `result-track:f0276964a35015ca18c86f9efded8fa4a6aec6349ead1ca011e1b1681f466aa4` |
| 14 | `lemma` | [isUnit_of_dvd](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/isunit-of-dvd--92e1e5e99d746fd91b17799e.md) | 138 | `result-track:92e1e5e99d746fd91b17799ed589578ca2dee0f390232f6cea1183d64f18e486` |
| 15 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/lift--9b049a15af5db242f0e50b4d.md) | 146 | `declaration-track:9b049a15af5db242f0e50b4d1444ffe30dd56a08fd2a0fbd65711042ca71b21e` |
| 16 | `theorem` | [lift_eq](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/lift-eq--49bb87cd3a87445e54d46fe3.md) | 154 | `result-track:49bb87cd3a87445e54d46fe36107548d18bf5354c66dafdfbf3094051c3e1180` |
| 17 | `theorem` | [lift_comp](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/lift-comp--e910c2c9fd70161a48c42144.md) | 158 | `result-track:e910c2c9fd70161a48c42144a00d8456b23303fee7c6e651f8156bbfa6314f33` |
| 18 | `def` | [awayToAwayLeft](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/awaytoawayleft--0ee1253f6fcab332ea100437.md) | 166 | `declaration-track:0ee1253f6fcab332ea1004379247ba49c96112c41806ba6db18f378483ce8b57` |
| 19 | `def` | [awayToAwayRight](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/awaytoawayright--9ee85bafb51101152bb72b37.md) | 171 | `declaration-track:9ee85bafb51101152bb72b3707a78ff9ea268d6954f21ae854a0c2463337d15a` |
| 20 | `theorem` | [awayToAwayLeft_eq](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/awaytoawayleft-eq--3aad885b887d4fea814eeb4e.md) | 174 | `result-track:3aad885b887d4fea814eeb4eb7b5b267f3e15f12cb9ffe710f398fdcb99c28af` |
| 21 | `theorem` | [awayToAwayRight_eq](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/awaytoawayright-eq--5212f2c9f36bd21f243bf040.md) | 178 | `result-track:5212f2c9f36bd21f243bf040f62ba97a140262ab52dd8faf557b26acb504776a` |
| 22 | `def` | [map](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/map--20dc75fd7ca151d7c522aaec.md) | 185 | `declaration-track:20dc75fd7ca151d7c522aaec3c0084caa28c5bd131673800408b24a2ee80689b` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/instance--249330ffa77bb866ed9bbbe3.md) | 200 | `declaration-track:249330ffa77bb866ed9bbbe36cfe0a5b8b9e1b53064f55b4ea9fce1f6a807779` |
| 24 | `def` | [mapₐ](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/map--5986319be8d082dcaee36e01.md) | 205 | `declaration-track:5986319be8d082dcaee36e0159668301304a37265debdd8c39b6054ca013dfa4` |
| 25 | `lemma` | [mapₐ_apply](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/map-apply--08d006f616ee769043effde4.md) | 212 | `result-track:08d006f616ee769043effde4797f0ced340606f06ca4cc357a1fb1245bc52d96` |
| 26 | `lemma` | [mapₐ_injective_of_injective](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/map-injective-of-injective--8be879733d4c047d415f31f8.md) | 218 | `result-track:8be879733d4c047d415f31f83a287409a9470e78ba48347fe0d613bc925ad06d` |
| 27 | `lemma` | [mapₐ_surjective_of_surjective](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/map-surjective-of-surjective--cab2d9eb67747a1af9caba32.md) | 222 | `result-track:cab2d9eb67747a1af9caba327311c37699b406fe3fc6d5eb0ea17438f15f18dd` |
| 28 | `lemma` | [mul](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/mul--38c5397ac873b04d2762ea03.md) | 233 | `result-track:38c5397ac873b04d2762ea03c1c5bd60c20aaef7ceb2096052b070be75db0a4c` |
| 29 | `lemma` | [mul'](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/mul--070dc422c97d78dae30964f8.md) | 258 | `result-track:070dc422c97d78dae30964f8dd040809990867576e3e1b335a583f899ca0ff30` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/instance--d8d378df94a9b6a0a6f03317.md) | 265 | `declaration-track:d8d378df94a9b6a0a6f03317461e784cb8f66642df0949f0bab60c034471c08c` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/instance--e5182cf180bd84790bf32b61.md) | 271 | `declaration-track:e5182cf180bd84790bf32b612cd4c4708fe8089eac7ca221c912964a9beac362` |
| 32 | `lemma` | [commutes](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/commutes--88e799d5af088de411236feb.md) | 277 | `result-track:88e799d5af088de411236febd67f4d9493f8902a552711c642637640435f4025` |
| 33 | `def` | [atUnit](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/atunit--b43fab6194342e8d561166e2.md) | 301 | `declaration-track:b43fab6194342e8d561166e2dbff2fcdfd726d7a5b75df3179b760e9fb6e14f6` |
| 34 | `def` | [atOne](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/atone--5a9ff7119ed282e26642e8f3.md) | 306 | `declaration-track:5a9ff7119ed282e26642e8f35f21b68ff0b2877ab7795d8abc0f65ef38a4e8eb` |
| 35 | `theorem` | [away_of_isUnit_of_bijective](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/away-of-isunit-of-bijective--2551c53de69b5ae31fccef93.md) | 309 | `result-track:2551c53de69b5ae31fccef939656923931d19c53fea7dadb4122d33ae69677bf` |
| 36 | `lemma` | [away_of_isIdempotentElem_of_mul](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/away-of-isidempotentelem-of-mul--fbd41832564869847e360211.md) | 327 | `result-track:fbd41832564869847e360211b00a5448aabd772874297dffc35a0d21d1585d5d` |
| 37 | `lemma` | [away_of_isIdempotentElem](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/away-of-isidempotentelem--94121a358629163ac3e0e2f0.md) | 340 | `result-track:94121a358629163ac3e0e2f0b28b067ae5e25ae94c5c1a7c232d6cec0adacca3` |
| 38 | `instance` | [away_fst](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/away-fst--35ea0d8fd6f3ba86ff3f72cf.md) | 350 | `declaration-track:35ea0d8fd6f3ba86ff3f72cfb40a861f2e5a36179d0994824297ee087bc33ca0` |
| 39 | `instance` | [away_snd](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/away-snd--ab6a1e3c2ab9e7fcf56d348c.md) | 357 | `declaration-track:ab6a1e3c2ab9e7fcf56d348ca55afec060a30c9f0764cafa9780e0b1b25d32ff` |
| 40 | `abbrev` | [awayLift](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/awaylift--8c473f9a065a158f1f30eebd.md) | 376 | `declaration-track:8c473f9a065a158f1f30eebd5dbec194feb78e1dc3afeddcf774c493614cbf2f` |
| 41 | `lemma` | [awayLift_mk](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/awaylift-mk--2d0ac2156b049b7c7c1768fe.md) | 380 | `result-track:2d0ac2156b049b7c7c1768feba0c480559d6b7ef2680c1a7cc5cab1f227fc6e4` |
| 42 | `abbrev` | [awayMap](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/awaymap--d3586957411d46a2b754cf9f.md) | 388 | `declaration-track:d3586957411d46a2b754cf9f34f436bd202d59b1bddd7f5f986bc87d4e1b6cce` |
| 43 | `abbrev` | [awayMapₐ](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/awaymap--5a1da1d07675ee7e693fd974.md) | 396 | `declaration-track:5a1da1d07675ee7e693fd97402b82ced0d73e060429186301f3aea92d046eb51` |
| 44 | `theorem` | [algebraMap_injective_of_span_eq_top](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/algebramap-injective-of-span-eq-top--ba9a45d35828de206aaccac9.md) | 400 | `result-track:ba9a45d35828de206aaccac929cfdb7037a993b9217f8bea82769f2129585ba3` |
| 45 | `theorem` | [existsUnique_algebraMap_eq_of_span_eq_top](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/existsunique-algebramap-eq-of-span-eq-top--e86a0a0683ac4ebfa36e43b9.md) | 411 | `result-track:e86a0a0683ac4ebfa36e43b9dc8b2fa1ee4d979077943729493c47440dea8ef2` |
| 46 | `def` | [selfZPow](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow--57e7c642c3091f62c426d186.md) | 476 | `declaration-track:57e7c642c3091f62c426d186827bba01c819780666168f3185f44284a673905d` |
| 47 | `theorem` | [selfZPow_of_nonneg](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow-of-nonneg--8c2a83cef91dc2803ac29c42.md) | 479 | `result-track:8c2a83cef91dc2803ac29c42a330ff2f751cc2866906c6695e2d1c2f0eb7de68` |
| 48 | `theorem` | [selfZPow_natCast](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow-natcast--46185e61c535328c578ca00b.md) | 483 | `result-track:46185e61c535328c578ca00b9b7e7a0bfad1a2057de038dafdcec6ae85a82e88` |
| 49 | `theorem` | [selfZPow_zero](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow-zero--61a71dbad523f79cc5492d4e.md) | 487 | `result-track:61a71dbad523f79cc5492d4ed054ebb9d432025d68671be8e55f846cc4f0851e` |
| 50 | `theorem` | [selfZPow_of_neg](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow-of-neg--1a620ee7041093b540e4f3ba.md) | 490 | `result-track:1a620ee7041093b540e4f3baadaa15583d9b08aec11dbb3b905d3493f511d5a1` |
| 51 | `theorem` | [selfZPow_of_nonpos](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow-of-nonpos--c83fa1348f7e964e6685b722.md) | 494 | `result-track:c83fa1348f7e964e6685b722c33a017f24a27a3b16b349bc8d8c931fb1194cda` |
| 52 | `theorem` | [selfZPow_neg_natCast](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow-neg-natcast--530432074882c3eb9c23708a.md) | 501 | `result-track:530432074882c3eb9c23708a3ec2f3e2d8adc02fb20c15cc1e7974213a04223a` |
| 53 | `theorem` | [selfZPow_sub_natCast](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow-sub-natcast--3b4942fe3ad9a94318c005e7.md) | 505 | `result-track:3b4942fe3ad9a94318c005e73c2e6d3278bb996ba1a1cfb9b5851e9f15b9617c` |
| 54 | `theorem` | [selfZPow_add](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow-add--c91a802cb9f441b009553e30.md) | 515 | `result-track:c91a802cb9f441b009553e304a03c47985460aac2a01c0ae291aa2a14d8c9fe5` |
| 55 | `theorem` | [selfZPow_mul_neg](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow-mul-neg--03b80d78040b19ce3a8419a7.md) | 533 | `result-track:03b80d78040b19ce3a8419a7dc931e44c5e0cce73107a5d5e73f81b0cb68a397` |
| 56 | `theorem` | [selfZPow_neg_mul](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow-neg-mul--62fe6e5fe0c7fa8813695a33.md) | 544 | `result-track:62fe6e5fe0c7fa8813695a339e08d55d1c553d87ae1ac8adf80642c990812f30` |
| 57 | `theorem` | [selfZPow_pow_sub](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/selfzpow-pow-sub--a45536167c3370d71c77377a.md) | 547 | `result-track:a45536167c3370d71c77377ac90040fa6f656dd0d2f24eb8809c465e729c9b97` |
| 58 | `theorem` | [exists_reduced_fraction'](../../../../mathematics/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/declarations/exists-reduced-fraction--5e47d3295c1c7761bef5a295.md) | 564 | `result-track:5e47d3295c1c7761bef5a295f356d8634a7d655d77095c5988ff0cf5be556fc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
