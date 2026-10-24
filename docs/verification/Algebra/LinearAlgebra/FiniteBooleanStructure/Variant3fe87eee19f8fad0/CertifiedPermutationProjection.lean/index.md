# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant3fe87eee19f8fad0.CertifiedPermutationProjection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adec12146ff8387d3d1e8458b26ba8d615909ece",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adec12146ff8387d3d1e8458b26ba8d615909ece`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GlobalProjection` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Galois` — import line 20; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Involution` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitMatrix.Algebra.InvolutionProjection](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/declarations/bitmatrix-algebra-involutionprojection--128a284a5cdc10548d1bb816.md) | 36 | `declaration-track:128a284a5cdc10548d1bb816a017e1b496bfbb45a2b99904ce97f4f3c6fb8cdd` |
| 2 | `def` | [ofCertified](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/declarations/ofcertified--219c3e26e4dc7e14ae2c61f6.md) | 54 | `declaration-track:219c3e26e4dc7e14ae2c61f6d62655d46c65f7979b42f98608c0dfde9ebef1ac` |
| 3 | `theorem` | [actionMatrix_eq_iff](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/declarations/actionmatrix-eq-iff--de8307f1fc3a33c57dd2b61b.md) | 67 | `result-track:de8307f1fc3a33c57dd2b61b5378b8bfa1c0fa46d76b8abd3a0beb3d2d8b7cd0` |
| 4 | `theorem` | [existsUnique_true_in_column](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/declarations/existsunique-true-in-column--020ced08f8f7ba11d9384ea4.md) | 73 | `result-track:020ced08f8f7ba11d9384ea4af457bc06b538a2792e6f2efa58382a03a12cdeb` |
| 5 | `theorem` | [existsUnique_true_in_row](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/declarations/existsunique-true-in-row--b41d89fccc38ec19624fa954.md) | 81 | `result-track:b41d89fccc38ec19624fa95453312f4d84d086ae9321b57b55558cc5fd623700` |
| 6 | `theorem` | [actionMatrix_column](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/declarations/actionmatrix-column--53709ed5f3e5857597fb4e53.md) | 98 | `result-track:53709ed5f3e5857597fb4e534a067c5349fed287ca7d0e65fcf4ef80c7adc28f` |
| 7 | `theorem` | [f2Matrix_eq_ite](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/declarations/f2matrix-eq-ite--96d68762456d214208904c87.md) | 105 | `result-track:96d68762456d214208904c87b526e9ba753c9cde92677466483ea31d7350293b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
