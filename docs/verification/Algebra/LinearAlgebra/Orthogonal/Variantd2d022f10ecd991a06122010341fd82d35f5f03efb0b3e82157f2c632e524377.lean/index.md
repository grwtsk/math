# Verification target: GRWTSK.Algebra.LinearAlgebra.Orthogonal.Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63b38ea1989199c7ff3594139454e9026e69dee5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63b38ea1989199c7ff3594139454e9026e69dee5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Mul` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean/declarations/hasorthogonalrows--6e156600d376db59c2cb2ceb.md) | 45 | `declaration-track:6e156600d376db59c2cb2ceb1472d5efefbeeb91365efdac774da390341e34b8` |
| 2 | `def` | [HasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean/declarations/hasorthogonalcols--14eb05809bbe5c98aa992e4d.md) | 50 | `declaration-track:14eb05809bbe5c98aa992e4d309597f6e7d6df328ec5c47b24e5a6c44a4c3e21` |
| 3 | `theorem` | [transpose_hasOrthogonalRows_iff_hasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean/declarations/transpose-hasorthogonalrows-iff-hasorthogonalcols--909d276f27955f8f1e0227f0.md) | 55 | `result-track:909d276f27955f8f1e0227f04b2b47cde47454baf54658d2a5324e82fb7e23e0` |
| 4 | `theorem` | [transpose_hasOrthogonalCols_iff_hasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean/declarations/transpose-hasorthogonalcols-iff-hasorthogonalrows--47f541de446ea1b1d89781bb.md) | 61 | `result-track:47f541de446ea1b1d89781bbe6f154a87e9f44aba06ff6701f0c717fe348e1fd` |
| 5 | `theorem` | [HasOrthogonalRows.hasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean/declarations/hasorthogonalrows-hasorthogonalcols--5dc8689cd6e626828b89317e.md) | 67 | `result-track:5dc8689cd6e626828b89317e165c5aa4eab3f8be6cfeabba6769d0dcdd76307e` |
| 6 | `theorem` | [HasOrthogonalCols.transpose_hasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean/declarations/hasorthogonalcols-transpose-hasorthogonalrows--b110062ea55655fcfb32d59b.md) | 71 | `result-track:b110062ea55655fcfb32d59b85aaf99c954fea4e6602e68b2a717eaf5ae0ffb7` |
| 7 | `theorem` | [HasOrthogonalCols.hasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean/declarations/hasorthogonalcols-hasorthogonalrows--11deb6885b9fb519f90be502.md) | 75 | `result-track:11deb6885b9fb519f90be50264f7e02fd2534f63548a42bd49044c3b123c8e4e` |
| 8 | `theorem` | [HasOrthogonalRows.transpose_hasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variantd2d022f10ecd991a06122010341fd82d35f5f03efb0b3e82157f2c632e524377.lean/declarations/hasorthogonalrows-transpose-hasorthogonalcols--f774ed83fd45004024ad3dcb.md) | 79 | `result-track:f774ed83fd45004024ad3dcbd2c19c75cf6912ee195755bb6eabaa48f8934786` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
