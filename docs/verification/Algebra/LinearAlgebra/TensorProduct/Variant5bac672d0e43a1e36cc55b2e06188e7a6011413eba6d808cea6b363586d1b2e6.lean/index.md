# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b9cfec58fd42395946fa20431e6318b1101c067",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b9cfec58fd42395946fa20431e6318b1101c067`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Central.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Algebra.TensorProduct.includeLeft_map_center_le](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6.lean/declarations/algebra-tensorproduct-includeleft-map-center-le--7189a18278bd03e83465d888.md) | 37 | `result-track:7189a18278bd03e83465d8886fa70603139c05c1733bd327fc713a977748f53f` |
| 2 | `lemma` | [Algebra.TensorProduct.includeRight_map_center_le](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6.lean/declarations/algebra-tensorproduct-includeright-map-center-le--b9ae03be0c30c46464804ba8.md) | 48 | `result-track:b9ae03be0c30c46464804ba85c17c2e73c43817a2eb575103e7ed5cb7638ec96` |
| 3 | `lemma` | [left_of_tensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6.lean/declarations/left-of-tensor--8c3a99c49f93fa8512b79ee3.md) | 61 | `result-track:8c3a99c49f93fa8512b79ee3fe88185eb97735cec8a8d62d0ba9054592c661f1` |
| 4 | `lemma` | [right_of_tensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6.lean/declarations/right-of-tensor--52ee217b83d16121bfdad0be.md) | 66 | `result-track:52ee217b83d16121bfdad0be496a45974900b3503c94b1467aac337314bf68d7` |
| 5 | `lemma` | [left_of_tensor_of_field](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6.lean/declarations/left-of-tensor-of-field--76a4566a7e64df2cbd14db50.md) | 73 | `result-track:76a4566a7e64df2cbd14db50cfacb34d730325ee0b2e16c492329266ab6145d5` |
| 6 | `lemma` | [right_of_tensor_of_field](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6.lean/declarations/right-of-tensor-of-field--428f2cf3aa5759293a86db2b.md) | 79 | `result-track:428f2cf3aa5759293a86db2b9d421e4a280c764665fdd5506bec8f20fa9b1fe5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
