# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1549dac33cb29e2df7470a5171b6a8818499519",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1549dac33cb29e2df7470a5171b6a8818499519`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lieEquivMatrix'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean/declarations/lieequivmatrix--6241065c6af915836e6636db.md) | 48 | `declaration-track:6241065c6af915836e6636db56212db001a7387f2c37199e6a7ba4545ab0dffa` |
| 2 | `theorem` | [lieEquivMatrix'_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean/declarations/lieequivmatrix-apply--18f0b0e1bb3bd9e97a735c04.md) | 57 | `result-track:18f0b0e1bb3bd9e97a735c04660514577c23302e07cb3c504ea405a3a9f50097` |
| 3 | `theorem` | [lieEquivMatrix'_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean/declarations/lieequivmatrix-symm-apply--835c992e420626bdc37a7558.md) | 62 | `result-track:835c992e420626bdc37a7558008f8e6e7dcf8fa8219e98153fa4d073c0154b1c` |
| 4 | `def` | [Matrix.lieConj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean/declarations/matrix-lieconj--c4989e0501821d630d3cc6ad.md) | 67 | `declaration-track:c4989e0501821d630d3cc6adbabfd31ab8c6302ede7c46924f15d85ad99a4595` |
| 5 | `theorem` | [Matrix.lieConj_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean/declarations/matrix-lieconj-apply--b52adfa9092634e3c134e8b5.md) | 71 | `result-track:b52adfa9092634e3c134e8b507def2a59cb8b6dc9828d51d1158c2796c268000` |
| 6 | `theorem` | [Matrix.lieConj_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean/declarations/matrix-lieconj-symm-apply--ed5bc03c05e91a5d44fb895a.md) | 77 | `result-track:ed5bc03c05e91a5d44fb895a05b7f808d1fe3114eec01c8d502ecd872fb99c5c` |
| 7 | `def` | [Matrix.reindexLieEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean/declarations/matrix-reindexlieequiv--f211a6274e221ef0029dc4eb.md) | 86 | `declaration-track:f211a6274e221ef0029dc4ebbb285f9dc074f2c488d0eeb8a0da59c1d3f92403` |
| 8 | `theorem` | [Matrix.reindexLieEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean/declarations/matrix-reindexlieequiv-apply--86d8b7917878e62772e1b2e6.md) | 94 | `result-track:86d8b7917878e62772e1b2e654c9e2bbefd7b54b8c61b09145f70028e8f6c261` |
| 9 | `theorem` | [Matrix.reindexLieEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1411a10b5bee329e72ab26b98e8d64f2f16639a7e2bcad2d9f531926b05554ab.lean/declarations/matrix-reindexlieequiv-symm--b87ca0ce75b9f4cf8a19d3ea.md) | 99 | `result-track:b87ca0ce75b9f4cf8a19d3eaf5931fe6591b1f732e86b0b6476a6dcf700650db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
