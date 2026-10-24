# Verification target: GRWTSK.NumberTheory.Chebyshev.RawSymmetricAverages

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a273cee76da0009cdd60eb0d7f166683085d4d4f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/RawSymmetricAverages.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a273cee76da0009cdd60eb0d7f166683085d4d4f`.

Source path: `GRWTSK/NumberTheory/Chebyshev/RawSymmetricAverages.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/RawSymmetricAverages.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.FirstRieszWeakRawLimit`](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.RieszDiagonalUnsmoothing`](../../../../mathematics/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rawAverage](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/declarations/rawaverage--c7bd9e107c52dfc4ec64bdd6.md) | 18 | `declaration-track:c7bd9e107c52dfc4ec64bdd63d3b3815c37e8c7305051c5a49d27eff6cfcf69d` |
| 2 | `def` | [rawAverageTailBudget](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/declarations/rawaveragetailbudget--ff101002474e256249574aa6.md) | 20 | `declaration-track:ff101002474e256249574aa67aabff3eca8ae627e8035a7d7be0466f62419da8` |
| 3 | `def` | [rawMeanOscillation](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/declarations/rawmeanoscillation--80d12740a1e5dfd4afa18c17.md) | 22 | `declaration-track:80d12740a1e5dfd4afa18c17fa93cbdcdd6b015c05e044a3622910ed63248078` |
| 4 | `theorem` | [norm_source_sub_average_le](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/declarations/norm-source-sub-average-le--ff9f44223a4569c7e728cd28.md) | 25 | `result-track:ff9f44223a4569c7e728cd28c5db1514f46589796a847d264bd09df3d0fa8226` |
| 5 | `theorem` | [rawAverageTailBudget_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/declarations/rawaveragetailbudget-tendsto-zero--767a20ddbd9f7563ffabd7d2.md) | 36 | `result-track:767a20ddbd9f7563ffabd7d2f374a2530e4d2be8a1104569cd1b9d734f0103f3` |
| 6 | `theorem` | [exists_raw_average_reconstruction](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/declarations/exists-raw-average-reconstruction--315d120183489f3e5eba0879.md) | 43 | `result-track:315d120183489f3e5eba0879bf3e50ea484b08f50f8a9369c958196f6e266cce` |
| 7 | `theorem` | [norm_average_sub_point_le](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/declarations/norm-average-sub-point-le--68b8fc61b67df07d55d90ce8.md) | 65 | `result-track:68b8fc61b67df07d55d90ce869cd3e2e82b92c61dc37c801818cd7087485d070` |
| 8 | `theorem` | [norm_source_sub_raw_le](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/declarations/norm-source-sub-raw-le--0d9e01e0c73c4c677449da3a.md) | 87 | `result-track:0d9e01e0c73c4c677449da3ab4181beb467c6eb9cd09400e43f3db9ed65839d8` |
| 9 | `theorem` | [exists_raw_reconstruction_tauberian](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/declarations/exists-raw-reconstruction-tauberian--f50ff82a97974d409e25f9bc.md) | 96 | `result-track:f50ff82a97974d409e25f9bc96bef8cabb75107d26cbf623bdf2009bc87020ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
