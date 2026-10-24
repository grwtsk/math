# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c7c94d55c7f9f7433207d53bb8fb7d2cbaae48c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c7c94d55c7f9f7433207d53bb8fb7d2cbaae48c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Matrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean/declarations/matrix--a63dab5a3819dd8ba2c497b0.md) | 17 | `declaration-track:a63dab5a3819dd8ba2c497b0c73b9b6a01ac2b203d5a7bee118b4fd868bf608f` |
| 2 | `def` | [Matrix.entry](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean/declarations/matrix-entry--90e71c3dd37d54db7bc0e518.md) | 21 | `declaration-track:90e71c3dd37d54db7bc0e51879cbbe9a5b3a1879b22a852dd302cd83554db2dc` |
| 3 | `def` | [Matrix.row](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean/declarations/matrix-row--838503c0c3edd5d7b2b725df.md) | 29 | `declaration-track:838503c0c3edd5d7b2b725df75065cbc399cd0b1e5ae8547cf0db8c996f9f97f` |
| 4 | `def` | [Matrix.col](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean/declarations/matrix-col--1d765e7f8e7db1ad110a10b5.md) | 36 | `declaration-track:1d765e7f8e7db1ad110a10b533ca11063bda8d15d420426150f154c3b7c180bd` |
| 5 | `theorem` | [Matrix.entry_eq_false_or_true](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean/declarations/matrix-entry-eq-false-or-true--6310851965f1a04ee8e5a5d4.md) | 43 | `result-track:6310851965f1a04ee8e5a5d4abc470bd401a6c13e897509ee0e321c839b71c64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
