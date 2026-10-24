# Verification target: GRWTSK.NumberTheory.LSeries.GaussianDyadic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d99d4f0b30dbed998bc277c3695026f3337411f2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LSeries/GaussianDyadic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/LSeries/GaussianDyadic.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/LSeries/GaussianDyadic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d99d4f0b30dbed998bc277c3695026f3337411f2`.

Source path: `GRWTSK/NumberTheory/LSeries/GaussianDyadic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LSeries/GaussianDyadic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus`](../../../../mathematics/Analysis/PartitionOfUnity/DyadicAnnulus.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.GaussianContour`](../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianDyadicTerm](../../../../mathematics/NumberTheory/LSeries/GaussianDyadic.lean/declarations/gaussiandyadicterm--cb3f459e76572faff89c63cf.md) | 20 | `declaration-track:cb3f459e76572faff89c63cf8fb49d4e113cd1aeb997c6e4f7612a4cb1379a01` |
| 2 | `theorem` | [gaussianDyadicTerm_summable](../../../../mathematics/NumberTheory/LSeries/GaussianDyadic.lean/declarations/gaussiandyadicterm-summable--c365f6e822ce4572e070c2a8.md) | 25 | `result-track:c365f6e822ce4572e070c2a823acd4a6c01980493f85a75a45286b053a6ee12c` |
| 3 | `theorem` | [gaussianDyadicTerm_finite_support](../../../../mathematics/NumberTheory/LSeries/GaussianDyadic.lean/declarations/gaussiandyadicterm-finite-support--7aaebb09d1133126d14791ef.md) | 31 | `result-track:7aaebb09d1133126d14791ef0e461f2b234c61711a5a1f685a47b9e8070aac87` |
| 4 | `theorem` | [gaussianDyadicTerm_inner_summable](../../../../mathematics/NumberTheory/LSeries/GaussianDyadic.lean/declarations/gaussiandyadicterm-inner-summable--abd83b7fc35cc74c33e00ab2.md) | 45 | `result-track:abd83b7fc35cc74c33e00ab2de6bfbde9c00d5102ccb936a7392bf74c82f4a36` |
| 5 | `theorem` | [gaussianDyadicTerm_tsum_eq_sum](../../../../mathematics/NumberTheory/LSeries/GaussianDyadic.lean/declarations/gaussiandyadicterm-tsum-eq-sum--ae966cac8c4da6ed246ff5ab.md) | 50 | `result-track:ae966cac8c4da6ed246ff5ab654689481a0fef0ff411e3b8031b66832e08fb4c` |
| 6 | `theorem` | [gaussianDyadic_reassembly](../../../../mathematics/NumberTheory/LSeries/GaussianDyadic.lean/declarations/gaussiandyadic-reassembly--edeefc7824bd4c0ab7e52e62.md) | 64 | `result-track:edeefc7824bd4c0ab7e52e62ac60d03c6bf9773a7e824b54f3f8cddf9aceef2b` |
| 7 | `theorem` | [gaussianZetaContour_eq_dyadic](../../../../mathematics/NumberTheory/LSeries/GaussianDyadic.lean/declarations/gaussianzetacontour-eq-dyadic--8484457da15ea467f06f7633.md) | 71 | `result-track:8484457da15ea467f06f76335688e3b103eba592e8333cf6b774e9a832cff4fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
