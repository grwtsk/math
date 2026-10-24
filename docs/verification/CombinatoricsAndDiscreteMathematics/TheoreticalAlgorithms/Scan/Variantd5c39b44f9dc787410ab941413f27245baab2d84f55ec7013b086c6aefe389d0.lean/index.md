# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scan.Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e05517bac62541f9c91e79d3528e959e009b89e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e05517bac62541f9c91e79d3528e959e009b89e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Util.ProofWanted` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/length-partialsums--d9dc5ada2e854acc24ce35a5.md) | 26 | `result-track:d9dc5ada2e854acc24ce35a5eb6ea078b48f2cf78914a0eaa9390751ad255bd9` |
| 2 | `theorem` | [partialSums_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/partialsums-ne-nil--38adc9dd7b177a24de728f8c.md) | 31 | `result-track:38adc9dd7b177a24de728f8c82cf7522d2ed29f223661c3db48ee479f61f3553` |
| 3 | `theorem` | [partialSums_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/partialsums-nil--c5739b96997161afee52af71.md) | 35 | `result-track:c5739b96997161afee52af71aa947862b760fe6e090bcc842c30e77e18b683ed` |
| 4 | `theorem` | [partialSums_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/partialsums-cons--891a292ec12d5d2f2315f7c2.md) | 38 | `result-track:891a292ec12d5d2f2315f7c2bddbf87a35008f149cd3c0337760afd761ff5f81` |
| 5 | `theorem` | [partialSums_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/partialsums-append--b8592fd1c94c2eedfeb48e76.md) | 50 | `result-track:b8592fd1c94c2eedfeb48e76bc2f6660610216d9b4c813b5704547c44bc8a8e3` |
| 6 | `theorem` | [getElem_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/getelem-partialsums--2e9b582931449a55fa44bc43.md) | 61 | `result-track:2e9b582931449a55fa44bc430fe02d0f22916a31d9ebfb3c8a2a65f1ff2528f3` |
| 7 | `theorem` | [getElem?_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/getelem-partialsums--2c0fea49a7e991438df2e891.md) | 67 | `result-track:2c0fea49a7e991438df2e891c9c02b61d90fdcfb00d9b1fb00d7e2892a925f6e` |
| 8 | `theorem` | [take_partialSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/take-partialsums--c9dc2eccf0abdcd7933e1be3.md) | 73 | `result-track:c9dc2eccf0abdcd7933e1be396f4fb5be0c9f6f6a5053a4bf6ef2be0fb329bb3` |
| 9 | `theorem` | [length_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/length-partialprods--c570606517aef42fb4760379.md) | 78 | `result-track:c570606517aef42fb476037921d1e94ebd29ab28d4eb2d68f39eff11fec94774` |
| 10 | `theorem` | [partialProds_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/partialprods-nil--dc7ffa6bd6991c4de1f463e7.md) | 83 | `result-track:dc7ffa6bd6991c4de1f463e72ce4912e23a6e8da8f686e43170ce08c1db41efe` |
| 11 | `theorem` | [partialProds_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/partialprods-cons--1011ee41bff149e3e92a201a.md) | 87 | `result-track:1011ee41bff149e3e92a201a04204c68801c65f03c988d99d1c26a834bf1c02c` |
| 12 | `theorem` | [partialProds_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/partialprods-append--9e7dc94afddd319bb785b63b.md) | 99 | `result-track:9e7dc94afddd319bb785b63b5cf213084b3539daaf5ae9f510bbc7ac9d0f194c` |
| 13 | `theorem` | [getElem_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/getelem-partialprods--f8c8015ce7555a8ca24a7a5f.md) | 110 | `result-track:f8c8015ce7555a8ca24a7a5f940f3ebc8bfb02bbc2b4bda6b8eff6d6979e5044` |
| 14 | `theorem` | [getElem?_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/getelem-partialprods--452cc7c2659790e4174d3bd5.md) | 116 | `result-track:452cc7c2659790e4174d3bd56a36c1cf47f15c77c8cccbf91b40252127b95fe2` |
| 15 | `theorem` | [take_partialProds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/take-partialprods--578cf42805352b8852a086be.md) | 122 | `result-track:578cf42805352b8852a086bebb77254f3b2773824785313c00b3ad7d6a8b6487` |
| 16 | `theorem` | [length_flatten_mem_partialSums_map_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/length-flatten-mem-partialsums-map-length--348050f990e4ddc1244533bf.md) | 128 | `result-track:348050f990e4ddc1244533bf6154b2a1ca82e68ac3975fc921f8463dcb847bd8` |
| 17 | `theorem` | [getElem_flatten_aux₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/getelem-flatten-aux--c50933411c03e2888b029a9a.md) | 137 | `result-track:c50933411c03e2888b029a9a6cf29f18b8da143132a61223f7b3cc3428e43bcd` |
| 18 | `theorem` | [getElem_flatten_aux₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/getelem-flatten-aux--b35161844bb626f157f002a0.md) | 150 | `result-track:b35161844bb626f157f002a09169d4a7d53430c4c1d05f26a6c38ddd972d4ede` |
| 19 | `theorem` | [getElem_flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variantd5c39b44f9dc787410ab941413f27245baab2d84f55ec7013b086c6aefe389d0.lean/declarations/getelem-flatten--df10bfb09b0688d988500f24.md) | 184 | `result-track:df10bfb09b0688d988500f242b5fd170fcf175e166a27253eab81577e302fd6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
