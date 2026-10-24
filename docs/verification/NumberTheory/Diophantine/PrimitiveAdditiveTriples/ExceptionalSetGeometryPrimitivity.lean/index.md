# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryPrimitivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5ff8583109ed0814dd13368901e9eee6f3f8c51",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5ff8583109ed0814dd13368901e9eee6f3f8c51`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryPositivity`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/index.md) — import line 21; pinned internal source present.
- `Mathlib.Tactic` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coprime_weighted_totals_of_support](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/coprime-weighted-totals-of-support--afcb9fbafabcdab7d329a30c.md) | 38 | `result-track:afcb9fbafabcdab7d329a30c18c04cd6a967e8bc6a30bd613b337e71f6336977` |
| 2 | `theorem` | [geometryTotals_pairwise_coprime_of_mem_boxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/geometrytotals-pairwise-coprime-of-mem-boxfinset--a0d7cacd18ac449e99a90e4c.md) | 52 | `result-track:a0d7cacd18ac449e99a90e4c24480b446723876b13a908579bc17f285fd03328` |
| 3 | `structure` | [GeometryPairwisePrimitivity](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/geometrypairwiseprimitivity--abc7524874c53d4de6056662.md) | 80 | `declaration-track:abc7524874c53d4de60566627b9295fc00ae01d0c6ad1676542f7c8e9281704c` |
| 4 | `theorem` | [geometryPairwisePrimitivity_of_mem_boxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/geometrypairwiseprimitivity-of-mem-boxfinset--f5701a7bd63be2f4b4c942e9.md) | 105 | `result-track:f5701a7bd63be2f4b4c942e9e619aeb37839fd16d09f262e193c9aa916cc5eb3` |
| 5 | `theorem` | [geometryPairwisePrimitivity_of_mem_paperBoxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/geometrypairwiseprimitivity-of-mem-paperboxfinset--8e84572dec4dbf1856426c1c.md) | 154 | `result-track:8e84572dec4dbf1856426c1c8843b67ba19b34a832a9190f980dc9c0295257c8` |
| 6 | `def` | [GeometryPaperPrimitivity](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/geometrypaperprimitivity--0faa42dedd9ce94cab6ef296.md) | 163 | `declaration-track:0faa42dedd9ce94cab6ef296705cce9303ce334d94c82ae3affa92adc9f90344` |
| 7 | `theorem` | [GeometryPairwisePrimitivity.toPaperPrimitivity](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/geometrypairwiseprimitivity-topaperprimitivity--458d40611651a76816957910.md) | 177 | `result-track:458d40611651a76816957910d5a9744fcd044c7654d18fed94d72679c3e65d66` |
| 8 | `theorem` | [geometryPaperPrimitivity_of_mem_boxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/geometrypaperprimitivity-of-mem-boxfinset--0ba6ffe286a66812d33e1cb8.md) | 199 | `result-track:0ba6ffe286a66812d33e1cb888838cdc1e543446892269286f70d9bfcb102e51` |
| 9 | `theorem` | [geometryPaperPrimitivity_of_mem_paperBoxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/geometrypaperprimitivity-of-mem-paperboxfinset--b0360aac65f1b26fd12cde98.md) | 206 | `result-track:b0360aac65f1b26fd12cde98564aedca9391032505fbd6fba5cfcf9840bb7223` |
| 10 | `structure` | [PrimitivePositiveGeometryLinearization](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/primitivepositivegeometrylinearization--f5802dfe37575f09928f63e5.md) | 214 | `declaration-track:f5802dfe37575f09928f63e5b41792d03fb223eba8a9f54266a924fa668ba579` |
| 11 | `theorem` | [PrimitivePositiveGeometryLinearization.paperPrimitivity](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/primitivepositivegeometrylinearization-paperprimitivity--8e6113c78320576fc45dcbea.md) | 222 | `result-track:8e6113c78320576fc45dcbea2319e48e5327cf11dd325792951a4a6ad9b18a89` |
| 12 | `theorem` | [primitivePositiveGeometryLinearization_of_paperAdmissible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/primitivepositivegeometrylinearization-of-paperadmissible--c9fdba82a76060e1cec40e8b.md) | 231 | `result-track:c9fdba82a76060e1cec40e8b7df9cd8c74e4d71473910ff4a6cdef1efb8e0d06` |
| 13 | `theorem` | [joint_gcd_one_does_not_imply_pairwise_fixture](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/declarations/joint-gcd-one-does-not-imply-pairwise-fixture--d2b29d7ffb55ea9bb1d7d2e8.md) | 249 | `result-track:d2b29d7ffb55ea9bb1d7d2e89baecf64512cb06b7b6e5423d3cd26e2172f072c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
