# Verification target: GRWTSK.Analysis.MeasureTheory.Caratheodory.Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e375f075f64ecc9f8cc5c6f2c7292cbdcfb041a3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e375f075f64ecc9f8cc5c6f2c7292cbdcfb041a3`.

Source path: `GRWTSK/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.OuterMeasure.OfFunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.PiSystem` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCaratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory--da716fc14e6f97f239ccaff5.md) | 59 | `declaration-track:da716fc14e6f97f239ccaff5774765203d93b140174473b291ac875150fd55ef` |
| 2 | `theorem` | [isCaratheodory_iff_le'](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-iff-le--ef8a47b7e24b7827e87562c5.md) | 62 | `result-track:ef8a47b7e24b7827e87562c5e8ce3a90db9118bbb34ede79219e7402bda394cd` |
| 3 | `theorem` | [isCaratheodory_empty](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-empty--d3c52f3c146b203828775080.md) | 67 | `result-track:d3c52f3c146b203828775080242b36ee9d6962f394a3e3db01b7c2b2789c921c` |
| 4 | `theorem` | [isCaratheodory_compl](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-compl--7eb763166d6839f19d1382e0.md) | 69 | `result-track:7eb763166d6839f19d1382e050a9a6caa7aa17165d0599bbd59646c25f1ce4b3` |
| 5 | `theorem` | [isCaratheodory_compl_iff](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-compl-iff--de6f0123202bbf23a2c9756a.md) | 73 | `result-track:de6f0123202bbf23a2c9756a32f1b642147ffb19768ef152d145b9e7b0746cd5` |
| 6 | `theorem` | [isCaratheodory_union](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-union--40ca1f2b401b9d85e4cf2450.md) | 76 | `result-track:40ca1f2b401b9d85e4cf245030877613d7bb00391cc85572761967fdb843f42e` |
| 7 | `lemma` | [IsCaratheodory.biUnion_of_finite](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-biunion-of-finite--b41737b4dca48bcfa43f7dbf.md) | 84 | `result-track:b41737b4dca48bcfa43f7dbfcf2d12e92e57ac0689636b7c8c605a1f5a29875b` |
| 8 | `theorem` | [measure_inter_union](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/measure-inter-union--b42e8ff6d76ef1f0d73ed423.md) | 95 | `result-track:b42e8ff6d76ef1f0d73ed4232734b1f440fb5dccf28cc5f247e4210fadc39294` |
| 9 | `theorem` | [isCaratheodory_iUnion_lt](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-iunion-lt--eb4fbe6dc997c141c6820250.md) | 99 | `result-track:eb4fbe6dc997c141c6820250a4309d778c401fbd2698df0efa9a35b9b2cdafa8` |
| 10 | `theorem` | [isCaratheodory_inter](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-inter--ab7f24096f22bf3a9e0e8f19.md) | 108 | `result-track:ab7f24096f22bf3a9e0e8f19befc0f6d14142c86918c865041947498419f4f34` |
| 11 | `lemma` | [isCaratheodory_diff](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-diff--936a52d7e6a63adc46429b05.md) | 113 | `result-track:936a52d7e6a63adc46429b059b9b9f10e190db3ff101b8fec705497f5a5246b2` |
| 12 | `lemma` | [isCaratheodory_partialSups](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-partialsups--7b13215410ca0211a4f2ab46.md) | 116 | `result-track:7b13215410ca0211a4f2ab4686acbc10a1a5e240ff8e05659caf219c403634cd` |
| 13 | `lemma` | [isCaratheodory_disjointed](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-disjointed--29a2123ab6b02a2ee0dd440a.md) | 122 | `result-track:29a2123ab6b02a2ee0dd440ae64ae0a5d6bff956ca680fa1543ce7b37255f3eb` |
| 14 | `theorem` | [isCaratheodory_sum](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-sum--d6c8ab8d593e2f24da31214e.md) | 127 | `result-track:d6c8ab8d593e2f24da31214ee3341370ed3c4e5747a9e5d06bdc2f0ddd24cc63` |
| 15 | `theorem` | [isCaratheodory_iUnion_of_disjoint](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-iunion-of-disjoint--5fe90ee3932184ae1896dc7d.md) | 138 | `result-track:5fe90ee3932184ae1896dc7d7f901a340066c6bfb3a0a0558397ead6f3ea9d7b` |
| 16 | `lemma` | [isCaratheodory_iUnion](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-iunion--3d8644b1bc880261564c6b8f.md) | 153 | `result-track:3d8644b1bc880261564c6b8fc532f06460dddcfaa4e14e50ffeb7caadb048915` |
| 17 | `theorem` | [f_iUnion](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/f-iunion--96f496c90206cac22b199233.md) | 159 | `result-track:96f496c90206cac22b1992339f4bad2b0537245612fb3e252f3cf9c1fbf08ce6` |
| 18 | `def` | [caratheodoryDynkin](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/caratheodorydynkin--ddf445557909ffb302f9f7c1.md) | 169 | `declaration-track:ddf445557909ffb302f9f7c1e1cf2707d6db8c5aa2c10de90401bd2c78685270` |
| 19 | `def` | [caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/caratheodory--931545e85d819c9766998e81.md) | 177 | `declaration-track:931545e85d819c9766998e8122301073636fe74dde46dc593a11368e59d074ea` |
| 20 | `theorem` | [isCaratheodory_iff](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-iff--401665cb21c68218a3671dab.md) | 182 | `result-track:401665cb21c68218a3671dab495d59d93b44ca931ea7cf966ac2ecd9a9bfd1a6` |
| 21 | `theorem` | [isCaratheodory_iff_le](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iscaratheodory-iff-le--576a2d68ecc5d6ac5d534485.md) | 186 | `result-track:576a2d68ecc5d6ac5d5344856e6879862f4ead9b4f229c2ae6ea57cb79f77a25` |
| 22 | `theorem` | [iUnion_eq_of_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/iunion-eq-of-caratheodory--e211338423fb7cdfea95be34.md) | 190 | `result-track:e211338423fb7cdfea95be3475159be07bcbb81fc0f00e80de8da1ad948d1694` |
| 23 | `theorem` | [ofFunction_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/offunction-caratheodory--deca744fac426039fbe110da.md) | 199 | `result-track:deca744fac426039fbe110da3953c22a3e5d3beb7a822ecf07a11fac6836b284` |
| 24 | `theorem` | [boundedBy_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/boundedby-caratheodory--31bac662e9e7ba5d23e3c048.md) | 216 | `result-track:31bac662e9e7ba5d23e3c048f56cfa02ad7e78f375e3e955b95dd972150db2a7` |
| 25 | `theorem` | [zero_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/zero-caratheodory--188eabf624c57befc98723b3.md) | 226 | `result-track:188eabf624c57befc98723b315b40a64ea284e8135e4bbf5a4dbf3b4a5a9351e` |
| 26 | `theorem` | [top_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/top-caratheodory--881369261987959a695e99e3.md) | 229 | `result-track:881369261987959a695e99e3e1cdb5b4390464a2fbe151e1fc6d5f890209f54c` |
| 27 | `theorem` | [le_add_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/le-add-caratheodory--5ffc0ccfc3bf98bebdfd754d.md) | 235 | `result-track:5ffc0ccfc3bf98bebdfd754d077c9acc260783e4409d32364b703373af096047` |
| 28 | `theorem` | [le_sum_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/le-sum-caratheodory--4aa746c77017a28d6dc9a1cc.md) | 239 | `result-track:4aa746c77017a28d6dc9a1ccd370cfee61d3d5aff683f065931f23ed30c75e69` |
| 29 | `theorem` | [le_smul_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/le-smul-caratheodory--5d5b59c0d16032b1e6f07ebd.md) | 243 | `result-track:5d5b59c0d16032b1e6f07ebd4419428d2ce9f9a7e09c1ca93d3089da4e64e30f` |
| 30 | `theorem` | [dirac_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7f5c28b85d84e6d7b630696e84cdeedcc16a255b84c0404fd5445388dd097011.lean/declarations/dirac-caratheodory--7598dd6e6be505d1aca9357b.md) | 250 | `result-track:7598dd6e6be505d1aca9357b75b7a9dea47eac4d0c1e072e7b9e0eee410a3cd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
