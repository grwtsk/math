# Verification target: GRWTSK.Analysis.ComplexAnalysis.MobiusReciprocalPoleStatements.Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32604f3eb2820bc41cce2afa998b148ab927a190",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32604f3eb2820bc41cce2afa998b148ab927a190`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaPoleFactor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/zetapolefactor--70957b908d7ba446dfa76f98.md) | 18 | `declaration-track:70957b908d7ba446dfa76f9875eddb0d20ba979ff138848fe47230c9c3f89541` |
| 2 | `theorem` | [zetaPoleFactor_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/zetapolefactor-zero--8d58c4668d772f9865cdc442.md) | 20 | `result-track:8d58c4668d772f9865cdc44209e61a3359d7c3178f195e2f7b5a86e3eaf35d97` |
| 3 | `theorem` | [zetaPoleFactor_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/zetapolefactor-off--9010d775979a4676c68369d3.md) | 23 | `result-track:9010d775979a4676c68369d3f9e8522552ce6a989e5ea6aba991aca0f95c2af5` |
| 4 | `theorem` | [zetaPoleFactor_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/zetapolefactor-limit--e7d2d9fc632a310c6281a80e.md) | 27 | `result-track:e7d2d9fc632a310c6281a80e80063bfae5f31559c0f36b58bce8c19d0b4c9bd8` |
| 5 | `theorem` | [zetaPoleFactor_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/zetapolefactor-analyticat-zero--5c3a1e5a8536e9df56cbec39.md) | 42 | `result-track:5c3a1e5a8536e9df56cbec39cf62e463207a0c6b2042ea3d1b442bd8c8643178` |
| 6 | `def` | [reciprocalZeta](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/reciprocalzeta--c4ca21f3efb90b87706815a9.md) | 55 | `declaration-track:c4ca21f3efb90b87706815a9ccefcf7740b7d7d3f36a2e3b4acdbc0c8e9428a4` |
| 7 | `theorem` | [reciprocalZeta_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/reciprocalzeta-zero--3cc12952d4e9ff93b40353c5.md) | 57 | `result-track:3cc12952d4e9ff93b40353c5bb0997b6b8933a85e89b9b3e33fe8a1437609470` |
| 8 | `theorem` | [reciprocalZeta_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/reciprocalzeta-off--7655de75c391b7ccc9314293.md) | 60 | `result-track:7655de75c391b7ccc9314293799d44630fb29a9c67d280d161678a1607a7a708` |
| 9 | `theorem` | [reciprocalZeta_eq_div_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/reciprocalzeta-eq-div-factor--58979cc3fe4c0c29972e4357.md) | 64 | `result-track:58979cc3fe4c0c29972e43574e727d3962991c5ba0d1771267e4a1af29dd6ca5` |
| 10 | `theorem` | [reciprocalZeta_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/reciprocalzeta-analyticat-zero--d936651014c0b229ad4420b9.md) | 71 | `result-track:d936651014c0b229ad4420b956e0644a2f75351e93c4a35b9187bf7f8dcb57f9` |
| 11 | `theorem` | [reciprocalZeta_hasDerivAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/reciprocalzeta-hasderivat-zero--b630dd9ac1fed0e0591dc78c.md) | 77 | `result-track:b630dd9ac1fed0e0591dc78c5a7024c5930651e0e12cfee5587cbc258468e58a` |
| 12 | `theorem` | [reciprocalZeta_eventually_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/reciprocalzeta-eventually-ne-zero--2b3fc1b4e0290a41849d67b9.md) | 85 | `result-track:2b3fc1b4e0290a41849d67b9a4a282db6cf678ce138d6297529060c0b484f9ea` |
| 13 | `def` | [smoothedPerronIntegrand](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/smoothedperronintegrand--f0df10b9799fff88893cf738.md) | 96 | `declaration-track:f0df10b9799fff88893cf7386a9a097cd58dabcd1a7588748a3a5e311381fd2c` |
| 14 | `theorem` | [smoothedPerronIntegrand_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/smoothedperronintegrand-factor--58e53479b30e7602483a71e5.md) | 99 | `result-track:58e53479b30e7602483a71e58b78bf468bb9388d85f324cc0bf5db454b85efe5` |
| 15 | `theorem` | [perronNumerator_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/perronnumerator-analyticat-zero--96f42c6c36291f96d8e97cf0.md) | 107 | `result-track:96f42c6c36291f96d8e97cf06b39aeecf77c145a805997fcc308650346fd708a` |
| 16 | `theorem` | [smoothedPerronIntegrand_meromorphicAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/smoothedperronintegrand-meromorphicat-zero--d375ee12a359c722aff8b149.md) | 116 | `result-track:d375ee12a359c722aff8b149c5982bc81adebf0149e7629fc1f176c080a6a959` |
| 17 | `theorem` | [smoothedPerronIntegrand_order_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/smoothedperronintegrand-order-zero--e4e8faf8c6598d184050c43c.md) | 123 | `result-track:e4e8faf8c6598d184050c43cc2160264df6d1e8889bcecebabfa921fe6b2b222` |
| 18 | `theorem` | [smoothedPerronIntegrand_residue_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/smoothedperronintegrand-residue-limit--6e7eaefaee13c52c33184431.md) | 133 | `result-track:6e7eaefaee13c52c331844318bd8fe2b36d4d6b73bbf155e46376e8a5f3c448e` |
| 19 | `theorem` | [smoothedPerronIntegrand_residue_one](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/smoothedperronintegrand-residue-one--f539daed4e0b8db8d7b155bc.md) | 144 | `result-track:f539daed4e0b8db8d7b155bc66f1e5e8b52d509a244f58390045d20a35fbd8b3` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--7a54d06cf3f618188fe1ac0d.md) | 156 | `declaration-track:7a54d06cf3f618188fe1ac0def019e170dd7b04335cca43589ad721229f91b79` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--29c8aa65b64fb156c1905064.md) | 159 | `declaration-track:29c8aa65b64fb156c19050647c9733c0e14d883c4bd469b4f42419a65be4382a` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--246019fbbdba2f453396addf.md) | 161 | `declaration-track:246019fbbdba2f453396addfc5af0066888f3fb7d7d6b592bd5f1abe953830f4` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--abac387f59183ca4d10922b9.md) | 163 | `declaration-track:abac387f59183ca4d10922b9edca70b495f8e3ff04a2286cd51f336ec50c4b1d` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--a28539389e710c25206c5b43.md) | 166 | `declaration-track:a28539389e710c25206c5b43b8380a192c33f780e5347c0d176093f749d567a2` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--a0b9263f8f17e2090d253d36.md) | 168 | `declaration-track:a0b9263f8f17e2090d253d3617d872ca676b9b3293e4712d1ca64905fc610a23` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--e9d0dc56ee6bcbc7f892ab7e.md) | 171 | `declaration-track:e9d0dc56ee6bcbc7f892ab7e9079cb58c1aa7d7c02a2c72fda561745574d4069` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--c302270ac9978686589e6144.md) | 174 | `declaration-track:c302270ac9978686589e61449ef898f5a97fb94ce4355d9bad8268863edf9c76` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--68e1a529b7a9962e41b1983d.md) | 176 | `declaration-track:68e1a529b7a9962e41b1983d5f2d6e264d974b3ed2ebc93c063602fdf7d6b7bd` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--723ef342d924d23a13e26051.md) | 178 | `declaration-track:723ef342d924d23a13e26051efc093a946610c5468fc1c1b31f3cc7a8cef32d1` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--87f2f5f70bbf6e200d73d394.md) | 181 | `declaration-track:87f2f5f70bbf6e200d73d39411c68672bb11efec546ab84245d57aaa083f1a17` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--e68eaec614fb54108ef0921d.md) | 184 | `declaration-track:e68eaec614fb54108ef0921d272934adfc26327dbf396d6eed6435cdfeeafab6` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--85f1eb22773618c19db22824.md) | 187 | `declaration-track:85f1eb22773618c19db2282476012f06b87d999391333983b903b32ca1ecf8ab` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--bf943a455ec7722a8ac38904.md) | 191 | `declaration-track:bf943a455ec7722a8ac38904c0190d323f83d39569f622fb645327b93aa4f15a` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--c504c3eaaef669893a3b5265.md) | 195 | `declaration-track:c504c3eaaef669893a3b52650d98e4d3a95c47d72bebf4bbaa41ce5f875f832a` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--d3f277b4eaf76e25328b923e.md) | 198 | `declaration-track:d3f277b4eaf76e25328b923e119489749e5817ae3194881f172de71d3b1150d8` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--056e7bc5bb01c4ae12778845.md) | 202 | `declaration-track:056e7bc5bb01c4ae12778845c3edfc7766653c6993a7687667ff92700eb15f10` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/declarations/example--11747925ee0fc767da071047.md) | 206 | `declaration-track:11747925ee0fc767da071047b16cb706b327b2c83a79c2421d9a62c0c34fabe4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
