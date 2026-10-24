# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt03.Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e8b1fb49b4abc43e00b7441ed2059345ca1ec0b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt03/Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e8b1fb49b4abc43e00b7441ed2059345ca1ec0b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt03/Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt03/Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartanMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde.lean/declarations/cartanmatrix--724f9c74b9dbb4bc6d171acd.md) | 22 | `declaration-track:724f9c74b9dbb4bc6d171acdf1217d2b85a6ceb2ce41d1505749985919ed0fd5` |
| 2 | `theorem` | [mutationMatrix_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde.lean/declarations/mutationmatrix-cartan--c8c8f6e04c95b95d09ab6987.md) | 25 | `result-track:c8c8f6e04c95b95d09ab6987b4c013d7f092f6cc1676a303647aff2ecaa58baa` |
| 3 | `theorem` | [mutation_form_entry](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde.lean/declarations/mutation-form-entry--41039710ce0c259fc6f272f7.md) | 41 | `result-track:41039710ce0c259fc6f272f77684a16059ee85b71ad47237eb2ccb2c1c8fead8` |
| 4 | `theorem` | [weightedCartan_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde.lean/declarations/weightedcartan-symmetric--ff4100222860dc8b8eca5142.md) | 57 | `result-track:ff4100222860dc8b8eca51425aed019b22a048463d67091e720bd19536576a0d` |
| 5 | `theorem` | [mutationMatrix_weighted_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde.lean/declarations/mutationmatrix-weighted-metric--fdfdccf7704b30359c84bf45.md) | 71 | `result-track:fdfdccf7704b30359c84bf45be672f1aca370b236c04b184b0812644c5425201` |
| 6 | `theorem` | [mutationMatrix_symmetric_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variant154853ee17de7981d2ae2cc3b5c6df3ba30a9d07af87da4a524e7a4660ef0fde.lean/declarations/mutationmatrix-symmetric-metric--712764b0d821f2ad5493e524.md) | 89 | `result-track:712764b0d821f2ad5493e52436ddb9bf76e87cc4c38615fbbcb3a8a70a9b91d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
