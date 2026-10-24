# Verification target: GRWTSK.Analysis.Additive.Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75f6f0213d26d37137f95ce4925a06b63358dfba",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/index.md) · [Full source](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75f6f0213d26d37137f95ce4925a06b63358dfba`.

Source path: `GRWTSK/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Split` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Mul` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoxAdditiveMap](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/boxadditivemap--45b5d1ac49a975592464765e.md) | 42 | `declaration-track:45b5d1ac49a975592464765e2176a1788724a911d997da83ac9d9c604cb464ea` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/instance--ccc5a94709947150adf8ddf8.md) | 62 | `declaration-track:ccc5a94709947150adf8ddf8040a84606c3c1d0b82d9f0543aa740fa97a3f397` |
| 3 | `theorem` | [coe_mk](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/coe-mk--b459ca96f7f680aa5d67862c.md) | 69 | `result-track:b459ca96f7f680aa5d67862ca4ea171066551a3aaf6b3962f086b8ed95be62e8` |
| 4 | `theorem` | [coe_injective](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/coe-injective--172a4e5e3d46c242486f307b.md) | 71 | `result-track:172a4e5e3d46c242486f307b7d211d83fe4c7492961c414067acf6448c1c54fe` |
| 5 | `theorem` | [coe_inj](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/coe-inj--c729c5c872603a00d1a79fc5.md) | 74 | `result-track:c729c5c872603a00d1a79fc561977c121d1bf74b4679650d9bb54226d6e706c0` |
| 6 | `theorem` | [sum_partition_boxes](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/sum-partition-boxes--dfbf9a75095aed5ec301ef90.md) | 76 | `result-track:dfbf9a75095aed5ec301ef90dc5040be23d9cc55253aaca118678c87885eed7e` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/instance--8c24549b90f9905260d197ad.md) | 81 | `declaration-track:8c24549b90f9905260d197addd5af42cb6e8ea89e6c2916ba088798070ca765d` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/instance--38eb5761db2db727347850be.md) | 84 | `declaration-track:38eb5761db2db727347850bef828547f44a2262769f16758a69de4e981c14add` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/instance--64e390df53e4271cede8cfe1.md) | 87 | `declaration-track:64e390df53e4271cede8cfe1c25d88af06487bf9febb7642ba3cd20773da0dc3` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/instance--a15593e6b393c3a6e033b5f0.md) | 92 | `declaration-track:a15593e6b393c3a6e033b5f03efd7380b27f06a3ad7c64e80f667d9a2666b0aa` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/instance--bae881fd01dca327bfe4df14.md) | 97 | `declaration-track:bae881fd01dca327bfe4df14491e688a1fb7f0ae4da1beda4c56c264029a6211` |
| 12 | `theorem` | [map_split_add](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/map-split-add--c7a87953a961c06943c522ca.md) | 101 | `result-track:c7a87953a961c06943c522cadfe7e233b8d723a1a49746487f90383f6c53712b` |
| 13 | `def` | [restrict](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/restrict--84393fbcbcb13371fbb9f407.md) | 108 | `declaration-track:84393fbcbcb13371fbb9f40759dda58668bfad32430d14721de43a78c61de3c5` |
| 14 | `def` | [ofMapSplitAdd](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/ofmapsplitadd--17072bcd838809536ed337a3.md) | 113 | `declaration-track:17072bcd838809536ed337a3c261a8ddd78546bb4b857f64674c384c16281485` |
| 15 | `def` | [map](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/map--8aed40eeb5512deb4d1fc3ea.md) | 138 | `declaration-track:8aed40eeb5512deb4d1fc3ea7c76ea1b0e6323a1e987e59d310813d75ab6d30e` |
| 16 | `theorem` | [sum_boxes_congr](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/sum-boxes-congr--93a2b1f1163074d03f13df6f.md) | 144 | `result-track:93a2b1f1163074d03f13df6f5d327dc826e4bd5c4a2817a7a14cd3e95e6bf977` |
| 17 | `def` | [toSMul](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/tosmul--4120031b59caca50b6c7a57c.md) | 168 | `declaration-track:4120031b59caca50b6c7a57c290a893a854c041c723e892fdee9bc2812d22afd` |
| 18 | `theorem` | [toSMul_apply](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/tosmul-apply--80e9f66d2c1241703725de62.md) | 172 | `result-track:80e9f66d2c1241703725de62cd3f6495e2dd5500548b9daf34d903e3d67abdf9` |
| 19 | `def` | [upperSubLower.](../../../../mathematics/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/declarations/uppersublower--469f1bd719b332d83512014a.md) | 181 | `declaration-track:469f1bd719b332d83512014aecd98ca405b22f0f01a095c7f666468d429ebef5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
