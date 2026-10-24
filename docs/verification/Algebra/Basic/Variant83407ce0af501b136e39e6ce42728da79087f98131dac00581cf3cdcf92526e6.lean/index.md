# Verification target: GRWTSK.Algebra.Basic.Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9eba332399ccf5d9ec775d2cfd02b4795105945",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9eba332399ccf5d9ec775d2cfd02b4795105945`.

Source path: `GRWTSK/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean.json)

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
| 1 | `class` | [FormallySmooth](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/formallysmooth--8762aedca302f419169872b8.md) | 78 | `declaration-track:8762aedca302f419169872b89e93c3cb8d8ada0268e69f7fe8a365dba93e1a56` |
| 2 | `lemma` | [FormallySmooth.comp_surjective](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/formallysmooth-comp-surjective--02c355a9c4f69bae0c73cc5b.md) | 88 | `result-track:02c355a9c4f69bae0c73cc5b56598f22dfd46a47d465b39bc6341091d4a776d0` |
| 3 | `instance` | [instFormallySmoothMvPolynomial](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/instformallysmoothmvpolynomial--fe2edd8a8e624d5fc1a57e0d.md) | 120 | `declaration-track:fe2edd8a8e624d5fc1a57e0d3f64d81ea879853100fe86a04110038d9d312402` |
| 4 | `theorem` | [exists_lift](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/exists-lift--932e46ca23e5e45359b94179.md) | 134 | `result-track:932e46ca23e5e45359b9417916c359ef25f7187b90dfcc4a7aaac1cb98df99ab` |
| 5 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/lift--e53844f0074afcd72c2e6603.md) | 156 | `declaration-track:e53844f0074afcd72c2e66034743392d6b710ef9e49151bdf5641d415862ca85` |
| 6 | `theorem` | [comp_lift](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/comp-lift--e8b344a0c46e921da94b6f44.md) | 161 | `result-track:e8b344a0c46e921da94b6f44b0253a14c5f7ca3a1e1c5bbd1b23f47ca214cd5f` |
| 7 | `theorem` | [mk_lift](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/mk-lift--265f80c17a5b8d3360545cac.md) | 166 | `result-track:265f80c17a5b8d3360545cacc2d531a2a9e61080d79ac3be2c5e851bd08c1425` |
| 8 | `def` | [liftOfSurjective](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/liftofsurjective--79afdbf4d774b3af21516269.md) | 174 | `declaration-track:79afdbf4d774b3af2151626912e1eed92d377ca06ecb326aec8fbd15398257bf` |
| 9 | `theorem` | [liftOfSurjective_apply](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/liftofsurjective-apply--581acfb8dc25a3bc6b2e2b76.md) | 181 | `result-track:581acfb8dc25a3bc6b2e2b767098bc551ba8390f9b0ca161219c4333f4f80a90` |
| 10 | `theorem` | [comp_liftOfSurjective](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/comp-liftofsurjective--da569a2ea39a01cef708ae3c.md) | 192 | `result-track:da569a2ea39a01cef708ae3cd1b3a9c9deb3643a6df13583134a618d67d0e22e` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/instance--b54939c2cdc52e6a5646b90b.md) | 197 | `declaration-track:b54939c2cdc52e6a5646b90b3e7a589fc0c390329820e9706118748428f0fd02` |
| 12 | `def` | [homInfinitesimal](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/hominfinitesimal--15a093550db9bf89d2bdc444.md) | 210 | `declaration-track:15a093550db9bf89d2bdc44451c01b18120b75557f5a3ab547916574b25be194` |
| 13 | `def` | [H1Cotangent.equivOfFormallySmooth](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/h1cotangent-equivofformallysmooth--a4369576d08d36894b1b7a7b.md) | 236 | `declaration-track:a4369576d08d36894b1b7a7bac5c104e3b83a847d2f61ef9df9761c03c645429` |
| 14 | `lemma` | [H1Cotangent.equivOfFormallySmooth_toLinearMap](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/h1cotangent-equivofformallysmooth-tolinearmap--08060b3f1f304ea1f8ce9d19.md) | 243 | `result-track:08060b3f1f304ea1f8ce9d19a524ca058ff6396965df046cb107611135571ed5` |
| 15 | `lemma` | [H1Cotangent.equivOfFormallySmooth_apply](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/h1cotangent-equivofformallysmooth-apply--8ccc1ce7ef5f2b8d3c772980.md) | 252 | `result-track:8ccc1ce7ef5f2b8d3c772980e5c68612340f6ffe884cf6fe3a5abd7a3c0c725f` |
| 16 | `lemma` | [H1Cotangent.equivOfFormallySmooth_symm](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/h1cotangent-equivofformallysmooth-symm--88f522138fdac7ba88c4d24c.md) | 257 | `result-track:88f522138fdac7ba88c4d24cae5c1d19cac8dd565b52c0b51b84a92f73719b44` |
| 17 | `def` | [equivH1CotangentOfFormallySmooth](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/equivh1cotangentofformallysmooth--a232f4f2ac1bb420e29cd5cd.md) | 264 | `declaration-track:a232f4f2ac1bb420e29cd5cdb1eae39bc06c244ec18860755304204daf67b926` |
| 18 | `lemma` | [cotangentComplex_injective_iff](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/cotangentcomplex-injective-iff--72be9ffba0d72daef7a155f6.md) | 270 | `result-track:72be9ffba0d72daef7a155f6909df06eafc15138b2c54d39df9ddc0b750477e6` |
| 19 | `lemma` | [kerCotangentToTensor_injective_iff](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/kercotangenttotensor-injective-iff--8ce10d0011a69bb42def9162.md) | 284 | `result-track:8ce10d0011a69bb42def916276a0caeb09c26eea0863e12cec9f28fa7a9f968d` |
| 20 | `theorem` | [iff_split_injection](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/iff-split-injection--0166be7dcfe783d5c901b8dc.md) | 299 | `result-track:0166be7dcfe783d5c901b8dced189056430a3c196381a78ea3a64e4e5aba77dc` |
| 21 | `theorem` | [_root_.GRWTSK.Algebra.FormallySmooth.Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.Algebra.Extension.formallySmooth_iff_split_injection](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/root-grwtsk-algebra-formallysmooth-variante5b4f616f845d849846c1d0748ed2f--3d10eac752b864f7a88d7272.md) | 320 | `result-track:3d10eac752b864f7a88d7272e95582951b8540e2bd83f7f109cdba5c5e2c611e` |
| 22 | `theorem` | [iff_split_surjection](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/iff-split-surjection--0917d52fbc67e4a1b17a0aec.md) | 339 | `result-track:0917d52fbc67e4a1b17a0aec72b520a54f037c8fd41c40d14602e1f897daf110` |
| 23 | `theorem` | [of_split](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/of-split--c16ce4bc97d5fca4499f4ad4.md) | 346 | `result-track:c16ce4bc97d5fca4499f4ad4eeaca276fee81f64ab957a635ea8695fd64f5ab1` |
| 24 | `theorem` | [of_comp_surjective](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/of-comp-surjective--8ccf0077b9c118b6812c7d9e.md) | 354 | `result-track:8ccf0077b9c118b6812c7d9e9e9e7b8c49d22383cd75f4f4523acbb023e4f534` |
| 25 | `theorem` | [iff_comp_surjective](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/iff-comp-surjective--c68469167d3618fa02b038b1.md) | 379 | `result-track:c68469167d3618fa02b038b14033d5055d389b5534b4f23e27eae7b5413ca59e` |
| 26 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/of-equiv--02f5526b45a2a7d2c97e942a.md) | 391 | `result-track:02f5526b45a2a7d2c97e942a76043b609857a8e6a61d7c93fef74c0464badfef` |
| 27 | `theorem` | [iff_of_equiv](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/iff-of-equiv--6fc7f2d1187b0378915895c0.md) | 395 | `result-track:6fc7f2d1187b0378915895c0e8da7ac3fc605fbef50d714a64d9190b563c1667` |
| 28 | `instance` | [polynomial](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/polynomial--e85d4d50ff88427ef043fa73.md) | 403 | `declaration-track:e85d4d50ff88427ef043fa73227fd0c46c2ccce6578afb74807bb8d92ac547fd` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/instance--efaf9aa38a09e854a9b1f923.md) | 406 | `declaration-track:efaf9aa38a09e854a9b1f9237a8a39608f890db1fc83bc8f250d6350cf5ae416` |
| 30 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/comp--899fc4da8f82d268d77adbcd.md) | 416 | `result-track:899fc4da8f82d268d77adbcd22c78728d5d80f378d9bea42560928ff0ac034c4` |
| 31 | `lemma` | [of_restrictScalars](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/of-restrictscalars--1000ab4b3951b3fc8ead34bc.md) | 424 | `result-track:1000ab4b3951b3fc8ead34bcfcf030dc0dd1a2a4afd28a297a1079e120780eb7` |
| 32 | `lemma` | [iff_of_surjective](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/iff-of-surjective--52e1fe385eafd832e8793347.md) | 443 | `result-track:52e1fe385eafd832e87933470921221069824617123f11fec1b3757038b2632b` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/instance--8f13fc02058d58f4043d741a.md) | 467 | `declaration-track:8f13fc02058d58f4043d741a199712f5177ebb7748908bc0be2eb9fee4fafd9d` |
| 34 | `theorem` | [of_isLocalization](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/of-islocalization--1c3ba3b061e9ab3259264b07.md) | 490 | `result-track:1c3ba3b061e9ab3259264b07053f70b79766ca9334148a422f8044b87d966f21` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/instance--f2ffa962dc4637c5a084b8f1.md) | 505 | `declaration-track:f2ffa962dc4637c5a084b8f1918bedc283aa25beb984cf6787e7237b767b3f8e` |
| 36 | `theorem` | [localization_base](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/localization-base--cc8f42fabd40fe0b9187a96f.md) | 510 | `result-track:cc8f42fabd40fe0b9187a96f06f550b2c803963090caac4ab24dd8d09fd7eae1` |
| 37 | `theorem` | [localization_map](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/localization-map--ed1e99e2a8515197f9ef1d25.md) | 530 | `result-track:ed1e99e2a8515197f9ef1d2570b22ec29a00ea7cb931990b0dc9719f28839ee0` |
| 38 | `class` | [Smooth](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/smooth--541f0b2b85d27dd0ead3d088.md) | 548 | `declaration-track:541f0b2b85d27dd0ead3d088e83d4eb40ddaadd935c387a4f0e5808b898bf725` |
| 39 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/of-equiv--c47ee4221653a9e3d0a78855.md) | 562 | `result-track:c47ee4221653a9e3d0a78855eb0a256d864c27eb8581dc51fb8210e607480501` |
| 40 | `theorem` | [of_isLocalization_Away](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/of-islocalization-away--ee7774d9203f21fb3ea1368e.md) | 567 | `result-track:ee7774d9203f21fb3ea1368eefe935b797ccd9e5145f6dc711d77523fd83452b` |
| 41 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/comp--ccc89d43481ade09c3b3e17e.md) | 576 | `result-track:ccc89d43481ade09c3b3e17e674671d658b747dac76442dc255d3e92d29edafb` |
| 42 | `instance` | [baseChange](../../../../mathematics/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/declarations/basechange--42b7a4956ea5ada8951b6891.md) | 581 | `declaration-track:42b7a4956ea5ada8951b689104585a13a1c4234128ce902779d2b05c01d05bdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
