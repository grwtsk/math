# Verification target: GRWTSK.Topology.GeneralTopology.LocalPredicate.Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97e256f8fa2cefc84ef7388743e9e8c7a712fba6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97e256f8fa2cefc84ef7388743e9e8c7a712fba6`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.SheafOfFunctions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.UniqueGluing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrelocalPredicate](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/prelocalpredicate--3bcb6785e2d960a48599665a.md) | 68 | `declaration-track:3bcb6785e2d960a48599665a16340708ca58334e3c07a3160db192fc99c04521` |
| 2 | `def` | [continuousPrelocal](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/continuousprelocal--b1c8744ae0b1b6d33f494eb1.md) | 79 | `declaration-track:b1c8744ae0b1b6d33f494eb1755ff2ff9e7165c94b69d3564b742aec97a81a68` |
| 3 | `instance` | [inhabitedPrelocalPredicate](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/inhabitedprelocalpredicate--ba603e609f3f8e417e81fa71.md) | 84 | `declaration-track:ba603e609f3f8e417e81fa714e32447cc30ba5856e08b75bf3365c154fa563b5` |
| 4 | `structure` | [LocalPredicate](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/localpredicate--ebdeef70749c8ebba5ba376b.md) | 99 | `declaration-track:ebdeef70749c8ebba5ba376b9180a2c687b892cf51aa7fd60a3c84b8b63a412b` |
| 5 | `def` | [continuousLocal](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/continuouslocal--e61085a27ea340b15b4b166b.md) | 109 | `declaration-track:e61085a27ea340b15b4b166be7ea92b1ebdc96afc0562f5b945dfb463f56ca98` |
| 6 | `instance` | [inhabitedLocalPredicate](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/inhabitedlocalpredicate--47cce93e62e9e698eed0f9c9.md) | 122 | `declaration-track:47cce93e62e9e698eed0f9c9829c1dc6d58e9e54d70b1b1b5bbc8cdd902d7973` |
| 7 | `def` | [PrelocalPredicate.and](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/prelocalpredicate-and--9cb60dd733b4663175f5ebdb.md) | 129 | `declaration-track:9cb60dd733b4663175f5ebdb28008ea0f370e9363a1e006623a5c1e9b7bb77be` |
| 8 | `def` | [LocalPredicate.and](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/localpredicate-and--0d2379b631daf88b4c0b7fa7.md) | 134 | `declaration-track:0d2379b631daf88b4c0b7fa7da666c2fe8de806cb0093b4ccd119b276a30fc26` |
| 9 | `def` | [isSection](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/issection--23512cac531ec47f32274d0c.md) | 142 | `declaration-track:23512cac531ec47f32274d0c17f1133f320e5356d242a4426ac6d693351246a5` |
| 10 | `def` | [PrelocalPredicate.sheafify](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/prelocalpredicate-sheafify--22fee1eb4220379fc91b26d9.md) | 150 | `declaration-track:22fee1eb4220379fc91b26d9663eec01b8efe4b274c3298347d1382502320ae8` |
| 11 | `theorem` | [PrelocalPredicate.sheafifyOf](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/prelocalpredicate-sheafifyof--0546b393c2e97dad086f75c3.md) | 163 | `result-track:0546b393c2e97dad086f75c369a512ebc6e3ff6dfd93b52049c8acb39d7e7047` |
| 12 | `def` | [subpresheafToTypes](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/subpresheaftotypes--a39eaf4233f900e7b7eb2f01.md) | 170 | `declaration-track:a39eaf4233f900e7b7eb2f016d4c1713f131b14ff0772db3d0ffbea2e2b2bc7a` |
| 13 | `def` | [subtype](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/subtype--846901ce50295007bd08c2e0.md) | 181 | `declaration-track:846901ce50295007bd08c2e01b8671f1fae13302efa2d36533ffa20ade4b0bd2` |
| 14 | `theorem` | [isSheaf](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/issheaf--21d5648e47fc6473c51f217f.md) | 188 | `result-track:21d5648e47fc6473c51f217fc8c72365fc22116739d72075995d2cf81f943910` |
| 15 | `def` | [subsheafToTypes](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/subsheaftotypes--59da302dc3e5a62a2e7c96c0.md) | 227 | `declaration-track:59da302dc3e5a62a2e7c96c056c7c02b19f948fe6ad684b393f8c988e75beb06` |
| 16 | `def` | [stalkToFiber](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/stalktofiber--dc5e1a4edadd828ea1e485c3.md) | 232 | `declaration-track:dc5e1a4edadd828ea1e485c3e91e95af5e6eaba6f9bc8eb5d62f79fa931cd872` |
| 17 | `theorem` | [stalkToFiber_germ](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/stalktofiber-germ--63e9609da389d17037490f94.md) | 242 | `result-track:63e9609da389d17037490f94348babe675d9d31c78fb14e87f59d20387caf95d` |
| 18 | `theorem` | [stalkToFiber_surjective](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/stalktofiber-surjective--46d0d8c7318ce920bce3c3dc.md) | 249 | `result-track:46d0d8c7318ce920bce3c3dc8250e9673fbd3a2fa31a1b246ae11078fb3fa653` |
| 19 | `theorem` | [stalkToFiber_injective](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/stalktofiber-injective--5e98e9cb1c0adc37f236161d.md) | 260 | `result-track:5e98e9cb1c0adc37f236161dcae470d93f684feaa39bf1000373cf92043a3e45` |
| 20 | `def` | [subpresheafContinuousPrelocalIsoPresheafToTop](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/subpresheafcontinuousprelocalisopresheaftotop--d95251d5913d972fbb5b755b.md) | 295 | `declaration-track:d95251d5913d972fbb5b755b37c359586e357d4e8a36fad7660de319a321ab09` |
| 21 | `def` | [sheafToTop](../../../../../mathematics/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/declarations/sheaftotop--71732bf038bd7964bbdb8038.md) | 303 | `declaration-track:71732bf038bd7964bbdb80380ebdc1b638b8910e9b827c3d5eee68b89bd2c4be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
