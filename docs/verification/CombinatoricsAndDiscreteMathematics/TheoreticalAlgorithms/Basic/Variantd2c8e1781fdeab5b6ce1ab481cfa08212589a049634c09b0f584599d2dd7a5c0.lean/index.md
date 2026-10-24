# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a28dd3ecdb2abc186169de36524ceef68cb02834",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a28dd3ecdb2abc186169de36524ceef68cb02834`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Semiquot` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Data.Rat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Init` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Int.shift2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/int-shift2--dfc36553c91b5d8b8974c966.md) | 29 | `declaration-track:dfc36553c91b5d8b8974c9663f531eb94840910047b24337ae995ebbbe611581` |
| 2 | `inductive` | [RMode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/rmode--e0c478689bd16890ef346874.md) | 36 | `declaration-track:e0c478689bd16890ef346874461812a8f853cf5abc9cc82b1eeffe90ad851683` |
| 3 | `class` | [FloatCfg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/floatcfg--716142bdaf7617736d45e94a.md) | 41 | `declaration-track:716142bdaf7617736d45e94afe47eed46042ed450ea5ac15fefb83ca95153fb7` |
| 4 | `def` | [prec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/prec--94f20831be4c295055fdb7e2.md) | 50 | `declaration-track:94f20831be4c295055fdb7e28619d65e74502dc275c1464ad5a4151cf09fcd7a` |
| 5 | `def` | [emax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/emax--5f8be2f193e76b39ddf35e64.md) | 54 | `declaration-track:5f8be2f193e76b39ddf35e6458f94df832c9d667252be4d01a6fca80b5aab941` |
| 6 | `def` | [emin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/emin--9e36bde340152aef34423732.md) | 58 | `declaration-track:9e36bde340152aef3442373293edfc8fd3523d23bff952580363243ee1baf3ae` |
| 7 | `def` | [ValidFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/validfinite--60916933cbedd4b6c1f739ea.md) | 62 | `declaration-track:60916933cbedd4b6c1f739eaae38d8c63009c65658d89970cfc24838bfaf9b41` |
| 8 | `instance` | [decValidFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/decvalidfinite--75bcc65da3b2e953e1b4fd40.md) | 65 | `declaration-track:75bcc65da3b2e953e1b4fd402becd443272b6d7a8b9d795f62530e06b5cb0e2b` |
| 9 | `inductive` | [Float](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/float--dd9232e1caed3ecf7444d372.md) | 69 | `declaration-track:dd9232e1caed3ecf7444d372ca8b75fd9a5ee09074c920a7d2be13f84516b0bb` |
| 10 | `def` | [Float.isFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/float-isfinite--9582fbeb5302f9cd1458a4e1.md) | 75 | `declaration-track:9582fbeb5302f9cd1458a4e1f5abbd8b436ed175fd90332f21847a37c45bdf31` |
| 11 | `def` | [toRat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/torat--1b87677b79b2b27338561d9b.md) | 80 | `declaration-track:1b87677b79b2b27338561d9bf20d0fb1874a7b62b9a1328dceb6e675636f7cb1` |
| 12 | `theorem` | [Float.Zero.valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/float-zero-valid--2581903a8314529b91177cde.md) | 86 | `result-track:2581903a8314529b91177cde686e8f4e167c2464f9e97387a0149231ceaf275a` |
| 13 | `def` | [Float.zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/float-zero--f7eaeca024359d6801b7523b.md) | 102 | `declaration-track:f7eaeca024359d6801b7523b6c740054d6b97a6620d9fc202dcb7d24421e18a5` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/instance--baba18b3d2186fdf14aeb167.md) | 105 | `declaration-track:baba18b3d2186fdf14aeb1676f1191d7997b80a49f5383500ccd57070f8eb8d6` |
| 15 | `def` | [Float.sign'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/float-sign--c3dd0ad7994b97c0374045e8.md) | 109 | `declaration-track:c3dd0ad7994b97c0374045e8aea8d817fd38a841fa234158889814e96e4fff9c` |
| 16 | `def` | [Float.sign](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/float-sign--63be72507e5171f50e5d63b6.md) | 115 | `declaration-track:63be72507e5171f50e5d63b68c36db020774b699243e8cb1c5493f35da35254c` |
| 17 | `def` | [Float.isZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/float-iszero--1c3dd75d89ecfe341fc46ce2.md) | 121 | `declaration-track:1c3dd75d89ecfe341fc46ce23b15a34f2b631f8bd3ebf0b814dacf16733af56d` |
| 18 | `def` | [Float.neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/float-neg--14a373bd6435e3fe4294fec6.md) | 126 | `declaration-track:14a373bd6435e3fe4294fec60f5ce9ef65bb7014c862d40de27c935214e5d7c7` |
| 19 | `def` | [divNatLtTwoPow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/divnatlttwopow--4a03045d95e6b6e70f2567f9.md) | 132 | `declaration-track:4a03045d95e6b6e70f2567f91ccc3991343f91588916a31626e240892bd47728` |
| 20 | `def` | [ofPosRatDn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/ofposratdn--541b1af51e187247e4c0b146.md) | 139 | `declaration-track:541b1af51e187247e4c0b146f1b67bf27728627b377e8115e28686121b376e0c` |
| 21 | `def` | [nextUpPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/nextuppos--0112cc2e9bef21ab306666c6.md) | 153 | `declaration-track:0112cc2e9bef21ab306666c6b561af67056bc54f8303c3c4315d095bcf2a661f` |
| 22 | `def` | [nextDnPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/nextdnpos--ad7da27db89bf3296b91e5fd.md) | 162 | `declaration-track:ad7da27db89bf3296b91e5fdc00fc692182a9e3911ad700fd44b30987e5f4440` |
| 23 | `def` | [nextUp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/nextup--6ead64380e4ea34971b03a64.md) | 174 | `declaration-track:6ead64380e4ea34971b03a642f0bf6325ced04f28fb3c3a91a00e81505e8ca21` |
| 24 | `def` | [nextDn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/nextdn--8df5bc7cf1b4b8e43c5f6536.md) | 180 | `declaration-track:8df5bc7cf1b4b8e43c5f6536ee67a2f735fbb5c70bba5e18c8d76af4395dc7e7` |
| 25 | `def` | [ofRatUp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/ofratup--e2f229c06a007a80e8cad491.md) | 186 | `declaration-track:e2f229c06a007a80e8cad49197a98e9f97714386ab5e7f4483617d75ea0f4214` |
| 26 | `def` | [ofRatDn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/ofratdn--be26509ec08822833cee1bdd.md) | 194 | `declaration-track:be26509ec08822833cee1bddcefa8bbe3e71f26b4ad0329a77bb36b75a8b899b` |
| 27 | `def` | [ofRat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/ofrat--3611a8de8d2094ceb14d0a55.md) | 198 | `declaration-track:3611a8de8d2094ceb14d0a555b7cab4b76b9397a0e886c11fb7d05542f212505` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/instance--2019ef157fd3e26e86038c6a.md) | 217 | `declaration-track:2019ef157fd3e26e86038c6a83dc3e2a6cc2682d83d6da0b2f34ec1168fe477a` |
| 29 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/add--62c5089b5aba466c634d1695.md) | 221 | `declaration-track:62c5089b5aba466c634d1695279bfae9fbbd7c2521de3aef217fa53209b278f9` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/instance--091c1d67a671ab7f3bd52140.md) | 233 | `declaration-track:091c1d67a671ab7f3bd52140c83dc28a5e68d23766af5e64d89e05affd67b747` |
| 31 | `def` | [sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/sub--35d098ca70184c211f570ed0.md) | 237 | `declaration-track:35d098ca70184c211f570ed0c09d47a65530acff3245676dbe8c4052a7dac568` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/instance--c8000688cf17b54935aaf1ca.md) | 240 | `declaration-track:c8000688cf17b54935aaf1ca4b977d50c395cfebdaaca0d6ec07edec4bc2dbcb` |
| 33 | `def` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/mul--1ecfd2489756292851894d0d.md) | 244 | `declaration-track:1ecfd2489756292851894d0d535bf26216da632abe38755e35a1c4de949b622b` |
| 34 | `def` | [div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2c8e1781fdeab5b6ce1ab481cfa08212589a049634c09b0f584599d2dd7a5c0.lean/declarations/div--19b2cc400756d3e2076e19ec.md) | 255 | `declaration-track:19b2cc400756d3e2076e19ec7db85e3b95966af343a76c6e290f74c33208edc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
