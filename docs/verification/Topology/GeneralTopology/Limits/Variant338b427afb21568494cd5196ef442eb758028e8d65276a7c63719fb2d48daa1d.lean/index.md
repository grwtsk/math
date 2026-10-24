# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "493c277fecc94ee98f27892b1872aa0df203ed68",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `493c277fecc94ee98f27892b1872aa0df203ed68`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Extensive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasExplicitFiniteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/hasexplicitfinitecoproduct--90fc1c934b714b96011d66bc.md) | 51 | `declaration-track:90fc1c934b714b96011d66bc724316530d83931e25b884fb0ed68e71fa349c38` |
| 2 | `def` | [finiteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitecoproduct--f00d355f6a23eee056e110c8.md) | 59 | `declaration-track:f00d355f6a23eee056e110c837ca8459c6edfa5873860bd81ad01a361f16cc41` |
| 3 | `def` | [finiteCoproduct.ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitecoproduct--7014b60a9675b56d8da1db41.md) | 64 | `declaration-track:7014b60a9675b56d8da1db41930f3bc7c1e31975dd6beac9278fd13884c14a81` |
| 4 | `def` | [finiteCoproduct.desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitecoproduct-desc--b5f13f2d6aeba6e4ff88e506.md) | 74 | `declaration-track:b5f13f2d6aeba6e4ff88e506d41a92e3aa4abb43af9d32efcb81dfe0cb58efdf` |
| 5 | `lemma` | [finiteCoproduct.ι_desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitecoproduct-desc--6f871828b58bcc2a05b29ced.md) | 83 | `result-track:6f871828b58bcc2a05b29ced9112ac09e132a96eb5f468cf69f6a8079605298d` |
| 6 | `lemma` | [finiteCoproduct.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitecoproduct-hom-ext--3b3b797ad5efd45b4347fcb7.md) | 86 | `result-track:3b3b797ad5efd45b4347fcb7f349d6c6f1be8a4e30d94d8c677e1e722eeb8b83` |
| 7 | `abbrev` | [finiteCoproduct.cofan](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitecoproduct-cofan--8c23aee98aa31a483118a1ce.md) | 94 | `declaration-track:8c23aee98aa31a483118a1ce1db25b34b9b6c188dba1cf46597141e17bb82c6b` |
| 8 | `def` | [finiteCoproduct.isColimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitecoproduct-iscolimit--3a54b12e13aaa27a67ee84af.md) | 98 | `declaration-track:3a54b12e13aaa27a67ee84afedd31eb95d1221aa00e89665125bb19cd643d8d6` |
| 9 | `lemma` | [finiteCoproduct.ι_injective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitecoproduct-injective--ee0eee839b21b411d6a4d674.md) | 105 | `result-track:ee0eee839b21b411d6a4d6743c79b6b37537dcd33dd4b5043935f1c3dd0a1db0` |
| 10 | `lemma` | [finiteCoproduct.ι_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitecoproduct-jointly-surjective--62efc9ef1f4a2251b390c02b.md) | 109 | `result-track:62efc9ef1f4a2251b390c02bca79a2c3ce45b8d8340539ae2907d7db3782268e` |
| 11 | `lemma` | [finiteCoproduct.ι_desc_apply](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitecoproduct-desc-apply--4836c835b390da611bf1de44.md) | 112 | `result-track:4836c835b390da611bf1de447f57b59c78163611085af84f3f4a058bb5494509` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--ac30ad33317115c1f86c7120.md) | 118 | `declaration-track:ac30ad33317115c1f86c712018374193a5a967dc7fa5cd1925a7eb18467ad362` |
| 13 | `class` | [HasExplicitFiniteCoproducts](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/hasexplicitfinitecoproducts--7df19c570c19a78186f4bd41.md) | 126 | `declaration-track:7df19c570c19a78186f4bd418bfdcacabfcc5614cde62cdd435a8ab26525626c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--6062f7d4367d762e8d8ee1c1.md) | 138 | `declaration-track:6062f7d4367d762e8d8ee1c14cd0aa81783ab9e7b4261888eb25c76fab942b91` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--0f8f1850e06ee6bae656c245.md) | 142 | `declaration-track:0f8f1850e06ee6bae656c2454612ad4acb372cfea14e3ea968b13442a686050b` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/example--674c36a05f8cee07d1585144.md) | 150 | `declaration-track:674c36a05f8cee07d1585144b25caa9f4279d6e9f77b1120cc2714cf55f19f32` |
| 17 | `lemma` | [finiteCoproduct.isOpenEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitecoproduct-isopenembedding--79894884fa882a114859b89a.md) | 153 | `result-track:79894884fa882a114859b89af8cd705973525ccfb973115a21a09e739ebaf7fa` |
| 18 | `lemma` | [Sigma.isOpenEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/sigma-isopenembedding--4c3f27e66f37932ddd5bbb5c.md) | 158 | `result-track:4c3f27e66f37932ddd5bbb5c2ee42a020250fc246f6e6376b803450df1858cd9` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--5809eebd8131412cddef9664.md) | 168 | `declaration-track:5809eebd8131412cddef96643727eab0a1619da4b271f283fb1d5f632d8046e1` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--9c8e6b732c31e3275b7f6d64.md) | 177 | `declaration-track:9c8e6b732c31e3275b7f6d6438d119e080cbb3f62df5ba75e441f2c101f98419` |
| 21 | `abbrev` | [HasExplicitPullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/hasexplicitpullback--3962987b0719a0f0f19b31e5.md) | 193 | `declaration-track:3962987b0719a0f0f19b31e5dc419aa57a1940f9847930c6721db00bc053e647` |
| 22 | `def` | [pullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/pullback--4890a66a7473c6c4987b532f.md) | 201 | `declaration-track:4890a66a7473c6c4987b532fbd85f88dbea54862d7781fe7b68836e6d6a12225` |
| 23 | `def` | [pullback.fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/pullback-fst--faf6d2a978c5476f3fb0f524.md) | 211 | `declaration-track:faf6d2a978c5476f3fb0f5245770c6c5f05f1589cdcba1d89f1fcb050b0c9d58` |
| 24 | `def` | [pullback.snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/pullback-snd--a2afb68ed430d06400a8ffa5.md) | 219 | `declaration-track:a2afb68ed430d06400a8ffa5f3e11a497c4b986aeb0937065f99e04f3512d7db` |
| 25 | `lemma` | [pullback.condition](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/pullback-condition--7da1ffdc65cf514f2ee3823e.md) | 225 | `result-track:7da1ffdc65cf514f2ee3823e363bf67d383748621442b59d986ab8a1bea97e7e` |
| 26 | `def` | [pullback.lift](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/pullback-lift--c7e516f51dd33497a1e08373.md) | 233 | `declaration-track:c7e516f51dd33497a1e08373b479cb79cde0484e4e3fb429f710b824ca422607` |
| 27 | `lemma` | [pullback.lift_fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/pullback-lift-fst--a22bd691e4b57c19a1202938.md) | 240 | `result-track:a22bd691e4b57c19a120293828ca35fd67b5adf5e5848dd04b46f6c6d6ad3a4a` |
| 28 | `lemma` | [pullback.lift_snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/pullback-lift-snd--9f309c022e7cbf104b30c2c3.md) | 244 | `result-track:9f309c022e7cbf104b30c2c3b4744798d47c947ccf60cb4a1d5024366bec1de2` |
| 29 | `lemma` | [pullback.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/pullback-hom-ext--890f04381f7b7a9cdff71844.md) | 247 | `result-track:890f04381f7b7a9cdff71844084e1305b7beca7d7a3391527958fd5dc3609684` |
| 30 | `def` | [pullback.cone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/pullback-cone--fc3c929e8ae3c6800836bfc6.md) | 261 | `declaration-track:fc3c929e8ae3c6800836bfc6b3253bb9c2df38bdff2cc258eb409511c97b1816` |
| 31 | `def` | [pullback.isLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/pullback-islimit--ced70224823dac8924a60b00.md) | 268 | `declaration-track:ced70224823dac8924a60b0087c318693517e0c92e73f569aae77f8354d95524` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--e32c6d6669b24daa4b572968.md) | 275 | `declaration-track:e32c6d6669b24daa4b572968a8a5a57b4369c4b19a72e7cf6c17df93592a84c3` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--a77c2e0509ba137f209e8c71.md) | 279 | `declaration-track:a77c2e0509ba137f209e8c71a8ca34f3cfa765ec2cfc70da3e92502f232198e2` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--8813b02b3aec6fec9217d612.md) | 286 | `declaration-track:8813b02b3aec6fec9217d6123c90a03d5566d417451e5aca3150bd550042838d` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--956d5b58bb8ad175cb2a607b.md) | 290 | `declaration-track:956d5b58bb8ad175cb2a607bb70d7aca744d649b714223db3317de41c4de36de` |
| 36 | `class` | [HasExplicitPullbacks](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/hasexplicitpullbacks--292482eb94f5de65ee472ea3.md) | 302 | `declaration-track:292482eb94f5de65ee472ea3fc48e6feaea148e14a6ded1911052f464f2f80cb` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--e80c97308df3189521a75323.md) | 307 | `declaration-track:e80c97308df3189521a753235a84113e939b42dd0d43a5c14cbb09852c420ddc` |
| 38 | `class` | [HasExplicitPullbacksOfInclusions](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/hasexplicitpullbacksofinclusions--b9449aedded21f26054829ef.md) | 315 | `declaration-track:b9449aedded21f26054829ef6faf70a2e4d0d4f2852a7b1c76adca9a3350abc6` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--ab29eef1b0bc9bdbcafdb7a7.md) | 320 | `declaration-track:ab29eef1b0bc9bdbcafdb7a72a726815adea032e9388d39f0d6259b66a4ea5c2` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--1f4c498e8391764081370c8f.md) | 330 | `declaration-track:1f4c498e8391764081370c8f0dd4d09533c6434ad36a85a6d010f3fa21bc042b` |
| 41 | `theorem` | [hasPullbacksOfInclusions](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/haspullbacksofinclusions--e5b40df6a6617ba743b32a04.md) | 333 | `result-track:e5b40df6a6617ba743b32a0495b31f5cc29306486eaf149f80e57f073f19cf7e` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--8a797c0a94850a187bcf82a9.md) | 343 | `declaration-track:8a797c0a94850a187bcf82a918b6757ec152ad4d03ad3c6b03d1f43f234cb699` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/instance--c4e062d35d211874afb46937.md) | 349 | `declaration-track:c4e062d35d211874afb469377ae36102abf6bfb4eb30d486582ef616811b359f` |
| 44 | `theorem` | [finitaryExtensive](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/finitaryextensive--286e8ae6a3feb8ac9a82af8e.md) | 352 | `result-track:286e8ae6a3feb8ac9a82af8ed724bfad39c12f54c6849e69e1a10714170cb30f` |
| 45 | `def` | [isTerminalPUnit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/declarations/isterminalpunit--aa486ff381a1a574f96c9bb2.md) | 365 | `declaration-track:aa486ff381a1a574f96c9bb22768a4f43564587f69fca9256013b50c6daf11fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
