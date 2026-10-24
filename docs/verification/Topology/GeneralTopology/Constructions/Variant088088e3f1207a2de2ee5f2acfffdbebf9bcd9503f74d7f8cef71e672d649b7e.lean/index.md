# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f4a2366c0c1bca6ff891363c8ac5f6ecf744dae",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f4a2366c0c1bca6ff891363c8ac5f6ecf744dae`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Hausdorff` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpaceMulOpposite](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/insttopologicalspacemulopposite--10fc8a328d2f9ea7f0abd506.md) | 30 | `declaration-track:10fc8a328d2f9ea7f0abd5060b9e286febce4cd8d65477e493750e828be88b5b` |
| 2 | `theorem` | [continuous_unop](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/continuous-unop--ade31fa44446019599402e0c.md) | 36 | `result-track:ade31fa44446019599402e0c1a5fc87282a5cae34e96dffa7f6bbadc04c226bb` |
| 3 | `theorem` | [continuous_op](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/continuous-op--9a34b8712c8eaa949866b11b.md) | 40 | `result-track:9a34b8712c8eaa949866b11b0bb4206fd0be9d1c5a2fc59a00b190b428a02103` |
| 4 | `def` | [opHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/ophomeomorph--540f20b1ac19f7b7b61a5c32.md) | 45 | `declaration-track:540f20b1ac19f7b7b61a5c32b1ff53455e29cb638b26720bd0202caccac171ff` |
| 5 | `instance` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/instt2space--57ad2b9ff181df83c0e6704d.md) | 51 | `declaration-track:57ad2b9ff181df83c0e6704d1d7e051f1729a0457e31774dcf496a3eaf26a424` |
| 6 | `instance` | [instDiscreteTopology](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/instdiscretetopology--bfb0d8da9575e7a3be7b5a76.md) | 54 | `declaration-track:bfb0d8da9575e7a3be7b5a7613532d6465d402da30a4027a018ef476d0b72caf` |
| 7 | `theorem` | [map_op_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/map-op-nhds--4e81b934c6edaf340cca6cdb.md) | 58 | `result-track:4e81b934c6edaf340cca6cdb18c612f3759e7963cbc24bbadd398dff1c8b7162` |
| 8 | `theorem` | [map_unop_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/map-unop-nhds--a63a0817d31d31e47586f90e.md) | 62 | `result-track:a63a0817d31d31e47586f90e1dcb7d1e28663017497a81c9cee5473439fda9ce` |
| 9 | `theorem` | [comap_op_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/comap-op-nhds--43e42e94f5ab3ac0c893acef.md) | 66 | `result-track:43e42e94f5ab3ac0c893acef7bbeb66701a70725c7c05ac3e82b9f862970063a` |
| 10 | `theorem` | [comap_unop_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/comap-unop-nhds--390845a549e67c69977d3486.md) | 70 | `result-track:390845a549e67c69977d3486c16ac31627e7ae4ef9d97bfd05d081ad2e898d49` |
| 11 | `instance` | [instTopologicalSpaceUnits](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/insttopologicalspaceunits--1c9c48cbd1dfa530d500c477.md) | 84 | `declaration-track:1c9c48cbd1dfa530d500c477ed4cb916fa70cc061e6c2210dbc4f18e7d2f16d4` |
| 12 | `theorem` | [isInducing_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/isinducing-embedproduct--692a3b006bdd91e58ee38157.md) | 88 | `result-track:692a3b006bdd91e58ee381576c7673538ad6dca38671ea705830c3a6c2073b61` |
| 13 | `theorem` | [isEmbedding_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/isembedding-embedproduct--1452af2df2ef04ca91ced879.md) | 93 | `result-track:1452af2df2ef04ca91ced879c48a426ee1eaf844c6daf25acbec374247a1d5b1` |
| 14 | `instance` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/instt2space--531af9dbed4f105a0f886933.md) | 100 | `declaration-track:531af9dbed4f105a0f8869334707bb632baf727f9fd5c0e146626d824c828d16` |
| 15 | `instance` | [instDiscreteTopology](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/instdiscretetopology--76e0c59544982e1852af2ac3.md) | 103 | `declaration-track:76e0c59544982e1852af2ac336906a129ce1fd97652a0bd0ab3495ca4a54b5e1` |
| 16 | `lemma` | [topology_eq_inf](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/topology-eq-inf--e352791f695cfa3fca7164c5.md) | 106 | `result-track:e352791f695cfa3fca7164c58c23bdef40c43e6078ab5772809bb3e3a13680f2` |
| 17 | `lemma` | [isEmbedding_val_mk'](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/isembedding-val-mk--aca931f704f096ba0fa1eb17.md) | 116 | `result-track:aca931f704f096ba0fa1eb17dbaeed3e82644587a8803192fbe87185c5651b5b` |
| 18 | `lemma` | [embedding_val_mk](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/embedding-val-mk--b92247084025f7f5bcc58c89.md) | 133 | `result-track:b92247084025f7f5bcc58c895133192344a20dbe39dd69105f0094cd91cfb357` |
| 19 | `theorem` | [continuous_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/continuous-embedproduct--6b7712f706e53bec21b2bdc6.md) | 138 | `result-track:6b7712f706e53bec21b2bdc67f51b3d2bacc5fa71453d82490ab50a3224c651f` |
| 20 | `theorem` | [continuous_val](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/continuous-val--c619bda044e91981289b8b43.md) | 142 | `result-track:c619bda044e91981289b8b43133b7257c52dcb9bcda933f5e791891bdff39556` |
| 21 | `theorem` | [continuous_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/continuous-iff--fe493fcbaa2ca579e0b7469a.md) | 146 | `result-track:fe493fcbaa2ca579e0b7469ac7dc6e027a91e6d384fd5567e2ebb643a1cd8fc6` |
| 22 | `theorem` | [continuous_coe_inv](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/declarations/continuous-coe-inv--e03424711ff12ff831e3390e.md) | 153 | `result-track:e03424711ff12ff831e3390ec2577bf764f71618a3519ae4fb3db9c1b0ab0f70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
