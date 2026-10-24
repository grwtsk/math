# Verification target: GRWTSK.Algebra.AlgebraicClosure.Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d77bc9d03bc9d168b7bda8218c18d2b8390d7601",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d77bc9d03bc9d168b7bda8218c18d2b8390d7601`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fintype` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Monics](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/monics--8eca8dfbe14e120d7e8197d0.md) | 49 | `declaration-track:8eca8dfbe14e120d7e8197d0f6fb19c456b2bd7a8768e36e77def56a969266ed` |
| 2 | `def` | [Vars](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/vars--1233b51103464118aea57a07.md) | 53 | `declaration-track:1233b51103464118aea57a077b44b5ca1dd731c61ba0c066d731348c4774f152` |
| 3 | `def` | [subProdXSubC](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/subprodxsubc--122db72c3548d0a449d4ba62.md) | 58 | `declaration-track:122db72c3548d0a449d4ba62b5d889b629c952ce99352b0cd520992746535046` |
| 4 | `def` | [spanCoeffs](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/spancoeffs--2e0f3805a50e86c456e787fa.md) | 62 | `declaration-track:2e0f3805a50e86c456e787fa7dda412a87513adf2be75ba3c40da50c27969bfe` |
| 5 | `def` | [finEquivRoots](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/finequivroots--276b1a842b9258b1849a9722.md) | 69 | `declaration-track:276b1a842b9258b1849a97220f486dc699701662206c203cb260bbcccc7ee4d5` |
| 6 | `lemma` | [Monics.splits_finsetProd](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/monics-splits-finsetprod--9260fd4c817b25e71f7f02f3.md) | 75 | `result-track:9260fd4c817b25e71f7f02f3ffa0d5e2f8d3262ab9b686782ef37896c85b7ddc` |
| 7 | `def` | [toSplittingField](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/tosplittingfield--3cbf2217f8ff57eee4776bfa.md) | 83 | `declaration-track:3cbf2217f8ff57eee4776bfac54a072f2e10e398f489349b2c6b090273ce80d1` |
| 8 | `theorem` | [toSplittingField_coeff](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/tosplittingfield-coeff--42d08e48e364d67bb3a7b684.md) | 88 | `result-track:42d08e48e364d67bb3a7b6841bdec2b0c915ae695fac37de4d09c2e25fa09ded` |
| 9 | `theorem` | [spanCoeffs_ne_top](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/spancoeffs-ne-top--102ad5247b386f7bfe7ee576.md) | 103 | `result-track:102ad5247b386f7bfe7ee576a85bcf2f58aa111cb97b231aee36813fc11b5d90` |
| 10 | `def` | [maxIdeal](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/maxideal--643e7587bd8acb66c143d3a2.md) | 115 | `declaration-track:643e7587bd8acb66c143d3a239c626e3453a39167506892ecfdc4f1965ddba56` |
| 11 | `instance` | [maxIdeal.isMaximal](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/maxideal-ismaximal--82a8967c3e4b0134e27d7553.md) | 118 | `declaration-track:82a8967c3e4b0134e27d755385b020cf1334179c425b8f4862b436405fe56db4` |
| 12 | `theorem` | [le_maxIdeal](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/le-maxideal--6bb3961332ad564f6aa7f2df.md) | 121 | `result-track:6bb3961332ad564f6aa7f2dff7b31c84131b6cae3993342c8fb653ff0941cf8f` |
| 13 | `def` | [AlgebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/algebraicclosure--59f4dad5f7452ec2a1da13f1.md) | 130 | `declaration-track:59f4dad5f7452ec2a1da13f19a405e944a4ff116fb8d4bab3ad9c0fbe0000f6a` |
| 14 | `instance` | [instCommRing](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instcommring--cabb6420e72e992e1ad8ae03.md) | 135 | `declaration-track:cabb6420e72e992e1ad8ae0385cacab29070a3a9468ba47fdc1fc813f2516106` |
| 15 | `instance` | [instInhabited](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instinhabited--7b3038febb888c3bd9750a0e.md) | 136 | `declaration-track:7b3038febb888c3bd9750a0ec86d4a43eac4f971f5a5efe6c7ef854d8e8a400a` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instance--01d0d0549b6b84c73fed6abd.md) | 138 | `declaration-track:01d0d0549b6b84c73fed6abd07ee57078196b5c9a1ce4588df7d4a52582ff430` |
| 17 | `instance` | [instAlgebra](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instalgebra--6894244eb5da3b5fc93350b5.md) | 141 | `declaration-track:6894244eb5da3b5fc93350b548a2687941cc86ddaeaa736276cebd93f9c98307` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instance--41b548806eeb5bbb24002e51.md) | 144 | `declaration-track:41b548806eeb5bbb24002e5147bebf87f8b556065dde9f35c8ce11dea723b72c` |
| 19 | `instance` | [instGroupWithZero](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instgroupwithzero--e25d0192c02f91a1d677285a.md) | 148 | `declaration-track:e25d0192c02f91a1d677285ae5bd4947ca08f663fc444e3cd918d774ddfb81c2` |
| 20 | `instance` | [instField](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instfield--799ec890a0365927b491fda9.md) | 151 | `declaration-track:799ec890a0365927b491fda9b303206b7b29aa711ae2fc3798be4b192627e164` |
| 21 | `theorem` | [Monics.map_eq_prod](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/monics-map-eq-prod--2e6bbf09c090366c4e7c16a6.md) | 166 | `result-track:2e6bbf09c090366c4e7c16a6150059540467ff5252f63f11f5a396a6d6b6b3ec` |
| 22 | `instance` | [isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/isalgebraic--5bf3cbad077bca21cc9f3bd3.md) | 175 | `declaration-track:5bf3cbad077bca21cc9f3bd3e9a98989d7d0be62dcc3529b11da1ae575a077a7` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instance--98b59a23ac61cf630d316008.md) | 194 | `declaration-track:98b59a23ac61cf630d316008c319fa134a8def7d729f804e707f6ad7f2cba2ca` |
| 24 | `instance` | [isAlgClosed](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/isalgclosed--4b385f21e0f8b039edd98de2.md) | 198 | `declaration-track:4b385f21e0f8b039edd98de229df6b5060cc26aafb400b3acd04095ed612fe32` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instance--730065e56982978cdd5cdc5f.md) | 200 | `declaration-track:730065e56982978cdd5cdc5f701c4071febf00a77de9025ee282835a4c2e64b3` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instance--e6673db72f7a76ed584f5c76.md) | 203 | `declaration-track:e6673db72f7a76ed584f5c7616984a6c361e14c30ef03430719b2732565b01a2` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instance--caf0b398c0a809df37a50f1c.md) | 206 | `declaration-track:caf0b398c0a809df37a50f1cb91409a97a7914768410b39229b7ee456f40797b` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/instance--738e0c3701f6b0e9eff9f690.md) | 217 | `declaration-track:738e0c3701f6b0e9eff9f690df798d04b82126e49d6394d79e8a5df8422d8b63` |
| 29 | `theorem` | [AdjoinSimple.normal_algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/adjoinsimple-normal-algebraicclosure--34aded1b44c25a6c93d35869.md) | 220 | `result-track:34aded1b44c25a6c93d3586950999fda041d1cccb1c340143fbd827edd0ee699` |
| 30 | `theorem` | [AdjoinDouble.normal_algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/declarations/adjoindouble-normal-algebraicclosure--57ac7b7fa9e4575c8f4d40e9.md) | 225 | `result-track:57ac7b7fa9e4575c8f4d40e94920c82c7c023b152d44675cff082349a7c5e811` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
