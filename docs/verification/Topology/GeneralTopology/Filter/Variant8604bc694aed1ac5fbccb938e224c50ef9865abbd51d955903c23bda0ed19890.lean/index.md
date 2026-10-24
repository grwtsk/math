# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "494651cd73b7acc937993f980bfcdeb3bedaaab7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `494651cd73b7acc937993f980bfcdeb3bedaaab7`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Defs.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IrreducibleDef` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/nhdswithin--2d776b4a5dcedf6956e850cc.md) | 130 | `declaration-track:2d776b4a5dcedf6956e850cccba073af2f92c465d412cb6812261256ee6a577e` |
| 2 | `def` | [nhdsSet](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/nhdsset--72a653d286b893e929a97952.md) | 153 | `declaration-track:72a653d286b893e929a979525961d606863eec27d9596aa6dd45f09ff2590b12` |
| 3 | `def` | [exterior](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/exterior--0adc554569fc94376ae29be2.md) | 163 | `declaration-track:0adc554569fc94376ae29be250b14400d28a99e60ae815c9703b2ff7ef221788` |
| 4 | `def` | [ContinuousAt](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/continuousat--88bca21bf384a42006264846.md) | 168 | `declaration-track:88bca21bf384a4200626484695189eaaa3212a4f1f1d0491c2fb224b7f4ee7ec` |
| 5 | `def` | [ContinuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/continuouswithinat--8c4f26ffc5eb57597cc3a84c.md) | 174 | `declaration-track:8c4f26ffc5eb57597cc3a84c38924531419400307d5aa8a0fc98a5797d00b19a` |
| 6 | `def` | [ContinuousOn](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/continuouson--94dd5a9b42981048a14e9ea3.md) | 180 | `declaration-track:94dd5a9b42981048a14e9ea36c68435686548f0d69a2c7752ba714f36147f434` |
| 7 | `def` | [Specializes](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/specializes--29cf53f283b607c2efe8af9c.md) | 196 | `declaration-track:29cf53f283b607c2efe8af9cfaaab0564df424c98c4683b9989794877f50a65c` |
| 8 | `def` | [Inseparable](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/inseparable--bdf0e734daa3718e15e6ad8d.md) | 210 | `declaration-track:bdf0e734daa3718e15e6ad8d7faf60228f5c28450c3415088af31b84f4c3203a` |
| 9 | `def` | [specializationPreorder](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/specializationpreorder--0d0f8be6559643a7febe2fc6.md) | 216 | `declaration-track:0d0f8be6559643a7febe2fc6600b8ea68c37fdc7fcdece6406de075d91535262` |
| 10 | `def` | [inseparableSetoid](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/inseparablesetoid--8eb5e0a7866e25500c279db4.md) | 222 | `declaration-track:8eb5e0a7866e25500c279db44afea21965ca98b060fa717124766b9b25e78abb` |
| 11 | `def` | [SeparationQuotient](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/separationquotient--651d2ffbebbf59e907fa193c.md) | 226 | `declaration-track:651d2ffbebbf59e907fa193cfc776f38314e9161a01694c4cd000b50d8b24c2a` |
| 12 | `def` | [lim](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/lim--1f7d39fdd21ddc679e9c47a9.md) | 234 | `declaration-track:1f7d39fdd21ddc679e9c47a9efd960805ff3e05ac55566919d8ea8e190f5ba31` |
| 13 | `def` | [limUnder](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/limunder--4384ecc84a164b682a08e481.md) | 239 | `declaration-track:4384ecc84a164b682a08e481a90a83efe8bc9230a93339334b68d32d08963c19` |
| 14 | `def` | [ClusterPt](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/clusterpt--294b430bbf4df35c24ada219.md) | 248 | `declaration-track:294b430bbf4df35c24ada219c2eb8bfe35ec9ec500c6ab1ab87795d82e3281eb` |
| 15 | `def` | [MapClusterPt](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/mapclusterpt--f0665580a29144509f61496f.md) | 253 | `declaration-track:f0665580a29144509f61496fa41f2f361d29e8fc8d37b6f6d4202a0faab4e6a6` |
| 16 | `def` | [AccPt](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/accpt--e9ccacbfa21bec35027e06c2.md) | 258 | `declaration-track:e9ccacbfa21bec35027e06c27a26663a0abc308a454c178f6be0c811af7576b7` |
| 17 | `def` | [IsCompact](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/iscompact--101e44e73b491c7d1f37cc50.md) | 263 | `declaration-track:101e44e73b491c7d1f37cc503611e6fd3d66035cf94753f3f05f5d99fd08e40f` |
| 18 | `class` | [CompactSpace](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/compactspace--ff2eea6f7598d7d3441f2d10.md) | 269 | `declaration-track:ff2eea6f7598d7d3441f2d10b54bf1972dc8839ce7c470653389447dddef415d` |
| 19 | `class` | [NoncompactSpace](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/noncompactspace--3a9c796da1690b55331b7f42.md) | 275 | `declaration-track:3a9c796da1690b55331b7f42ef76bae26d700d4d168b06feab987bd95be876d1` |
| 20 | `class` | [WeaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/weaklylocallycompactspace--da8f9415e8809bcf1fd669fe.md) | 281 | `declaration-track:da8f9415e8809bcf1fd669fe7717d297209fa8dcd56bba23cb4ffef85dae2aab` |
| 21 | `class` | [LocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/locallycompactspace--4510e4f5e3ed078bb710fbad.md) | 295 | `declaration-track:4510e4f5e3ed078bb710fbad5dfc44e753cb058d0f0b73d2576afebae5c1d2fa` |
| 22 | `class` | [LocallyCompactPair](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/locallycompactpair--82958c680275477011a751ae.md) | 313 | `declaration-track:82958c680275477011a751ae6878ea8027d801bfda913bfc462bfc3cdf63819c` |
| 23 | `def` | [Filter.cocompact](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/filter-cocompact--b8e587cf74c8e691dcabcbe3.md) | 324 | `declaration-track:b8e587cf74c8e691dcabcbe39aff9f13365b056e4d6e02c3cc2dd56ec671b1e1` |
| 24 | `def` | [Filter.coclosedCompact](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/declarations/filter-coclosedcompact--3cb152413f4e639fceceb407.md) | 330 | `declaration-track:3cb152413f4e639fceceb4076cd66bac5b43e664369abead6cd66c7fcd5e0637` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
