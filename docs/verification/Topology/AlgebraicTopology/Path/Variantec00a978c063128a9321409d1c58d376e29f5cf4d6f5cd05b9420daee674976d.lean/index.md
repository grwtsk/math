# Verification target: GRWTSK.Topology.AlgebraicTopology.Path.Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a06248c20e1c3c709e4201df626813aba77faaf8",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a06248c20e1c3c709e4201df626813aba77faaf8`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.PathConnected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Homotopy](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/homotopy--1d9b4a9aed517c150d456e53.md) | 54 | `declaration-track:1d9b4a9aed517c150d456e5344d1865ec72eb213342439c1e44081662ec79dca` |
| 2 | `theorem` | [coeFn_injective](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/coefn-injective--990c14e74205cf66098d16b8.md) | 63 | `result-track:990c14e74205cf66098d16b8cbb8922cb73064acf21713f026c49d23bdd37784` |
| 3 | `theorem` | [source](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/source--3d57af8e96e7d131ac0e372e.md) | 67 | `result-track:3d57af8e96e7d131ac0e372e883ec807df49be34316fc319afc90f67bf16bdb8` |
| 4 | `theorem` | [target](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/target--9807a092b2979671862eab22.md) | 72 | `result-track:9807a092b2979671862eab22e33bb79f55032201cd54bf9b79d06cf70bff4a4d` |
| 5 | `def` | [eval](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/eval--45f979c7e8ba2be5945cdf0a.md) | 78 | `declaration-track:45f979c7e8ba2be5945cdf0a2a22abaf61ef3d74f87a023207636d85237b3b2e` |
| 6 | `theorem` | [eval_zero](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/eval-zero--19bcbf1b7caee245a20f9356.md) | 84 | `result-track:19bcbf1b7caee245a20f9356979ac2964b0f8428a6de5f67dec8c65afe48f8c7` |
| 7 | `theorem` | [eval_one](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/eval-one--6f71778e36a80058977d1533.md) | 89 | `result-track:6f71778e36a80058977d153381623c5c3f62ff3bde26d5667b432106d7124e08` |
| 8 | `def` | [refl](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/refl--ed1b3b5594c32d68f656a463.md) | 102 | `declaration-track:ed1b3b5594c32d68f656a463921eb2e47569f6f3109299e6d5c31220df1377e8` |
| 9 | `def` | [symm](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/symm--3d42c192b57f6608137f7c74.md) | 108 | `declaration-track:3d42c192b57f6608137f7c7403bf4e501719052ec0abc90e07b4f725e6ec0698` |
| 10 | `theorem` | [symm_symm](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/symm-symm--e879179182bd55b6f5fa29ac.md) | 112 | `result-track:e879179182bd55b6f5fa29acabfb4cba5799f81232f6eb5a42ede188c996f706` |
| 11 | `theorem` | [symm_bijective](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/symm-bijective--8d44b94a99222dc127f6d87e.md) | 115 | `result-track:8d44b94a99222dc127f6d87e7bc8de59df964005c3d374c9f5cdbefb47d6b970` |
| 12 | `def` | [trans](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/trans--e35238a4b0ee63d971c12e8d.md) | 122 | `declaration-track:e35238a4b0ee63d971c12e8db6df5b668808e4cee34f52faf6991c2a477eaaca` |
| 13 | `theorem` | [trans_apply](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/trans-apply--78b66f881bf573750bb7b343.md) | 125 | `result-track:78b66f881bf573750bb7b34309f926e5b3d75d6134572404a2fdc48fcc85ec42` |
| 14 | `theorem` | [symm_trans](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/symm-trans--3588780ab1906b3ac385fb28.md) | 133 | `result-track:3588780ab1906b3ac385fb2822594604d1196f36c044639515f8b8f990705737` |
| 15 | `def` | [cast](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/cast--e27aea6d894f2914904f1ae1.md) | 139 | `declaration-track:e27aea6d894f2914904f1ae1153e44e6f2a489f05a09a1cb31f39b3e8e2f0da7` |
| 16 | `def` | [hcomp](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/hcomp--17967a20ee9d1d0c7db15a17.md) | 153 | `declaration-track:17967a20ee9d1d0c7db15a1753d2da8bbd23188129fa6565bfb75d740d4a8569` |
| 17 | `theorem` | [hcomp_apply](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/hcomp-apply--dbd5b65ab9943a228a260fba.md) | 167 | `result-track:dbd5b65ab9943a228a260fbab409b19fe5534a9b542f22c8ff66039d006e4e80` |
| 18 | `theorem` | [hcomp_half](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/hcomp-half--480510314359f1d6e7349b46.md) | 176 | `result-track:480510314359f1d6e7349b460dce89380eeed59ffca0966767332c4e74cd1b64` |
| 19 | `def` | [reparam](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/reparam--00d133810bf9f6c48fadb1ee.md) | 185 | `declaration-track:00d133810bf9f6c48fadb1ee958bc21e7e1a64f7dd9c2d2d6d1d7b0a2217b981` |
| 20 | `def` | [symm₂](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/symm--bc566fb9c111c05d0c19dd0d.md) | 205 | `declaration-track:bc566fb9c111c05d0c19dd0d2a592f59a430b8953bef9cd55e269cd28002d05d` |
| 21 | `def` | [map](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/map--a06e8fc88f221c4540df83fc.md) | 222 | `declaration-track:a06e8fc88f221c4540df83fcce84f1b618ea2407dc8b1dfce78f49d291ec1a0a` |
| 22 | `def` | [Homotopic](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/homotopic--fc45aef367ba7713567960fe.md) | 237 | `declaration-track:fc45aef367ba7713567960fe4dc53610c4560fd744b959d5da7b645b0b4ee8a9` |
| 23 | `theorem` | [refl](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/refl--bc7448c1295778c1390111df.md) | 243 | `result-track:bc7448c1295778c1390111dfe45eff67e6eb543c85b2d2582317147e480b7c40` |
| 24 | `theorem` | [symm](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/symm--e36decbebbd44d16808a1e8c.md) | 247 | `result-track:e36decbebbd44d16808a1e8c73577ce2927606c9736b43d2bfd99ded3b242d7b` |
| 25 | `theorem` | [trans](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/trans--29ca2c7a58263d719ca59666.md) | 251 | `result-track:29ca2c7a58263d719ca596661a5b731e0a04b394da09df6f13be68eaa84479bf` |
| 26 | `theorem` | [equivalence](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/equivalence--616985049a17e168b77befa1.md) | 255 | `result-track:616985049a17e168b77befa1b5c89d29422a0ca3bd050fbca6c7afde942cfaff` |
| 27 | `theorem` | [map](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/map--20d116c0d23b177b9254f399.md) | 258 | `result-track:20d116c0d23b177b9254f399d2ddc69a72720a343d19336dd57d08a5794e1e5c` |
| 28 | `theorem` | [hcomp](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/hcomp--439bab5ab6e5ae066b1b09f4.md) | 262 | `result-track:439bab5ab6e5ae066b1b09f4274b88c1dfc986a69a01eb747928b4eb423c8247` |
| 29 | `def` | [setoid](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/setoid--d1d36aa488bc7877444a62bd.md) | 270 | `declaration-track:d1d36aa488bc7877444a62bd8b8790e796ede8db9011a8f5bc84c257c054780a` |
| 30 | `def` | [Quotient](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/quotient--357758de4d5837acbaa67e13.md) | 275 | `declaration-track:357758de4d5837acbaa67e13414f4d399cf7004eab9780f72cc803b500060368` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/instance--76ee3600bd6d171b3b082d8a.md) | 280 | `declaration-track:76ee3600bd6d171b3b082d8a2ce3dc4bffd563cbed6ae0be8987b99489ed377f` |
| 32 | `def` | [Quotient.comp](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/quotient-comp--57ddd7e80544cdbc2f4ce1e1.md) | 284 | `declaration-track:57ddd7e80544cdbc2f4ce1e13a0a3b47ecb27ebc6fb4cea062a2426d5d379426` |
| 33 | `theorem` | [comp_lift](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/comp-lift--4bd189ac776af7c325790463.md) | 288 | `result-track:4bd189ac776af7c325790463c3f9ad299524cb311aee5802e781a85b67d6a0e9` |
| 34 | `def` | [Quotient.mapFn](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/quotient-mapfn--d61e4d8fea5ed19e88c817c1.md) | 293 | `declaration-track:d61e4d8fea5ed19e88c817c1a1124e06e8698988172a1f522689749d267ab5bc` |
| 35 | `theorem` | [map_lift](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/map-lift--e67292769daa66e43b84be30.md) | 297 | `result-track:e67292769daa66e43b84be307936f2fa85035a7cd02d7b6ca90f1c8d53f903ea` |
| 36 | `theorem` | [hpath_hext](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/hpath-hext--86258e1c8c8788edd6291557.md) | 301 | `result-track:86258e1c8c8788edd629155740a21c81a543f9ccb56cdb11636cd45bb9a980f8` |
| 37 | `def` | [toHomotopyConst](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/tohomotopyconst--497b9847ffa1fac723684d8c.md) | 312 | `declaration-track:497b9847ffa1fac723684d8cd5d2f06a09286b836cadea89afdb154e11896688` |
| 38 | `theorem` | [ContinuousMap.homotopic_const_iff](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/continuousmap-homotopic-const-iff--21b551bbd9a72447facd319c.md) | 323 | `result-track:21b551bbd9a72447facd319ca1008dcf88315fab795479aea736dfe44ee8f534` |
| 39 | `def` | [evalAt](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantec00a978c063128a9321409d1c58d376e29f5cf4d6f5cd05b9420daee674976d.lean/declarations/evalat--5712d928b0c7ea4bb229ec54.md) | 334 | `declaration-track:5712d928b0c7ea4bb229ec54babd7f4bd68d49269e7a6ec6557e3bbb8e57cbd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
