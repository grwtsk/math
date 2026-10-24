# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "832dda876c8fa6c9e995c6999cf42637c6d16e64",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `832dda876c8fa6c9e995c6999cf42637c6d16e64`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/tomatrix--a9637973cbefbc6d4517164b.md) | 36 | `declaration-track:a9637973cbefbc6d4517164b99b0943599f981b2b95b22a35da699d52908bb8a` |
| 2 | `theorem` | [toMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/tomatrix-apply--84bd68354999cbdc4b8faa74.md) | 40 | `result-track:84bd68354999cbdc4b8faa74e4f9545061bcb09cc348eb844142d05f7f885450` |
| 3 | `theorem` | [toMatrix_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/tomatrix-self--9d793802afd04b4c6ef318e9.md) | 44 | `result-track:9d793802afd04b4c6ef318e9b2f1fdb74bb9e3923f392df59659c457f299ef2e` |
| 4 | `theorem` | [toMatrix_row_sum_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/tomatrix-row-sum-one--3e237f6da3bd2987c6c8415e.md) | 50 | `result-track:3e237f6da3bd2987c6c8415ea2d2a6a43039ca3236303dc748f7cf1b1adbf466` |
| 5 | `theorem` | [affineIndependent_of_toMatrix_right_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/affineindependent-of-tomatrix-right-inv--6569702ec0fda60ff99b6d83.md) | 55 | `result-track:6569702ec0fda60ff99b6d83bcfd565129f88b3b2a73b55bd9c8bd4300553087` |
| 6 | `theorem` | [affineSpan_eq_top_of_toMatrix_left_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/affinespan-eq-top-of-tomatrix-left-inv--b1fee9052a27ae909961b166.md) | 72 | `result-track:b1fee9052a27ae909961b166488903261d1e3df28f8eb111d49aef078a365694` |
| 7 | `theorem` | [toMatrix_vecMul_coords](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/tomatrix-vecmul-coords--dc8673ccd6bed12eb422241b.md) | 104 | `result-track:dc8673ccd6bed12eb422241bb7b29395d5f84eecf81f2a65014168973fa3c591` |
| 8 | `theorem` | [toMatrix_mul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/tomatrix-mul-tomatrix--73dd4680739d59513c09ec5c.md) | 113 | `result-track:73dd4680739d59513c09ec5ccef738545bdb8312f821a07cbedd6285e7435e16` |
| 9 | `theorem` | [isUnit_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/isunit-tomatrix--ea8cdd9604ca0e0a247b9de2.md) | 118 | `result-track:ea8cdd9604ca0e0a247b9de2caae482e560f68c76a6ae73b2c88ee3f8b79fc81` |
| 10 | `theorem` | [isUnit_toMatrix_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/isunit-tomatrix-iff--aaf38907d20980e37a9d8fe5.md) | 124 | `result-track:aaf38907d20980e37a9d8fe545527e0108545887ac12ab5a81676d871e0921ab` |
| 11 | `theorem` | [toMatrix_inv_vecMul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/tomatrix-inv-vecmul-tomatrix--9f7f97f1b7d22b81c43bfa09.md) | 146 | `result-track:9f7f97f1b7d22b81c43bfa090797eb8a08bff57cc93b0d501c2eee44a856a6a8` |
| 12 | `theorem` | [det_smul_coords_eq_cramer_coords](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant84179c57e727dde48f35bdec837bd0c30de949ea048ce9d3cea65fbe1e7024b0.lean/declarations/det-smul-coords-eq-cramer-coords--9f15a7593a3ec0375a033404.md) | 155 | `result-track:9f15a7593a3ec0375a033404d25db480bf66d7db1aa490eb99b759e8285b8b89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
