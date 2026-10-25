# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Dimension.Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81a50ef4303c53940331d2dd6acb137e5b11943a",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81a50ef4303c53940331d2dd6acb137e5b11943a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasInjectiveDimensionLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/hasinjectivedimensionlt--dc0ba28e5e16fb1e989410b9.md) | 45 | `declaration-track:dc0ba28e5e16fb1e989410b97a20b8d00300cf09192dd01b626ac156c1208085` |
| 2 | `abbrev` | [HasInjectiveDimensionLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/hasinjectivedimensionle--dc8e0c8c51540ed5a3dcf3f6.md) | 52 | `declaration-track:dc8e0c8c51540ed5a3dcf3f656962db5e5ca9219145b1478ea3c3f42fd526769` |
| 3 | `lemma` | [subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/subsingleton--b6e34b47a31fe089b81e80f4.md) | 59 | `result-track:b6e34b47a31fe089b81e80f4a6683895f8e14bdb2d97530e9525bc2a26633177` |
| 4 | `lemma` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/mk--f0369ea65532321880cdc991.md) | 66 | `result-track:f0369ea65532321880cdc991747b3556b8d879d4defb5ea2061df71ca967d63c` |
| 5 | `lemma` | [Abelian.Ext.eq_zero_of_hasInjectiveDimensionLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/abelian-ext-eq-zero-of-hasinjectivedimensionlt--6d3c648e13d7f398cd54a8d8.md) | 75 | `result-track:6d3c648e13d7f398cd54a8d88b0953fec464691a4d8028ed50eb454ae397d1e4` |
| 6 | `lemma` | [hasInjectiveDimensionLT_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/hasinjectivedimensionlt-iff--cd6e2bc7c042339f3a6a154b.md) | 84 | `result-track:cd6e2bc7c042339f3a6a154b19ad3065b4d9e056416f5a27858e0c2fd8192b8a` |
| 7 | `lemma` | [Limits.IsZero.hasInjectiveDimensionLT_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/limits-iszero-hasinjectivedimensionlt-zero--2d3817ab8686e0a1188e932a.md) | 91 | `result-track:2d3817ab8686e0a1188e932ab13aea6fe48b1a9281b89f557dfc1c88c515a460` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/instance--ff99bd19d55dc872d1bb9ede.md) | 98 | `declaration-track:ff99bd19d55dc872d1bb9ede0b000e1e43ded77947faf2cb1f75d598b14105ff` |
| 9 | `lemma` | [isZero_of_hasInjectiveDimensionLT_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/iszero-of-hasinjectivedimensionlt-zero--89050ec9a3f7ac66e9bfec0d.md) | 101 | `result-track:89050ec9a3f7ac66e9bfec0d2774f76894610b3db66794ba2937abea7df44262` |
| 10 | `lemma` | [hasInjectiveDimensionLT_zero_iff_isZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/hasinjectivedimensionlt-zero-iff-iszero--0ce504d217b7ec308428f5a4.md) | 108 | `result-track:0ce504d217b7ec308428f5a4cb8cbe01a81c78261814bfe1102ada63d608cfa6` |
| 11 | `lemma` | [hasInjectiveDimensionLT_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/hasinjectivedimensionlt-of-ge--588a9e9c8d2fadb5f8e9cc3d.md) | 111 | `result-track:588a9e9c8d2fadb5f8e9cc3d38bd472d0ff98319f1bd6af702aca94843ea76c0` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/instance--bb4cd4ae37c2a2cb6770d706.md) | 119 | `declaration-track:bb4cd4ae37c2a2cb6770d7066c7701e5925a26e07fa32adf3b134f2f37f2b093` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/instance--36aa63290ada2e074132b4a1.md) | 123 | `declaration-track:36aa63290ada2e074132b4a1068fb716a31b84f5e2ddf023d759080cc5cf9c10` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/instance--9ca3f5741262b4d51440e178.md) | 127 | `declaration-track:9ca3f5741262b4d51440e17876d2fec865918f75026704ef479ff72746cab069` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/instance--e1c1a24d2061bf43f73e76eb.md) | 131 | `declaration-track:e1c1a24d2061bf43f73e76eb29d6ad9f432ff828e35fec2ef856298470836aaa` |
| 16 | `lemma` | [injective_iff_subsingleton_ext_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injective-iff-subsingleton-ext-one--ef323b8564cb5d4d6a3b4a8a.md) | 140 | `result-track:ef323b8564cb5d4d6a3b4a8a079b38cbce854dd3fafeec581c4f6e226edddf64` |
| 17 | `lemma` | [injective_iff_hasInjectiveDimensionLT_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injective-iff-hasinjectivedimensionlt-one--46fc774c2cbc994dc2016094.md) | 150 | `result-track:46fc774c2cbc994dc2016094b3580dd1639bd00d6b0b617507966b877d7de348` |
| 18 | `lemma` | [injective_iff_hasInjectiveDimensionLE_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injective-iff-hasinjectivedimensionle-zero--93f128fe0c0d52ea01ffebfd.md) | 156 | `result-track:93f128fe0c0d52ea01ffebfd1a7ff2d98a42be69f854aa66d6d705c187685067` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/instance--343f624abe117105b60bc5af.md) | 159 | `declaration-track:343f624abe117105b60bc5afb85e8b0790347112895f1cb98950cf0520dc8cf1` |
| 20 | `lemma` | [Retract.hasInjectiveDimensionLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/retract-hasinjectivedimensionlt--2bbf46036ca59e202512518b.md) | 164 | `result-track:2bbf46036ca59e202512518b0acd834d740ed9baac9ebdbaca59d0b9be7f27d4` |
| 21 | `lemma` | [hasInjectiveDimensionLT_of_iso](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/hasinjectivedimensionlt-of-iso--29581ca370cb25dfdcfca7ed.md) | 173 | `result-track:29581ca370cb25dfdcfca7edbb5ce82cb68e5d8376be8d6e501747d51a8100cf` |
| 22 | `lemma` | [hasInjectiveDimensionLT_X₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/hasinjectivedimensionlt-x--f7f301cd5f2b3f41a669f444.md) | 189 | `result-track:f7f301cd5f2b3f41a669f4445928ca2aa183a6f4536a19bbc70c6b51383046ad` |
| 23 | `lemma` | [hasInjectiveDimensionLT_X₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/hasinjectivedimensionlt-x--7cb7e5a9d00b3127af38b574.md) | 199 | `result-track:7cb7e5a9d00b3127af38b574f363b59ddf345b8b6a40edef870a368989a5bdf6` |
| 24 | `lemma` | [hasInjectiveDimensionLT_X₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/hasinjectivedimensionlt-x--150ddf7b50b396644b542884.md) | 210 | `result-track:150ddf7b50b396644b542884e43e17cb6d71278fc13c84b0583dbf5b8734951f` |
| 25 | `lemma` | [hasInjectiveDimensionLT_X₃_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/hasinjectivedimensionlt-x-iff--1816400691eb5e2c795ddd30.md) | 220 | `result-track:1816400691eb5e2c795ddd303127d6d5e4a4e9031d6ad962ba619632fd74ef6a` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/instance--11a8c0ca6ea36385da06faeb.md) | 229 | `declaration-track:11a8c0ca6ea36385da06faeb4d5211827e79f9f287a335d72afddf350893f5cd` |
| 27 | `lemma` | [hasInjectiveDimensionLT_of_enoughProjectives](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/hasinjectivedimensionlt-of-enoughprojectives--8861b6aeb805acc8a876af15.md) | 234 | `result-track:8861b6aeb805acc8a876af157ee2634c5d0bb342fb152a0030c0d3fd2603bd11` |
| 28 | `def` | [injectiveDimension](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension--8542ff8ec6cde68feebe4082.md) | 263 | `declaration-track:8542ff8ec6cde68feebe408217bce0ebf29253add226185d3ee608d9cb826a14` |
| 29 | `lemma` | [injectiveDimension_eq_of_iso](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-eq-of-iso--08237a0968748534b7abd42d.md) | 266 | `result-track:08237a0968748534b7abd42d80b75940c12633e20da9a7c28b356265a2f67cd2` |
| 30 | `lemma` | [Retract.injectiveDimension_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/retract-injectivedimension-le--18937700620dcd3437b2a56f.md) | 273 | `result-track:18937700620dcd3437b2a56f1bb9178d392d85a32eb22aa35fb3b355acd7faf8` |
| 31 | `lemma` | [injectiveDimension_lt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-lt-iff--1688df1b366ba2a7ec1ef2cf.md) | 282 | `result-track:1688df1b366ba2a7ec1ef2cfbc2b339ec05a971d3a0d89716c1bea6d13e7d808` |
| 32 | `lemma` | [injectiveDimension_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-le-iff--c541dbdd66ce1b7948f05d5c.md) | 293 | `result-track:c541dbdd66ce1b7948f05d5c4f08196f1a53199ad0617a8348d38614347ed512` |
| 33 | `lemma` | [injectiveDimension_ge_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-ge-iff--f7470645c2e3b1f63429eca1.md) | 297 | `result-track:f7470645c2e3b1f63429eca1e64fb3c1af8e9cc272f3fa3ca7b266d3dedaf203` |
| 34 | `lemma` | [injectiveDimension_eq_bot_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-eq-bot-iff--64d202793faf1e7dcd194dda.md) | 301 | `result-track:64d202793faf1e7dcd194dda0ced5baa592f6690a6f1a8512e85c3f6846ac39c` |
| 35 | `lemma` | [injectiveDimension_ne_top_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-ne-top-iff--7f4f5b010d5ce4aff829e3c7.md) | 306 | `result-track:7f4f5b010d5ce4aff829e3c74fe0e722a46c24f3bdfcad06d3eab6842ed641c8` |
| 36 | `lemma` | [Injective.injectiveDimension_le_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injective-injectivedimension-le-zero--c8166ce68c20c62d98795f28.md) | 326 | `result-track:c8166ce68c20c62d98795f28598af4e3435363ed45acfcad5cafb96fff99bc89` |
| 37 | `lemma` | [injectiveDimension_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-eq-zero-iff--da3ccc0fc2aef9b7f8e9412d.md) | 330 | `result-track:da3ccc0fc2aef9b7f8e9412db0a7164313d9fb86678e89fc552e618b494fb74a` |
| 38 | `lemma` | [injectiveDimension_ge_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-ge-zero-iff--2e4d2e9822e8250b97a994e3.md) | 336 | `result-track:2e4d2e9822e8250b97a994e3cdca77fc05b0c70ccf76979d332914102b338883` |
| 39 | `lemma` | [injectiveDimension_X₂_le_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-x-le-sup--10feb9d9b39c4577d52912da.md) | 349 | `result-track:10feb9d9b39c4577d52912da2d2133286d4227ee98ba68972512ad90cf465bd9` |
| 40 | `lemma` | [injectiveDimension_X₁_le_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-x-le-sup--cc9bacbacb150dc7a3931a56.md) | 363 | `result-track:cc9bacbacb150dc7a3931a56e0e25db52e946af5234fc18f937c8ed7bbc7b306` |
| 41 | `lemma` | [injectiveDimension_X₃_succ_le_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-x-succ-le-sup--7146118b19f8dade2f19008d.md) | 380 | `result-track:7146118b19f8dade2f19008d877bb99370617c0653c04dae7f19b21ce3ab5761` |
| 42 | `lemma` | [injectiveDimension_X₁_eq_succ_of_not_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5324ccf2d5352fda6b7ce6327ae41bbf25ecf3310199a2a82410e4ae0b5461d7.lean/declarations/injectivedimension-x-eq-succ-of-not-injective--ba5953eb27bc8ca0317179bc.md) | 397 | `result-track:ba5953eb27bc8ca0317179bc4a1a72b1ecd21621cbfdc603256e6cd0c2206eae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
