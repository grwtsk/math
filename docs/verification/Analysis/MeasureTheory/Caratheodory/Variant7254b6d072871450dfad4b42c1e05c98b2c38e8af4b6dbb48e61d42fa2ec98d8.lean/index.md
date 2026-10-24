# Verification target: GRWTSK.Analysis.MeasureTheory.Caratheodory.Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3fce01f401c01af3b098ad98048a6586361b521",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3fce01f401c01af3b098ad98048a6586361b521`.

Source path: `GRWTSK/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.OuterMeasure.OfFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.PiSystem` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCaratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory--5611cfaf492ff2677b333cae.md) | 51 | `declaration-track:5611cfaf492ff2677b333caea48c9c6d134ea2d0bfde11f2cd809ef10772dbaf` |
| 2 | `theorem` | [isCaratheodory_iff_le'](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-iff-le--75ed2f4fe534557b672bb8e5.md) | 54 | `result-track:75ed2f4fe534557b672bb8e5a64eafa47ee1b875392274b4a7fc517fb8478338` |
| 3 | `theorem` | [isCaratheodory_empty](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-empty--01370b1aa316d9c757a5f59c.md) | 59 | `result-track:01370b1aa316d9c757a5f59c9a709efe11a9a19b051a904b5d54a873d7ef7259` |
| 4 | `theorem` | [isCaratheodory_compl](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-compl--f84073ef2c48c6aa973e03c7.md) | 61 | `result-track:f84073ef2c48c6aa973e03c72b96925b64dcbd0ae011c2fee23254a2f170abd8` |
| 5 | `theorem` | [isCaratheodory_compl_iff](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-compl-iff--04661b621d1f2a0897f46fac.md) | 65 | `result-track:04661b621d1f2a0897f46fac8f2564c950e370d3efd6701a9fdc235f0cca15d4` |
| 6 | `theorem` | [isCaratheodory_union](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-union--c0ad50e9bce342e040fe8f41.md) | 68 | `result-track:c0ad50e9bce342e040fe8f41c3b53abc36f21d90bd4ab01e75d6d8bec54ac677` |
| 7 | `lemma` | [IsCaratheodory.biUnion_of_finite](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-biunion-of-finite--5fdb6365b79d15507ef01476.md) | 76 | `result-track:5fdb6365b79d15507ef01476e73a671c2c625d26ccfd7c3b114d4cb290e15e61` |
| 8 | `theorem` | [measure_inter_union](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/measure-inter-union--85d1a558f503959ddd69ba44.md) | 87 | `result-track:85d1a558f503959ddd69ba4462807ea6eb7266f3996a43969d0e976628ce6959` |
| 9 | `theorem` | [isCaratheodory_iUnion_lt](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-iunion-lt--fd8c086234e4cd46438130f5.md) | 91 | `result-track:fd8c086234e4cd46438130f58dd98dd307603ce9adbcc60812e001bc54128da3` |
| 10 | `theorem` | [isCaratheodory_inter](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-inter--deb0af0dcb007451cc592fab.md) | 100 | `result-track:deb0af0dcb007451cc592fab7264547d8c08e07db32219b44acf8d10b1fd2df2` |
| 11 | `lemma` | [isCaratheodory_diff](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-diff--9f956486b8e3714c094ba499.md) | 105 | `result-track:9f956486b8e3714c094ba4995e10977d7198281b52dba27bd7840aac6e2b845d` |
| 12 | `lemma` | [isCaratheodory_partialSups](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-partialsups--3038135fd7421b48e6732c72.md) | 108 | `result-track:3038135fd7421b48e6732c726f258ba92891ca6869950f2279e0b385423b6fe1` |
| 13 | `lemma` | [isCaratheodory_disjointed](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-disjointed--bc1860e0e4739fe669a44114.md) | 114 | `result-track:bc1860e0e4739fe669a44114ec9ec1f01ec5c537a969ddd387ea351c531fa9af` |
| 14 | `theorem` | [isCaratheodory_sum](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-sum--690638e20ebcef54966384c6.md) | 119 | `result-track:690638e20ebcef54966384c6e20f111f4925331517dfb9d4c096ba625a89921d` |
| 15 | `theorem` | [isCaratheodory_iUnion_of_disjoint](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-iunion-of-disjoint--0d0c06f6e3fcae7b5dadb4c5.md) | 130 | `result-track:0d0c06f6e3fcae7b5dadb4c577467ee20c84b1893fe9bf0d4e69b463273a1bb7` |
| 16 | `lemma` | [isCaratheodory_iUnion](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-iunion--dab5234dd672d29277077d40.md) | 145 | `result-track:dab5234dd672d29277077d40ffd7def7677646bf6430f96555709814d7cce0c2` |
| 17 | `theorem` | [f_iUnion](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/f-iunion--ca1e289e62cfda8ae5112c2c.md) | 151 | `result-track:ca1e289e62cfda8ae5112c2c991e9a1dd24f2cb5f239b47632ebaae96d4755af` |
| 18 | `def` | [caratheodoryDynkin](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/caratheodorydynkin--495621a12dc6d05fa53a4fa2.md) | 161 | `declaration-track:495621a12dc6d05fa53a4fa22e474f751cfd9e47184857324b5e38a7da3b312b` |
| 19 | `def` | [caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/caratheodory--f30f2cb10d5c4ad91556d445.md) | 169 | `declaration-track:f30f2cb10d5c4ad91556d4452f3330893a685859455524f85bcce976bf8f6b89` |
| 20 | `theorem` | [isCaratheodory_iff](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-iff--431d78e0f9a60fd419b1d11d.md) | 174 | `result-track:431d78e0f9a60fd419b1d11d850fcd39da9c220945f2c734a87c6ff925bb3ccd` |
| 21 | `theorem` | [isCaratheodory_iff_le](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iscaratheodory-iff-le--20f7373f7bdc3982d29c8464.md) | 178 | `result-track:20f7373f7bdc3982d29c8464437611dee26496359d784df801b9e979bcd251df` |
| 22 | `theorem` | [iUnion_eq_of_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/iunion-eq-of-caratheodory--392bde592d929e3b8feadd58.md) | 182 | `result-track:392bde592d929e3b8feadd58ae4664ebc6bbc172f13e4baa0841c58589473fb8` |
| 23 | `theorem` | [ofFunction_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/offunction-caratheodory--162a41c15ebb1a0011b3eb85.md) | 191 | `result-track:162a41c15ebb1a0011b3eb850822a339cca366182ddf3d12369860543d710cf7` |
| 24 | `theorem` | [boundedBy_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/boundedby-caratheodory--2d35e8ffdd87eda54294b456.md) | 208 | `result-track:2d35e8ffdd87eda54294b4560e1cc9275bedad90c989777d2ebf8445e8c5ccd2` |
| 25 | `theorem` | [zero_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/zero-caratheodory--518cadfa716f47ac35b232d1.md) | 218 | `result-track:518cadfa716f47ac35b232d16cfc0d0def4e1afcfcdedf33cc8dd350119803fb` |
| 26 | `theorem` | [top_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/top-caratheodory--4695c26963cc687405db0b54.md) | 221 | `result-track:4695c26963cc687405db0b54bd2f89bef267b72a60ccccc35506f83e1ba57a76` |
| 27 | `theorem` | [le_add_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/le-add-caratheodory--a17fa79221c42f1cba2279cd.md) | 227 | `result-track:a17fa79221c42f1cba2279cd3a6916904e0df5a5b47be9ba008b7c65899f30ea` |
| 28 | `theorem` | [le_sum_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/le-sum-caratheodory--2fb32aa2ddbd8d930d3132b8.md) | 231 | `result-track:2fb32aa2ddbd8d930d3132b83a4a5471cd409bf4fd377d5725d8cc03db17823f` |
| 29 | `theorem` | [le_smul_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/le-smul-caratheodory--e358ccf3968385a8a6ae145e.md) | 235 | `result-track:e358ccf3968385a8a6ae145eab66b9764031fe836ee1ad80d7339526c8528cce` |
| 30 | `theorem` | [dirac_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Caratheodory/Variant7254b6d072871450dfad4b42c1e05c98b2c38e8af4b6dbb48e61d42fa2ec98d8.lean/declarations/dirac-caratheodory--5b93ba9bfc4cdc1edbe7067c.md) | 242 | `result-track:5b93ba9bfc4cdc1edbe7067cb876d065d576ced657b041047ed0973297e11e96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
