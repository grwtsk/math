# Verification target: GRWTSK.Algebra.Basic.Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0e2455405c74d94054f265988fe06881776ed35",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0e2455405c74d94054f265988fe06881776ed35`.

Source path: `GRWTSK/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.MonoidLocalization.Away` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Away](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/away--e1d661d429886411eb424677.md) | 46 | `declaration-track:e1d661d429886411eb42467778aec3ff1d7531b2a5262a05e859dd54d22ee497` |
| 2 | `def` | [invSelf](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/invself--326484d0e9af84abfeaaf2eb.md) | 54 | `declaration-track:326484d0e9af84abfeaaf2eb3ba3ab5c6a545d7d5aa5fbd4524cad3ea014f427` |
| 3 | `theorem` | [mul_invSelf](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/mul-invself--1b5df5069982ccae10347bb0.md) | 58 | `result-track:1b5df5069982ccae10347bb0a68f01a1801686ba3caf8e1d8cd072c7bf5d535f` |
| 4 | `def` | [sec](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/sec--8356a36cf6d2eee11ecc0217.md) | 65 | `declaration-track:8356a36cf6d2eee11ecc0217ad6e1504a3b4ee11d464fb5b50bb0526091f119b` |
| 5 | `lemma` | [sec_spec](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/sec-spec--074bea5b95863c5f37375b06.md) | 69 | `result-track:074bea5b95863c5f37375b06a9134e1b7695813606ec913c2e02db48700a0089` |
| 6 | `lemma` | [algebraMap_pow_isUnit](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/algebramap-pow-isunit--13fcb70cf7e5c15bf80bf328.md) | 75 | `result-track:13fcb70cf7e5c15bf80bf328fc36c4731e4f51300deb54e9bc2a2975f60a1455` |
| 7 | `lemma` | [algebraMap_isUnit](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/algebramap-isunit--788fb0eba400b336f45bc20a.md) | 78 | `result-track:788fb0eba400b336f45bc20a5895f87ec692fd1306d81634f0cd76cdee0f43e7` |
| 8 | `lemma` | [algebraMap_isUnit_iff](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/algebramap-isunit-iff--c0bee98a692467bd3643887e.md) | 81 | `result-track:c0bee98a692467bd3643887e45c72ee394562f21c4a91c50b51db4183aecd842` |
| 9 | `lemma` | [surj](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/surj--8995df107d1174518b63b9a8.md) | 84 | `result-track:8995df107d1174518b63b9a886f9da1d3af24c3a6730ca3e083a94dc82736699` |
| 10 | `lemma` | [exists_of_eq](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/exists-of-eq--f5796a9b82a753abdf745f73.md) | 89 | `result-track:f5796a9b82a753abdf745f73faf7b45f2b33286d03c8727dfd32ca5442ee781a` |
| 11 | `lemma` | [mk](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/mk--43d9e27bf0f6eef2bbab527f.md) | 95 | `result-track:43d9e27bf0f6eef2bbab527f32d304727217f8bfa49121bfb6226b9ae987b685` |
| 12 | `lemma` | [of_associated](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/of-associated--96e6e7046cae9659904c54e0.md) | 111 | `result-track:96e6e7046cae9659904c54e0846d6c02156207821ddadb253c9b983b2077210d` |
| 13 | `lemma` | [iff_of_associated](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/iff-of-associated--0cd8b6347a39b942d12f472f.md) | 126 | `result-track:0cd8b6347a39b942d12f472fdd54c162010f66037cf92e35c4917376eb25f21e` |
| 14 | `lemma` | [isUnit_of_dvd](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/isunit-of-dvd--8495b83eb8edf87e47a2d04e.md) | 130 | `result-track:8495b83eb8edf87e47a2d04ee741f4102aca2950f73758c403714e3d1ea3ebdd` |
| 15 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/lift--43415c6776e4e13fa90b9164.md) | 138 | `declaration-track:43415c6776e4e13fa90b9164b5756287c6bb769149e78ab96bfe1aa0388c5c7f` |
| 16 | `theorem` | [lift_eq](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/lift-eq--d4875c61229a9bc9413cfeca.md) | 146 | `result-track:d4875c61229a9bc9413cfeca5f518ac10601ed2c28beb78a3a5c7a3c8950e63c` |
| 17 | `theorem` | [lift_comp](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/lift-comp--4e8f42e404997433446c652b.md) | 150 | `result-track:4e8f42e404997433446c652b0dbb4f5fbb6357a25ece0d956707626cd01a6765` |
| 18 | `def` | [awayToAwayLeft](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/awaytoawayleft--ee928e4e3e185236c8e1d03b.md) | 158 | `declaration-track:ee928e4e3e185236c8e1d03be6b66f4d56e5d3f317d6667bb1a575127d0b9f62` |
| 19 | `def` | [awayToAwayRight](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/awaytoawayright--a2982f580bad212e5042b523.md) | 163 | `declaration-track:a2982f580bad212e5042b523d84a190e7f756a1bc11c1fe2bfc825e5ba20c468` |
| 20 | `theorem` | [awayToAwayLeft_eq](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/awaytoawayleft-eq--2a7a1e234767c8ac7117d254.md) | 166 | `result-track:2a7a1e234767c8ac7117d2549d0116c7b2c311341b7ab23811dfa121f425f926` |
| 21 | `theorem` | [awayToAwayRight_eq](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/awaytoawayright-eq--7487d6f131fbb1ca7287dc70.md) | 170 | `result-track:7487d6f131fbb1ca7287dc70ba57c308b2e409fce01ea8f59cc3feff705106f6` |
| 22 | `def` | [map](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/map--b038d5ad9c2a5da477056b6c.md) | 177 | `declaration-track:b038d5ad9c2a5da477056b6c61ddea31fd10815594876ff1fdd4c857a000379a` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/instance--1ea820404db3995e970c1a8c.md) | 192 | `declaration-track:1ea820404db3995e970c1a8ca53e8dcf2b3707f28ecea4841ec19ed02e767e22` |
| 24 | `def` | [mapₐ](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/map--0a413082157a34849bff92cd.md) | 197 | `declaration-track:0a413082157a34849bff92cd218bc7c8297023083a9bcfe988821749cb5d6e5d` |
| 25 | `lemma` | [mapₐ_apply](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/map-apply--256baee321ab93eb62c43e6a.md) | 204 | `result-track:256baee321ab93eb62c43e6a3b9b95e6ccc035ed4efb1f85f8afca06e68232f4` |
| 26 | `lemma` | [mapₐ_injective_of_injective](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/map-injective-of-injective--edc5c688d92da3abdea6b0e3.md) | 210 | `result-track:edc5c688d92da3abdea6b0e342ac8d576511161f1f0ff2c3e73071e238f320cd` |
| 27 | `lemma` | [mapₐ_surjective_of_surjective](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/map-surjective-of-surjective--4368377b053ea4ce262d3cc1.md) | 214 | `result-track:4368377b053ea4ce262d3cc1e0f23064c3d27b694acce5b978ff7e0add7f4489` |
| 28 | `lemma` | [mul](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/mul--49c6dff897deff8dc5c9265c.md) | 225 | `result-track:49c6dff897deff8dc5c9265c95c2aaac1819f97a711a8bec1dd51837ef54c871` |
| 29 | `lemma` | [mul'](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/mul--ec34e11d2862cbbc5bcb184d.md) | 250 | `result-track:ec34e11d2862cbbc5bcb184dc13206d07d0a61771fa61465f90809887b8bc2f2` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/instance--fd2582938620f0207f4c43bf.md) | 257 | `declaration-track:fd2582938620f0207f4c43bfce1d5c2f996689d4f414689f0eae1c902378973b` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/instance--7047358caa007582832a8ef8.md) | 263 | `declaration-track:7047358caa007582832a8ef878bd564827d41bfe170ead1243ae1f2d8afdd06f` |
| 32 | `lemma` | [commutes](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/commutes--df7cf78f8a7e229ee3431cab.md) | 269 | `result-track:df7cf78f8a7e229ee3431cabf7e26027bdfb1f8dd96676952730104a18d3bdab` |
| 33 | `def` | [atUnit](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/atunit--ef62809d03a3115f69c17598.md) | 293 | `declaration-track:ef62809d03a3115f69c17598c9423a6d534433386b07a51365f9f3fd87664246` |
| 34 | `def` | [atOne](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/atone--503c690d221cf043c1edc972.md) | 298 | `declaration-track:503c690d221cf043c1edc972c8ff0fd2cedc0a047e29d20c2bfc3ce0cc5f1876` |
| 35 | `theorem` | [away_of_isUnit_of_bijective](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/away-of-isunit-of-bijective--c418e7f5068688780e0e124b.md) | 301 | `result-track:c418e7f5068688780e0e124bd9ab977420b3e310c521ef9e5ba06cb85672b9a1` |
| 36 | `lemma` | [away_of_isIdempotentElem_of_mul](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/away-of-isidempotentelem-of-mul--56251623abf747c8f184bdf4.md) | 319 | `result-track:56251623abf747c8f184bdf43a62fa73e8054fbfc52e7de40f51733b90796ad0` |
| 37 | `lemma` | [away_of_isIdempotentElem](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/away-of-isidempotentelem--e2131c85701e20c17cacf0b5.md) | 332 | `result-track:e2131c85701e20c17cacf0b573eb111eae89afd84831ac64f5dcaefeff19e9d6` |
| 38 | `instance` | [away_fst](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/away-fst--9eca356e7ad99eb48933957c.md) | 342 | `declaration-track:9eca356e7ad99eb48933957c0bef29c44545cff8b42bf6b820831b4c8413cde4` |
| 39 | `instance` | [away_snd](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/away-snd--d4bfdc7eca2213d7ec9a10fe.md) | 349 | `declaration-track:d4bfdc7eca2213d7ec9a10fe982a325ea080936234be61631c87ded54d87082b` |
| 40 | `abbrev` | [awayLift](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/awaylift--6505b660c3883010325524f1.md) | 368 | `declaration-track:6505b660c3883010325524f19fb8b6782de665c18c0ad1ef7b7329131e1162db` |
| 41 | `lemma` | [awayLift_mk](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/awaylift-mk--a1aef51b5dbc1a643c39172f.md) | 372 | `result-track:a1aef51b5dbc1a643c39172fd439607c20bcf8d3b3af56e50faa16fa32e6bc92` |
| 42 | `abbrev` | [awayMap](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/awaymap--6bc4f35555fb939c00099cbd.md) | 380 | `declaration-track:6bc4f35555fb939c00099cbdd4f758a8e89dbd30a7186553bcfad6c593be6aca` |
| 43 | `abbrev` | [awayMapₐ](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/awaymap--d836d9449cd538d23fa2ede3.md) | 388 | `declaration-track:d836d9449cd538d23fa2ede3dc316c8808c946a0f9ad407b7f7b1d96ffe66d17` |
| 44 | `theorem` | [algebraMap_injective_of_span_eq_top](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/algebramap-injective-of-span-eq-top--6af1dc6be4a569ceeadee79e.md) | 392 | `result-track:6af1dc6be4a569ceeadee79eb5633c4567284b5d691d22da5af68ae492204891` |
| 45 | `theorem` | [existsUnique_algebraMap_eq_of_span_eq_top](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/existsunique-algebramap-eq-of-span-eq-top--2305fe2d21df9ff76de4e07e.md) | 403 | `result-track:2305fe2d21df9ff76de4e07e87170098389985ab577b6ee8ca613f2f91238c12` |
| 46 | `def` | [selfZPow](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow--539fddf50e0cd1271bc232a2.md) | 468 | `declaration-track:539fddf50e0cd1271bc232a2248773493f7507884dbf8e92b54e7295c052cc04` |
| 47 | `theorem` | [selfZPow_of_nonneg](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow-of-nonneg--2c030a996e885d9deb340cdc.md) | 471 | `result-track:2c030a996e885d9deb340cdc2ca6f6d44949260a15f3cb2ed3f94f3b184f1ee3` |
| 48 | `theorem` | [selfZPow_natCast](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow-natcast--8b24054e77c6e31b67831806.md) | 475 | `result-track:8b24054e77c6e31b678318063e6a031eb8de4b69d142590738bd394b54cb0340` |
| 49 | `theorem` | [selfZPow_zero](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow-zero--6fd1050cfe5bc92bde74b6a2.md) | 479 | `result-track:6fd1050cfe5bc92bde74b6a2d93c3a9689214de62c6796a14240be0f6ed262d9` |
| 50 | `theorem` | [selfZPow_of_neg](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow-of-neg--a7223349d910dff95fe5ec3c.md) | 482 | `result-track:a7223349d910dff95fe5ec3c6db6c463274a4eaab697a44fe4523ca956df0069` |
| 51 | `theorem` | [selfZPow_of_nonpos](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow-of-nonpos--c1a8f860ee20e4783b17534e.md) | 486 | `result-track:c1a8f860ee20e4783b17534edd43fe89551df4cafbe3e316845760cd94a49842` |
| 52 | `theorem` | [selfZPow_neg_natCast](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow-neg-natcast--226d06f8a83cf0b33078bae5.md) | 493 | `result-track:226d06f8a83cf0b33078bae54692d14dee4146c5c23bf486e10fc7e3c3a414df` |
| 53 | `theorem` | [selfZPow_sub_natCast](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow-sub-natcast--f090b293734e237b267c52e9.md) | 497 | `result-track:f090b293734e237b267c52e93d56409d69fac43c0ad5433fd39e2a29615b5561` |
| 54 | `theorem` | [selfZPow_add](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow-add--e65feee33c61e867d763d63f.md) | 507 | `result-track:e65feee33c61e867d763d63f76137ed2a8817ea1183b7b1e437d76ca5cba5a3d` |
| 55 | `theorem` | [selfZPow_mul_neg](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow-mul-neg--69b9d845f8f42c3ffdba0427.md) | 525 | `result-track:69b9d845f8f42c3ffdba0427db607cd52d8652e87c915b99a142bcd8c3b6997a` |
| 56 | `theorem` | [selfZPow_neg_mul](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow-neg-mul--53c27d68b2fd35b4013529fc.md) | 536 | `result-track:53c27d68b2fd35b4013529fc5d5809517e183132b395efa01f51f70cfc09ed8f` |
| 57 | `theorem` | [selfZPow_pow_sub](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/selfzpow-pow-sub--1686843e31995b8c2cfb1dad.md) | 539 | `result-track:1686843e31995b8c2cfb1dadfdd8fb706e1f3c9691508ce11991d7f0619a775a` |
| 58 | `theorem` | [exists_reduced_fraction'](../../../../mathematics/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/declarations/exists-reduced-fraction--c721a9128b9169205f1b2c6f.md) | 556 | `result-track:c721a9128b9169205f1b2c6fe491f7007be4c531ac24ca1ed50deb6e17f31087` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
