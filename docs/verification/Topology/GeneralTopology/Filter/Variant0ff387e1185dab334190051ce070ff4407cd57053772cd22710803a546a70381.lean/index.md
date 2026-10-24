# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "952960dd2f229cabdb2582aff9d8dd139bbaacf6",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `952960dd2f229cabdb2582aff9d8dd139bbaacf6`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Lift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Monotone` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/instance--15136ecd95c21d460c4fc82b.md) | 54 | `declaration-track:15136ecd95c21d460c4fc82ba8d3182ef4a0bc48d4cded3791640e1be4852733` |
| 2 | `theorem` | [isOpen_Iic_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/isopen-iic-principal--78d75ee406e86de48642177c.md) | 57 | `result-track:78d75ee406e86de48642177cce557b85c4809c2e2443814c3ef95ae548555894` |
| 3 | `theorem` | [isOpen_setOf_mem](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/isopen-setof-mem--7cd1a901882b8e8da03a5e35.md) | 60 | `result-track:7cd1a901882b8e8da03a5e35b227304c692ca1f44bbdb61aed82003d92379665` |
| 4 | `theorem` | [isTopologicalBasis_Iic_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/istopologicalbasis-iic-principal--d0690db66710edb5c9682cc4.md) | 63 | `result-track:d0690db66710edb5c9682cc4a7d9acfee0839c19b36b4ab633c15c8aeb965e9a` |
| 5 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/isopen-iff--fd5e5f300d583d69e23c676d.md) | 72 | `result-track:fd5e5f300d583d69e23c676d369a4bbd29148cccbce5653aa8960bf1ee22c640` |
| 6 | `theorem` | [nhds_eq](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-eq--6b5842c28cf9c53a0feb2757.md) | 76 | `result-track:6b5842c28cf9c53a0feb2757832bcf7a6aa5278697e9ac32aa331a54a6afb727` |
| 7 | `theorem` | [nhds_eq'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-eq--998b1438db8f1b1a5ff6a0be.md) | 81 | `result-track:998b1438db8f1b1a5ff6a0be3057fa129abb2a6268fd334c05327daf93c49356` |
| 8 | `theorem` | [tendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/tendsto-nhds--50ca703bd385cb4388dd8f3c.md) | 84 | `result-track:50ca703bd385cb4388dd8f3c38cd1d8c0de79ae8591e0c11a6fd60435711722f` |
| 9 | `theorem` | [HasBasis.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/hasbasis-nhds--aa7679cbe1e52446e228b0bf.md) | 88 | `result-track:aa7679cbe1e52446e228b0bf9b6496fe6cae5d72b588beb74fe32ff189bdd0a7` |
| 10 | `theorem` | [tendsto_pure_self](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/tendsto-pure-self--9843297e1912e22611e71349.md) | 93 | `result-track:9843297e1912e22611e713497b4acd16ebb72586662ed25471316feac6b47fbe` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/instance--63f5349155e5bbec54410d51.md) | 99 | `declaration-track:63f5349155e5bbec54410d51c9282ed6372f0d38f80c1be31332bdf012903a44` |
| 12 | `theorem` | [HasBasis.nhds'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/hasbasis-nhds--a5d3820b620e2ecf703c9ec5.md) | 103 | `result-track:a5d3820b620e2ecf703c9ec571376269af071ba762863188f1f0a04d2c5397d5` |
| 13 | `theorem` | [mem_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/mem-nhds-iff--9e0f006ab2bff57225bcf743.md) | 106 | `result-track:9e0f006ab2bff57225bcf7432c2c1f2652d7e81c40c0c37abfb112f402ea3e94` |
| 14 | `theorem` | [mem_nhds_iff'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/mem-nhds-iff--0e9c888ee412a287f8eb0bdb.md) | 110 | `result-track:0e9c888ee412a287f8eb0bdbe7a04b110e4baf7be2710f06e9c70a8e49c3057b` |
| 15 | `theorem` | [nhds_bot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-bot--0fbb711d84d69fcbe598e99b.md) | 115 | `result-track:0fbb711d84d69fcbe598e99bddf1d21d027489a6d2b43ac9c6ec2248e4f6a78d` |
| 16 | `theorem` | [nhds_top](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-top--600ebb3335da53b8e7fff690.md) | 119 | `result-track:600ebb3335da53b8e7fff69049cb33d672be34355fae69d25997dd2999d44ebe` |
| 17 | `theorem` | [nhds_principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-principal--52745fdb8d77df81fc3e703a.md) | 122 | `result-track:52745fdb8d77df81fc3e703af0aa215b3eac98dd486c56a76eb26fa5b1a94ca4` |
| 18 | `theorem` | [nhds_pure](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-pure--2229668ee820a7a42137dfe3.md) | 126 | `result-track:2229668ee820a7a42137dfe3525fd0ece572f95cb7b95833f97f180aeb399f91` |
| 19 | `theorem` | [nhds_iInf](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-iinf--0983be1d4282ba02c8a7a64d.md) | 130 | `result-track:0983be1d4282ba02c8a7a64d3b01d9b024f137ef24d5bcc50e78ebe919b59a44` |
| 20 | `theorem` | [nhds_inf](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-inf--080bc206f5e0864a27d485d5.md) | 135 | `result-track:080bc206f5e0864a27d485d59700681d3af6d2b800b1bd371b9d52d8645db2c9` |
| 21 | `theorem` | [monotone_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/monotone-nhds--a0d7e1a6e2fec4c3caade351.md) | 138 | `result-track:a0d7e1a6e2fec4c3caade3514f460a4fc82785bd034a2a1222ce91c385dfe157` |
| 22 | `theorem` | [sInter_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/sinter-nhds--0d6e996677c7199ea34841e9.md) | 141 | `result-track:0d6e996677c7199ea34841e917c64bcac1c4bc7ca38b8ce48e7301ccc50654f2` |
| 23 | `theorem` | [nhds_mono](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-mono--f850fd600bd01e2cddef81a5.md) | 146 | `result-track:f850fd600bd01e2cddef81a5afe79487785df890943e9d429c7262b39b8d4558` |
| 24 | `theorem` | [mem_interior](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/mem-interior--de2504533211778fb0de0ef9.md) | 151 | `result-track:de2504533211778fb0de0ef91c44a6e2ec6aedc633e2060e02cb1e597aee97a9` |
| 25 | `theorem` | [mem_closure](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/mem-closure--ad73b9930b6f4dd436f0fe8a.md) | 155 | `result-track:ad73b9930b6f4dd436f0fe8a785690937688f436ddb214bc1182a62b8f4d587e` |
| 26 | `theorem` | [closure_singleton](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/closure-singleton--94cfbbfe8599cb86b78adbda.md) | 162 | `result-track:94cfbbfe8599cb86b78adbda72057053fce7133be6971429c37e18c9fa6a61a6` |
| 27 | `theorem` | [specializes_iff_le](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/specializes-iff-le--ddfbefbeca49920f0e2b3c12.md) | 167 | `result-track:ddfbefbeca49920f0e2b3c12024779c34699c081b9d44134070c9f3b5f090938` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/instance--f895a9103fa82227dc2e5a9c.md) | 170 | `declaration-track:f895a9103fa82227dc2e5a9c7afb9dc57bdb77dfd40d9fa6f14d926654e016ea` |
| 29 | `theorem` | [nhds_atTop](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-attop--9c1190292d0dfd5d364b8dd1.md) | 174 | `result-track:9c1190292d0dfd5d364b8dd12a23483afee67c43cc0d866be69aa9e074600d4d` |
| 30 | `theorem` | [tendsto_nhds_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/tendsto-nhds-attop-iff--acd5f32af20035469a640342.md) | 177 | `result-track:acd5f32af20035469a64034296c3a607f7effdd176fbff2d09f8ae7b40c3a068` |
| 31 | `theorem` | [nhds_atBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-atbot--0dfd8423cbebff1079338a03.md) | 181 | `result-track:0dfd8423cbebff1079338a0305ea7fbf357417398d2daa524431173434e06a7f` |
| 32 | `theorem` | [tendsto_nhds_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/tendsto-nhds-atbot-iff--c016f8364412a83d25ef1ac8.md) | 184 | `result-track:c016f8364412a83d25ef1ac8b8daee52f678576c15c8fd88e7db3ae0aba708b4` |
| 33 | `theorem` | [nhds_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/nhds-nhds--41b403605ca8e3e7f9c76da3.md) | 190 | `result-track:41b403605ca8e3e7f9c76da3988301d19b4e7fe7a46eb9234ad6b15b8644bed7` |
| 34 | `theorem` | [isInducing_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/isinducing-nhds--92680a9988c655538584467c.md) | 194 | `result-track:92680a9988c655538584467ca4ac3841ac52c5d54d71b87f1d25e0a8a5a28f87` |
| 35 | `theorem` | [continuous_nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/continuous-nhds--6d5479faad66c6ba9a51b403.md) | 204 | `result-track:6d5479faad66c6ba9a51b4039222a59c49b797617a716ec67e7b0af42932dec9` |
| 36 | `theorem` | [Tendsto.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/tendsto-nhds--0e3b9d9ca2f8fc82e8a8ad64.md) | 207 | `result-track:0e3b9d9ca2f8fc82e8a8ad6434bf5b3df1240025547e5b84b6b46c2c3f2c7f70` |
| 37 | `theorem` | [ContinuousWithinAt.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/continuouswithinat-nhds--14762513003eb26aeb33183d.md) | 215 | `result-track:14762513003eb26aeb33183d4e943992b4dbee4b098e07d3b4309323683fe715` |
| 38 | `theorem` | [ContinuousAt.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/continuousat-nhds--db5f719634707d5f1f57e89b.md) | 219 | `result-track:db5f719634707d5f1f57e89ba980c8637911d9d405e59d2568172aa7c8ec8c79` |
| 39 | `theorem` | [ContinuousOn.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/continuouson-nhds--ab18fa4498af00106943ae18.md) | 222 | `result-track:ab18fa4498af00106943ae18b49d09936bd93f12737b889b16de902cd639af59` |
| 40 | `theorem` | [Continuous.nhds](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant0ff387e1185dab334190051ce070ff4407cd57053772cd22710803a546a70381.lean/declarations/continuous-nhds--08cda668a866ac9ea1a90f77.md) | 225 | `result-track:08cda668a866ac9ea1a90f77f9ae301a245391c954f58c0d32effb1459052cc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
