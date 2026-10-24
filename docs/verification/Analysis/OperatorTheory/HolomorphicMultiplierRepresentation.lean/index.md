# Verification target: GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4b6ffe568daa82ba3e0257c8f81e7881ca8f802",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierRepresentation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4b6ffe568daa82ba3e0257c8f81e7881ca8f802`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicMultiplierRepresentation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicMultiplierRepresentation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Algebra.Algebra.Hom` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundedSubring](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/boundedsubring--5f8673eefc7063bbe0d95043.md) | 39 | `declaration-track:5f8673eefc7063bbe0d95043e842472faf02bc307c830b1702affc960348d0a3` |
| 2 | `abbrev` | [BoundedSymbol](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/boundedsymbol--9c0ac1b03442c3746d6230d1.md) | 59 | `declaration-track:9c0ac1b03442c3746d6230d1c61d0db30329ca717e6ca1d3d5415bf69942c6a4` |
| 3 | `def` | [value](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/value--d8ebf4b1a24e315b1d9a5f03.md) | 64 | `declaration-track:d8ebf4b1a24e315b1d9a5f035a40b6c99ee9cb4fe0817b5a6bcf0e2c351ccffa` |
| 4 | `theorem` | [ext](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/ext--1410d2af9074cfd34cc297bd.md) | 66 | `result-track:1410d2af9074cfd34cc297bd5d1bb1592baac3e30934a3ae485509af3b3255c0` |
| 5 | `def` | [ofMultiplier](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/ofmultiplier--cfd971e4bbd6e79648c146e9.md) | 71 | `declaration-track:cfd971e4bbd6e79648c146e9e81acc6560c12a90b433bb36b638725a9af3b164` |
| 6 | `def` | [toMultiplier](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/tomultiplier--3b211e9c6e4a6308fbe142e7.md) | 75 | `declaration-track:3b211e9c6e4a6308fbe142e7686a743298d444e3f792bc5bf06f3478e90d665f` |
| 7 | `theorem` | [toMultiplier_symbol](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/tomultiplier-symbol--9dfda64b6f398a96970715e2.md) | 80 | `result-track:9dfda64b6f398a96970715e27228b6de22945bfe78e59bc7c63bab815265a466` |
| 8 | `def` | [constants](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/constants--8e8f586be94f7a78bf419dec.md) | 84 | `declaration-track:8e8f586be94f7a78bf419dec165ad023ca00968dbd594ba0746835053cf09f98` |
| 9 | `theorem` | [constants_value](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/constants-value--53b45bb6fab54eb4d98e5eb6.md) | 91 | `result-track:53b45bb6fab54eb4d98e5eb62cb698e039b7f7665671519eb1d1ca9199488dc4` |
| 10 | `instance` | [symbolAlgebra](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/symbolalgebra--a30f79fa360fc4542141c4d5.md) | 95 | `declaration-track:a30f79fa360fc4542141c4d58c7bad0a1084336ef1585ff3d0451a8cba2b7799` |
| 11 | `theorem` | [algebraMap_eq_constants](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/algebramap-eq-constants--30638904816a86353c18865a.md) | 98 | `result-track:30638904816a86353c18865adc140d4fbfee40daa21fd20617f2e4afed594ca8` |
| 12 | `theorem` | [smul_value](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/smul-value--8cf82f552c436f81daf64b9b.md) | 101 | `result-track:8cf82f552c436f81daf64b9b64093e930d550cf7ffd3907bd7a2589363ad3cab` |
| 13 | `def` | [quotientRepresentation](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/quotientrepresentation--a0d8fac783b9ba3ed4b2b176.md) | 110 | `declaration-track:a0d8fac783b9ba3ed4b2b176550d958fcb7a6761f824c0a8d4bee19fbd514ce2` |
| 14 | `theorem` | [quotientRepresentation_ofMultiplier](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/quotientrepresentation-ofmultiplier--4932f25a6aeece9b2e8c352a.md) | 152 | `result-track:4932f25a6aeece9b2e8c352a78d914ab8af294c59cebb2c26ad3c1404cf927a4` |
| 15 | `theorem` | [quotientRepresentation_congr_ae](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/quotientrepresentation-congr-ae--f3add0aa707423589782509d.md) | 161 | `result-track:f3add0aa707423589782509dee8499a44fc0541d301367cc850c4cc06659ac15` |
| 16 | `theorem` | [quotientRepresentation_constants](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/quotientrepresentation-constants--c605caa62933f60df1c22b06.md) | 167 | `result-track:c605caa62933f60df1c22b06c2855d201397dcc1577cff71d1c640e1589cd285` |
| 17 | `def` | [quotientAlgHom](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/quotientalghom--66b44d122a3d91f4d89bc96f.md) | 176 | `declaration-track:66b44d122a3d91f4d89bc96fe5a85c032860c696c92cb84c3830f3b9d110b9b6` |
| 18 | `theorem` | [quotientAlgHom_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/quotientalghom-apply--416d0f389fcd32bea753fca2.md) | 185 | `result-track:416d0f389fcd32bea753fca22b2bb431eec8464cf42f2c2baba926d329e3f47e` |
| 19 | `def` | [completedRepresentation](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/completedrepresentation--96d5d0ce5026bb330c55eeb1.md) | 190 | `declaration-track:96d5d0ce5026bb330c55eeb1d2e7ea7f598a7704ec15352be7105c28682ec08a` |
| 20 | `def` | [completedAlgHom](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/completedalghom--283066f3afe3927d4cabe788.md) | 205 | `declaration-track:283066f3afe3927d4cabe788815a12bb106c292f05ade3cd6037f86a270e0fed` |
| 21 | `theorem` | [completedAlgHom_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/completedalghom-apply--ddfb8fab3a12e9d19db15d2a.md) | 217 | `result-track:ddfb8fab3a12e9d19db15d2a0a175a7265f0ebfe36bfb4804fa0b4bb49ed65ec` |
| 22 | `theorem` | [completedRepresentation_ofMultiplier](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/completedrepresentation-ofmultiplier--7fcaa8a28a6b9016cd79435d.md) | 221 | `result-track:7fcaa8a28a6b9016cd79435d36e05880939ecdbb05d42090a06877398c6fba74` |
| 23 | `theorem` | [completedRepresentation_toCompletion](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/completedrepresentation-tocompletion--e4f543734c9224f97d129a96.md) | 230 | `result-track:e4f543734c9224f97d129a9678c82b41af35ef8de1dfa6a392ee325534eaa22e` |
| 24 | `theorem` | [completedRepresentation_commutes](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/completedrepresentation-commutes--3aeb0a164502d46427b8c032.md) | 238 | `result-track:3aeb0a164502d46427b8c032386735626eb3157b4ffbc7d6d8387be4e387f714` |
| 25 | `theorem` | [completedRepresentation_bound](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/completedrepresentation-bound--179b2ecae2524be9684c5af5.md) | 246 | `result-track:179b2ecae2524be9684c5af5ab327e8d0f9147aefee6254d091d052817a064ae` |
| 26 | `theorem` | [completedRepresentation_gauge](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/completedrepresentation-gauge--18fd7e1e824efe674078c2e8.md) | 256 | `result-track:18fd7e1e824efe674078c2e887a679cf8bdbb3980fe41ce51fbad13409fcc1af` |
| 27 | `theorem` | [quotientRepresentation_eq_iff_ae](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/quotientrepresentation-eq-iff-ae--6110a8a3d5c67d04c85db8de.md) | 263 | `result-track:6110a8a3d5c67d04c85db8de9927172f3799721300f13594523baec42e889313` |
| 28 | `theorem` | [quotientRepresentation_injective](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/quotientrepresentation-injective--f1ac547cb6a8d199dba2d743.md) | 281 | `result-track:f1ac547cb6a8d199dba2d74356332d1ee1242cb3b5686b5601c60a403f98fb4b` |
| 29 | `theorem` | [completedRepresentation_eq_iff](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/completedrepresentation-eq-iff--0e6a3a62815ff4c77b589460.md) | 292 | `result-track:0e6a3a62815ff4c77b589460c96df4c679e54293b1ca0ed0784679624919b6f8` |
| 30 | `theorem` | [completedRepresentation_eq_iff_ae](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/completedrepresentation-eq-iff-ae--6a89d28d7b5726274bb636a9.md) | 298 | `result-track:6a89d28d7b5726274bb636a96d3391b4b0ed0b0ec16151f710cdaf8fccde04fe` |
| 31 | `theorem` | [completedRepresentation_injective](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/completedrepresentation-injective--96aa740c55731671b148c35e.md) | 306 | `result-track:96aa740c55731671b148c35e99a1d616f0d3e0b9c88f84989fd452373453ecd6` |
| 32 | `def` | [finiteUnit](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/finiteunit--33af264481af7eef8523b427.md) | 315 | `declaration-track:33af264481af7eef8523b4277398d28b198e91f7a6ceb0e5b840eb7078dddb86` |
| 33 | `theorem` | [finiteUnit_nonzero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/finiteunit-nonzero--98ff2cf31988c5627c76e296.md) | 319 | `result-track:98ff2cf31988c5627c76e2965b5838db24190406584c7009c9920affde1139d7` |
| 34 | `theorem` | [identityBundle_faithful](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/identitybundle-faithful--c939ec835e61df5460499175.md) | 326 | `result-track:c939ec835e61df546049917538e11e422db09fac524f27a69a401f95fd6da44f` |
| 35 | `def` | [diskSymbol](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/disksymbol--abb794332df4d34d3b6a9b45.md) | 337 | `declaration-track:abb794332df4d34d3b6a9b45f9a0ce7e8c5e479967dc39932672f6c53327bc1b` |
| 36 | `theorem` | [diskSymbol_ne_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/disksymbol-ne-zero--1754feeb6282ec8f3add9426.md) | 339 | `result-track:1754feeb6282ec8f3add9426d9e94a56cd57100462ee6f0d3eb20a51f7b46712` |
| 37 | `theorem` | [nonzero_symbol_in_kernel](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/declarations/nonzero-symbol-in-kernel--ed4ed8f45f96b07281e6b787.md) | 346 | `result-track:ed4ed8f45f96b07281e6b787d3b7f22d305d5d3ac9bc8fda2cd62ad08758dff2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
