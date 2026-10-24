# Verification target: GRWTSK.Algebra.FunctionField.Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59cc6a91c85cb9189d291faffeeebd807372d505",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/index.md) · [Full source](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59cc6a91c85cb9189d291faffeeebd807372d505`.

Source path: `GRWTSK/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.TypeTags` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.RatFunc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegrallyClosed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ValuedField` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FunctionField](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/functionfield--720b80e042f980f7c05b429a.md) | 56 | `declaration-track:720b80e042f980f7c05b429a07cda93441476fe47f83dc7e80e91c54f0dc1c58` |
| 2 | `theorem` | [functionField_iff](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/functionfield-iff--a25e6c0f696e13c93a236a3f.md) | 62 | `result-track:a25e6c0f696e13c93a236a3f059b928c98fa061bf34d352227a41e70e3e0686f` |
| 3 | `theorem` | [algebraMap_injective](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/algebramap-injective--a91a12adbec1e405760633ed.md) | 83 | `result-track:a91a12adbec1e405760633ed7d1383150595cb651f375d002c12ad6acc33bdb6` |
| 4 | `def` | [ringOfIntegers](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/ringofintegers--e71b70b6361d37b630646cdd.md) | 97 | `declaration-track:e71b70b6361d37b630646cdd3bdb9d62bdb27583b8ea1d801609f40db594bd88` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/instance--58c6a70bd6fde59f2524245a.md) | 105 | `declaration-track:58c6a70bd6fde59f2524245a4ec149fe182476e469bf0934eb2c72fea30b4393` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/instance--9cef226e211edd9811f45d1b.md) | 108 | `declaration-track:9cef226e211edd9811f45d1b9ebba2df58245d238f3387e6da0dc3eccc834df9` |
| 7 | `theorem` | [algebraMap_injective](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/algebramap-injective--f2ed3806f218ccb770302877.md) | 113 | `result-track:f2ed3806f218ccb770302877f438dcb05f1a001a10d08cfee920cbf1182b9f73` |
| 8 | `theorem` | [not_isField](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/not-isfield--a6204aefdb362a370d7a068a.md) | 124 | `result-track:a6204aefdb362a370d7a068a8b5e986a84688938cbd77080361a8435a561c9de` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/instance--119002fe98380e11eda74bdb.md) | 132 | `declaration-track:119002fe98380e11eda74bdbebae430b9c93982d2fb1c8d01680d4c6b16260bf` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/instance--69fa7458fa78067294a0c99c.md) | 135 | `declaration-track:69fa7458fa78067294a0c99c59b872630fbd3baa8cc137b0c25a5591bb957c62` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/instance--33f242857fd3692f43002680.md) | 138 | `declaration-track:33f242857fd3692f430026809bd79c44cb79fdb762341f726365c850634011e9` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/instance--09d9c51bfffce20c8cf14948.md) | 141 | `declaration-track:09d9c51bfffce20c8cf14948b1e8c2c20eff9cf8dcc566fd9513bb75bf1bc4f8` |
| 13 | `def` | [inftyValuationDef](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluationdef--cd11677fda98d90f3526caaf.md) | 156 | `declaration-track:cd11677fda98d90f3526caaf1cfbfeb7176be01a3f28a2f4ee8c811ec43f8205` |
| 14 | `theorem` | [InftyValuation.map_zero'](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluation-map-zero--eedeb222c824fa3822fd1077.md) | 160 | `result-track:eedeb222c824fa3822fd10776d79ea0e065bac1f99db05700822731c3184431f` |
| 15 | `theorem` | [InftyValuation.map_one'](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluation-map-one--2a66fa56e9606a9e20bcf02e.md) | 164 | `result-track:2a66fa56e9606a9e20bcf02efe9e0818652394082b730525e6cad17d3e013bcb` |
| 16 | `theorem` | [InftyValuation.map_mul'](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluation-map-mul--42aa454294c165f288368955.md) | 168 | `result-track:42aa454294c165f288368955d9914b6f3a9f6f382eac96ffc5f2dc6aca265b6b` |
| 17 | `theorem` | [InftyValuation.map_add_le_max'](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluation-map-add-le-max--ffd8c0ad9987e1c3ec261dd9.md) | 179 | `result-track:ffd8c0ad9987e1c3ec261dd9e2c44272a7bf3b8df270516eeeabe13e137267fd` |
| 18 | `theorem` | [inftyValuation_of_nonzero](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluation-of-nonzero--031edf50e5b34fdb03f0fcfc.md) | 199 | `result-track:031edf50e5b34fdb03f0fcfc895fe587c328a0ff0d5d33c62991b5aecf7ee9bb` |
| 19 | `def` | [inftyValuation](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluation--e1006a353f08d124c9dc6336.md) | 205 | `declaration-track:e1006a353f08d124c9dc63363e7cb74d80fd0c49f33b2a11d6eb757582271d23` |
| 20 | `theorem` | [inftyValuation_apply](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluation-apply--ffe2edbeb0b74ad1355004e7.md) | 214 | `result-track:ffe2edbeb0b74ad1355004e7ddfa9ee904d9d22c0c77ce8c38b508064ad13e02` |
| 21 | `theorem` | [inftyValuation.C](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluation-c--ef0f964bacd20fc20f61615d.md) | 219 | `result-track:ef0f964bacd20fc20f61615da0763ef1b8176dd72913336d6c7944871f56f0c8` |
| 22 | `theorem` | [inftyValuation.X](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluation-x--c94957977e4db123333519ce.md) | 227 | `result-track:c94957977e4db123333519cec852a90abbd10e3602422252c0ba080532cbb361` |
| 23 | `theorem` | [inftyValuation.polynomial](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluation-polynomial--dff5c2b52f979fb73b75c501.md) | 233 | `result-track:dff5c2b52f979fb73b75c5019c60a30cde14dcfdc591e64e3373827550923af9` |
| 24 | `def` | [inftyValuedFqt](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluedfqt--0365401ec43da2aafe1abf0f.md) | 242 | `declaration-track:0365401ec43da2aafe1abf0f6af811f9ad0b2675a35dc5eb974136e016366bc8` |
| 25 | `theorem` | [inftyValuedFqt.def](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/inftyvaluedfqt-def--a0a0eed097875cfc0c6f6a7e.md) | 247 | `result-track:a0a0eed097875cfc0c6f6a7ea445b47d7a077781f8c6edb638ab3357fecd645b` |
| 26 | `def` | [FqtInfty](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/fqtinfty--b28102ae0c4eb158e99ca824.md) | 254 | `declaration-track:b28102ae0c4eb158e99ca824df3c449010a19efde8a08b201de12ca81ce61dab` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/instance--3621955f5647dad1546cbdcf.md) | 259 | `declaration-track:3621955f5647dad1546cbdcf96dddb4c57f4b6b74ae1df440a5f3b7ef01e5d64` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/instance--163ad118605bc1ae4daf2e5a.md) | 263 | `declaration-track:163ad118605bc1ae4daf2e5a350bd5b5c8d39bc8246462c9b2c8c07cab4c3ad5` |
| 29 | `instance` | [valuedFqtInfty](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/valuedfqtinfty--d2cf25080943302d7577e7ba.md) | 267 | `declaration-track:d2cf25080943302d7577e7bad6f0887a461caac02f9ebc9951f694ac0fbb3a6e` |
| 30 | `theorem` | [valuedFqtInfty.def](../../../../mathematics/Algebra/FunctionField/Variant039f9933367f4f5ba265f26fdd04eb98f02d7874f238e6955b57dfdba514f356.lean/declarations/valuedfqtinfty-def--bf30920017b4a4bd22798791.md) | 272 | `result-track:bf30920017b4a4bd22798791d32681310812ed97bdeabeb544404e4c4cb3856e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
