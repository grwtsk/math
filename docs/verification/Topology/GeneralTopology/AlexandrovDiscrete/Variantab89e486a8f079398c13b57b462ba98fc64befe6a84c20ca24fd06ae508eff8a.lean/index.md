# Verification target: GRWTSK.Topology.GeneralTopology.AlexandrovDiscrete.Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "feaf6e7dc09b2ca2c5a30cb8769a22ee66ba43ca",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `feaf6e7dc09b2ca2c5a30cb8769a22ee66ba43ca`.

Source path: `GRWTSK/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Inseparable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Exterior` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AlexandrovDiscrete](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/alexandrovdiscrete--0140beaf32357d112d3d4ac4.md) | 43 | `declaration-track:0140beaf32357d112d3d4ac4efa35ae62fab44b997e5385d2bd284d8028b6409` |
| 2 | `instance` | [DiscreteTopology.toAlexandrovDiscrete](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/discretetopology-toalexandrovdiscrete--91130854febc97e9af841dce.md) | 52 | `declaration-track:91130854febc97e9af841dce942dc8f15188f1c8ac363616510a0088fa8851c6` |
| 3 | `instance` | [Finite.toAlexandrovDiscrete](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/finite-toalexandrovdiscrete--e943069c7624041540dbfa7b.md) | 55 | `declaration-track:e943069c7624041540dbfa7b0ee0a285a44812b71de9605a6fb1953a62066a39` |
| 4 | `lemma` | [isOpen_sInter](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isopen-sinter--fd748710712f9da05b566374.md) | 61 | `result-track:fd748710712f9da05b566374cd6227c7436c9e5d9310fdd5d60a166979546d16` |
| 5 | `lemma` | [isOpen_iInter](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isopen-iinter--cbee9065f120a79448da1cb2.md) | 63 | `result-track:cbee9065f120a79448da1cb28b870d454c6d38222b06a95597ded75c9ba2833a` |
| 6 | `lemma` | [isOpen_iInter₂](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isopen-iinter--d1c0ac835108b810001daf4a.md) | 66 | `result-track:d1c0ac835108b810001daf4a5b3904b18d22e57689b14bf50b833f687a5b4bdd` |
| 7 | `lemma` | [isClosed_sUnion](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isclosed-sunion--842d2f76ebda07934a9d0d48.md) | 70 | `result-track:842d2f76ebda07934a9d0d48f9f6e834cf1d17f9ea9bd2f035ff6497aad89c52` |
| 8 | `lemma` | [isClosed_iUnion](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isclosed-iunion--f7a6a4f68c5edc51c6ffc4fd.md) | 73 | `result-track:f7a6a4f68c5edc51c6ffc4fde8b4ce54b1b0fe1694e23dd7e8aef2314ca1d744` |
| 9 | `lemma` | [isClosed_iUnion₂](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isclosed-iunion--0d4711bb52eaaea91faaa3da.md) | 76 | `result-track:0d4711bb52eaaea91faaa3dae45394136d7aa4b27052c9684b285c1e9ef4f504` |
| 10 | `lemma` | [isClopen_sInter](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isclopen-sinter--ffb4a7f8dadbd3b5bb05b173.md) | 80 | `result-track:ffb4a7f8dadbd3b5bb05b173e1217a953f66222ed0896c83254c5de68025ec79` |
| 11 | `lemma` | [isClopen_iInter](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isclopen-iinter--bef51370afb8c12d1efd37ef.md) | 83 | `result-track:bef51370afb8c12d1efd37ef8e4c633d3ee6eddab75a9a60a89dca8e8a42547e` |
| 12 | `lemma` | [isClopen_iInter₂](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isclopen-iinter--27578698374203f6f26ba6ec.md) | 86 | `result-track:27578698374203f6f26ba6ec02d7068d9f2bab431d294f34e3f79befb3708ded` |
| 13 | `lemma` | [isClopen_sUnion](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isclopen-sunion--970da67a04d016db00c109e5.md) | 90 | `result-track:970da67a04d016db00c109e594d32810315e34a9a0585cc4281d47ee5b3ad50b` |
| 14 | `lemma` | [isClopen_iUnion](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isclopen-iunion--63d0e72874a2764064a829aa.md) | 93 | `result-track:63d0e72874a2764064a829aad30094921e08b16991a10c175a3ec824e74bce04` |
| 15 | `lemma` | [isClopen_iUnion₂](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isclopen-iunion--677553189a88d5029679e71e.md) | 96 | `result-track:677553189a88d5029679e71ee6fd9aa5eaba133864d9c5a6cf0b7e20eae96b58` |
| 16 | `lemma` | [interior_iInter](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/interior-iinter--8f04ae38b323273085634620.md) | 100 | `result-track:8f04ae38b323273085634620ce48cbc904e4216cc766f980afdee3b767e6d945` |
| 17 | `lemma` | [interior_sInter](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/interior-sinter--11e6ec2dcf630dbb36f4d2cd.md) | 104 | `result-track:11e6ec2dcf630dbb36f4d2cde6a920c1fa5dd4a12439d11a347c0fb29fbaac63` |
| 18 | `lemma` | [closure_iUnion](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/closure-iunion--9f3eb0a09e613162d321ea19.md) | 107 | `result-track:9f3eb0a09e613162d321ea1935f455fa31e7dc8131ef7cf4dc8662478297ade6` |
| 19 | `lemma` | [closure_sUnion](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/closure-sunion--8cb3fbb96fcf2559d243acb6.md) | 111 | `result-track:8cb3fbb96fcf2559d243acb615786d6c2378cbb6028605cbf247b0f3174ce38c` |
| 20 | `lemma` | [Topology.IsInducing.alexandrovDiscrete](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/topology-isinducing-alexandrovdiscrete--eed8164533a66bcc07b4feaa.md) | 116 | `result-track:eed8164533a66bcc07b4feaa5155f357f611ca92cc793043cf08c3dfe5b24014` |
| 21 | `lemma` | [AlexandrovDiscrete.sup](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/alexandrovdiscrete-sup--f5833d57fa5fc7ba48961a10.md) | 129 | `result-track:f5833d57fa5fc7ba48961a1001b11527504dd1effae66877b50596327ec7c2dc` |
| 22 | `lemma` | [alexandrovDiscrete_iSup](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/alexandrovdiscrete-isup--ebc8f3b5cf26eec44c73da0e.md) | 135 | `result-track:ebc8f3b5cf26eec44c73da0e8ed6962729b2fe64bc2e281090af5df8c9600011` |
| 23 | `lemma` | [isOpen_exterior](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isopen-exterior--92996d912c5f2c3740bc8a66.md) | 146 | `result-track:92996d912c5f2c3740bc8a663136ddf7bd23a9ce3a61f32264d845846fdc77fa` |
| 24 | `lemma` | [exterior_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/exterior-mem-nhdsset--02f65772b59ee928b4b5f4a8.md) | 149 | `result-track:02f65772b59ee928b4b5f4a8b15254482b450179a47b58d8c8bb53b77c2a1ca3` |
| 25 | `lemma` | [exterior_eq_iff_isOpen](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/exterior-eq-iff-isopen--d57ae4d8012dba1919854bca.md) | 151 | `result-track:d57ae4d8012dba1919854bca5d1e917484ccb4145c19d283fa4a882d70f49235` |
| 26 | `lemma` | [exterior_subset_iff_isOpen](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/exterior-subset-iff-isopen--3df45cd92c968cd79e02d67e.md) | 154 | `result-track:3df45cd92c968cd79e02d67e14633c56bfc1ac346971235302ec3dfeea131f80` |
| 27 | `lemma` | [exterior_subset_iff](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/exterior-subset-iff--34622346d3160eb703f0acf2.md) | 157 | `result-track:34622346d3160eb703f0acf28397406ca6354855349025c454589e457cd2a1b3` |
| 28 | `lemma` | [exterior_subset_iff_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/exterior-subset-iff-mem-nhdsset--4081924f5e5373effada5c17.md) | 161 | `result-track:4081924f5e5373effada5c17d45cd187efa4f463fb7f8ae74eb5ab40c0b2ad86` |
| 29 | `lemma` | [exterior_singleton_subset_iff_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/exterior-singleton-subset-iff-mem-nhds--f444441b940a3c66856e6250.md) | 164 | `result-track:f444441b940a3c66856e6250bcc17ad164d83599296b71d6c9ccec1f2199121e` |
| 30 | `lemma` | [gc_exterior_interior](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/gc-exterior-interior--d37c18937c3c66511efeb5dd.md) | 167 | `result-track:d37c18937c3c66511efeb5ddb47019685d716b5ed78326893bc60a51a9b6da83` |
| 31 | `lemma` | [principal_exterior](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/principal-exterior--4a1aec9c04050b9d1edd469f.md) | 170 | `result-track:4a1aec9c04050b9d1edd469fd5239a6f209e3c640c3d6934f71871ea2c347515` |
| 32 | `lemma` | [isOpen_iff_forall_specializes](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/isopen-iff-forall-specializes--1cdbdbd42ee63fef0e4652af.md) | 173 | `result-track:1cdbdbd42ee63fef0e4652af8b8d33bd0957e0ddfaad63857dcc7f0002be8d14` |
| 33 | `lemma` | [alexandrovDiscrete_coinduced](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/alexandrovdiscrete-coinduced--fbd5e118881c2915c892e86f.md) | 177 | `result-track:fbd5e118881c2915c892e86f2f30495ef35ecbbd31eeaf6895542f0da1a22f23` |
| 34 | `instance` | [AlexandrovDiscrete.toFirstCountable](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/alexandrovdiscrete-tofirstcountable--74d955cab2e307fd44472dfd.md) | 182 | `declaration-track:74d955cab2e307fd44472dfd1d8431e0999f9b0195fcbe65156654014479a4a1` |
| 35 | `instance` | [AlexandrovDiscrete.toLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/alexandrovdiscrete-tolocallycompactspace--4160f0d3b4c3a77694d4ddf2.md) | 185 | `declaration-track:4160f0d3b4c3a77694d4ddf2ba508e6079525e93994e4b50a9b2cc07fe702a37` |
| 36 | `instance` | [Subtype.instAlexandrovDiscrete](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/subtype-instalexandrovdiscrete--f81984365c2a4d6ba652f0df.md) | 190 | `declaration-track:f81984365c2a4d6ba652f0df7323fcca55d499814433414a996006f373df821b` |
| 37 | `instance` | [Quotient.instAlexandrovDiscrete](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/quotient-instalexandrovdiscrete--77436541ad8cff4bdf7c3e4e.md) | 193 | `declaration-track:77436541ad8cff4bdf7c3e4e6500b4c83e69fd9d230e5ece8862adfe766b3564` |
| 38 | `instance` | [Sum.instAlexandrovDiscrete](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/sum-instalexandrovdiscrete--e01b70b2676390627ad54ba0.md) | 196 | `declaration-track:e01b70b2676390627ad54ba00a3e15d3a51356e40a0d838d8f9e41b4a3c53191` |
| 39 | `instance` | [Sigma.instAlexandrovDiscrete](../../../../../mathematics/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/declarations/sigma-instalexandrovdiscrete--53f67be54c96ce61522f7ad2.md) | 199 | `declaration-track:53f67be54c96ce61522f7ad2d70c2c8846027b16054b64e5917c88082af5bfaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
