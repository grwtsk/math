# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc23998e6ffceb0d969face419f665964a2a9553",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc23998e6ffceb0d969face419f665964a2a9553`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean.json)

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
| 1 | `def` | [toFiniteQuotientFunctor](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/tofinitequotientfunctor--71e0f68799c8486f6b6bc7ed.md) | 56 | `declaration-track:71e0f68799c8486f6b6bc7ed38d870868b25794da9a8204c1e32007899f391e6` |
| 2 | `def` | [diagram](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/diagram--24e7f884c91190955840b41c.md) | 66 | `declaration-track:24e7f884c91190955840b41ccb42fa557b5921b1830c71a0640790478258eb8e` |
| 3 | `def` | [toLimitFun](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/tolimitfun--35bceb9d32140e1f648dd058.md) | 73 | `declaration-track:35bceb9d32140e1f648dd058f6ff4fe7e1973deeb81113f9db0ea9e99246e6d1` |
| 4 | `lemma` | [toLimitFun_continuous](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/tolimitfun-continuous--72c48b7e210644bffef72f4d.md) | 80 | `result-track:72c48b7e210644bffef72f4d44e96d0ed2232862149f4d5e786117721f21e990` |
| 5 | `def` | [toLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/tolimit--347825741c5a49ea9844d5c9.md) | 100 | `declaration-track:347825741c5a49ea9844d5c99a5d4ab0cda223b0354191691cd1a16fa5058f57` |
| 6 | `theorem` | [denseRange_toLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/denserange-tolimit--8de74bc5f956ccb7c8b1e1a0.md) | 105 | `result-track:8de74bc5f956ccb7c8b1e1a09de00ecff78869db19ec303743ed1786b489ea98` |
| 7 | `theorem` | [toLimit_surjective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/tolimit-surjective--7ad8393c13a3db309c9e2ae7.md) | 128 | `result-track:7ad8393c13a3db309c9e2ae7928f24df5eaeacd4cdbaa9911fe84721a1ffa80e` |
| 8 | `theorem` | [toLimit_injective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/tolimit-injective--cfcbe5c1241e0e4da552441c.md) | 135 | `result-track:cfcbe5c1241e0e4da552441cc508d104d5a23d9486b1b656a202eb65e9397b25` |
| 9 | `def` | [continuousMulEquivLimittoFiniteQuotientFunctor](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/continuousmulequivlimittofinitequotientfunctor--cf78fa76420b7a30de7e7ab2.md) | 146 | `declaration-track:cf78fa76420b7a30de7e7ab26fe3cf4f9ec77931166f8f6c821de1dce0705abd` |
| 10 | `instance` | [isIso_toLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/isiso-tolimit--ef7abf19cd03e2790f4ff1e3.md) | 153 | `declaration-track:ef7abf19cd03e2790f4ff1e31ee6bd770895b36bb475b35847e89f62c89834f5` |
| 11 | `def` | [isoLimittoFiniteQuotientFunctor](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/isolimittofinitequotientfunctor--1056d9fb1393a8a9534c8a79.md) | 159 | `declaration-track:1056d9fb1393a8a9534c8a791ae8f6a3b682309ecc9641c9555108781ada6ef1` |
| 12 | `def` | [proj](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/proj--fe302d5198934b0817de603a.md) | 166 | `declaration-track:fe302d5198934b0817de603a732efa7bf8d448ea6586ea8b007623d98a24bb27` |
| 13 | `def` | [cone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/cone--dfee54a5a108eec1e659fb8c.md) | 177 | `declaration-track:dfee54a5a108eec1e659fb8c29179160bc39442789eadc0804f25d25c18ea98c` |
| 14 | `def` | [isLimitCone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/declarations/islimitcone--e611b0574dc9da7858552106.md) | 182 | `declaration-track:e611b0574dc9da7858552106c491086aeca2000036d4c5419d245eab205992b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
